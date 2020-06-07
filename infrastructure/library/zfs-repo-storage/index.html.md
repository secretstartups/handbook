---
layout: handbook-page-toc
title: "ZFS for Repository Storage Nodes"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Scope

The initial problem statement, goals, and non-goals of this project were defined
in the
[blueprint](/handbook/engineering/infrastructure/blueprint/zfs-repo-storage/),
which you should read first. Only where this design diverges from the blueprint
will these things be documented here.

## Following this Project

An [epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/65) has been
created, and you can follow the
[board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/1118049?milestone_title=Dev%20%26%20Ops%20-%20FY20Q2%3A%3AKR%3A%3AMigrate%20repos%20to%20ZFS%20storage).  

## Timeline

We see the project as having 3 phases: development, migration, and
post-migration. That is not to say they don't overlap at all, but broadly
speaking we will aim to have infrastructure code (mainly chef and terraform) in
master of the necessary repositories, ready for a migration with minimal moving
parts.

## Development Considerations

### Packages and Kernels

Our machines currently run Ubuntu 16.04, using the [LTS enablement stack
kernel](https://wiki.ubuntu.com/Kernel/RollingLTSEnablementStack#Rolling_HWE_Stacks_for_16.04).
Since 16.04 is more than 2 years old this is frozen on the 4.15 series. This is
the kernel that 18.04 shipped with, and this is when Ubuntu began shipping with
the ZFS kernel module included, at version 0.7.5.

The latest version of ZFS-on-Linux (ZoL), the Linux port of OpenZFS, is
[0.8.0](https://github.com/zfsonlinux/zfs/releases/tag/zfs-0.8.0), which was
released recently. There are several new features in this release. One notable
feature that we would benefit from is TRIM support for SSDs.

The LTS enablement kernel minor version of Ubuntu 18.04 will not be frozen until
April 2020. It is currently on the 4.18 series, and ships with the ZFS 0.7.9
kernel module. It is likely that Ubuntu 18.04 LTS enablement kernels will get
ZFS 0.8.0 in the coming months, but we do not want to upgrade our storage nodes
to Ubuntu 18.04 for 2 reasons: it would increase the scope and complexity of the
project, and would leave us with a heterogeneous fleet, running different
distribution versions.

We would like to build our own ZFS package from the ZoL source and install it
from our Aptly server. A [proof of concept project has been
created](https://gitlab.com/gitlab-com/gl-infra/gitlab-zfs) to investigate the
viability of this.

### ZFS Configuration

#### Disk Configuration

Disk layout and sizing is being discussed in an
[issue](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6726).

Although the blueprint states that we are leaning towards a single-disk
configuration because we are satisfied with Google's availability guarantees and
error correction, we have since decided to use a RAIDZ1 configuration of 9 disks
(plus local SSDs for L2ARC). The reasons for this change of mind are defence in
depth, and also performance. Benchmarking results will be written up in [an
issue](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6883).

We are also considering running HDDs instead of SSDs to save money, relying on
the SSD-backed L2ARC to mitigate the performance drop
([issue](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6905)).
Benchmarks will need to satisfy us that this is feasible, howere.

We are not currently considering configuring an external ZFS intent log
(external ZIL / SLOG device. The performance of a GCP disk (IOPS and throughput)
is [correlated with disk
size](https://cloud.google.com/compute/docs/disks/performance). In order to not
bottleneck writes at the SLOG disk we would need to provision a disk much larger
than is needed to store the intent log. This is not cost-effective.

#### Kernel Module Configuration

Gitaly has a small memory footprint in production. That leaves us with the
ability to dedicate a large proportion of our main memory to the ZFS adaptive
replacement cache (ARC). The exact amount should be determined while working an
issue but we anticipate at least 75%.

Storage nodes will have some local SSDs attached by NVMe to use as a fast level
2 ARC. ZFS should be properly configured to utilize these.

#### Filesystem Configuration

The exact zpool and zfs configuration has not been decided up-front but will
instead be investigated as part of an issue, and initial configuration will be
merged into a chef cookbook.

Being a copy-on-write filesystem, deletions consume a small amount of metadata
in ZFS. Therefore, filling a zpool completely can be a difficult situation to
recover from. For this reason it is considered a best practice to create a
“reservation” filesystem in each zpool. It can be temporarily shrunk in order to
give headroom to recover from other filesystems becoming full. The exact size of
this reservation will be determined when we propose an initial ZFS configuration
in an MR.

ZFS supports native compression, using various algorithms. If it is confirmed by
testing that git repository data benefits from compression (i.e. the git objects
not already being compressed) then we will make use of this feature.

ZoL supports native encryption as of the latest version, 0.8.0. Our GCE disks
are already encrypted at rest, but we do not control the keys ourselves using
Google’s Key Management Service (KMS). At the time of writing we have not
decided whether or not it makes more sense to use ZFS encryption, start using
KMS for volumes, or both. An issue will be created.

### Capacity Planning / Resource Sizing

As stated in the ZFS config section above, we intend to use 9 GCP PD-SSDs in a
raidz1 configuration.  Due to inefficiencies in git repack operations (see
<https://christian.amsuess.com/idea-incubator/space-efficient-git>), that run
periodically for all repositories hosted on gitlab.com, a ZFS snapshot taken
before the repack will reference disjoint blocks to one taken after. Therefore
the zpool disk usage for the repo will be doubled until the old snapshot passes
out of the retention window. If repacking occurred simultaneously for every repo
on a GitLab installation (which is unlikely), our filesystem usage would spike
to double. Therefore in the worst case we would need at least twice the usable
filesystem space as the data we intend to store on the node. However, since
repacking of different repos should be spread out in time in realistic
scenarios, we could use a lower multiple. Determining this multiple will be the
output of a research issue.

We will need more zpool space than usable filesystem space to make room for the
aforementioned, “reservation” filesystem.

We will need more block device space than usable zpool space, because raidz
doesn’t offer 100% block device space utilisation due to redundancy.

RAM/CPU changes compared to today are not being considered at this time. We
intend to keep using GCP n1-standard-32 VMs, which have 32 vCPUs and 120GB of
RAM. We don’t want to reduce the amount of memory available for caching, and we
have determined in the past that 32 vCPUs are needed for acceptable network
bandwidth.

We can make use of GCP local SSDs, attached via NVMe, as a level 2 ARC for ZFS.
These are ephemeral and scoped to the life of the VM, but that doesn’t matter
for a cache. These disks are available in a [fixed size of
375GB](https://cloud.google.com/compute/docs/disks/local-ssd). In order to have
a sensible multiple of the level 1 ARC available at level 2, and in order to
increase IO throughput of the cache, we are planning to use 2 of these disks per
node.

### Dependency Validation

#### GitLab APIs

Our migration plan (see below) will likely involve using a [GitLab API to move
repositories between file store
shards](https://gitlab.com/gitlab-com/runbooks/blob/master/howto/sharding.md#moving-repositories-between-shards).
We will be calling this API for every repository that is stored on gitlab.com,
so it is worth doing some validation work in advance to:

Validate that this API is not racy: after it returns, the new repository
location is guaranteed to contain all data that was in the old, even if writes
were attempted during the migration.  Quantify the downtime, if any, for repos
being migrated. This should be done for various representative sizes of repo
(50th, 95th, 99th percentile size). Real repositories should be used rather than
dummies if possible.

#### Git

If git makes use of direct IO on Linux, then we will need to use the latest
version of ZoL, 0.8.0, in which the feature was added. A quick [grep of the git
source code](https://github.com/git/git/search?q=O_DIRECT&unscoped_q=O_DIRECT)
indicates that it does not in any case.

## Migration Considerations

### Migration Plan

#### Node Migration

Migrations will be run on staging first, with the goal of using the same
developed scripts against production. We intend to automate as much as is
sensible in order to minimize human error.

The general migration strategy is to roll out N nodes per phase using terraform
and chef in advance of a planned migration date, then to migrate repositories in
batches orchestrating the shard migration API on the date itself.

Currently, disks are formatted and filesystems are mounted at boot time using
the [bootstrap
script](https://gitlab.com/gitlab-com/gl-infra/terraform-modules/google/bootstrap).
In order to support ext4 and zfs (possibly with raidz) depending on node config,
it might make sense to move this functionality into a chef cookbook, for
improved testability and speed of iteration
([issue](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6849)).

Once the migration of an environment is complete we can decommission the old
nodes using terraform.

The first phase will consist of one node, referred to as the canary deployment.
We can further tune our ZFS configuration by observing the canary in production.
In particular, we anticpate optimizing the ZFS recordsize for the observed
workload.

The initial plan for the second phase will migrate the rest of the nodes one by
one, but this will be informed by the output of a research issue so that we know
how long this is expected to take, and make the appropriate handover plans
across time zones if necessary.

#### After Node Migration

After the node migration is complete, we can configure a reasonable snapshot
schedule. Our initial plan is to take snapshots every 15 minutes, with a 6 hour
retention window. Older data restoration will be done by creating disks from GCE
snapshots, the method currently used. The output of this phase will be a runbook
for recovery of accidentally deleted data, with as much of the runbook automated
as possible. Making this self-service is not a goal, SREs will still fulfil
these requests on an ad-hoc basis.

## Post-Migration Considerations

This section is intended to capture “day 2” concerns.

### ZFS-specific Alerting

It is important to alert on the zpool and individual zfs filesystems becoming
full. Due to ZFS’s aforementioned intolerance to being full, we should set these
alerts to a lower threshold than we would for ext4. These should be low-severity
alerts that do not page an on-call engineer, so the threshold should be
sufficiently low that the space is not likely to fill within the next few hours.
We could consider setting a higher-threshold, paging alert as well.

In ZFS inodes are allocated on demand so do not need to be alerted on
(<https://blogs.oracle.com/roch/need-inodes>).

## Further work

This section describes potential future work that is not in scope for this
project, but if embarked on could build on it.

### Disaster Recovery improvements

Periodically `zfs send` snapshots to object storage so that we can recover from
disasters with snapshots that are guaranteed consistent.

### Unused repository cold storage

It might become desirable in the future to move dormant repositories to colder
storage than mounted PDs, for example to object storage such as GCS. This could
be done by sending serialized ZFS snapshots to cold storage using `zfs send`,
but that would require that the ZFS filesystem being snapshotted to only contain
dormant repositories. It’s likely that this would require Gitaly features to
accomplish, as well as a possible rethink of our storage architecture and
another node migration.
