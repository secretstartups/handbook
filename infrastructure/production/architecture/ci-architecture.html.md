---
layout: handbook-page-toc
title: "CI Service Architecture"
---

This document only covers our shared and GitLab shared runners, which are
available for GitLab.com users and managed by the [Infrastructure teams](../).

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## General Architecture
{: #ci-general-arch}

Our CI infrastructure is hosted on Google Cloud Engine (GCE) with a backup
environment on Digital Ocean (DO). In GCE we use the `us-east1-c` and
`us-east1-d` regions. In the event of GCE downtime, we can unpause the Digital
Ocean runners which run in NYC1. All of them are configured via Chef. These
machines are manually created and added to chef and do NOT use terraform at this
time.

In each region we have few types of machines:

- **X-runners-manager** - hosts with the GitLab Runner process. These hosts
  handle job’s execution and autoscaled machines scheduling. For the second task
  they are using Docker Machine and API exposed by used cloud provider.
- **autoscaled-machine-N** - hosts created and managed by the GitLab Runner.
  They are used to run a job’s scripts inside of Docker containers. Currently
  we’re allowing a machine to be used only by one job at once. Machines created
  by `gitlab-shared-runners-manager-X` and `private-runners-manager-X` are
  re-used. However, machines created by `shared-runners-manager-X` are removed
  immediately after the job is finished.
- **Helpers** - hosts that provide auxiliary services such as monitoring and
  cache.
  - **Prometheus** - Prometheus servers in each region monitor machines.
  - **Runners Cache** - Caches job data and images from Docker Hub (**DO ONLY**)
  - **Consul** - Consul servers provide service discovery for prometheus (**DO
    ONLY**)

Runner managers connect to the GitLab.com and dev.gitlab.org API in order to
fetch jobs that need to be run. The autoscaled machines clone the relevant
project via HTTPS.

The runners are connected as follows:

- **shared-runners-manager-X** (srm): connected to GitLab.com and are available
  to all GitLab.com users as shared runners.  Privileged mode is off.
- **gitlab-shared-runners-manager-X** (gsrm): connected to GitLab.com and
  dev.gitlab.org. They are available as shared runners to GitLab.com and tagged
  with `gitlab-org`. They provide services to `gitlab-ce` and `gitlab-ee`
  projects and all their forks. They are the generic shared runners on
  dev.gitlab.org. Privileged mode is off.
- **private-runners-manager-X** (prm): connected to both GitLab.com and
  dev.gitlab.org. They are registered as specific runners to the GitLab
  application projects and used only by us. Privileged mode is on.

## Detailed Architecture
{: #ci-detailed-arch-diagram}

<img src="/images/handbook/engineering/infrastructure/production-architecture/ci-cd-gce-arch.png">

[Source](https://docs.google.com/drawings/d/1tskQW-dCHNMN-f6mfrtbcWRGKC4vZzg5UiQrpR28wTU/edit?usp=sharing)

### Windows Architecture

<img src="/images/handbook/engineering/infrastructure/production-architecture/windows-ci-cd.png">

[Source](https://docs.google.com/drawings/d/1oApCYUuh7ft8hnm9ToWjG8Ce9g1Hvo8MKTBL5DtjDk8/edit)


## Data Flow
{: #ci-data-flow}

### Management Data Flow

- `prometheus.gprd.gitlab.net` scrapes each runner host with the job `ci-node`.
   Prometheus also scrapes specific prometheus nodes within the runners' regions
   using [prometheus
   federation](https://prometheus.io/docs/prometheus/latest/federation/).
- `chef.gitlab.com` server is accessed by all hosts from inside of Cloud
   Provider Region, excluding autoscaled machines.

### GitLab Data Flow

- **runners-manager-X** hosts are connected to one or more GitLab instances and
  are constantly asking the API for new jobs that should be executed. After the
  job is started Runners are also updating the job’s trace and status by sending
  updates to the GitLab instance. This communication uses Runner’s API from
  GitLab APIv4.

- **autoscaled-machine-N** hosts first access GitLab with the git+http(s)
  protocol to receive project sources with git pull or git fetch operations,
  depending on configuration. This operation uses the general git+http(s)
  protocol and specific type of authentication (using gitlab-ci-token feature).
  The job may also access project’s submodules using GitLab with the same
  protocol as for the project. These hosts may also upload and/or download
  artifacts to and from GitLab. The `gitlab-runner-helper` binary is used for
  this purpose which uses Runner’s API from GitLab APIv4.

### Cloud Region Internal Communication

- **runners-manager-X** to **autoscaled-machine-N** - Runner starts jobs on
  autoscaled machines using the Docker Engine API. After the machine is created,
  Runner receives IP:PORT information about where the Docker Engine API endpoint
  is available. In GCE this uses the internal IP address, but DO uses the
  external address. Using the Docker Engine API, Runner first schedules the
  different containers used for the purpose of the job. It then starts job’s
  scripts and receive commands output. This output is then sent upstream to
  GitLab as it was described above.

- **prometheus-X** to **autoscaled-machine-N** - the Prometheus server requests
  the autoscaled machines for exported metrics. It uses the HTTP(S) protocol for
  this.

### Cloud Region External Communication

- **runner-manager-X** to **Cloud Provider API Gateway** - Runner, using Docker
  Machine, manages autoscaled machines used for executing jobs. It uses Cloud
  Providers API to schedule machines creation and removals. It also uses the
  same API to gather information about existing machines.

- After creating the machine Runner uses received IP:PORT to schedule containers
  and execute jobs scripts there.

- **autoscaled-machine-N** to **external Docker Registry** - Docker Engine,
  using Docker Registry API, pulls Docker Images from external machines. This
  could be Docker Hub, GitLab Registry, or any other Docker compatible registry.

### Digital Ocean Specific Services

- **autoscaled-machine-N** to-and-from **runners-cache-X** - the job uses
  `gitlab-runner-helper` binary which can access the Minio S3 service to
  download and/or archive cache. This operation is done using the S3 protocol.
  (**DO ONLY**)

- **Docker Engine**, when started by Docker Machine on behalf of Runner, may
  also be configured to use the Registry Mirror service on the cache server. In
  that case, Docker Engine will try to access Registry Mirror using the Docker
  Registry API in order to download required layers from the Mirror instead of
  the external Registry. (**DO ONLY**)

- **autoscaled-machine-N** to-and-from **Consul Cluster** - autoscaled machines
  have Consul Agent installed on them. This Agent is using Consul’s GOSSIP
  protocol to register/unregister themselves from the Cluster. During
  registration machines provide information about services available on the
  machine. Currently we export only information about metrics exporters for
  Prometheus). (**DO ONLY**)

- **prometheus-X** to **Consul Cluster** - the Prometheus server also contains
  the Consul Agent. This agent is using Consul’s GOSSIP protocol to
  register/unregister information about services (also restricted to metrics
  exporters). Additionally Prometheus is using it’s Consul Service Discovery
  mechanism to gather information about all targets that should be scraped.
  (**DO ONLY**)

- **prometheus-X** to **consul-X** - Prometheus server requests each of consul
  servers for exported metrics. It uses the HTTP(S) protocol for this. (**DO
  ONLY**)

- **runners-cache-X** to **external Docker Registry** - if Registry Mirror is
  used, it pulls requested images from external Registries using the Docker
  Registry API. It pulls only layers that are not available locally already.

## Deployment and Configuration Updates
{: #ci-configuration}

The Runner and it’s configuration is handled with Chef and defined on
chef.gitlab.com. The detailed upgrade process is described in the [associated
runbook](https://gitlab.com/gitlab-com/runbooks/blob/master/howto/update-gitlab-runner-on-managers.md).

In summary:

- For a configuration update we need to:
  - update definitions in chef-repo and upload new definitions to
    chef.gitlab.com,
  - execute `sudo chef-client` on nodes where needed.
- For a Runner version update:
  - update definitions in chef-repo and upload new definitions to
    chef.gitlab.com,
  - execute `sudo /root/runner_upgrade.sh` on nodes where needed.

Why the difference?

When we’re updating Runner, the process needs to be stopped. If this is done
during job’s execution, it will break the job. That’s why we use Runner’s
feature named graceful shutdown. By sending SIGQUIT signal to the Runner, we’re
causing Runner to not request new jobs but still wait for existing ones to
finish. If this was done from inside of `chef-client` run it could fail in
unexpected way. With the `/root/runner_upgrade.sh` script we’re first stopping
Runner gracefully (with 7200 minutes timeout) and then starting `chef-client` to
update the version.

For Runner’s configuration update there is no need to stop/restart Runner’s
process and since we’re not changing Runner’s version, `chef-client` is not
upgrading package (which could trigger Runner’s process stop). In that case we
can simply run `sudo chef-client`. This will update the config.toml file and
Runner will automatically update most of the configuration.

Some of the general configuration parameters can’t be refreshed without
restarting the process. In that case we need to use the same script as for the
Runner Upgrade.

## Additional Features
{: #ci-additional-features}

We also have a few processes that are configured on some of the runner-manager-X
machines and are not included in the graphs above:

- **digitalocean-exporter** - currently started manually as Docker Containers
  (with --restart always policy) on `private-runners-manager-1` and
  `private-runners-manager-2`hosts. This process contacts the DO API and fetches
  information about used droplets.

- **hanging-droplets-cleaner** - currently started manually as Docker Containers
  (with --restart always policy) on all DO Runners (`shared-runners-manager-1`,
  `shared-runners-manager-2`, `gitlab-shared-runners-manager-1`,
  `gitlab-shared-runners-manager-2`, `private-runners-manager-1`,
  `private-runners-manager-2`). This process does a cross-check between machines
  available locally for Docker Machine and Droplets existing in DO. If it find
  any Droplet that doesn’t have an existing machine on the host, it removes the
  Droplet. This process is also exporting Prometheus metrics about the number of
  found and removed droplets and about errors occurred during such operations.

- **droplet-zero-machines-cleaner** - is currently started manually as Docker
  Containers (with --restart always policy) on all DO Runners
  (`shared-runners-manager-1`, `shared-runners-manager-2`,
  `gitlab-shared-runners-manager-1`, `gitlab-shared-runners-manager-2`,
  `private-runners-manager-1`, `private-runners-manager-2`). This process looks
  for a locally defined Docker Machines that in their configuration have
  DropletId=0 value. If such machine is found, and is older than a defined
  limit, it’s removed. The process is also exporting Prometheus metrics about
  the number of found and removed machines and about errors occurred during such
  operations.

All above metrics can be tracked on our [CI
Dashboard](https://dashboards.gitlab.net/d/000000159/ci).

**hanging-droplets-cleaner** and **droplet-zero-machines-cleaner** processes are
specific for DigitalOcean integration. We’ve discovered specific problems for
this cloud provider and the tools were developed to automatically handle the
cleanup.


## Important Links and Metrics
{: #ci-important-info-links}

### Monitoring Information

- `prometheus-app.gprd.gitlab.net` - for metrics scraped from GitLab via unicorn
  exporter and GitLab Monitor project
- `prometheus.gprd.gitlab.net` - for Runner internal metrics, node metrics of
  Runner Manager machines, gathering metrics about our cloud providers,
  gathering metrics of autoscaled machines with federation from CI Prometheus
  servers (Ben is currently working on enabling Thanos there, so Grafana will
  access CI Prometheus servers directly)
- `prometheus-01.nyc1.do.gitlab-runners.gitlab.net`,
  `prometheus-01.us-east1-c.gce.gitlab-runners.gitlab.net`,
  `prometheus-01.us-east1-d.gce.gitlab-runners.gitlab.net` - for scraping
  metrics from exporters installed on autoscaled machines - currently node
  exporter only.
  - DO environment is being slowly terminated and it exists only for backup
    purposes. We’ve already had some strange outages on GCP and DO was enabled
    during this time.
  - In DO we’re using consul for service discovery for CI Prometheus to detect
    all autoscaled machines.
  - In GCP we’re using native GCP service discovery support that is available in
    Prometheus.
- Alerts are sent to #ci-cd-alerts channel on Slack


### Monitoring Links

- [CI Monitoring Overview](https://dashboards.gitlab.net/d/000000159/ci)
- [CI Cloud Provider
  Stats](https://dashboards.gitlab.net/d/sXVh89Imk/ci-autoscaling-providers)
- [CI Autoscaling
  Stats](https://dashboards.gitlab.net/d/sv_pUrImz/ci-autoscaled-machines-metrics)
- [CI Logs (only
  GCP)](https://log.gprd.gitlab.net/goto/28a7ad7581fa7e86d519247a5456addd)
- [CI Shared Runners Sentry (srm
  machines)](https://sentry.gitlab.net/gitlab/shared-gitlab-runners/)
- [CI Internal Runners Sentry (gsrm & prm
  machines)](https://sentry.gitlab.net/gitlab/internal-gitlab-runners/)
- [CI Alert
  Configuration](https://gitlab.com/gitlab-com/runbooks/blob/master/alerts/gitlab-com-ci.yml)
