---
layout: handbook-page-toc
title: Monitoring of GitLab.com
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## GitLab.com Service Level Availability

Service Level Availability (SLA) is the percentage of time during which the platform is in an available state. Other states are _degraded_ and _outage_.

Each of the _user facing_ services have two Service Level Indicators (SLI): the [Apdex] score, and the [Error rate].
The Apdex score is generally a measure of the service performance (latency).
The Error rate measures the percentage of requests that fail due to an error (usually, a `5XX` status code).

A service is considered available when:

1. The Apdex score of the service is _above_ its Service Level Objective ([SLO]),
1. *AND* The error rate is _below_ its Service Level Objective ([SLO]).

An example of available `web` service; within a 1 minute window period:
* At least 95% of requests have a latency within their "satisfactory" threshold
* AND, less than 0.5% of requests return a 5XX error status response.

A service is unavailable, if, for one minute:

* Less than 95% of requests have a latency within their "satisfactory" threshold
* **OR**, more than 0.5% of requests return a 5XX error status response.

In other words, a service needs to simultaneously meet both of its SLO targets in order to be considered available. If either target is not met, the service is considered unavailable.

The availability score for a service is then calculated as the percentage of time that it is available. The Availability score for _each_ service combined define the platform Service Level Availability (SLA). The SLA number indicates availability of GitLab.com for a select period of time.

For example, if service becomes unavailable for a 10 minute period, the availability score will be:

* 99.90% for the week (1 430 minutes of availability out of 1 440 minutes in a week)
* 99.97% for the month (43 190 minutes of availability out of 43 200 minutes in the month)

Finally, the availability metric for GitLab.com is calculated as a weighted average availability over the following services ([weights](https://gitlab.com/gitlab-com/runbooks/blob/master/services/service-catalog.yml) in brackets):

1. `web` (5)
1. `api` (5)
1. `git` (5)
1. `registry` (1)
1. `ci runners` (0)
1. `pages` (0)

The SLA score can be seen on the [SLA dashboard], and the SLA target is set as an [Infrastructure key performance indicator][KPI].

More details on definitions of outage, and degradation are on the [incident-management page](/handbook/engineering/infrastructure/incident-management/#definition-of-outage-vs-degraded-vs-disruption)

## Historical Service Level Availability

| **Year Month** | **Availability** | **Comments** |
| ---- | ----------- | ---- |
| 2021 October | TBD |  |
| 2021 September | 99.85 |  |
| 2021 August | 99.86 |  |
| 2021 July | 99.78% |  |
| 2021 June | 99.84% |  |
| 2021 May | 99.85% | does not include manual adjustment for [PostgreSQL 12 Upgrade](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/4037) |
| 2021 April | 99.98% | |
| 2021 March | 99.34% | |
| 2021 February | 99.87% | |
| 2021 January | 99.88% | |
| 2020 December | 99.96% | |
| 2020 November | 99.90% | |
| 2020 October | 99.74% | |
| 2020 September | 99.95% | |
| 2020 August | 99.87% | |
| 2020 July | 99.81% | |
| 2020 June | 99.56% | |
| 2020 May | 99.58% | |

## Related Pages

- [Production Architecture](/handbook/engineering/infrastructure/production-architecture/)
- [GitLab.com Settings](/gitlab-com/settings/)
- [GitLab Performance Monitoring Documentation](https://docs.gitlab.com/ee/administration/monitoring/performance/#gitlab-performance-monitoring)
- [Performance of the Application](/handbook/engineering/performance/)

## Related Videos

These videos provide examples of how to quickly identify failures, defects, and problems related to servers, networks, databases, security, and performance.

- [Monitoring Tools playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KpQMEbnXjeQUA22SZtz7J0e) *(requires GitLab Unfiltered YouTube account access)*
- [Visualization Tools playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KrDIsPQ68htUUbvCgt9JeQj) *(requires GitLab Unfiltered YouTube account access)*

## Monitoring

### Pingdom Statistics

For a quick view of the availability and performance history of GitLab.com, we use [https://stats.pingdom.com](http://stats.pingdom.com/81vpf8jyr1h9). Specifically, this has the availability and latency of reaching
   - a [GitLab.com issue](http://stats.pingdom.com/81vpf8jyr1h9/1902794/history). For reference, it is the [first gitlab-ce issue](https://gitlab.com/gitlab-org/gitlab-ce/issues/1).
   - [GitLab.com](https://gitlab.com/) "plain and simple" called the [GitLab public check](http://stats.pingdom.com/81vpf8jyr1h9/4932705/history).

### Main Monitoring Dashboards

We collect data using InfluxDB and Prometheus, leveraging available exporters like the node or the postgresql exporters, and we build whatever else is necessary. The data is visualized in graphs and dashboards that are built using Grafana. There are two interfaces to track this, as described in more detail below.

#### Prometheus

We have 3 prometheus clusters: main prometheus, prometheus-db, and prometheus-app. They provide an interface to query metrics using [PromQL](https://prometheus.io/docs/prometheus/latest/querying/basics/). Each prometheus cluster collects a set of related metrics:

- [main prometheus](https://prometheus.gprd.gitlab.net/graph): It collects various [metrics](https://prometheus.gprd.gitlab.net/targets) such as consul and haproxy.
- [prometheus-db](https://prometheus-db.gprd.gitlab.net/graph): It collects Postgresql database related [metrics](https://prometheus-db.gprd.gitlab.net/targets)  such as pg-bouncer exporter and postgres-exporter.
- [prometheus-app](https://prometheus-app.gprd.gitlab.net/graph): It collects application related [metrics](https://prometheus-app.gprd.gitlab.net/targets).

#### Thanos

[Thanos Query](https://thanos-query.ops.gitlab.net) can be used to query metrics aggregated across Prometheus clusters.

#### [Public Monitoring Infrastructure](https://dashboards.gitlab.com/)

- A GitLab.com account is required
- Automatically syncs from the private monitoring infrastructure on every chef client execution. **Don't change dashboards here, they will be overwritten.**
- Refer to this interface by default; only use the private one for those cases where the public dashboard is not available.
By linking to the public dashboard by default, we ensure that we live our transparency value and any users that are interested
can easily view the same data we see.
- Data gathered in InfluxDB is _not_ currently available in public, since InfluxDB does not scrub access tokens from URLs that are measured.

#### [Private Monitoring Infrastructure](https://dashboards.gitlab.net)

- Private GitLab account is required to access
- Highly Available setup
- Alerting feeds from this setup
- All dashboards here also display on the public monitoring infrastructure.
- Separated from the public for security and availability reasons, they should have exactly the same graphs after we deprecate InfluxDB.

#### Adding Dashboards

To learn how to set up a new graph or dashboard using Grafana, take a look at the following resources:

- [Guide to setting up Grafana dashboards by Grafana](http://docs.grafana.org/guides/getting_started/)
- [YouTube video showing how to set up a dashboard](https://www.youtube.com/watch?v=sKNZMtoSHN4&index=7&list=PLDGkOdUX1Ujo3wHw9-z5Vo12YLqXRjzg2)
- The [Grafana repo](https://gitlab.com/gitlab-org/grafana-dashboards) where we keep an archive of InfluxDB dashboards created in Grafana. Use these to see details in the file structure, but note that the repo is truly an archive (nothing populates _from_ it) and can be out of date.

Need access to add a dashboard? Ask any team lead within the [infrastructure team](/company/team/?department=infrastructure-department).

#### Dashboards for stage groups

We have a set of monitoring dashboards designed for [each stage group](/handbook/product/categories/#devops-stages). These dashboards are designed to give an insight, to everyone working in a feature category, into how their code operates at GitLab.com scale. They are grouped per stage group to show the impact of feature/code changes, deployments, and feature-flag toggles.

1. The list of dashboards for each stage group is accessible at <https://dashboards.gitlab.net/dashboards/f/stage-groups/stage-groups> (GitLab team members only), or at the [public mirror](https://dashboards.gitlab.com/dashboards?tag=feature_category&tag=stage-groups) (accessible to everyone with a GitLab.com account, with some limitations).
1. [Guide to getting started with dashboards for stage groups](https://docs.gitlab.com/ee/development/stage_group_dashboards.html)
1. [YouTube video introducing the stage group dashboards](https://youtu.be/xB3gHlKCZpQ)

The dashboards for stage groups are at a very early stage. All contributions are welcome. If you have any questions or suggestions, please submit an issue in the [Scalability Team issues tracker](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/new).

### Selection of Useful Dashboards from the Monitoring

#### Blackbox Monitoring

* [GitLab Web Status](https://dashboards.gitlab.net/dashboard/db/gitlab-web-status): front end perspective of GitLab. Useful to understand how GitLab.com looks from the user perspective. Use this graph to quickly troubleshoot what part of GitLab is slow.
* [GitLab Git Status](https://dashboards.gitlab.net/dashboard/db/gitlab-git-status): front end perspective of GitLab ssh access.

#### Public Whitebox Monitoring

* [Fleet overview](https://dashboards.gitlab.com/dashboard/db/fleet-overview): useful to see the fleet status from the inside of GitLab.com. Use this graph to quickly see if the workers or the database are under heavy load, and to check load balancer bandwidth.
* [PostgreSQL Overview](https://dashboards.gitlab.com/dashboard/db/postgresql-overview): useful to understand how is the database behaving in depth. Use this graph to review if we have spikes of exclusive locks, active or idle in transaction processes
* [PostgreSQL Queries](https://dashboards.gitlab.com/dashboard/db/postgresql-queries) use this dashboard to understand if we have blocked or slow queries, dead tuples, etc.
* [Storage Stats](https://dashboards.gitlab.com/dashboard/db/storage-stats) use this dashboard to understand storage use and performance.
* [Cloudflare traffic overview](https://dashboards.gitlab.com/d/sPqgMv9Zk/cloudflare-traffic-overview): use this dashboard to understand cloudflare traffic
* [Logging](https://dashboards.gitlab.com/d/USVj3qHmk/logging): use this dashboard to understand how Fluentd, StackDriver and PubSub are performing.

#### Private Whitebox Monitor

* [Host Stats](https://dashboards.gitlab.net/dashboard/db/host-stats): useful to dive deep into a specific host to understand what is going on with it. Select a host from the dropdown on the top.
* [Business Stats](https://dashboards.gitlab.net/dashboard/db/business-stats): shows many pushes, new repos and CI builds.
* [Daily overview](https://dashboards.gitlab.net/dashboard/db/daily-overview): shows endpoints with amount of calls and performance metrics. Useful to understand what is slow generally.

## Logs

Network, System, and Application logs are processed, stored, and searched using
the [ELK stack](https://www.elastic.co/products). We use a [managed
Elasticsearch cluster on GCP](https://www.elastic.co/gcp) and as such our only
interface to this is through APIs, Kibana and the elastic.co web UI.  For
monitoring system performance and metrics, Elastic's x-pack monitoring metrics are used. They are sent to a dedicated monitoring cluster. Long-term we intend to switch to Prometheus and Grafana as the preferred
interface. As it is managed by Elastic they run the VMs and we do not have
access to them. However, for investigating errors and incidents, raw logs are
available via [Kibana](https://log.gprd.gitlab.net). Logs are retained in Elasticsearch
for 7 days.

Staging logs are available via a separate [Kibana](https://nonprod-log.gitlab.net/) instance.

Kibana dashboards are used to monitor application activity, spam events, transient errors, system and network authentication
events, security events, etc. Commonly used dashboards are the Abuse, SSH, and Rack Attack dashboards.

One can view how we log our infrastructure as outlined by our
[runbook](https://gitlab.com/gitlab-com/runbooks/blob/master/howto/logging.md)

### Adding dashboards

To learn how to create Kibana dashboards use the following resources:

- [Kibana Dashboard tutorial from Elastic.co](https://www.elastic.co/guide/en/kibana/current/tutorial-dashboard.html)
- [Building a dashboard](https://www.elastic.co/guide/en/kibana/current/dashboard.html)
- [Using TimeLion for time series visualization](https://www.elastic.co/guide/en/kibana/current/timelion.html)

## GitLab Profiling

### Web requests

[GitLab profiler data](https://redash.gitlab.com/dashboard/gitlab-profiler-statistics), accessible using your GitLab Google credentials, is a dashboard with links to [request profiles](https://docs.gitlab.com/ee/administration/monitoring/performance/request_profiling.html) and SQL queries run when loading pages on GitLab.com.

To add a page to this dashboard, create a merge request to the [gitlab-com/gitlab-profiler](https://gitlab.com/gitlab-com/gitlab-profiler) project.

### Go services

[Stackdriver Continuous Go Profiling](https://cloud.google.com/profiler) can be used to have a better
understanding of how our Go services perform and consume resources. *(requires membership of the Google Workspace `stackdriver-profiler-sg` group)*

It provides a simple UI on GCP with CPU and Memory usage data for:

* [Gitaly (and Praefect)](https://gitlab.com/gitlab-org/gitaly)
* [Workhorse](https://gitlab.com/gitlab-org/gitlab-workhorse)
* [GitLab Pages](https://gitlab.com/gitlab-org/gitlab-pages)
* [GitLab Container Registry](https://gitlab.com/gitlab-org/container-registry)

For more information, there's a [quick video tutorial](https://www.youtube.com/watch?v=q3uudK1lU8g) available.

We also did a series of deep dives by pairing with the development teams for each project in [this issue](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/479), this resulted in the following videos:

* [Gitaly](https://youtu.be/3TSO_evSi5Q)
* [GitLab Pages](https://youtu.be/K7dYSnO0gns)
* [GitLab Registry](https://youtu.be/pZZEvysCyrg)

## Instrumenting Ruby to Monitor Performance

Blocks of Ruby code can be "instrumented" to measure performance.
  - [Documentation of instrumentation](https://docs.gitlab.com/ee/development/instrumentation.html) with more detail on [how to implement this](https://docs.gitlab.com/ee/development/instrumentation.html#instrumenting-ruby-blocks)
  - An example of how this is used for GitLab itself, can be found in this [initializer](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/initializers/zz_metrics.rb).


[Apdex]: https://en.wikipedia.org/wiki/Apdex
[Error rate]: https://en.wikipedia.org/wiki/Bit_error_rate
[SLA dashboard]: https://gitlab.com/gitlab-com/dashboards-gitlab-com/-/metrics/sla-dashboard.yml
[KPI]: /handbook/engineering/infrastructure/performance-indicators/#gitlabcom-availability
[SLO]: https://en.wikipedia.org/wiki/Service-level_objective
