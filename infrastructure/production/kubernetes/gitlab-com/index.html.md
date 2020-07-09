---
layout: handbook-page-toc
title: "GitLab.com running on the Kubernetes platform"
---

Cloud native and the adoption of Kubernetes has been recognised by GitLab to be one of the top two [biggest tailwinds] that are helping us grow faster as a company behind the project.

GitLab.com is a [potentially large source of IACV](/company/team/structure/#exception-product-management-senior-leader), and is a large operational expense. The large operational expense comes from the cost of running the enterprise level SaaS platform and its day to day operations.

We recognised that adopting the Kubernetes platform for the GitLab SaaS offering will allow us to reduce the operational cost, but also increase the efficiency of the day to day operation. To do that, we've set out to migrate GitLab.com from classic VM deployments to the Kubernetes platform.

## Migration from virtual machines
### Why is this migration so important to us?

One of the largest challenges when growing fast is keeping up with demand. When the infrastructure is static, which can be the case when your infrastructure is based on VM's, it is not trivial to dynamically grow and reduce the size of the infrastructure as a reaction to an external factor.

This is a two-fold problem:

1. Serving customers is not fast enough.
1. Infrastructure costs can be high because the infrastructure size is the same regardless of the demand.

At GitLab (currently, year 2020), we use Terraform to manage VM lifecycle in Google Cloud Platform, and Chef for ensuring consistent configuration. Auto-scaling VM's and using these tools is of course possible. However, in order to accomplish that we need to write additional tooling that would allow us to scale VM's with demand. Furthermore, even with the VM auto-scaling automation in place, the response times for machine creation, installing and configuring GitLab would still be measured in multiple minutes.

With Kubernetes, both of above mentioned problems are addressed in one go. Kubernetes allows scaling infrastructure based on demand at the moment, rather than based on the best guess projections. When the demand is low, Kubernetes will automatically scale down the infrastructure, thus reducing cost. Kubernetes is also made to be an orchestrator, backed by a vast community. This allows us to leverage industry standard tool instead of writing and maintaining our own custom solution.

GitLab.com is at the fast growing phase where we've already experienced the challenges described above. It is reasonable to assume that we can reap benefits that Kubernetes brings to systems at scale.

### How do we measure the success of this migration?

We measure this in both the cost we saved, the turnaround time to serve the user demand, the turnaround time when we need to release any change, but also with dogfooding the Helm charts.

If we use [a single Sidekiq shard as an example](https://gitlab.com/gitlab-com/gl-infra/delivery/-/issues/920), we can highlight the following items:

1. Infrastructure size and cost
1. Performance impact
1. Release and deployment speed
1. Official Helm Charts improvements


#### Infrastructure size and cost

We reduced the number of nodes required to run the workload from 10 to 3 nodes.
The Kubernetes nodes (at the time of writing this doc) are larger than the ones used as VM's, but this is a function of our need to understand how the workload behaves in a new environment and having more headroom for unexpected situations.

What we've seen historically, with other migrations such as [Container Registry](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/1074), is that we save around 50% of nodes, while retaining the same node type. In addition to this, our service capacity grows significantly because a single node can handle many more pods serving the traffic than a single VM is capable of.

#### Performance impact

The job processing latencies have been comparable or better since migrating the workload to Kubernetes. The details can be seen in the [performance section of post migration analysis](https://gitlab.com/gitlab-com/gl-infra/delivery/-/issues/920#shard-performance).

The performance gains are hard to assign to a single change, and our understanding is that this is due to:

1. Removal of NFS dependency - Performance of NFS degrades with number of requests.
1. We are able to scale better to match peak and non-peak traffic.


#### Release and deployment speed

Detailed investigation of the deploy timings is shown in [the following comment](https://gitlab.com/gitlab-com/gl-infra/delivery/-/issues/704#note_364164952).

Comparison between VM and Kubernetes deployment timing is not precise due to how two systems operate at this time. Namely, we do not run VM's and pods at the same time, so we don't deploy to them at the same time, same circumstances and with the same workloads. Also, VM's are taken out of rotation with a specific concurrency, and as a group of services rather than specific shard (sub-service). Still, we can do some rough comparisons.

On the level of single processing unit, single Sidekiq VM and single Sidekiq pod, we can compare time it takes to put traffic on the new version.
Single VM takes 3 minutes and 40 seconds to install and configure, and a maximum of 30 seconds to start processing requests. A single Sidekiq pod, takes 60s on average to enter the ready state and the same maximum of 30 seconds for the process to start processing requests.

*This means that on the single processing unit level we see 3x improvement in deployment speed.*

Very rough comparison of the whole Sidekiq service would say that for 24 VM nodes we run Sidekiq workloads that have not yet been migrated to Kubernetes, we take approximately 30 minutes to upgrade GitLab on them. In February 2020 when we had no Sidekiq services in Kubernetes, this service deployment would take around 50 minutes.

On the other side, it currently takes around 3 minutes to start up a number of pods that can serve traffic shortly after they are started for the services that have been migrated to Kubernetes.  

The total time it takes to deploy our Sidekiq fleet (at the time of writing this doc) went from 50 minutes to around 35 for a similarly organised Sidekiq service, with majority of the time still occupied by workloads running in VM's.

*This means that on the service level, we see approximately 1.5x improvement in deployment speed.*

#### Dogfooding official installation method

GitLab creates an official installation method used by self-managed users to deploy GitLab on Kubernetes. One of the benefits we've experienced in the past was with dogfooding our official installation method.

Namely, when we used our official Linux package to install GitLab on GitLab.com, we've encountered and resolved numerous edge cases before our customers have experienced them.

This is no different for [GitLab Helm Charts](https://gitlab.com/gitlab-org/charts/gitlab) where we've already [filed numerous improvements](https://gitlab.com/gitlab-org/charts/gitlab/-/issues?label_name%5B%5D=team%3A%3ADelivery&scope=all&state=all) which self-managed customers are benefitting from.

[biggest tailwinds]: /handbook/leadership/biggest-tailwinds/
