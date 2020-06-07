---
layout: handbook-page-toc
title: "Blueprint: PostgreSQL backups for GitLab.com. The current state and proposed improvements"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Related documents

- [Disaster Recovery](https://about.gitlab.com/handbook/engineering/infrastructure/library/disaster-recovery/)
- [Production Architecture / Database Architecture](https://about.gitlab.com/handbook/engineering/infrastructure/production-architecture/#database-architecture)
- [PostgreSQL troubleshooting (internal)](https://ops.gitlab.net/gitlab-com/runbooks/blob/master/troubleshooting/postgres.md#tables-with-a-large-amount-of-dead-tuples)
- [Using WAL-E](https://gitlab.com/gitlab-com/runbooks/blob/master/howto/using-wale-gpg.md)

The extended list of related documents (issues, comments) is provided in the end of this blueprint.

## The main goals of a database backup system

The main goal of a database backup system is to allow data recovery in case of a data loss event. There are two classes of data loss:

1. events caused by hardware failures or software bugs,
1. events caused by human mistakes (data deleted accidentally).

There may also be secondary goals:

- database clones provisioning not affecting production servers for various needs such as:
    - database experiments and database-related development,
    - various data integrity checks including massive operations,
    - troubleshooting using point-in-time recovery (PITR);
- if applicable, provisioning of production replicas without negative effects to currently working production nodes.

## What defines a good backup system

A good backup system must meet the following basic requirements:

1. the data in backups is complete and not corrupted,
1. backups can be used for Disaster Recovery (DR), when it is needed to restore the database to the latest point in time, right before data loss occurred, restoring as many latest changes as possible (see RPO, "Recovery Point Objective" defined in [Disaster Recovery](https://about.gitlab.com/handbook/engineering/infrastructure/library/disaster-recovery/)),
1. in case of disaster, the recovery is fast enough (see RTO, "Recovery Time Objective" defined in [Disaster Recovery](https://about.gitlab.com/handbook/engineering/infrastructure/library/disaster-recovery/)).

Additional important factors are:

1. the backup process does not affect the production nodes (especially the master node), so it leads to performance or availability degradation, including but not limited to:
    - negative effects from disk IO caused by periodic (usually, daily) full backups,
    - negative effects from disk IO caused by continuous archiving WALs (write-ahead log files needed to support PITR),
    - blocking other processes in database system such as activities of autovacuum or checkpointer processes,
    - risks of "out of disk space" events on production nodes,
    - negative effects of high CPU load (for example, during encryption and compression);
1. all backups are properly verified using automated jobs, and this process is covered by monitoring and alerting.

## The current state of GitLab.com Postgres backup system

Currently (January 2020), GitLab.com production database is backed up using WAL-E. The data is stored in GCS. Periodical full backups (basebackups) are performed daily, starting at 00:00 UTC, via WAL-E's `backup-push`. WAL stream is archived via WAL shipping method: WAL-E's `wal-push` is set in `archive_command` of PostgreSQL configuration. Both basebackups and WAL archiving are performed on the master. Replicas are not participating in backup processes.

From the detailed output of `backup-list` command we see some important details about the data volumes and the speed of backup process:
```bash
$ /usr/bin/envdir /etc/wal-e.d/env /opt/wal-e/bin/wal-e  backup-list --detail
wal_e.main   INFO     MSG: starting WAL-E
        DETAIL: The subcommand is "backup-list".
        STRUCTURED: time=2019-11-17T19:24:22.379667-00 pid=6103
name    last_modified   expanded_size_bytes     wal_segment_backup_start        wal_segment_offset_backup_start wal_segment_backup_stop wal_segment_offset_backup_stop
base_0000001F00016721000000DF_00815632  2019-11-03 15:28:13.451000+00:00        4768212361537   0000001F00016721000000DF        00815632        0000001F0001674D000000AF        04777168
base_0000001F0001676A0000006B_00075792  2019-11-04 16:38:45.612000+00:00        4771903217985   0000001F0001676A0000006B        00075792        0000001F0001681D000000F6        06262392
base_0000001F0001685A00000040_00281240  2019-11-05 18:47:09.576000+00:00        4786582438209   0000001F0001685A00000040        00281240        0000001F0001693B00000022        05541960
base_0000001F0001697D000000DA_00874280  2019-11-06 17:07:03.824000+00:00        4811100236077   0000001F0001697D000000DA        00874280        0000001F00016A5A000000DD        11434352
base_0000001F00016AA00000000E_11087416  2019-11-07 06:55:46.145000+00:00        4830848344418   0000001F00016AA00000000E        11087416        0000001F00016ACF00000062        07225032
base_0000001F00016B9C0000009D_04901128  2019-11-08 06:44:26.904000+00:00        4846586765667   0000001F00016B9C0000009D        04901128        0000001F00016BC600000039        12626784
base_0000001F00016C8E000000C2_00616264  2019-11-09 06:13:54.184000+00:00        4859791925603   0000001F00016C8E000000C2        00616264        0000001F00016CA0000000F8        01773816
base_0000001F00016CE100000045_11031928  2019-11-10 06:16:47.051000+00:00        4863649275979   0000001F00016CE100000045        11031928        0000001F00016CF1000000A3        12484848
base_0000001F00016D330000004C_11788472  2019-11-11 06:37:49.449000+00:00        4867484934499   0000001F00016D330000004C        11788472        0000001F00016D5E00000097        11202992
base_0000001F00016E21000000CD_00212544  2019-11-12 06:34:33.526000+00:00        4879975784803   0000001F00016E21000000CD        00212544        0000001F00016E49000000A1        02202344
base_0000001F00016F2D0000004A_04577824  2019-11-13 06:48:45.015000+00:00        4899810451811   0000001F00016F2D0000004A        04577824        0000001F00016F5F0000002A        13798168
base_0000001F0001703F000000D6_02592832  2019-11-14 06:46:42.992000+00:00        4913652654435   0000001F0001703F000000D6        02592832        0000001F0001706A000000C1        15858072
base_0000001F0001714800000052_06976024  2019-11-15 06:45:49.959000+00:00        4929330536803   0000001F0001714800000052        06976024        0000001F0001717500000055        10072488
base_0000001F0001722F000000B3_07148096  2019-11-16 06:38:44.895000+00:00        4941943521634   0000001F0001722F000000B3        07148096        0000001F0001724500000033        10491008
base_0000001F0001728E000000B7_00472752  2019-11-17 06:26:06.283000+00:00        4945158529378   0000001F0001728E000000B7        00472752        0000001F000172A00000004D        11197112
```

The following query executed in Postgres can help us understand the amount of WAL generated during a day:

```sql
with data(lsn) as (
  values
    ('1728E/000000B7'::pg_lsn),
    ('1722F/000000B3'),
    ('17148/00000052'),
    ('1703F/000000D6'),
    ('16F2D/0000004A'),
    ('16E21/000000CD'),
    ('16D33/0000004C'),
    ('16CE1/00000045'),
    ('16C8E/000000C2'),
    ('16B9C/0000009D'),
    ('16AA0/0000000E'),
    ('1697D/000000DA'),
    ('1685A/00000040'),
    ('1676A/0000006B'),
    ('16721/000000DF')
)
select
  lsn,
  lsn - lag(lsn) over (order by lsn) as diff,
  pg_size_pretty(lsn - lag(lsn) over (order by lsn)) as diff_pretty,
  ceil((lsn - lag(lsn) over (order by lsn)) / 16 / 1024 / 1024) as wal_count
from data
order by lsn;
```

```
   lsn    |     diff      | diff_pretty | wal_count
----------+---------------+-------------+-----------
 16721/DF |               |             |
 1676A/6B |  313532612492 | 292 GB      |     18688
 1685A/40 | 1030792150997 | 960 GB      |     61440
 1697D/DA | 1249835483290 | 1164 GB     |     74497
 16AA0/E  | 1249835482932 | 1164 GB     |     74496
 16B9C/9D | 1082331758735 | 1008 GB     |     64513
 16C8E/C2 | 1039382085669 | 968 GB      |     61953
 16CE1/45 |  356482285443 | 332 GB      |     21248
 16D33/4C |  352187318279 | 328 GB      |     20993
 16E21/CD | 1022202216577 | 952 GB      |     60929
 16F2D/4A | 1151051235197 | 1072 GB     |     68608
 1703F/D6 | 1176821039244 | 1096 GB     |     70145
 17148/52 | 1138166333308 | 1060 GB     |     67840
 1722F/B3 |  992137445473 | 924 GB      |     59137
 1728E/B7 |  408021893124 | 380 GB      |     24321
(15 rows)
```

(Updates are provided in [#8432 Postgres backups: analyze amount of WAL data generated daily](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/8432))

As a result, we have some basic stats from the `backup-list` output:
- basebackup lasts ~6.5 hours (reduced from 16-20 hours after IOPS limits increase the system disks, discussed in [#8266](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8266)),
- basebackup size is ~5 TB (~4.5 TiB), as of November 17th, 2019,
- during a workday, 60-70 thousand WAL files are generated, or 1-1.1 TiB of WAL data per day,
- during weekends, the daily amount of WAL data drops to 20-25 thousand files, or ~300-400 GiB.


## Considered alternatives and improvements of Postgres backup system

Already in late 2018, it discussed that WAL-E should be replaced by some other tool, because of various reasons including:
- the project is not actively developed because many its users switched to its alternative written in Go, WAL-G,
- WAL-E doesn't support backups from replicas, and its negative impact on the master (especially during basebackups) is significant,
- concerns related to the speed of WAL-E basebackups creation and recovery (restoration from basebackup and WAL replay).

Among alternatives to WAL-E, WAL-G and pgBackRest were discussed, and WAL-G was chosen as a replacement, because of the reasons explained below.

Other popular Postgres backup tools, Barman and pg_probackup, were discussed but removed from consideration due to lack of GCS support.

Additionally, some efforts were made to consider GCE snapshots as a fast and impact-free alternative to basebackups.

Both WAL-G and GCE snapshots are discussed in detail in the analysis below.

## Comprehensive analysis of the current GitLab.com Postgres backup system

There are various issues with the current backup system that need to be addressed. Below we analyze the backup system categorizing in various ways:
- considering two major sub-processes of the system: periodical full archiving of PGDATA (basebackup) + continuous WAL archiving;
- considering backups creation (archiving) and, separately, using them (DR, backup verification, provisioning of additional replicas such as delayed replicas);
- analyzing various properties of the backup system: reliability, speed, performance impact, and other aspects.

This gives us the following structure of analysis.

1. Creation of full backup (`backup-push`):
    1. Reliability of basebackup creation.
    1. Speed of basebackup creation.
    1. Performance impact of basebackup process.
1. WAL archiving (`wal-push`):
    1. Reliability of WAL archiving.
    1. Speed of WAL archiving.
    1. Performance impact of WAL archiving.
1. Basebackup recovery (`backup-fetch`):
    1. Reliability of initial recovery.
    1. Speed of initial recovery.
1. WAL stream replay (`wal-fetch`, PITR):
    1. Reliability of WAL replay during PITR.
    1. Speed of WAL replay during PITR.
1. Additional aspects
    1. DR: RPO and RTO.
    1. Secondary goals of backup system: provisioning of special-purpose instances, PITR to recover from human mistakes, delayed replicas.
    1. Logs, monitoring, alerts, troubleshooting capabilities.
    1. Backup tool support, bug fixes, improvements.

Further we provide details of the analysis performed according to this schema, outline the existing problems and discuss possible ways to mitigate such issues. We do not split the analysis of existing issues and discussion of potential solutions by purpose, not to increase the complexity of this document. Immediately after the analysis, the list of proposed solutions is presented.

### Creation of full backup (`backup-push`)

As mentioned above, currently (November 2019), GitLab.com production database is backed up using WAL-E, the data being stored in GCS. Periodical full backups (basebackups) are performed daily, starting at 00:00 UTC, via WAL-E's `backup-push`.

#### Reliability of basebackup creation (`backup-push`)

WAL-E's `backup-push` is not fully reliable at the moment. In some cases, it fails – see [#1273 (comment 234726876)](https://gitlab.com/gitlab-com/gl-infra/production/issues/1273#note_234726876). This leads to missing 1 or 2 basebackups (there were no cases so far when more than 2 basebackups failed in a row). If recovery is needed and basebackup is missing, we have to replay more WAL data, which leads to longer recovery time (hence, worse RTO).

To solve this problem we can:
- fix WAL-E code (and be prepared to live with WAL-E fork because the project currently is not well-maintained -- the latest release was [in November 2017](https://github.com/wal-e/wal-e/releases/tag/v1.1.0));
- fully migrate to WAL-G and do basebackups with it;
- use GCE snapshots as a replacement for `backup-fetch`, keeping `wal-fetch` in `restore_command` for PITR.

The analysis made in Summer-Autumn 2019 showed that for GitLab.com, the most promising approach here is **the full migration to WAL-G** because:
- it is a direct successor of WAL-E that is already used as a backup tool GitLab.com;
- it is backward compatible with WAL-E (WAL-G can be used to restore from WAL-E backups);
- it is known to be used in large setups (for example, [Yandex.Cloud uses WAL-G](https://news.ycombinator.com/item?id=19261935) to backup thousands of Postgres databases with the total amount of data ~1 PiB);
- WAL-G is being [actively developed](https://github.com/wal-g/wal-g/releases);
- WAL-G helps to achieve a better backup process in terms of service reliability when on one hand, backups take less time, and on another hand, the resources are not overloaded (it has important capabilities to control the load: concurrency levels for disks and network, throttling, compression methods and levels).

However, further verification of GCE snapshots as a potential alternative to basebackups seems also reasonable – some work in this direction was done by [@abrandl](https://gitlab.com/abrandl) ([#7066](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7066)). We plan to consider using GCE snapshots as a very fast alternative of `backup-fetch`, that would allow to provision a "basebackup" version in minutes, then performing WAL fetching and replaying with regular WAL-G's `wal-fetch` in `restore_command`.

#### Speed of basebackup creation (`backup-push`)

During a long time, it was thought that WAL-E is slow, and it is normal for WAL-E's basebackup process to take 15-20 hours during business days for 4-5 TiB database in GCP (~250 GiB per hour, or ~70 MiB/s in average). However, it turned out so that WAL-E basebackup was limited to IOPS quota of the system disk (`sda`, mounted to `/`), where `/tmp` directory is located. WAL-E's `backup-push` generates a lot of temporary files, so if writing to and reading from `/tmp` is slow, the whole basebackup process is slow. This problem is discussed in [#8266](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8266). With `sda` and `sdc` disk space increased, and faster writes to and reads from `/tmp`, new basebackup timing is 6.5 hours for 4.5 TiB database (~700 GiB per hour, or ~200 MiB/s in average), and definitely there is a room for further improvements.

WAL-G provides a much better control over the speed of the process:
- `WALG_UPLOAD_CONCURRENCY` controls the number of concurrent streams for backup uploading to GCS (default: 16 streams),
- `WALG_UPLOAD_DISK_CONCURRENCY` defines how many concurrency streams are reading disk during backup-push (default: 1),
- `WALG_DISK_RATE_LIMIT` and `WALG_NETWORK_RATE_LIMIT` allow throttling the process to avoid a negative impact on the main activities of the database server.

It is worth mentioning that WAL-E allows basic throttling via `pv` program (option `--cluster-read-rate-limit`), and improving `backup-push` throughput when sending data to the object storage via using `--pool-size` option (default: 4).

With the migration to WAL-G and replacing `sda`, `sdc` disks with SSD ones, we aim to have the speed of basebackup not less than 1 TiB per hour, or ~300 MiB/s in average. So, 4.5 TiB database (the current size of GitLab.com database) will be fully archived within not more than 4.5 hours. When the database size achieves 10 TiB, the process should take not more than 10 hours, which is still acceptable. Read rates 300 MiB/s (and read IOPS at forecasted level 4-6 thousand) are significantly below [the SSD PD limits](https://cloud.google.com/compute/docs/disks/performance#ssd-pd-performance) (1,200 MiB/s and 100,000 IOPS for reads, 800 MiB/s and 30,000 IOPS for writes).

There are two attractive alternatives to traditional daily full backups:
- [WAL-G's delta backups](https://www.youtube.com/watch?v=Wsu4SLVSUzI),
- GCE snapshots (PoC prepared by [@abrandl](https://gitlab.com/abrandl) in [#7066](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7066)).

Both these alternatives allow to decrease the IO impact and to have full backups more often than once per day (for example, once per 4 hours), significantly reducing RTO because less WALs must be replayed in case of DR. WAL-G delta backups are worth considering after the full migration to WAL-G. GCE snapshots, a way to make "full backups" just in several minutes and without any extra IO penalty at all, are to be thoroughly tested as basebackup alternatives.


#### Performance impact of basebackup process (`backup-push`)

As discussed above, currently, WAL-E's `backup-push` introduces additional IO reads on the main disk (`sdb`, where PGDATA is located) of the master server, at rates ~200 MiB/s. As shown in [#8266 (comment 245533936)](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8266#note_245533936), this load is not evenly distributed; there are spikes to 300-400 MiB/s. With the migration to WAL-G, we must expect:
- IO impact will grow (for backup speed 1 TiB per hour, the forecasted read IO will be 300 MiB/s, with spikes to 500 MiB/s),
- on another hand, better control over it will be available – throttling capabilities allow to avoid negative performance degradation of PostgreSQL server (WAL-E: basic throttling using `pv`, option `--cluster-read-rate-limit`; WAL-G: `WALG_DISK_RATE_LIMIT` and `WALG_NETWORK_RATE_LIMIT`,
- finally, since WAL-G supports performing `backup-push` on a replica, we will be able to get rid of the negative impact on the master server fully.

If, after a sufficient amount of testing, we switch to GCE snapshots (fully or just partially -- say, for 3/4 of daily basebackups), it would allow getting rid of IO impact completely.

Additionally, during `backup-push`, WAL-E generates a lot of temporary files (see [#8266 (comment 245533936)](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8266#note_245533936)). Currently, it loads `sda` a lot, since this disk is not SSD at the moment, at some points leading to IO saturation. With switching to SSD this problem will completely disappear.

As for the impact on CPU utilization, during `backup-push`, WAL-E consumes up to 100% of several vCPUs on the master instance encrypting WAL files (discussed in [#4650](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/4650)). Given the fact that the currently used type of instances is `n1-highmem-96`, with 96 vCPUs, this problem does not look critical and will be fully resolved once the basebackup process is moved to replicas or replaced with GCE snapshots.


### WAL archiving (`wal-push`)

Continous WAL archiving is performed from Postgres master instance, via WAL shipping configured in `archive_command` in `postgresql.conf`.

#### Reliability of WAL archiving (`wal-push`)

The current process is very reliable, Postgres master does not remove WAL file until it is successfully saved in GCS and WAL-E's `wal-push` specified in `archive_command` returns 0.

However, in case of failover or switchover, when timeline switch occurs, WAL archive may be broken:
- WAL file from the old master is not archived, and it won't be archived from the new master despite the fact that the new master has it, leading to a "gap" in the WAL archive (a well-known issue of `archive_command`, should be solved in PostgreSQL core);
- extra WAL file from the old master and old timeline was archived, so when replaying the WAL stream, we reach the point where we cannot switch to the new timeline – this case may happen in case of a partitioned network.

Such issues are hard to troubleshoot and resolve. In the case of DR, if failover happened since the last basebackup, there are high risks of broken WAL stream in the archive, resulting in significantly increased recovery time.

Unfortunately, the migration to WAL-G (or another backup tool) won't solve these issues. This topic is subject to additional work.

#### Speed of WAL archiving (`wal-push`)

Currently, there are no known issues.

#### Performance impact of WAL archiving (`wal-push`)

WAL-G allows moving `wal-push` to a replica. However, this option does not look attractive in case of asynchronous replicas: if the replica where WAL archiving is performed starts lagging, it increases the amount of potential data loss in the case of DR (RPO risks). So, while WAL-G's `backup-push` has to be performed on a replica, `wal-push` should still be done on the master.

We may still want to perform `wal-push` on a replica for testing purposes. Combining WAL-E and WAL-G is known to lead [WAL losses](https://github.com/wal-g/wal-g/issues/62), so during the testing period, when WAL-E is still the main backup tool, we can use make WAL-G fully work with a replica.


### Basebackup recovery (`backup-fetch`)

#### Reliability of initial recovery (`backup-fetch`)

#### Speed of initial recovery (`backup-fetch`)

Currently, the speed of initial recovery (WAL-E's `backup-fetch`) is limited by the performance of a single-threaded Python WAL-E process, consuming 100% of a single vCPU decrypting data. 

```
  PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND                                                                                
27304 gitlab-+  20   0  257132  93460   7896 R 100.0  0.3  84:12.52 wal-e                                                                                  
  458 gitlab-+  20   0    6764   1536   1224 S  14.0  0.0   0:01.42 lzop                                                                                   
  350 gitlab-+  20   0    6764   1524   1224 S  10.6  0.0   0:01.51 lzop                                                                                   
  346 gitlab-+  20   0    6764   1580   1284 S   8.3  0.0   0:01.44 lzop                                                                                   
  496 gitlab-+  20   0    6764   1532   1224 S   7.3  0.0   0:00.22 lzop                                                                                   
  347 gitlab-+  20   0    6164    696    632 S   6.0  0.0   0:00.79 cat                                                                                    
  351 gitlab-+  20   0    6164    668    604 S   5.0  0.0   0:00.71 cat                                                                                    
  459 gitlab-+  20   0    6164    688    624 S   5.0  0.0   0:00.47 cat                                                                                    
  497 gitlab-+  20   0    6164    676    612 S   4.3  0.0   0:00.13 cat                                                                                    
   78 root      20   0       0      0      0 S   2.7  0.0   2:10.55 kswapd0                                                                                
    8 root      20   0       0      0      0 I   0.3  0.0   0:16.25 rcu_sched                                                                              
    1 root      20   0  119672   5116   3304 S   0.0  0.0   0:03.15 systemd                                                                                
    2 root      20   0       0      0      0 S   0.0  0.0   0:00.01 kthreadd                  
```

The maximum recovery speed is as low as ~75 MiB/s (measured in writes to the PGDATA directory), or just ~270 GiB per hour. It means that the current 4.5 TiB database cannot be restored in less than 17.5 hours. Once the database size reaches 10 TiB, the timing will go up to ~39 hours. Obviously, such timing cannot meet RTO requirements. Not mentioning the fact that introduces certain complications to the use of backups as a source for provisioning of secondary instances. 

The migration to WAL-G allows decreasing the recovery time significantly. We aim to have the recovery speed not less than 1 TiB per hour, to be able to restore 4.5 TiB database within 4.5 hours, and 10 TiB database withing 10 hours. It means that, on average, `backup-fetch` should write to PGDATA at rates ~300 MiB/s or more.

### WAL stream replay (`wal-fetch`)

#### Reliability of WAL replay during PITR (`wal-fetch`)

There were no WAL fetching issues observed, the failures of `wal-fetch` were related to a currupted state of WAL archive occuring during failover events (see [an example](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7293)).

#### Speed of WAL replay during PITR (`wal-fetch`)

It was noticed, that with increased WAL generation rates (to ~1.5 TiB per day), on a `n1-standard-8` machine WAL-E's `wal-fetch` speed is not enough and fetching & replaying cannot catch up with the original WAL stream (see [#1703 2020-02-25: Postgres Replication lag is over 3 hours on archive recovery replica (#note_300658834)](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/1703#note_300658834)). Although WAL-E has some [WAL prefetching implemented](https://github.com/wal-e/wal-e/blob/master/wal_e/worker/prefetch.py), observations showed that it does not perform well, and a helper Bash script [created by @ahachete](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/1703#note_300658210) to prefetch WALs solved the lagging problem.

WAL-G has a more advanced prefetching implementation, with control (option `WALG_DOWNLOAD_CONCURRENCY`) and better performance.

### Additional aspects

#### DR: RPO and RTO

RPO cannot be very close to 0 with asyncrhonous replicas. There are plans to migrate to Postgres 11, after which we are planning to consider using sync replicas / quorum commit to minimize RPO.

RTO is restricted by the speed of `backup-fetch` and `wal-fetch`. See above the considerations on their performance. With migration to WAL-G (actually, even with partial migration, when WAL-E is still being used for backup creation but all recovery is done using WAL-G working with WAL-E archives), we expect to have the speed of basebackup restoration ~2 TiB/h (hence, ~2.5 hours for the current database size), and ~1 hours for fetching and replaying ~1 TiB of WALs data. This gives RTO not more than 3.5h, depending on the amount of WAL data to be applied. With "hybrid" approach (WAL-G + GCE snapshots), RTO can be further reduced to ~1-1.5h.  

#### Logging issues
- the basebackup process is logged to a local file on the master, without timestamps
- each run of `backup-push` overwrites the previous log file.

#### Backup tool support, bug fixes, improvements

Currently, WAL-G is developing rapidly; it is well-maintained. There are known large installations (hundreds and thousands of Postgres instances).


## Proposed solutions and the action plan

WAL-G is considered as a replacement for WAL-E.

GCE snapshots look like an attractive alternative to basebackups. However, they must be thoroughly tested before use.

### Zero-risk step-by-step plan

1. The main part – migration from WAL-E to WAL-G:
    1. Start manual testing WAL-G recovery from WAL-E archives (in general, it is supported; however, [there is a bug related to GCS that needs to be fixed](https://github.com/wal-g/wal-g/issues/469))
    1. Implement automated testing of WAL-G recovery from WAL-E archives in "gitlab-restore", scheduled daily
    1. Switch to WAL-G recovery for PITR, #database-lab, DR replicas
    1. Keeping WAL-E on the master, start using WAL-G on a replica
    1. Switch testing WAL-G recovery process in "gitlab-restore" to using WAL-G archive
    1. Allow significant time for testing and comparison of two backup tools, draw intermediate conclusions
    1. Turn off WAL-E archiving on the master, fully switch to WAL-G archiving:
        1. keep WAL-G's `backup-push` on a replica (implement some logic to choose a replica, paying special attention to failover events),
        1. switch from WAL-E's `wal-push` to WAL-G's `wal-push` on the master,
        1. turn off verification of WAL-E recovery in "gitlab-restore".
1. Additional items (independent, can be done in parallel):
    1. `sda`, `sdc` disks: switch to SSD.
    1. Improve daily basebackup logging ([#1251](https://gitlab.com/gitlab-com/gl-infra/production/issues/1251))
    1. Test snapshots as a replacement of basebackups.
        1. recover from a production snapshot to a "gitlab-restore" instance,
        1. consider adding `pg_start_backup()/pg_stop_backup()` when making a snapshot,
        1. in "gitlab-restore", implement automated testing of recovery from snapshot + WAL archive replay,
        1. start using this approach for provisioning of non-production instances.

------

## Miscellaneous related documents
- [Production Architecture / Database Architecture](https://about.gitlab.com/handbook/engineering/infrastructure/production-architecture/#database-architecture)
- [PostgreSQL troubleshooting (internal)](https://ops.gitlab.net/gitlab-com/runbooks/blob/master/troubleshooting/postgres.md#tables-with-a-large-amount-of-dead-tuples)
- [Using WAL-E](https://gitlab.com/gitlab-com/runbooks/blob/master/howto/using-wale-gpg.md)
- [daily basebackup](https://gitlab.com/gitlab-cookbooks/gitlab_wale/blob/master/templates/default/basebackup.sh.erb)
- [the hardest problem] in case of failover, WAL sequence in WAL-E archive might be broken. May be gaps, may be overlapping (an extra WAL from the old timeline) links - TBD
- Postgres backups: analyze amount of WAL data generated daily [#8432](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8432)
- 2019-07-19 DR Site Patroni won't stay replicated [#7293](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7293)
- How DR replicas are organized (based on WAL archive), an explaination from [@abrandl](https://gitlab.com/abrandl) [#7293 (comment 196029050)](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7293#note_196029050)
- example from [@stanhu](https://gitlab.com/stanhu) [#7293 (comment 197960296)](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7293#note_197960296)
- Consider alternatives to wal-e for WAL shipping/backups [#4926](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/4926)
- Backup Masterless [&27](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/27)
- PoC: Database backups based on snapshots [#7066](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7066) (summary: [#7066 (comment 201621163)](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7066#note_201621163))
- "During weekdays, the daily backup takes up to 16 hours to complete. It increases the load and IO wait on the primary extraordinarily when it runs during higher traffic times" [#7066](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7066)
- "Today, the primary database host is quite overloaded and the backup is running since about 14 hours. This results in high iowait, for example - which becomes a problem during high traffic times." [#7066 (comment 195848486)](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7066#note_195848486)
- /etc/fstab issue [#7066 (comment 201621163)](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7066#note_201621163)
- Split postgres backup testing project [#6485](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6485)
- Test backup and restore performance of wal-g [#5775](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5775)
- When backups run on primary certain things don't work well [#5480](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5480)
- Test and compare the speed of restoration: WAL-E vs WAL-G 0.2.13 vs WAL-G 0.1.10 [#8276](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8276)
- WAL-G Issues on Staging [#6312](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6312)
- Move gstg back to wal-e [#7383](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7383/)
- "restore" instances verifying staging backups are not automatically destroyed, which puts daily verification of production backup to danger [#7320](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7320)
- (dual archiving, wale + walg, does not work well) staging postgres dr broken due to missing wal files [#5899](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5899)
- wal-g: DR replica missing WAL segments in staging [#6868](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6868)
- staging postgres dr broken due to missing wal files [#5937](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5937)
- ops.gitlab.com - wal-g backup hang [#6177](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6177)
- Adjust monitoring and alerts to match wal-g [#5778](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5778)
- Adjust runbooks for wal-g [#5783](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5783)
- Setup wal-g for the restore pipeline [#5777](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5777)
- Changes to wal-g cookbook (incremental backups, support for GCS) [#5776](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5776)
- Analyze current PostgreSQL disk I/O usage in Azure and compare with what's available in GCP [#4650](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/4650)
- RCA: Patroni Failover incident on September 3rd, 2019 [#7767](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7767)
- use pushgateway to indicate pg backup start and finish [#7056](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7056)
- gitlab_wale tests have broken [#2400](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/2400)
- production postgres base backup failure [#7049](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7049)
- Last successful WALE basebackup was seen 48.09s ago [#1243](https://gitlab.com/gitlab-com/gl-infra/production/issues/1243)
- Matt's thoughts on backup verification procedures  [#1243 (comment 234768758)](https://gitlab.com/gitlab-com/gl-infra/production/issues/1243#note_234768758)
- 2019-10-23 WALE basebackup stopped working [#1273](https://gitlab.com/gitlab-com/gl-infra/production/issues/1273)
- WAL-E python error [#1273 (comment 234726876)](https://gitlab.com/gitlab-com/gl-infra/production/issues/1273#note_234726876)
- Database backup for 2019-01-29 missing [#671](https://gitlab.com/gitlab-com/gl-infra/production/issues/671)
- Postgres backup restores fail [#5852](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5852)
- Postgres backup testing broken [#6702](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6702)
- CR for fixing backup logging [#1251](https://gitlab.com/gitlab-com/gl-infra/production/issues/1251)
- Test and compare the speed of restoration: WAL-E vs WAL-G 0.2.13 vs WAL-G 0.1.10 [#8276](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8276)
- Test Postgres database restoration from GCP snapshots on staging [#8489](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8489)
- Postgres backups: analyze amount of WAL data generated daily [#8432](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8432)
- Use WAL-G to restore from Postgres backups created by WAL-E [#8735](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8735)
- Daily Postgres full backup improvements: better observability + protection from overlapping [#8723](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8723)
- [https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8644](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/8644)
- [Development of delta-backups in WAL-G, Andrey Borodin](https://www.youtube.com/watch?v=Wsu4SLVSUzI) (video, 40 min)
- [WAL-G discussion at Hacker News](https://news.ycombinator.com/item?id=19259099)
- [Advanced PostgreSQL backup & recovery methods](https://www.postgresql.eu/events/pgconfeu2018/sessions/session/2098/slides/123/Advanced%20backup%20methods.pdf) (PDF, 31 slides; a comparison of Barman, pg_probackup, WAL-G and pgBackRest) 
- [PostgreSQL Wiki: Incrementally Updated Backups](https://wiki.postgresql.org/wiki/Incrementally_Updated_Backups)


Author: [Nikolay Samokhvalov](https://gitlab.com/NikolayS) {: .note}
