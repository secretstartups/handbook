---
layout: handbook-page-toc
title: "ZFS for Repository Storage Nodes"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Problem Statement

Today, each git repository hosted on gitlab.com is stored on exactly one storage
node. Specifically, it is stored on an ext4 filesystem backed by one Google
Cloud persistent volume. We take GCE snapshots of that volume every 4 hours,
which are used for recovery in the event of volume loss (a rare event on GCP),
and also for restoring accidentally deleted files.

The data in the snapshot are [not guaranteed to be consistent while processes
are still writing to the volume being
snapshotted](https://cloud.google.com/compute/docs/disks/snapshot-best-practices).
Also, Creating GCE disks from these snapshots is a slow process.

In the event of volume loss we could stand to lose up to 4 hours of writes, but
in practice, this is unlikely due to the existence of our disaster recovery (DR)
environment as a [GitLab Geo](/solutions/geo/).

## Goals

This project aims to improve our mean time to recovery (MTTR) and recovery point
objective (RPO) when restoring accidentally deleted git repository data.  ZFS
snapshots are fast to create, cheap to store (due to its copy-on-write
semantics) and are guaranteed to be consistent. This goal fits into the [FY20 Q2
infrastructure team OKR](/company/okrs/fy20-q2/) “Drive
all user-services MTTR to less than 60 seconds”.

It is sometimes desirable to use a realistic, production-sized dataset for
testing. Taking consistent ZFS snapshots will help us achieve this goal.

The Adaptive Replacement Cache (ARC) that ZFS makes use of offers potential
performance improvements over our current configuration. In addition to the
level 1 (memory) ARC, we may be able to attain further performance improvements
by adding a level 2 ARC on local SSDs that are attached via NVMe.

Having recent, guaranteed consistent snapshots is also a step towards improving
our MTTR and RPO for disaster recovery, although we won’t reap the benefits of
this until we ship these snapshots somewhere other than the same persistent disk
that be the subject of the disaster.

Improve I/O throughput and reduce disk space required through the use of ZFS
native compression.

ZFS was [previously investigated as a potential solution to backing GitLab
services](/handbook/engineering/infrastructure/design/zfs-filesystem/)
and we believe that it is a good solution to solve the problems described above.
In particular, the ZFS features that we believe will help us achieve our this
project’s goals are fast and cheap snapshot+restore, the ARC, and native
compression. ZFS provides many features such as disk-level redundancy (RAIDZ)
and error correction from block-level corruption but we do not anticipate
needing to take advantage of these features (see the non-goals section).

## Non-goals

High availability with regard to single-volume failure. We are satisfied that
this is too rare an event for GCE persistent disks to attempt to improve.

Error correction from block-level corruption (bit flipping). We are satisfied
with Google’s [guarantees on persistent disk data
durability](https://cloud.google.com/persistent-disk/).

High availability with regard to virtual machine failure. There is ongoing work
on Gitaly HA features that will enable this.

Replace PD-SSD disk snapshots for longer-term recoverability.

Changes to disaster recovery MTTR or RPO, where a disaster is the irrecoverable
loss of a GCP region, including volume data. We rely on our DR environment as a
Geo backup in these cases.

Zero-downtime migration at the individual repository level. We will aim to make
use of a GitLab API that [moves a repository between
shards](https://gitlab.com/gitlab-com/runbooks/blob/master/howto/sharding.md#moving-repositories-between-shards)
to perform the migration, and will first investigate the downtime consequences
and consistency guarantees of this API.

Infrastructure automation for obtaining realistic, production-sized test data
sets. Further work should be able to build on this project to do this.

## Risks

ZFS is a versatile but complex filesystem. We will have to undertake work to
observe and tune its behavior so as to optimize it towards our workload.

Some mistakes in ZFS setup (such as recordsize, and other configuration options
that cannot easily be changed) will require a reset of the pool with all of its
data forcing another migration.

## Costs

When git-gc runs, it repacks the whole repository into new files. From a storage
point of view, this may cause ZFS to provision new blocks. If the old blocks are
still referenced by an existing snapshot then we must have enough storage to
account for this. We will need to investigate how much extra storage we will
need for this. This is dependent on the size of the repositories and the
frequency with which git-gc is run relative to snapshot retention time. See
[this post](https://christian.amsuess.com/idea-incubator/space-efficient-git/).

## Past Efforts

- [Design document about using ZFS on
  nodes](/handbook/engineering/infrastructure/design/zfs-filesystem/)
- [Epic about using ZFS as a base image root
  filesystem](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/58)
