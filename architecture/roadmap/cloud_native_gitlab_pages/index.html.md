---
layout: markdown_page
title: "GitLab Pages Architecture Updates Blueprint"
---

## GitLab Pages Architecture Updates

GitLab Pages is an important component of the GitLab product. It is mostly
being used to serve static content, and has a limited set of well defined
responsibilites. That being said, unfortunately it has become a blocker for
gitlab.com Kubernetes migration.

Cloud Native and the adoption of Kubernetes has been recognised by GitLab to be
one of the top two biggest tailwinds that are helping us grow faster as a
company behind the project.

This effort is described in a more details [in the infrastructure team
handbook](/handbook/engineering/infrastructure/production/kubernetes/gitlab-com/).

GitLab Pages is tightly coupled with NFS and in order to unblock Kubernetes
migration a significant change to GitLab Pages' architecture is required. This
is an ongoing work that we have started more than a year ago. This blueprint
might be useful to understand why and what is the roadmap.

## How GitLab Pages Works

[TODO]

## NFS coupling

In 2017, we experienced serious problems of scaling our NFS infrastructure. We
even tried to replace NFS with
[CephFS](https://docs.ceph.com/docs/master/cephfs/) - unsuccessfully.

Since that time it has become apparent that the cost of operations and
maintenance of a NFS cluster is significant and that if we ever decide to
migrate to Kubernetes [we need to decouple GitLab from a shared local storage
and
NFS](https://gitlab.com/gitlab-org/gitlab-pages/-/issues/426#note_375646396).

1. NFS might be a single point of failure
1. NFS can only be reliably scaled vertically
1. Moving to Kubernetes means increasing the number of mount points by an order
   of magnitude
1. NFS depends on extremely reliable network which can be difficult to provide
   in Kubernetes environment
1. Storing customer data on NFS involves additional security risks

Moving GitLab to Kubernetes without NFS decoupling would result in an explosion
of complexity, maintenance cost and enormous, negative impact on availability.

## Iterations

1. ✓ Redesign GitLab Pages configuration source to use GitLab's API
1. ✓ Evaluate performance and build reliable caching mechanisms
1. ✓ Incrementally rollout the new source on gitlab.com
1. ✓ Make GitLab Pages API domains config source enabled by default
1. Enable experimentation with different servings thorough feature flags
1. Triangulate object store serving design through meaningful experiments
1. Design pages migration mechanisms that can work incrementally
1. Gradually migrate towards object storage serving on gitlab.com

[TODO describe roadmap, strategy and iterations better]

## Who

Proposal:

| Role                         | Who
|------------------------------|-------------------------|
| Author                       |     Grzegorz Bizon      |
| Architecture Evolution Coach |     Kamil Trzciński     |
| Engineering Leader           |      Daniel Croft       |
| Domain Expert                |     Grzegorz Bizon      |
| Domain Expert                |    Vladimir Shushlin    |
| Domain Expert                |     Jaime Martinez      |

DRIs:

| Role                         | Who
|------------------------------|------------------------|
| Product                      |      Jackie Porter     |
| Leadership                   |      Daniel Croft      |
| Engineering                  |           TBD          |
| Domain Expert                |     Kamil Trzciński    |
| Domain Expert                |     Grzegorz Bizon     |
| Domain Expert                |     Krasimir Angelov   |
| Domain Expert                |    Vladimir Shushlin    |
| Domain Expert                |     Jaime Martinez      |

