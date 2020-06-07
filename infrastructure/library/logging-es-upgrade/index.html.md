<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Current state](#current-state)
    - [Index Management](#index-management)
    - [Problems we experienced](#problems-we-experienced)
- [How to improve](#how-to-improve)
    - [control size of shards](#control-size-of-shards)
        - [Benchmarking procedure](#benchmarking-procedure)
        - [other shard/index size considerations](#other-shardindex-size-considerations)
        - [Shrinking and merging indexes](#shrinking-and-merging-indexes)
    - [Dedicated ES master](#dedicated-es-master)
    - [ILM (managing index size differently, hot-warm architecture)](#ilm-managing-index-size-differently-hot-warm-architecture)
        - [ILM usage example](#ilm-usage-example)
    - [Which beat to use](#which-beat-to-use)
        - [Patching pubsubbeat](#patching-pubsubbeat)
        - [Filebeat](#filebeat)
        - [Evaluate other options (fluentd/logstash)](#evaluate-other-options-fluentdlogstash)
    - [Optimize beat config](#optimize-beat-config)
    - [stop sending nginx logs to ES](#stop-sending-nginx-logs-to-es)
    - [send staging logs to a separate cluster](#send-staging-logs-to-a-separate-cluster)
    - [Sizing](#sizing)
    - [Monitoring](#monitoring)
- [Plan](#plan)
    - [Migration](#migration)
    - [Cluster creation](#cluster-creation)
    - [After migration](#after-migration)
- [deployment notes](#deployment-notes)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


# Current state #

## Index Management ##

we have three pipelines scheduled to run here: https://ops.gitlab.net/gitlab-com/gl-infra/gitlab-restore/esc-tools/pipeline_schedules

1. At 22:00 UTC, we create an index for the next day, beats will start sending documents to it in 2h, we do not define the number of shards (neither routing_shards) and because it's ES 5.6 we default to 5 shards + replication 1 (which in total gives 10 shards, 5 primary, 5 replica). src: https://ops.gitlab.net/gitlab-com/gl-infra/gitlab-restore/esc-tools/blob/master/create_indices.sh#L25  With 500GB indexes this gives shards of 100GB. In the past, shards were getting to 300GB, but we've adjusted the threshold for index rotation since then

2. At 00:00 UTC, we remove indexes older than x days. We do this to release storage space on Elastic nodes. Different retention periods are used for different indices. In general, we keep logs in Elastic for 2-7 days, after which they are removed and only accessible in GCS.

3. Every 30 mins, we rotate the index if it's above a set number of documents. We can use this because beats are uploading docs to indexes using aliases, so the alias remains the same, but the index which it's linked to is new, src: https://ops.gitlab.net/gitlab-com/gl-infra/gitlab-restore/esc-tools/blob/master/rollover_indices.sh#L24

4. We only create indices for selected log sources. For others we rely on pubsubbeat to create them.

## Problems we experienced ##

Problems we experienced:
- inability to balance shards due to insufficient amount of storage space on worker nodes (moving multiple 200GB shards at the same time proved tricky)
- high cpu usage on a single worker, caused by a number of big shards for active indexes being present on the worker, resulting in lower document in-take
- inability to use ELK's built-in mechanisms for managing index size (ILM), that's why we have the scripts mentioned above
- generally a number of features missing in the old version of ES

# How to improve #

Potential improvements:
- control size of shards
- dedicated ES master
- manage index size differently
- hot-warm architecture
- use 7.x cluster
- optimize beat config
- stop sending nginx logs to ES
- send staging logs to a separate cluster

## control size of shards ##

Size of shards is what matters most, index size almost doesn't matter.

The ideal shards' size should be determined by running benchmarks. There is no 'one size fits all' approach, the right size depends on many things.

Based on current evidence we suspect our problems might be caused by too big shards (>100GB).

For logs, in most cases, 30GB-50GB is the right size. This is based on previous experiences of Elastic support. However, as stated above, this should be a subject of further, benchmark based investigation.

### Benchmarking procedure ###

Define SLAs for indexing latency and search latency. This will be your threshold that will help find the optimal size of shards.

Start with a 1 node cluster and an index with 1 shard. Load it with logs and requests. Enable monitoring on that cluster and send the metrics to a separate cluster. Observe the latencies and overall performance of the cluster. As the data volume increases, indexing latency will start to increase. Your maximum shard size is when latency reaches SLA or starts going up rapidly (on the graph it will look like a "knee"). Your desired shard size should be about 5-10% below optimal (to accommodate for latency in index rollover, inaccuracy in the measurement methods, worker buing busy with other things, etc).

Consider benchmarking each index individually. This is because logs from for example gitaly have a different profile than those from rails.

Consider benchmarking for hot nodes and warm nodes individually. The resource usage profile will be different for them, hotspotting happens on active shards (which should be on hot nodes).

Consider using index templates per index (rather than a universal index template). One reason is that document profile for a specific index might be different, another is that number of shards might be different.

### Benchmarking results ###

https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7398

https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7404

https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7399

SLAs based on benchmarking in issues linked above:
- Indexing time < 200ms
- Indexing latency < 0.5ms
- Search latency < 1ms
- cgroup throttling < cgroup usage (Monitoring cluster -> Kibana -> Stack Monitoring -> Nodes -> select node -> advanced -> "Cgroup CPU Performance")
- Pubsub queue is not growing for longer than 15 mins. There are short bursts of traffic during which the Elastic cluster might not be able to cope with the rate at which logs are generated. However, the cluster still should be capable of processing logs during peak times. Rates during bursts and during peak times are two different things.

### other shard/index size considerations ###

Every shard has a memory overhead. The overhead depends on the specifics of the shard. The more shards you have the more heap memory will be consumed. This can be monitored in the node stats, in the monitoring metrics (sent to the monitoring cluster). Useful but old thread about shard overhead: https://discuss.elastic.co/t/better-understanding-lucene-shard-overheads/21786/3

Huge shard sizes are problematic because:
- they can grind a node to a halt (resulting in higher indexing and search latencies), so if there is a very active index it might need to be split into higher number of shards
- when a node goes offline, it takes a lot of time to replicate a big shard and thus will take a long time to recover
- rebalancing of big shards takes more time and requires more free space on disk

What if, due to worker being busy with shrinking indexes or moving shards, the current active shard ends up big? If there is a single shard that's too big that's ok, the problem is when all of them are too big. One idea is to create a separate ILM policy that wouldn't do shrinking or moving during peak times (e.g. Black Friday).

Shard sizes are changing due to merging of segments:
```
This is most likely the result of merging of segments. Each shard is made up of segments. When segments are merged the data from each segment must be joined together to make a new segment and for a brief period just before the new segment is completed, the total disk usage may be twice that of the original two segments as the original segments are not deleted until the new segment is complete. This is one of the reasons why the default maximum segment size is 5GB. This effect is particularly noticeable if force merge is used to reduce very large shards down to a few segments. e.g. if a 100GB shard is to be reduced to one segment using forcemerge, then just before the merge is complete there will be 100GB original data (multiple segments) plus a new segment of 100GB: 200GB.

```

Starting from 7.x clusters have a limit on the number of shards, which is based on the number of nodes. The limit is set to 1000 shards per node: https://www.elastic.co/guide/en/elasticsearch/reference/master/misc-cluster.html#cluster-shard-limit . It is intended as a safety net, not a sizing recommendation. We currently have 3 hot nodes and 2 warm nodes in production, which in total gives maximum of 5000 shards. Indices consist of 2 shards (`replica=1`), which means there can be a maximum of 2500 unique shards. We have ~20 aliases, so there can be 2500 / 20 = 125 shards per alias. In worst case scenario, indices are rolled over when they reach the size threshold, which with the current ILM config is 50GB. So an individual alias can grow up to 6.25TB .


### Shrinking and merging indexes ###

Shrinking an index (merging shards) is not a trivial process, it has an impact on CPU. Merging multiple indexes is even more complex than merging shards.

The optimal shard size for shards on hot nodes will be different than for those on warm nodes.

## Dedicated ES master ##

The reasoning behind it is to prevent situations where cpu load generated by indexing prevents master from working properly.

The new cluster will automatically switch to a dedicated master above 6 VMs. We expect to exceed that thresholdy.

## ILM (managing index size differently, hot-warm architecture) ##

We can start using Index Lifecycle Management (ILM) plugin. It was designed and built exactly for this use case. It's GA since ES 6.7

ILM API docs: https://www.elastic.co/guide/en/elasticsearch/reference/current/index-lifecycle-management-api.html

great intro read: https://www.elastic.co/blog/implementing-hot-warm-cold-in-elasticsearch-with-index-lifecycle-management

Elastic Cloud's "Hot-Warm Architecture" is using ILM. highio nodes are created with a `hot` label, highstorage nodes are created with a `warm` label.

You can configure ILM through the web UI (during deployment creation or later in Kibana) or using the API.

ILM uses rollover API for rotating indexes (the same mechanism we use in our scripts). This means there is an index alias that is used for uploading documents. After the index is rotated the alias is pointing to a new index.

ILM consists of 4 stages (any stage will be skipped if it's empty):
- hot
- warm
- cold
- delete

### ILM usage example ###

Beats could use fixed index aliases for uploading docs, e.g. `pubsub-postgres-inf-gprd` instead of a date based name of the alias. Once an index reaches 50GB or is one day old, ILM will rotate it creating a new index. The ILM policy needs to be associated with an index template (instead of directly with the index). The frequency of ILM runs will be left at default (10 mins) instead of adjusting it with `indices.lifecycle.poll_interval` (be careful with `poll_interval` values < 10m, see: https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7404 for more details). Number of shards to be left at default (1 primary, 1 replica). Aliases always point to the latest index created by ILM (this is handled by the rollover API). After being rotated, the index will remain on a hot node until it is 1 day old, at which point it will be moved to a warm node. Once the index is 7 days old it is removed from ElasticSearch (and the only copy of the logs is on GCS, sent there using a StackDriver export sink, can be read using GCP Big Query).

API calls for creation of the ILM policy, indexes templates and aliases can be found saved as bash scripts here: https://ops.gitlab.net/gitlab-com/gl-infra/gitlab-restore/esc-tools

Whether we should shrink or merge indeces depends on the results of benchmarks.

Should we avoid roll over during peak hours? Rollover doesn't have a massive impact on a worker node. Operations that do have a significant impact on workers are: shrinking index (merging shards, happens on hot nodes) and moving shards to warm nodes (if shrinking is used, shards are moved after a shrink).

## Which beat to use ##

### Patching pubsubbeat ###

pubsubbeat is at the moment of writing unable to submit documents to ES 7. One way forward is to keep using GCP's PubSub and patch the pubsubbeat. It's generally not a very active/well maintained project (there were 4 commits in the past year).

pubsubbeat patch: https://github.com/GoogleCloudPlatform/pubsubbeat/pull/24

### Filebeat ###

Filebeat is a replacement for logstash-forwarder, it's very widely used. It's officially maintained and supported by Elastic. The project has been around for a long time (at least since ES 5.x). It's capable of managing document upload rate (what we do with PubSub).

Support for using GCP PubSub as input is in beta, general availability is on the roadmap for the next minor release which will most likely happen in August this year.

github repo: https://github.com/elastic/beats/tree/master/filebeat

good intro: https://logz.io/blog/filebeat-tutorial/

### Evaluate other options (fluentd/logstash) ###

https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6787

## Optimize beat config ##

https://www.elastic.co/guide/en/elasticsearch/reference/master/tune-for-indexing-speed.html

## stop sending nginx logs to ES ##

https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6542

## send staging logs to a separate cluster ##

We decided to use two clusters:
- prod
- nonprod (staging, ops, dr, etc)

## Sizing ##

Perform benchmarks first to understand optimal shard size and worker compute requirements.

## Monitoring ##

Monitoring metrics will be sent to a separate cluster. The same cluster will be used as a destination for metrics from prod and nonprod cluster.
