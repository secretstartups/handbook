---
layout: handbook-page-toc
title: "Design: Storage Nodes"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Issue: [`infra/5088`](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5088)

# Idea/Problem Statement

We currently have a fleet of 24 storage nodes where Git data is stored, which requires access to
a POSIX-compliant file system. These nodes have about 16TB of storage each and they run on EXT4
file systems. While we use mirroring to address potential faults on the storage subsystem of these
nodes (e.g., for underlying device failures), we do not have a strategy to protect against other
failure modes (e.g., file system corruption, involuntary deletions) or disaster recovery (e.g.,
complete loss of data, tho Geo does cover this). We also lack the ability to use the data in these
systems for testing in a safe manner, which is desirable to be able to validate GitLab against its
large data set.

# Design

GitLab's storage architecture for Git data implements a simple and boring approach by using standalone
storage nodes running the Gitaly service. At a very basic level, the application uses a project lookup
table to determine which storage node contains a given project. This approach is highly performant
(especially once NFS was removed), avoids some of the inherent complexities of running a distributed
file system, and keeps the design and its associated components simple and manageable.

The proposal entails switching the storage nodes to use the ZFS file system, which is a mature file 
system and logical volume manager with snapshot, clone and asynchronous replication capabilities. ZFS
is designed with a focus on data integrity and management simplicity. The adoption of ZFS also affords
us independence from specific cloud provider features, which is a significant factor for self-managed
installations.

## Addressing Requirements

#### File System Corruption

ZFS implements data-protection features such as  end-to-end checksums, data replication, and 
transactional updates, which ensure data integrity. While the file system on disk is always consistent, 
ZFS regularly scrubs disks in search of inconsistencies, most of which are silently fixed through the
use of ZFS checksums. ZFS negates the need to run fsck against a file system, which in large file 
systems can take considerable amounts of time.

#### Unwanted Deletions

The use of regularly and frequently scheduled snapshots can be used to protect against unwanted 
deletions. Depending on the circumstances of the deletion, data can be recovered selectively by
manual copying from a snapshot to a live file system, or a live file system can be rolled back 
to a specific snapshot. Snapshots are instantaneous, and prior experience has shown ZFS’s ability
to hold hundreds or thousands of snapshots in a single file system (available storage permitting). 
While cloud providers offer snapshot capabilities, these work below the file system, and thus 
cannot guarantee the consistency of the file system when snapshots are taken (which could be worked
around with tooling).

#### Disaster Recovery

ZFS has asynchronous remote-replication capabilities built-in, through the use of rolling snapshots, 
efficiently sending deltas between snapshots. These capabilities can be used to replicate the contents
of the storage nodes elsewhere. The initial copy is, of course, expensive, as the file system has to
be transferred entirely. Additional iterations are significantly faster. Geo provides this functionality,
but the adoption of ZFS implies we can benefit from the experience, and its availability on the storage
nodes themselves can be useful in extreme cases.

#### Testing

There is a strong desire to be able to do testing with production data. ZFS clones can be used to 
provide this data for testing in a safe fashion as follows: a snapshot of a file system is created, and
from this snapshot, a clone can be instantiated. The live file system and the clone share the data 
contained in the clone. The clone stores changes to the clone itself (additions, deletions, updates) 
without affecting the data in the live file system. When testing is completed, the snapshot and the 
clone can be discarded, returning the storage they consumed during their use.

## Architecture

#### Anatomy of a Storage Node

A storage node is a pool of POSIX-compliant storage with Gitaly running on top of it to perform 
Git operations against repositories hosted on said node. Repositories at the disk level are grouped
in shards. Currently, there is one shard per host, but a Gitaly server can support multiple shards.
A single ZFS storage pool in each storage node would contain one ZFS file system per Gitaly shard.
If we ever decided to run multiple shards, each shard would be assigned a ZFS file system. These
file systems share the storage in the underlying pool. A ZFS file system is the basic ZFS operating 
unit against which snapshots and clones be created, and remote replication accomplished. These 
operations are simply accomplished through the use of the `zpool` and `zfs` commands.

## Implementation Considerations

#### Testing

We should perform proper benchmarking of ZFS on GCP through the use of tools like FileBench, which
allow us to model workloads. Additionally, we should test:

 * Underlying device failures to gather data on resilvering speeds and throttling
 * Model unwanted deletions to test our ability to restore selectively or at the file system level
 * Setup remote replication on a desired target to measure latencies, lags, and speeds
 * Setup snapshots and clones to model the creation and teardown of testing environments
 * Setup a parallel staging environment where we can start measuring the performance for the database and the staging file servers.
 * Setup a dedicated shard for a subset of internal repositories before we role this out for new customers.
 * Compare latency histograms for real-world workloads from ext4 control and zfs experimental volumes (Proposal: eBPF + Prometheus eBPF exporter)

#### GitLab.com and Self-Managed

The adoption of ZFS allows us to maintain independence from any cloud provider, so it is entirely 
feasible to use ZFS in both GitLab.com and self-managed installations. One important aspect to 
consider is how to migrate existing installations from their current file systems to ZFS.

## Operational Considerations

#### Automation

ZFS Chef cookbooks exist for ZFS on Linux: https://github.com/biola/chef-zfs_linux, and we will
likely have to invest in automation to manage ZFS file systems in relation to Gitaly shards. 
Tooling will be necessary to manage snapshots and clones, especially in relation to testing 
environments. Project recovery tooling (from snapshots) is also necessary to ease the process.

#### Monitoring

Monitoring ZFS is not unlike monitoring other file systems (latency and iowait being some of the
most important metrics to keep track of). Additionally, ZFS will produce events when devices fail. 
Metrics on scrub and resilver runs should be collected. If we were to use remote replication, lag
times are critical in meeting SLAs, which need to be established.

## Additional Considerations

In the past, questions have been raised related to ZFS license, which is CDDL, with products under
the GPLv2 (such as the Linux kernel). Canonical took the first step towards addressing this issue in
2016, shipping ZFS as a Linux module. Some references regarding this issue include:

 * [*ZFS Licensing and Linux*](http://blog.dustinkirkland.com/2016/02/zfs-licensing-and-linux.html)
 * [*Are GPLv2 and CDDL incompatible?*](https://blog.hansenpartnership.com/are-gplv2-and-cddl-incompatible/)

The Software Freedom Conservancy has an opposing viewpoint on this matter:

 * [GPL Violations Related to Combining ZFS and Linux](https://sfconservancy.org/blog/2016/feb/25/zfs-and-linux/)

# Alternatives

Alternatives considered include:

#### LVM Snapshots (ext4, XFS)

LVM provides support for the creation of logical volume snapshots. As such, these take place below
the file system level, which requires the file system be temporarily quiesced so as to be able to take
a snapshot of the file system in a consistent state. Otherwise, the block-level snapshot may contain 
in-flight file system updates, yielding a potentially unstable file system. LVM does this automatically. 
A number of file systems can be frozen with the `fsfreeze` utility.

This methodology temporarily suspends I/O to the file system, creating a potential write backlog that
the storage subsystem must resolve once the snapshot has been taken and the file system thawed. Snapshot
creation is quick, so this should not generally be a significant issue.

As ZFS provides fully integrated volume manager and file system functionality, this process is far simpler
and less disruptive. In some respects, ZFS adheres to the principle of building the simplest and most 
boring solution for the problem at hand, with the additional benefit of providing added functionality 
(such as end-to-end checksums, clones and remote replication) that is highly desirable and fully integrated. 

#### Ceph

>The Ceph Filesystem (CephFS) is a POSIX-compliant filesystem that uses a Ceph Storage Cluster to store
its data. The Ceph filesystem uses the same Ceph Storage Cluster system as Ceph Block Devices, Ceph Object
Storage with its S3 and Swift APIs, or native bindings (librados).

Ceph is an entirely different beast from single-host file systems such as XFS or ZFS. In some respects,
it creates a monolith at the storage layer through a distributed file system (and Ceph does this in elegant
ways). It is far from a simple solution, and some of its core functionality (such as object storage) is 
simply of no use to GitLab, given Git requires POSIX semantics. It is a non-trivial solution for something
that the Gitaly architecture already solves (project sharding).

