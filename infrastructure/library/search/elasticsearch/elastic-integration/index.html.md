---
layout: handbook-page-toc
title: "Design :: [Elasticsearch integration for one namespace]"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Implementation Considerations ##

### Infra epic ###

[infra epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/64)

### Elastic Cloud ###

we'll be using a cluster in GCP so we shouldn't be hit by: https://gitlab.com/gitlab-org/gitlab-ee/issues/4334

### staging cluster ###

[staging](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6537)

### production cluster ###

[production](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6587)

## Operational Considerations ##

### HA ###

do we need HA? yes:
- if elastic goes down search will fail. If HA failover fails, we can disable elastic integration
- rebuilding index is resource intensive and very time consuming

how many zones should we use? at least two

Which zones the cluster should be in? as close to gitlab infra as possible (ideally in the same zone). At the moment of writing, majority of prod and stg infra is in us-east. However, elastic.co doesn't allow you to create clusters in that zone.

### Monitoring ###

See monitoring Elastic Cloud in [runbooks repo](https://gitlab.com/gitlab-com/runbooks/blob/master/howto/elastic-cloud.md)

### Alerting ###

See alerting Elastic Cloud in [runbooks repo](https://gitlab.com/gitlab-com/runbooks/blob/master/howto/elastic-cloud.md)

### Resizing cluster ###

See [runbooks repo](https://gitlab.com/gitlab-com/runbooks/)

### Maintenance ###

See [runbooks repo](https://gitlab.com/gitlab-com/runbooks/)

### Initial indexing overloading Gitaly ###

This shouldn't occur since the number of simultaneous sidekiq jobs is limited. Gitaly fleet should already be sized to handle connections from the existing sidekiq nodes.

### Initial indexing overloading sidekiq ###

During tests on staging, there were 2 machines, 8 sidekiq workers in total. They were able to process incoming jobs in real-time (queue = 0). The bottleneck was with network connection between indexer and gitaly
