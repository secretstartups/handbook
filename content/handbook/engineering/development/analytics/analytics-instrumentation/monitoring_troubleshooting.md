---
aliases: /handbook/engineering/development/analytics/analytics-instrumentation/monitoring_troubleshooting.html

title: Analytics Instrumentation - Monitoring and troubleshooting
description: "The Analytics Instrumentation group work on feature enhancements and implementing privacy focused product analytics across GitLab projects"
---








# Monitoring and troubleshooting

This page aims to contain information and links helpful in monitoring and troubleshooting the internal analytics infrastructure provided by the [Analytics Instrumentation group](/handbook/engineering/development/analytics/analytics-instrumentation).

## Snowplow

### Monitoring

For a brief video overview of the tools used to monitor Snowplow usage, please check out [this internal video](https://www.youtube.com/watch?v=NxPS0aKa_oU) (you must be logged into GitLab Unfiltered to view).

- [Analytics Instrumentation Grafana dashboard](https://dashboards.gitlab.net/d/product-intelligence-main/product-intelligence-product-intelligence?orgId=1) monitors backend events sent from a GitLab.com instance to a collectors fleet. This dashboard provides information about:
  - The number of events that successfully reach Snowplow collectors.
  - The number of events that failed to reach Snowplow collectors.
  - The number of backend events that were sent.
- [AWS CloudWatch dashboard](https://console.aws.amazon.com/cloudwatch/home?region=us-east-1#dashboards:name=SnowPlow;start=P3D) monitors the state of the events in a processing pipeline. The pipeline starts from Snowplow collectors, goes through to enrichers and pseudonymization, and then up to persistence in an S3 bucket. From S3, the events are imported into the Snowflake Data Warehouse. You must have AWS access rights to view this dashboard. For more information, see [monitoring](https://gitlab.com/gitlab-org/analytics-section/analytics-instrumentation/snowplow-pseudonymization#monitoring) in the Snowplow Events pseudonymization service documentation.
- [Sisense dashboard](https://app.periscopedata.com/app/gitlab/417669/Snowplow-Summary-Dashboard) provides information about the number of good and bad events imported into the Data Warehouse, in addition to the total number of imported Snowplow events.

This page covers dashboards and alerts coming from a number of internal tools.


### Alerts
#### Good events drop

##### Symptoms

You will be alarmed via a [Sisense alert](https://app.periscopedata.com/app/gitlab/alert/Volume-of-Snowplow-Good-events/5a5f80ef34fe450da5ebb84eaa84067f/edit) that is sent to `#g_analytics_instrumentation` Slack channel.

##### Locating the problem

First you need to identify at which stage in Snowplow the data pipeline the drop is occurring.
Start at [Snowplow dashboard](https://console.aws.amazon.com/systems-manager/resource-groups/cloudwatch?dashboard=SnowPlow&region=us-east-1#) on CloudWatch.
If you do not have access to CloudWatch, GitLab team members can create an access request issue, similar to this one: `https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/9730`.
While on CloudWatch dashboard set time range to last 4 weeks, to get better picture of system characteristics over time. Than visit following charts:

1. `ELB New Flow Count` and `Collector Auto Scaling Group Network In/Out` - they show in order: number of connections to collectors via load balancers and data volume (in bytes) processed by collectors. If there is drop visible there, it means less events were fired from the GitLab application. Proceed to [application layer guide](#troubleshooting-gitlab-application-layer) for more details
1. `Firehose Records to S3` - it shows how many event records were saved to S3 bucket, if there was drop on this chart but not on the charts from 1. it means that problem is located at AWS infrastructure layer, please refer to [AWS layer guide](#troubleshooting-aws-layer)
1. If drop wasn't visible on any of previous charts it means that problem is at data warehouse layer, please refer to [data warehouse layer guide](#troubleshooting-data-warehouse-layer)

##### Troubleshooting GitLab application layer

Drop occurring at application layer can be symptom of some issue, but it might be also a result of typical application lifecycle, intended changes done to analytics instrumentation or experiments tracking
or even a result of a public holiday in some regions of the world with a larger user-base. To verify if there is an underlying problem to solve, you can check following things:

1. Check `about.gitlab.com` website traffic on [Google Analytics](https://analytics.google.com/analytics/web/) to verify if some public holiday might impact overall use of GitLab system
   1. You may require to open an access request for Google Analytics access first, for example: [access request internal issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/1772)
1. Plot `select date(dvce_created_tstamp) , event , count(*) from legacy.snowplow_unnested_events_90 where dvce_created_tstamp > '2021-06-15' and dvce_created_tstamp < '2021-07-10' group by 1 , 2 order by 1 , 2` in SiSense to see what type of events was responsible for drop
1. Plot `select date(dvce_created_tstamp) ,se_category , count(*) from legacy.snowplow_unnested_events_90 where dvce_created_tstamp > '2021-06-15' and dvce_created_tstamp < '2021-07-31' and event = 'struct' group by  1 , 2 order by  1, 2` what events recorded the biggest drops in suspected category
1. Check if there was any MR merged that might cause reduction in reported events, pay an attention to ~"analytics instrumentation" and ~"growth experiment" labeled MRs
1. Check (via [Grafana explore tab](https://dashboards.gitlab.net/explore) ) following Prometheus counters `gitlab_snowplow_events_total`, `gitlab_snowplow_failed_events_total` and `gitlab_snowplow_successful_events_total` to see how many events were fired correctly from GitLab.com. Example query to use `sum(rate(gitlab_snowplow_successful_events_total{env="gprd"}[5m])) / sum(rate(gitlab_snowplow_events_total{env="gprd"}[5m]))` would chart rate at which number of good events rose in comparison to events sent in total. If number drops from 1 it means that problem might be in communication between GitLab and AWS collectors fleet.
1. Check [logs in Kibana](https://log.gprd.gitlab.net/app/discover#) and filter with `{ "query": { "match_phrase": { "json.message": "failed to be reported to collector at" } } }` if there are some failed events logged

We conducted an investigation into an unexpected drop in snowplow events volume.

GitLab team members can view more information in this confidential issue: `https://gitlab.com/gitlab-org/gitlab/-/issues/335206`

##### Troubleshooting AWS layer

Already conducted investigations:

- [Steep decrease of Snowplow page views](https://gitlab.com/gitlab-org/gitlab/-/issues/268009)
- [`snowplow.trx.gitlab.net` unreachable](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/5073)

##### Troubleshooting data warehouse layer

Reach out to [Data team](/handbook/business-technology/data-team/) to ask about current state of data warehouse. On their handbook page there is a [section with contact details](/handbook/business-technology/data-team/#how-to-connect-with-us)

#### Delay in Snowplow Enrichers

If there is an alert for **Snowplow Raw Good Stream Backing Up**, we receive an email notification. This sometimes happens because Snowplow Enrichers don't scale well enough for the amount of Snowplow events.

If the delay goes over 48 hours, we lose data.

##### Contact SRE on-call

Send a message in the [#infrastructure_lounge](https://gitlab.slack.com/archives/CB3LSMEJV) Slack channel using the following template:

```markdown
Hello team!

We received an alert for [Snowplow Raw Good Stream Backing Up](https://us-east-1.console.aws.amazon.com/cloudwatch/home?region=us-east-1#alarmsV2:alarm/SnowPlow+Raw+Good+Stream+Backing+Up?).

Enrichers are not scalling well for the amount of events we receive.

See the [dashboard](https://us-east-1.console.aws.amazon.com/cloudwatch/home?region=us-east-1#dashboards:name=SnowPlow).

Could we get assistance to fix the delay?

Thank you!
```

## Service Ping

### Monitoring

Currently we have a few dashboard to monitor and investigate malfunctions:

[Service Ping Health](https://app.periscopedata.com/app/gitlab/968489/Analytics-Instrumentation---Service-Ping-Health). The most important charts:

1. Recorded Usage Pings Created Per Week - allows to quickly identify abnormal amount of event received in the recent weeks
2. Completed vs Failed  Service Ping Hosts - compares Service Ping generation success rate. Helps to identify potential payload generation bugs.
3. Service Ping fail reasons - list of error messages captured during Service Ping generation. Provides more context for the previous chart.

[Service Ping Exploration Dashboard](https://app.periscopedata.com/app/gitlab/1049395/Service-Ping-Exploration-Dashboard):

1. Timed out metrics in last 30 days - list of metrics which time outed during generated (no value was provided).

### Alerts

You will be alerted by the [Data](https://about.gitlab.com/handbook/business-technology/data-team/) team and their
[Monte Carlo alerting](https://about.gitlab.com/handbook/business-technology/data-team/platform/monte-carlo/).

### Locating the problem

First you need to identify at which stage in Service Ping data pipeline the drop is occurring.

Start at [Service Ping Health Dashboard](https://app.periscopedata.com/app/gitlab/968489) on Sisense.

You can use [this query](https://gitlab.com/gitlab-org/gitlab/-/issues/347298#note_836685350) as an example, to start detecting when the drop started.

### Troubleshoot the GitLab application layer

In the past we conducted an investigation into an unexpected drop in Service ping Payload events volume.
GitLab team members can view more information in [this confidential issue](https://gitlab.com/gitlab-data/analytics/-/issues/11071)

### Troubleshoot VersionApp layer

Check if the [export jobs](https://gitlab.com/gitlab-org/gitlab-services/version.gitlab.com/-/tree/main/#data-export-using-pipeline-schedules) are successful.

Check [Service Ping errors](https://app.periscopedata.com/app/gitlab/968489?widget=14609989&udv=0) in the [Service Ping Health Dashboard](https://app.periscopedata.com/app/gitlab/968489).

### Troubleshoot Google Storage layer

Check if the files are present in [Google Storage](https://console.cloud.google.com/storage/browser/cloudsql-gs-production-efd5e8-cloudsql-exports;tab=objects?project=gs-production-efd5e8&prefix=&forceOnObjectsSortingFiltering=false).

### Troubleshoot the data warehouse layer

Reach out to the [Data team](https://about.gitlab.com/handbook/business-technology/data-team/) to ask about current state of data warehouse. On their handbook page there is a [section with contact details](https://about.gitlab.com/handbook/business-technology/data-team/#how-to-connect-with-us).

### Troubleshoot integration with Salesforce

Verify Version app [Sidekiq jobs](https://version.gitlab.com/sidekiq/) are not failing and queues are healthy.
