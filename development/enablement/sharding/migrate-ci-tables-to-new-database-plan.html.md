---
layout: handbook-page-toc
title: Migrate CI Tables To New Database Plan
---

## TL;DR

There are 3 interesting parts of the migration with fairly simple solutions:

1. How do we perform the switch: Pause PGBouncer, reconfigure and reload configuration.
1. How do we block writes during the cutover: Pause or shut down the PGBouncer CI write hosts as all CI table writes will already be going via dedicated hosts.
1. How do we do initial and incremental data sync: Postgres streaming replication. Same as we use for replicas today.

## Background on existing production PGBouncer/Consul/Patroni/Postgres architecture

More details can be found in
[runbooks](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/pgbouncer/patroni-consul-postgres-pgbouncer-interactions.md).

There are currently 2 different architectures in production for GitLab/PGBouncer/Patroni/Postgres/Consul.

In all cases Patroni is keeping Consul DNS up to date with the correct
locations of primary and replica hosts.

### R/W connections: GitLab -> PGBouncer primary hosts -> Consul DNS -> Postgres

1. The R/W connections go through a set of PGBouncer hosts that point to the actual
   primary by looking for a DNS record. GitLab hardcodes the DNS record that
   points to this set of hosts. It is a network level TCP load balanced set of
   hosts with a single virtual IP.
1. The PGBouncer hosts hostname is `pgbouncer.int.gprd.gitlab.net`
1. The hostname for the current primary (as updated by Patroni to Consul DNS) is `master.patroni.service.consul`. PGBouncer has a 2s ttl on DNS to check it frequently.

### Readonly (replica) connections: GitLab -> Consul DNS -> PGBouncer -> Postgres

1. GitLab checks the DNS record `db-replica.service.consul` to get the list of hosts
1. GitLab obtains connections for all hosts (which are actually PGBouncer instances on the same node as the Postgres server)
   1. Note: Although the primary runs PGBouncer instances (since it could become a replica at any time) they are just dormant when it is the primary since connections come from the dedicated R/W PGBouncer hosts

## Plan

### Preparation ahead of migration (can be safely rolled back and requires no downtime or migrating data)

1. Application will be updated to support multiple DB connections. To start
   with it will still just use the default connection for all models.
1. We will create a new [standby Patroni cluster](https://patroni.readthedocs.io/en/latest/replica_bootstrap.html#standby-cluster) that is streaming updates using async
   streaming replication (same as normal Patroni setup) from our existing
   Patroni cluster. This new cluster will advertise the primary
   as `master-ci.patroni.service.consul` and the replicas as
   `db-ci-replica.service.consul`. Also see [more detailed instructions on how
   Standby Patroni Cluster has previously be setup for
   Geo](https://docs.gitlab.com/ee/administration/geo/setup/database.html#configuring-patroni-cluster-for-a-geo-secondary-site)
   which may inform how we set it up for this use case.
1. GitLab.com can now be configured so that replica connections for CI tables
   use service discovery for `db-ci-replica.service.consul`.
1. Deploy a new set of PGBouncer primary hosts with hostname
   `pgbouncer-ci.int.gprd.gitlab.net` that connects to
   `master.patroni.service.consul`.
1. GitLab.com can now be configured so that primary connections for CI tables
   use `pgbouncer-ci.int.gprd.gitlab.net`.

### Actual migration

1. On the weekend
1. Confirm replication lag is low between our main Patroni cluster and new CI
   Patroni cluster
1. Block writes via the CI PGBouncer write hosts. This can be done by pausing
   PGBouncer or shutting it down
1. Confirm there are currently no connections from CI PGBouncer write hosts to
   the main Postgres database
1. Check current LSN of main Patroni cluster leader called `last_update_lsn`
1. Wait until streaming replication from main Patroni cluster to CI Patroni
   cluster has caught up to `last_update_lsn`
1. Remove the streaming replication from main Patroni cluster to CI Patroni cluster
1. Update the configuration of PGBouncer to point to `master-ci.patroni.service.consul`
1. Restart/unpause PGBouncer
1. This is considered the "Point of no return". See [Rolling
   back](#rolling-back) for the options for recovering from failures from here.
1. At this point the transition is complete but there will be many failed
   writes to CI tables for the updates that were in the queue behind the
   transaction as well as the 2s window before PGBouncer notices the DNS
   change. Depending on the actual time for all these steps this may not be any
   different to a normal failover that happens every now and then and as such
   some users may get 500s and some sidekiq jobs may fail and need to retry.

### Cleanup after the migration

1. Truncate ci tables on main database
1. Delete non-ci tables from CI database

## Rolling back

Rolling back depends on where you are at in the chain of migration steps. The
last point before you can roll back will be after writes have been written to
the new destination CI Patroni cluster. Beyond this point the options you have
for recovery will depend heavily on the specific failure.

Here are some example scenarios:

1. If for some reason you run into issues just deploying the new standby
   Patroni cluster that impact availability of GitLab.com then you should
   remove the `standby_cluster` configuration section from the new Standby
   cluster and remove the replication slot from the `slots` section of the main
   Patroni cluster. After this you can safely just remove or shut down the new
   CI Patroni cluster infrastructure.
1. If you have issues with GitLab connecting to the new databases but have not
   past the "point of no return" then you can just revert the GitLab
   configuration changes such that GitLab no longer uses separate connections
   for the `ci` database. This just involves reverting the change to add `ci:`
   section to `config/database.yml`. After this you may choose to rollback
   specific infrastructure changes that deployed the new hardware.  This is
   effectivly cleanup and does not need to be rushed.
1. If you are past the "point of no return" and writes are not being written to
   the new destination host and they are just failing or being lost then:
   you can change the CI PGBouncer host back to writing to the main Patroni
   cluster `master.patroni.service.consul`.
1. If you are past the "point of no return" and writes have been written to the
   new cluster but you need to roll back due to some performance issues then
   this will likely require downtime. If there is no data loss it will be
   possible to recover by stopping the CI PGBouncer and then doing a `pgdump`
   of all the `ci_*` tables. Then use that `pgdump` to recover the up to date
   state of all `ci_*` tables on the main Patroni cluster. At this point you
   can reconfigure the CI PGBouncer back to point to the main cluster
   `master.patroni.service.consul` and re-enable writes.
1. If you are past the "point of no return" and find out after we've done the
   cutover migration that something was still updating CI tables in `main` DB.
   This is a split brain and recovery will be very difficult. We may need to
   tolerate data loss but we should try to mitigate the risk. One way is
   [using Postgres locks/triggers to block writes](#using-postgres-lockstriggers-to-block-writes).
   Another way to mitigate risk is by doing tests early and using monitoring to
   confirm that `ci_*` tables are never updated via the `main` DB connection.
1. After the "point of no return" there may also be other manual ways of
   recovering. If writes have happened to the CI database but we still want to
   rollback then we need to replay all of those writes against the main
   database. This should be possible as all of those writes should be in WAL
   files that are either locally available or archived. The tricky thing will
   be that we cannot just replay the WAL files as we only want to replay
   updates to the CI tables as the `main` database has also been taking writes
   to non-CI tables. An approach could involve replaying these through another
   database and then streaming the updates from that 3rd database using logical
   replication. Read more at
   <https://gitlab.com/gitlab-org/gitlab/-/issues/345560#replaying-ci-table-updates-back-to-main-using-a-3rd-database-and-logical-replication>.

## Process in diagrams and execution epic

You can find an epic describing the steps and blockers for executing this
process at <https://gitlab.com/groups/gitlab-org/-/epics/6160> .

## Possible optimizations to the plan

We will investigate through experiments (eg. benchmarking) some optimizations
that may reduce user impact or just generally make the process safer or faster.

### Using Postgres locks/triggers to block writes

Using PGBouncer to block CI writes may not give us 100% confidence that CI
writes aren't still happening to the `main` DB due to an application bug. We
may want to investigate using locks or triggers to block writes in the `main`
database for any CI tables. This could act as a redundant check to mitigate
risk.
1. Open transaction and acquire a lock to block any writes to CI tables in main Patroni cluster:
   1. `LOCK TABLE ci_builds, ci_pipelines, ... IN EXCLUSIVE MODE`
1. Add triggers to main database to fail INSERT/UPDATE (new triggers will not be
   replicated because we will remove replication before committing this
   transaction)

In order to validate this plan could work we need to experiment with whether or
not we can obtain these locks in a reasonable timeframe. See
https://gitlab.com/gitlab-com/gl-infra/production/-/issues/4943 .

### Validation steps

The current plan doesn't involve doing any validation to check that the `ci_*`
tables are the same in both databases. We simply rely on checking that the
Postgres replication is up to date. We don't, yet, have any reason to suspect
that data could be lost if replication is up to date but still it would be
preferable to have a 2nd independent data point to abort in case there is
something wrong.

We may want to experiment with some possible options and see how long they
would take to calculate:

1. Largest `id` over some table(s) that changes frequently
1. Largest `updated_at` over some table(s) that changes frequently
1. Count rows in some table(s) that changes frequently
1. Checksum of some data which changes frequently

### Swapping streaming replication for logical replication when DBs are almost in sync

We don't believe it's a good idea to use logical replication as the main way to
keep the databases in sync over a long period of time. There are a few reasons.
Firstly it does not replicate schema changes so it would get out of sync every time we
run a migration. Secondly it is much slower than streaming replication.

We do, however, think that logical replication of only the relevant tables
(`ci_*`), only during a brief window in a low usage time, may result in less
updates that need to be synced and therefore a briefer downtime window when
switching over the databases. Additionally it may afford us more rollback
options if we were to reverse the direction of logical replication after the
switchover since it would then allow us to switch back to a database with all
writes in place.

We need to add specific details about how this conversion of streaming
replication into logical replication would work without gaps and we also need
to experiment with whether or not logical replication can keep up in quiet
times. Ideally we'd also experiment with how much time this may reduce from the
overall plan as it will add some complexity.
