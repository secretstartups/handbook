---
layout: handbook-page-toc
title: "Production Architecture"
---


Our GitLab.com core infrastructure is primarily hosted in Google Cloud Platform's (GCP) `us-east1` region (see [Regions and Zones](https://cloud.google.com/compute/docs/regions-zones/)).

This document does not cover servers that are not integral to the public facing operations of GitLab.com.

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

<div class="panel panel-gitlab-orange">
**This is a Controlled Document**
{: .panel-heading}
<div class="panel-body">

Inline with GitLab's regulatory obligations, changes to [controlled documents](https://about.gitlab.com/handbook/engineering/security/controlled-document-procedure.html) must be approved or merged by a code owner. All contributions are welcome and encouraged.

</div>
</div>

## Purpose

This page is our [document](https://about.gitlab.com/handbook/engineering/security/controlled-document-procedure.html#creation) that captures an overview of the production architecture for GitLab.com.

## Scope

The compute and network layout that runs GitLab.com

## Roles and Responsibilities

| Role  | Responsibility |
|-----------|-----------|
| Infrastructure Team | Responsible for configuration and management |
| Infrastructure Management (Code Owners) | Responsible for approving significant changes and exceptions to this procedure |

## Procedure

### Related Pages

- [Application Architecture documentation](https://docs.gitlab.com/ee/development/architecture.html)
- [GitLab.com Settings](/gitlab-com/settings/)
- [GitLab.com Rate Limits](https://docs.gitlab.com/ee/user/gitlab_com/index.html#gitlabcom-specific-rate-limits)
- [Monitoring of GitLab.com](/handbook/engineering/monitoring/)
- [GitLab performance monitoring documentation](https://docs.gitlab.com/ee/administration/monitoring/performance/index.html)
- [Performance of the Application](/handbook/engineering/performance/)
- [Gemnasium Service Production Architecture](supporting-architecture.html#gemnasium)
- [CI Service Architecture](ci-architecture.html)
- [dev.gitlab.org Architecture](supporting-architecture.html#dev-gitlab-org)
- [ops.gitlab.net Architecture](supporting-architecture.html#ops-gitlab-net)
- [version.gitlab.com Architecture](supporting-architecture.html#version-gitlab-com)


### Current Architecture
{: #infra-current-archi-diagram}

#### GitLab.com Production Architecture
{: #gitlab-com-architecture}

<img src="https://docs.google.com/drawings/d/e/2PACX-1vShfNY5bxtjAsYq-YBDAJAnyjBuxN0i62NoDvbmhvDVOrCas20_Q4XA8Qxm1D2v0mmemP9y-rDsRQFe/pub?w=669&h=551">

[Source](https://docs.google.com/drawings/d/1NmafL3ULQnjuY3_JFMWDwXpjdd0I1hyMXkZ0bwUYNhI/edit), GitLab internal use only

The infrastructure department is transitioning GitLab.com to Kubernetes using the [GitLab cloud native helm chart](https://docs.gitlab.com/charts/).
Migrating GitLab.com to Kubernetes is being completed in phases, prioritizing services that are stateless and ready to be run in a cloud-native environment at GitLab.com scale.
All new GitLab.com services are deployed in Kubernetes.
See the [reasoning for the migrating away from virtual machines](/handbook/engineering/infrastructure/production/kubernetes/gitlab-com/) for more details including the justification for the migration and the following epics that have more details about the migration:

* **[Migration epic ](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/112)**: Parent epic for all infrastructure department work to migrate GitLab.com to Kubernetes.
* **[Application blockers](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=kubernetes-migration-blocker)**: Label used to track blockers in the application and cloud-native charts that are preventing the migration of GitLab.com to Kubernetes.

##### Cluster Configuration
{: #cluster-configuration }

GitLab.com uses 4 Kubernetes clusters for production with similarly configured clusters for staging.
One cluster is a Regional cluster in the `us-east1` region, and the remaining three are zonal clusters that correspond to GCP availability zones `us-east1-b`, `us-east1-c` and `us-east1-d`.
The reasons for having multiple clusters are as follows:
* Ensure that high-bandwidth services do not send network traffic across zones.
* Isolation of workloads
* Isolation of maintenance changes and upgrades to the clusters

For more information on why we chose to split traffic into multiple zonal clusters see [this issue exploring alternatives to the single regional cluster](https://gitlab.com/gitlab-com/gl-infra/delivery/-/issues/1150).
A single regional cluster is also used for services like Sidekiq and Kas that do not have a high bandwidth requirement and services that are a better fit for a regional deployment.

In keeping with GitLab's value of transparency, all of the Kubernetes cluster configuration for GitLab.com is public, including infrastructure and configuration.

The following projects are used to manage the installation:
* [k8s-workloads/gitlab-com](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-com): Contains the GitLab.com configuration for the [GitLab helm chart](https://gitlab.com/gitlab-org/charts/gitlab).
* [k8s-workloads/gitlab-helmfiles](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-helmfiles/): Contains the configuration cluster logging, monitoring and integrations like PlantUML.
* [k8s-workloads/tanka-deployments](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/tanka-deployments): Contains the configuration for Thanos, Jaeger and other services not directly related to the GitLab application.
* [gitlab-com-infrastructure](https://gitlab.com/gitlab-com/gitlab-com-infrastructure/): Terraform configuration for the cluster, all resources necessary to run the cluster are configured here including the cluster, node pools, service accounts and IP address reservations.

All inbound web, git http, and git ssh requests are received at Cloudflare which has HAProxy as an origin. HAProxy routes between the new cluster and the legacy VM infrastructure. Node pools are used to isolate workloads for different services running in the cluster and are defined in Terraform. For Sidekiq, multiple pods are configured for Sidekiq cluster to divide Sidekiq queues into different resource groups. See the [chart documention for Sidekiq](https://docs.gitlab.com/charts/charts/gitlab/sidekiq/) for more details.

##### Monitoring and Logging

Monitoring for GitLab.com runs in the same cluster as the application. Metrics are aggregated in the ops cluster using [Thanos](https://thanos.io) that has multiple components.

Prometheus is configured using the [kube-prometheus-stack helm chart](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack) in the namespace `monitoring`, and every cluster has its own Prometheus which gives us some sharding for metrics.

<img src="https://docs.google.com/drawings/d/e/2PACX-1vRsr0FMLtX9Cy6KiXhAc90SNz_w_JyifZzdWw8y8WsVotU-7qtRpxHLbKkDoAE60ckhWP30PEw9bOvZ/pub?w=800">

[Source](https://docs.google.com/drawings/d/1ELrompqluRa00-Q_L9Ruq6W5KHFmgh1Wn1cdwEpOhaw/edit?usp=sharing), GitLab internal use only

**Note**: This is a simplified view of the GitLab monitoring infrastructure. All monitoring components are also currently running in VMs while we are [migrating them to Kubernetes](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/283). For a more detailed look into GitLab monitoring infrastructure see the [Thanos production readiness document](https://gitlab.com/gitlab-com/gl-infra/readiness/-/blob/726b85d67353915e300e9d2531ff71d748696749/thanos/overview.md#architecture).

Alerting for the cluster uses generated [rules](https://gitlab.com/gitlab-com/runbooks/-/tree/master/rules) that feed up to our [overall SLA](/handbook/engineering/infrastructure/performance-indicators/#gitlab-com-availability) for the platform.

Logging is configured using a fork of the [fluentd-elasticsearch helm chart](https://gitlab.com/gitlab-org/charts/fluentd-elasticsearch) where the logs for every pod is forwarded to a unique Elasticsearch index. This chart is deployed in the namespace `logging`.

##### Cluster Configuration Updates

There is a single namespace `gitlab` that is used exclusively for the GitLab application.
Chart configuration updates are set in the [gitlab-com k8s-workloads project](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-com) where there are [yaml configuration files](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-com/-/tree/master/releases/gitlab/values) that set defaults for the GitLab.com environment with per-environment overrides.
Changes to this configuration are applied by the SRE and Delivery team after a review using a MR review workflow.
When a change is approved on GitLab.com the pipeline that applies the change is run on a separate operations environment to ensure that configuration updates do not depend on the availability of the production environment.

For namespaces in the cluster for other services like logging, monitoring, etc. a similar GitOps workflow is followed using the [gitlab-helmfiles](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-helmfiles) project.

##### GitLab Application Updates

Updates are deployed to both VM infrastructure and the Kubernetes cluster in lock-step, this ensures that the same version is deployed to both VMs and the cluster.
When an application update is ready, the CI pipeline that deploys to virtual machines triggers a [k8s-workloads/gitlab-com](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-com) pipeline that updates the application image in the cluster.
This pipeline is run on a separate operations environment to ensure that application updates do not depend on the availability of GitLab.com.

GitLab.com does not depend on itself when pulling images utilized in our Kubernetes clusters.
Instead, we utilize our [dev.gitlab.org](https://dev.gitlab.org) container registry for [CNG images](https://gitlab.com/gitlab-org/build/CNG/).
This is to ensure that during an incident, we will still maintain the ability to pull images and run our applications as necessary.
For any image that we do not build ourselves, these may be pulled from Docker Hub.
Conveniently, these images are mirrored on Google's [Container Registry product](https://cloud.google.com/container-registry/docs/pulling-cached-images).
Our GKE nodes are configured from the start with this mirror already in place providing further redundancy in the event that the Docker Hub is unavailable.

#### Database Architecture

<img src="https://docs.google.com/drawings/d/e/2PACX-1vT-w2R-TuNkrvYzn6pmVOPmswhxt1o6yOhfEczgT3EHkD7xVkx3wtyOHndSJxBwcHwsnSPUun5SSVRc/pub?w=960&amp;h=720">

[Source](https://docs.google.com/drawings/d/1BWb1Q-hJzCZs8krvYwi5V9F_hJe-4CJdtIORfVGWJLo/edit), GitLab internal use only

#### Redis Architecture

<img src="https://docs.google.com/drawings/d/e/2PACX-1vRlVEM91d_D4YzzQCzb7kaclbw-F4QvYg7Ml7Xz9S9aAcNCEUM6RGMF3Uadx8jYaniE1NCOmLP754xz/pub?w=960&h=720">

[Source](https://docs.google.com/drawings/d/1-j_nFW7EJ01Te26f6zZzFNaPboVzVUtAmuFBbqzztVQ/edit), GitLab internal use only

<img src="https://docs.google.com/drawings/d/e/2PACX-1vRbtcZrFV_XALpBm-kKaWGPR1Si0hKIc4QWh0PiAs00NftY4ZqVke_3e5fDc3yPzj7ENPBNivMFRtpJ/pub?w=960&h=720">

[Source](https://docs.google.com/drawings/d/1uXr2NVEdpWgmIrrveJBapYdTwZcm8NdQGbQCVsGut-Y/edit), GitLab internal use only

GitLab.com uses several redis shards for various use cases such as caching, rate-limiting, sidekiq queueing. More info on various redis shards, their
configuration, and usage can be found in the [chef-repo](https://gitlab.com/gitlab-com/gl-infra/chef-repo/-/tree/master/roles) and [GitLab](https://gitlab.com/gitlab-org/gitlab/-/tree/master/lib/gitlab/redis).

#### Network Architecture

<img src="/images/handbook/engineering/infrastructure/production-architecture/network-arch.png">

[Source](https://drive.google.com/file/d/19-IMmcJHVUz_bWOXU7_1NoYOdQJEZ3lM/view?usp=sharing), GitLab internal use only

Our network infrastructure consists of networks for each class of server as
defined in the Current Architecture diagram.  Each network contains a similar
ruleset as defined above.

We currently peer our ops network.  Inside of this network is most of our
monitoring infrastructure where we allow InfluxDB and Prometheus data to flow in
order to populate our metrics systems.

For alert management, we peer all of our networks together such that we have a
cluster of alert managers to ensure we get alerts out no matter a potential
failure of an environment.

No application or customer data flows through these network peers.

#### DNS & WAF

We host our DNS with Cloudflare (gitlab.com, gitlab.net) and route53 (gitlab.io and others).
For more information about CloudFlare see the [runbook](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/cloudflare/README.md) and the [architecture overview](https://gitlab.com/gitlab-com/gl-infra/readiness/-/blob/6f92124563835415e5c6e59f40b32e7307d3fb67/cloudflare/README.md#with-cloudflare).


#### TLD Zones

When it comes to DNS names all services providing GitLab as a service shall be in the `gitlab.com` domain, ancillary services in the support of GitLab (i.e. Chef, ChatOps, VPN, Logging, Monitoring) shall be in the `gitlab.net` domain.

#### Remote Access

Access is granted to only those whom need access to production through bastion hosts.
Instructions for configuring access through bastions are found in the [bastion runbook](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/bastions).

### Secrets Management

GitLab utilizes two different secret management approaches, GKMS for Google Cloud Platform (GCP) services, and Chef Encrypted Data Bags for all other host secrets.

#### GKMS Secrets

For more information about secret management see the runbook for [Chef secrets using GKMS](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/uncategorized/gkms-chef-secrets.md), [Chef vault](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/config_management/chef-vault.md) and [how we manage secrets in Kubernetes](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-com#gitlab-secrets).

### Monitoring

See how it's doing, for more information on that, visit the [monitoring handbook](/handbook/engineering/monitoring/).


## Exceptions

Exceptions to this architecture policy and design will be tracked in the [compliance issue tracker](https://gitlab.com/gitlab-com/gl-security/security-assurance/sec-compliance/compliance/-/issues/).

## References
* Parent Policy: [Information Security Policy](/handbook/engineering/security/)
