---
layout: handbook-page-toc
title: "Production Architecture"
---


Our GitLab.com core infrastructure is primarily hosted in Google Cloud Platform's (GCP) `us-east1` region (see [Regions and Zones](https://cloud.google.com/compute/docs/regions-zones/))&mdash;and we use GCP iconography in our diagrams to represent GCP resources. We do have dependencies on other cloud providers for separate functions. Some of the dependencies are legacy fragments from our migration from Azure, and others are deliberate to separate concerns in the event of cloud provider service disruption. We're currently working to implement a [Disaster Recovery](https://gitlab.com/gitlab-com/gl-infra/readiness/-/blob/master/library/disaster-recovery/index.md) solution that redesigns our failure scenarios across multi-zone, multi-region, and multi-cloud architectures.

This document does not cover servers that are not integral to the public facing operations of GitLab.com.

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Other Related Pages

- [Application Architecture documentation](https://docs.gitlab.com/ee/development/architecture.html)
- [GitLab.com Settings](/gitlab-com/settings/)
- [Monitoring of GitLab.com](/handbook/engineering/monitoring/)
- [GitLab performance monitoring documentation](https://docs.gitlab.com/ee/administration/monitoring/performance/introduction.html)
- [Performance of the Application](/handbook/engineering/performance/)
- [Gemnasium Service Production Architecture](/handbook/engineering/dev-backend/production-architecture/gemnasium-service.html)
- [CI Service Architecture](ci-architecture.html)
- [dev.gitlab.org Architecture](supporting-architecture.html#dev-gitlab-org)
- [ops.gitlab.net Architecture](supporting-architecture.html#ops-gitlab-net)
- [version.gitlab.com Architecture](/handbook/engineering/dev-backend/production-architecture/version-architecture.html)


## Current Architecture
{: #infra-current-archi-diagram}

<img src="/images/handbook/engineering/infrastructure/production-architecture/gitlab-infra.png">

[Source](https://www.draw.io/?state=%7B%22ids%22:%5B%221JVdcF29Nb3fYTZ57YL7xIbFlWm6fW9lC%22%5D,%22action%22:%22open%22,%22userId%22:%22109983779601367693333%22%7D#G1JVdcF29Nb3fYTZ57YL7xIbFlWm6fW9lC)

### Service Architecture
<img src="/images/handbook/engineering/infrastructure/production-architecture/service-arch.png">

[Source](https://www.draw.io/?state=%7B%22ids%22:%5B%221MopYWzl0XDDUmEibEpTOAj2Jhto3dULp%22%5D,%22action%22:%22open%22,%22userId%22:%22109983779601367693333%22%7D#G1MopYWzl0XDDUmEibEpTOAj2Jhto3dULp)

### Database Architecture

<img src="https://docs.google.com/drawings/d/e/2PACX-1vT-w2R-TuNkrvYzn6pmVOPmswhxt1o6yOhfEczgT3EHkD7xVkx3wtyOHndSJxBwcHwsnSPUun5SSVRc/pub?w=960&amp;h=720">

[Source](https://docs.google.com/drawings/d/1BWb1Q-hJzCZs8krvYwi5V9F_hJe-4CJdtIORfVGWJLo/edit), GitLab internal use only

### Storage Architecture

<img src="https://docs.google.com/drawings/d/e/2PACX-1vT3gT8v7GNEOykjTKCYUNp-gslk1eZQSiEmLZPKLt9Dh9BsaQvRrZWFdfpIU7xYApJkhLy5J5VN3cT5/pub?w=960&h=720">

[Source](https://docs.google.com/drawings/d/1ObQRiSf1n6xLTTQdwt8OETP77EIrQzjl4-BhdZ8zp3U/edit), GitLab internal use only

### Monitoring Architecture

<img src="https://docs.google.com/drawings/d/e/2PACX-1vRGbx0P4CQvD-yPZIfDRVsCOKAwo5LGMl9Fa7QKBWYsefEdhR2vmDPdcyGmQCwMZwWQmbmbdlO1SLlf/pub?w=960&h=720">

[Source](https://docs.google.com/drawings/d/1ffCoExVFbSOLu-aOVbM1I0FQ9EmU-vGDtGWQHM9-uj0/edit), GitLab internal use only

### Network Architecture

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

### DNS & WAF

We host our DNS with Cloudflare (gitlab.com, gitlab.net) and route53 (gitlab.io and others).

Route53:

<img src="/images/handbook/engineering/infrastructure/production-architecture/dns.png">

[Source](https://drive.google.com/file/d/1NPr1NI-pU1UKr4zJTyPwKJoFoLIL2Yda/view?usp=sharing), GitLab internal use only

Cloudflare:

<p>
<details>
<summary>GitLab.com zone</summary>

<img src="/images/handbook/engineering/infrastructure/production-architecture/CF_gitlab.com_DNS.png">

</details>
</p>

<p>
<details>
<summary>GitLab.com</summary>


<img src="/images/handbook/engineering/infrastructure/production-architecture/CF_gitlab.com_HTTPS.png">

</details>
</p>

<p>
<details>
<summary>GitLab.com SSH</summary>


<img src="/images/handbook/engineering/infrastructure/production-architecture/CF_gitlab.com_SSH.png">

</details>
</p>

<p>
<details>
<summary>GitLab.com AltSSH</summary>


<img src="/images/handbook/engineering/infrastructure/production-architecture/CF_gitlab.com_AltSSH.png">

</details>
</p>

[Runbooks](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/cloudflare/README.md)

[Source](https://gitlab.com/gitlab-com/gl-infra/readiness/-/blob/6f92124563835415e5c6e59f40b32e7307d3fb67/cloudflare/README.md#with-cloudflare)

### Chef Architecture

<img src="/images/handbook/engineering/infrastructure/production-architecture/chef-arch.png">

[Source](https://drive.google.com/file/d/1T2EXku49xlZ5cctatG_ygnCTfj3vGsZn/view?usp=sharing), GitLab internal use only


## Host Naming Standards

### Hostnames

A hostname shall be constructed by using the service offered by that node, followed by a dash, and a two digit incrementing number.

i.e.: `sidekiq-NN`, `git-NN`, `web-NN`

Service specific identifiers, when it connotes a difference in build or function, will be identified as `-specific` and precede the two digit numeric

i.e.: `sidekiq-realtime-01`

### Service Tiers

Following the hostname shall be the service tier that the node belongs in:
- `sv` for Service
- `lb` for Load Balancer
- `db` for Database Nodes
- `inf` for Infrastructure Nodes

### Environments

Following the service tier shall be the environment:
- `gprd` for Production
- `gstg` for Staging
- `pre` for PreProd
- `ops` for Operations
- `dev` for Development

### TLD Zones

When it comes to DNS names all services providing GitLab as a service shall be in the `gitlab.com` domain, ancillary services in the support of GitLab (i.e. Chef, ChatOps, VPN, Logging, Monitoring) shall be in the `gitlab.net` domain.

## Internal Networking Scheme

We leverage the use of VPC's greatly.  You can see how we configure these for each of our environments and servers in our [terraform repo](https://gitlab.com/gitlab-com/gitlab-com-infrastructure).

### Remote Access

Access is granted to only those whom need access to production.  At this point
in time we utilize bastion hosts.  Instructions for requesting and using the
bastion hosts can be found in the `*-bastions.md` files in our
[runbooks](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/bastions).

## Secrets Management

GitLab utilizes two different secret management approaches, GKMS for machine in side of Google Cloud Provider, and Chef Encrypted Data Bags for all other host secrets.

### GKMS Secrets

Secrets are divided up based upon the Chef role that will be requiring them
(i.e. Load Balancers, Sidekiq, Storage) and are arranged in JSON files.
The JSON files are encrypted and stored in Google Cloud Storage (GCS) with access
restriction being limited to the environment consuming the keys (i.e. production
servers only have access to the production GCS storage bucket).
The JSON files are encrypted with GKMS keys that are managed by the GKMS service.

#### Node Secret Execution
When a node performs a chef run it pulls the encrypted JSON file out of GCS, makes
a request to the GKMS system as the node, requesting a key to decrypt an object,
and since the nodes have permission the JSON file is decrypted and read into memory
of the current Chef process, making it available for Chef parsing where the secrets
are applied to templates and scripts. Keys are auto-rotated every 90 days.

### Chef Encrypted Data Bags

Secrets are again divided up based upon the Chef role that will be requiring them
and are arranged in JSON structured files. These files are then encrypted and signed with
the individual Chef administrator keys, and the client node keys that need to have access.

#### Node Secret Execution
During a Chef run the client node requests the encrypted data bag from the Chef
server, uses it's own private key to decrypt the contents, and then applies them
to the configuration templates and scripts. Keys are manually rotated roughly every
90 days or whenever we make an change to the Chef administrators, whichever comes first.

## Azure

Azure is where we have lingering infrastructure.  Remaining servers exist here
for a wide variety of reasons.

* Testing/Comparisons with old infrastructure changes
* [Dev](https://dev.gitlab.org)
* [Customers](https://customers.gitlab.com)

## Digital Ocean

Digital Ocean houses several servers that do not need to directly interact with our main infrastructure.

* Chef Configuration Management Servers
* Kerberos
* [Forum](https://forum.gitlab.com)
* [Quality Insights](http://quality-dashboard.gitlap.com)

## AWS

We host our DNS with route53 and we have several EC2 instances for various purposes. The servers you will interact with most are listed below:

* [License](https://license.gitlab.com)
* [Package](https://packages.gitlab.com)
* [Redash](https://redash.gitlab.com)
* [Version](https://version.gitlab.com)

## Monitoring

See how it's doing, for more information on that, visit the [monitoring handbook](/handbook/engineering/monitoring/).

## Technology at GitLab

We use a lot of cool ([but boring](/handbook/values/)) technologies here at GitLab. Below is a non-exhaustive list of tech we use here.

* [Chef](https://www.chef.io/chef/)
* [Consul](https://www.consul.io)
* [ELK Stack](https://www.elastic.co/products) - Running as [managed Elasticsearch on GCP](https://www.elastic.co/gcp)
* [PostgreSQL](https://www.postgresql.org/)
* [Prometheus](https://prometheus.io/)
* [Redis](https://redis.io/)
* [Ruby](https://www.ruby-lang.org/) (probably goes without saying)
* [Terraform](https://www.terraform.io)

## GitLab.com on Kubernetes
{: #gitlab-com-on-kubernetes}

* **[Migration epic ](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/112)**: Parent epic for all infrastructure department work to migrate GitLab.com to Kubernetes.
* **[Application blockers](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=kubernetes-migration-blocker)**: Label used to track blockers in the application and cloud-native charts that are preventing the migration of GitLab.com to Kubernetes.

The infrastructure department is transitioning GitLab.com to Kubernetes using the [GitLab cloud native helm chart](https://docs.gitlab.com/charts/). Migrating GitLab.com to Kubernetes is being completed in phases, prioritizing services that are stateless and ready to be run in a cloud-native environment at GitLab.com scale. See the [reasoning for the migrating away from virtual machines](/handbook/engineering/infrastructure/production/kubernetes/gitlab-com/) for more details including the justification for the migration. The following is a high-level overview of the current configuration of GitLab.com on Kubernetes:

<img src="https://docs.google.com/drawings/d/e/2PACX-1vSKwCRmLfrQSu4gFNyTPXDtKxITE0eIu4cWrmlTzYi2Q4HvuT4Kk6gTfzyCOREvofxzJT5UrNTP9xk8/pub?w=1201&h=807">

[Source](https://docs.google.com/drawings/d/12iFvpvtXM17qybq_hlvoMHU1746clO9EiLv14HM9xkk/edit), GitLab internal use only

### Cluster Configuration
{: #cluster-configuration }

GitLab.com uses 4 Kubernetes clusters for production with similarly configured clusters for staging.
One cluster is a Regional cluster in the `us-east1` region, and the remaining three are zonal clusters that correspond to GCP availability zones `us-east1-b`, `us-east1-c` and `us-east1-d`.
The reason for having multiple clusters assigned to availability zones is to ensure that high-bandwidth services do not send network traffic across zones. For more information on why we chose to split traffic into multiple zonal clusters see [this issue exploring alternatives to the single regional cluster](https://gitlab.com/gitlab-com/gl-infra/delivery/-/issues/1150).
A single regional cluster is also used for services like Sidekiq that do not have a high bandwidth requirement and services that are a better fit for a regional deployment.

In keeping with GitLab's value of transparency, all of the Kubernetes cluster configuration for GitLab.com is public, including infrastructure and configuration. GitLab.com uses 4 Kubernetes cluster for production with similarly configured clusters for staging.
The following projects are used to manage the installation:
* [k8s-workloads/gitlab-com](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-com): Contains the GitLab.com configuration for the [GitLab helm chart](https://gitlab.com/gitlab-org/charts/gitlab).
* [k8s-workloads/gitlab-helmfiles](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-helmfiles/): Contains the configuration for services that are not directly related to the GitLab application. This includes includes cluster logging and monitoring and integrations like PlantUML.
* [gitlab-com-infrastructure](https://gitlab.com/gitlab-com/gitlab-com-infrastructure/): Terraform configuration for the cluster, all resources necessary to run the cluster are configured here including the cluster, node pools, service accounts and IP address reservations.

All inbound web, git http, and git ssh requests are received at Cloudflare which has HAProxy as an origin. HAProxy routes between the new cluster and the legacy VM infrastructure. Node pools are used to isolate workloads for different services running in the cluster and are defined in Terraform. For Sidekiq, multiple pods are configured for Sidekiq cluster to divide Sidekiq queues into different resource groups. See the [chart documention for Sidekiq](https://docs.gitlab.com/charts/charts/gitlab/sidekiq/) for more details.

Monitoring is configured using the [prometheus-operator helm chart](https://github.com/helm/charts/tree/master/stable/prometheus-operator) in the namespace `monitoring`. Alerting for the cluster uses generated [rules](https://gitlab.com/gitlab-com/runbooks/-/tree/master/rules) that feed up to our [overall SLA](/handbook/engineering/infrastructure/performance-indicators/#gitlab-com-availability) for the platform. Dashboards are generated using the [Prometheus Kubernetes Mixin](https://github.com/kubernetes-monitoring/kubernetes-mixin) which allow us drill into scaling events and cluster resource usage including pod memory, CPU, and network utilization.

Logging is configured using a fork of the [fluentd-elasticsearch helm chart](https://gitlab.com/gitlab-org/charts/fluentd-elasticsearch) where the logs for every pod is forwarded to a unique Elasticsearch index. This chart is deployed in the namespace `logging`.

### Configuration updates

There is a single namespace `gitlab` that is used exclusively for the GitLab application.  Chart configuration updates are set in the [gitlab-com k8s-workloads project](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-com) where there are [yaml configuration files](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-com/-/tree/master/releases/gitlab/values) that set defaults for the GitLab.com environment with per-environment overrides. Changes to this configuration are applied by the SRE and Delivery team after a review using a MR review workflow. When a change is approved on GitLab.com the pipeline that applies the change is run on a separate operations environment to ensure that configuration updates do not depend on the availability of the production environment.

For namespaces in the cluster for other services like logging, monitoring, etc. a similar GitOps workflow is followed using the [gitlab-helmfiles](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-helmfiles) project.

### Application updates

Updates are deployed to both VM infrastructure and the Kubernetes cluster in lock-step, this ensures that the same version is deployed to both VMs and the cluster. When an application update is ready, the CI pipeline that deploys to virtual machines triggers a [k8s-workloads/gitlab-com](https://gitlab.com/gitlab-com/gl-infra/k8s-workloads/gitlab-com) pipeline that updates the application image in the cluster. This pipeline is run on a separate operations environment to ensure that application updates do not depend on the availability of GitLab.com.

GitLab.com does not depend on itself when pulling images utilized in our
Kubernetes clusters.  Instead we utilize our
[dev.gitlab.org](https://dev.gitlab.org) instance for the Container Registry.
This is to ensure that during an incident, we will still maintain the ability to
pull images and run our applications as necessary.  For any image that we do not
build ourselves, these may be pulled from Docker Hub.  Conveniently, these
images are mirrored on Google's [Container Registry
product](https://cloud.google.com/container-registry/docs/pulling-cached-images).
And our GKE nodes are configured from the start with this mirror already in
place providing further redundancy in the event that the Docker Hub may be
suffering an incident.
