---

title: "Data Guide to xMAU Analysis"
description: "This page explains key terms, concepts, and data models used in xMAU reporting and analysis"
---
 






---

## Overview

xMAU is a single term to capture the various levels at which we capture Monthly Active Users
(MAU). xMAU encompasses Action (AMAU), Group (GMAU), Stage (SMAU), Combined (CMAU,
duplicated user count across all Stages in a Section or across all Stages in the product),
and Total (UMAU, unique user count). In order to provide a useful single metric for product
groups which maps well to product-wide Key Performance indicators, each xMAU metric cascades
upwards in the order noted above.

xMAU metrics are derived from Service Ping (installation-level granularity), GitLab.com
Postgres replica (gitlab.com db event-level granularity), and Snowplow events (event-level
granularity). This workflow enables the analysis of each level of xMAU metric across various
segments of customers and sets the foundation for reporting on [Reported, Estimated, and Predicted](https://internal.gitlab.com/handbook/company/performance-indicators/product/#three-versions-of-xmau)
metrics. We use the same methodology to generate PIs (Performance Indicators), which is a
catch-all term for any other metric.

### Quick links



<div class="d-flex" markdown="0" style="height:80px">
 <a href="https://metrics.gitlab.com/" class="btn btn-purple" style="white-space:initial;min-width:0;width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Service Ping Metrics Dictionary</a>
 <a href="/handbook/business-technology/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html" class="btn btn-purple" style="white-space:initial;min-width:0;width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Data Guide to Self-Managed Estimation Algorithm</a>
 <a href="/handbook/business-technology/data-team/data-catalog/self-managed/" class="btn btn-purple" style="white-space:initial;min-width:0;width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Data Guide to Self-Managed Analysis</a>
 <a href="/handbook/business-technology/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html" class="btn btn-purple" style="white-space:initial;min-width:0;width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Product Manager Toolkit</a>
</div>

### Key terms and metrics

- **Installation** - the unique combination of [instance uuid](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/license/20210201124933_uuid.yml)
and [hostname](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/license/20210204124827_hostname.yml).
  - Analysis is done at the installation level
- [Paid User](#paid-xmau-definition)
- [Product Tier](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/tiers/#overview)
- [Service Ping](https://docs.gitlab.com/ee/development/service_ping/)
- [Version](https://about.gitlab.com/handbook/sales/process/version-check/#what-is-the-functionality-of-the-gitlab-version-check)
- [Instance User Count](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/license/20210204124829_active_user_count.yml) -
the total number of registered non-blocked users on an installation
  - This metric is *NOT* synonymous with what we consider "active users" for xMAU and PIs.
  This value represents the number of registered users on an installation, not the number
  of users who perform a specific action or event.
- [xMAU metrics](https://internal.gitlab.com/handbook/company/performance-indicators/product/#structure)
  - [Action Monthly Active Users (AMAU)](https://internal.gitlab.com/handbook/company/performance-indicators/product/#structure)
  - [Group Monthly Active Users (GMAU)](https://internal.gitlab.com/handbook/company/performance-indicators/product/#group-monthly-active-users-gmau)
  - [Stage Monthly Active Users (SMAU)](https://internal.gitlab.com/handbook/company/performance-indicators/product/#stage-monthly-active-users-smau)
  - [Section Monthly Active Users (Section MAU)](https://internal.gitlab.com/handbook/company/performance-indicators/product/#structure)
  - [Section Total Monthly Active Users (Section CMAU)](https://internal.gitlab.com/handbook/company/performance-indicators/product/#structure)
  - [Combined Monthly Active Users (CMAU)](https://internal.gitlab.com/handbook/company/performance-indicators/product/#structure)
  - [Unique Monthly Active Users (UMAU)](https://internal.gitlab.com/handbook/company/performance-indicators/product/#unique-monthly-active-users-umau)
- [xMAU versions (Recorded, Estimated, Predicted)]((https://internal.gitlab.com/handbook/company/performance-indicators/product/#three-versions-of-xmau))
  - The majority of analyses only look at Recorded and Estimated xMAU

## How are xMAU and PIs calculated?

[Service Ping](https://docs.gitlab.com/ee/development/service_ping/) is GitLab's mechanism to
collect data by generating a JSON payload of usage data every week to be sent to GitLab.
Service Ping metrics are the source for calculating Self-Managed and total GitLab.com xMAU.
Paid GitLab.com xMAU is calculated using the gitlab.com db replica or Snowplow data in Snowflake.

``` mermaid
flowchart TD

  SPING(Service Ping)
  SPING --> SM(Recorded Self-Managed)
  SM -- Estimate Uplift --> SMXMAU(Total & Paid Self-Managed xMAU)
  SPING --> TOTALDOTCOM(Total GitLab.com xMAU)

  DOTCOM_DB(GitLab.com db) --> DOTCOMSNOWFLAKE[(Snowflake)]
  SNOWPLOW(Snowplow) --> DOTCOMSNOWFLAKE
  DOTCOMSNOWFLAKE --> PAIDDOTCOM(Paid GitLab.com xMAU)
```

### Identifying xMAU metrics

Product Managers choose one specific Service Ping metric that they consider to be
representative of using the given stage or group, and that metric is used to produce xMAU
reporting.

- [List of GMAU metrics](https://metrics.gitlab.com/?q=gmau)
- [List of SMAU metrics](https://metrics.gitlab.com/?q=smau)

The SSOT for the metric-to-xMAU mapping is the `performance_indicator_type` field of
the Service Ping metric .yml files, which are linked in the [Service Ping Metrics Dictionary](https://metrics.gitlab.com/).
Updates to `performance_indicator_type` for a specific metric will propagate downstream to the
xMAU charts in Sisense and the internal handbook PI pages.



<div class="panel panel-warning">
**Service Ping-to-xMAU metric mappings**
{: .panel-heading}
<div class="panel-body">

There should be a 1-1 mapping of Service Ping metrics to xMAU. We cannot dedupe users across
distinct metrics, so multiple metrics mapped to a single group's GMAU, stage's SMAU, etc will
lead to double-counting.

</div>
</div>

{::options parse_block_html="false" /}

The [Metrics Dictionary Guide](https://docs.gitlab.com/ee/development/internal_analytics/metrics/metrics_dictionary.html)
is a good resource to learn about the other fields in the metric .yml files.

### Reporting date range

We use 28-day metrics for xMAU and most PI reporting. This ensures that metrics are not impacted
by a different number of days in the month. In addition, there is an equal number of each day of
the week in the reporting window (four Mondays, four Tuesdays, etc).

At the installation level, we use the last ping generated during the reporting period
(i.e., calendar month) to calculate xMAU. More details on date ranges [below](#date-range-details).

## Difference between Total xMAU and Paid xMAU

We have 3 main data sources to calculate xMAU and paid xMAU, the Versions App (Service Ping),
the Gitlab.com Postgres database, and Snowplow event data. The table below summarizes which
data source is used for those calculations. More details about how this data is modelled
[below](#data-models).

| Deployment | Total xMAU | Paid xMAU |
| --- | --- | --- |
| Self-Managed & GitLab Dedicated | Service Ping | Service Ping |
| GitLab.com | Service Ping | Gitlab.com Postgres Replica; Snowplow events |

``` mermaid
flowchart TD

  PING(Service Ping) -->  ALL(Total xMAU)

  PAIDPING(Service Ping) --> PAIDSM(Paid Self-Managed xMAU)

  PAIDDOTCOM_DB(GitLab.com db) --> PAIDGLSNOWFLAKE[(Snowflake)]
  PAIDGLSNOWPLOW(Snowplow) --> PAIDGLSNOWFLAKE
  PAIDGLSNOWFLAKE --> PAIDGL(Paid GitLab.com xMAU)
```

### Paid xMAU definition

Paid xMAU is defined as Monthly Active Users on a Self-Managed installation or gitlab.com
namespace on a paid tier. See [Paid Unique Monthly Active Users (UMAU)](https://internal.gitlab.com/handbook/company/performance-indicators/product/#unique-monthly-active-users-umau)
as an example.

Since we define "paid" using the tier instead of presence of ARR, EDU/OSS subscriptions
are *included* in paid xMAU calculations. More details on how we identify paid users
[below](#identifying-paid-installations-and-namespaces).

### Paid GitLab.com xMAU

We cannot use Service Ping to report on paid GitLab.com metrics. Since the metrics are reported at
the installation-level, there is not a way to tease apart paid from free namespaces. (This is
not a problem for self-managed because the entire installation is attributed to a tier).
In order to report paid GitLab.com xMAU, we need to be able to do two things:

1. Replicate the Service Ping metric using a different data source (i.e., Gitlab.com Postgres
replica, Snowplow). Details [here](#replicating-service-ping-metrics)
1. Attribute the event/action to a project or namespace (and therefore paid plan). Details
[here](#attributing-replicated-metrics-to-a-plan)

We are limited on the type and scope of metrics that we can replicate. Read more about metric
replication [below](#generating-paid-gitlabcom-xmau).

## Other xMAU-related information

### Sisense snippets

We leverage a Sisense snippet (`[td_xmau]`) to generate xMAU and PI charts. The
[Product Manager Toolkit](/handbook/business-technology/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html)
has more details about xMAU-related snippets.

### Data Classification

Due to the sensitive nature of metrics like user counts, PI charts are not publicly accessible
and must reside in the [internal handbook](https://internal.gitlab.com/handbook/company/performance-indicators/product/).
However, this data is not considered to be [SAFE](https://about.gitlab.com/handbook/legal/safe-framework/) and therefore
is visible to all GitLab team members and is available in the [general GitLab space in Sisense](https://app.periscopedata.com/app/gitlab/910238/GitLab-Dashboard-Index).

Some data supporting xMAU Analysis is classified as [Orange](/handbook/security/data-classification-standard.html#orange)
or [Yellow](/handbook/security/data-classification-standard.html#yellow). This
includes Orange customer metadata from the account, contact data from Salesforce and Zuora and
GitLab's Non public financial information, none of which should be publicly available. Care
should be taken when sharing data from this dashboard to ensure that the detail stays within
GitLab as an organization and that appropriate approvals are given for any external sharing. In
addition, when working with row or record level customer metadata care should always be taken
to avoid saving any data on personal devices or laptops. This data should remain in [Snowflake](/handbook/business-technology/data-team/platform/#data-warehouse)
and [Sisense](/handbook/business-technology/data-team/platform/periscope/) and should ideally be shared
only through those applications unless otherwise approved.

## Additional details for analysts and curious parties

The details of how we generate xMAU and PI reporting can be quite dense and create confusion
for those who are looking for the high-level overview. All of the content below is intended
for analysts or those who are interested in learning more about the inner workings of this
reporting.

### Identifying and attributing data

#### Identifying GitLab.com data in Service Ping

For total GitLab.com xMAU, we use the Service Ping payloads generated for the GitLab.com production
installation. These payloads are easily identifiable since they are linked to known unique
identifiers (specifics below). The filters applied to our data models ensure that data from
non-production GitLab.com installations (ex: staging.gitlab.com) is *not* included in total
GitLab.com xMAU or PIs.

<details markdown="1">
  <summary>Specifics on identifying the GitLab.com production installation</summary>

In order to identify the GitLab.com production installation, we use `dim_installation_id = '8b52effca410f0a380b0fcffaa1260e7'`.

Alternatively, you could use `uuid = 'ea8bf810-1d6f-4a6a-b4fd-93e8cbd8b57f'` *AND*
`host_name = 'gitlab.com'`. (Note: `uuid` is synonymous with `dim_instance_id` in our data
models).

</details>

#### Identifying paid installations and namespaces

In order to determine if a self-managed installation or GitLab.com namespace is paid, we use
the tier/plan type, *not* the presence of ARR. Those on a paid tier (ex: Premium,
Ultimate, etc) are considered to be paid. This means that namespaces or installations belonging
to an OSS or EDU program, internal project, or other subscription that has a paid tier but
does not contribute ARR are considered to be "paid".

<details markdown="1">
  <summary>Specifics on determining tier/plan type</summary>

- Paid Self-Managed installations: To identify paid self-managed installations we use
`ping_product_tier` in the data models, which is derived from [`edition`](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/settings/20210216175604_edition.yml)
in the Service Ping payload. Paid installations are those on paid tiers (which is not determined
using ARR) (`ping_product_tier != 'Core'`)
  - Tier is derived in [`common_prep.prep_ping_instance`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.prep_ping_instance).
  - The `edition` value is derived from the plan column in the license table in the CustomersDot
  database at the time the license was generated ([internal link](https://gitlab.com/gitlab-data/analytics/-/issues/7257#note_464118474)).
- Paid GitLab.com namespaces: To identify paid namespaces, we use the plan type associated with the last
event available during the measurement period. This is similar to the self-managed methodology
in that we do not look at the plan type *during* the period, but rather the plan at time of
reporting. (`plan_was_paid_at_event_date = TRUE`)
  - Plan type on the last event is identified in [`common_mart_product.rpt_event_xmau_metric_monthly`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_event_xmau_metric_monthly)

</details>

### Generating Paid GitLab.com xMAU

#### Replicating Service Ping metrics

We need to be able to do two things in order to replicate Service Ping metrics:

1. Replicate the Service Ping metric using a different data source (i.e., Gitlab.com Postgres
replica, Snowplow)
1. Attribute the event/action to a project or namespace (and therefore paid plan)

There are different types of metrics to replicate, each generated using a different data
source in Service Ping:

| Metric type | Paid GitLab.com xMAU data source |
| --- | --- |
| Database | Gitlab.com Postgres replica |
| Redis & RedisHLL | Snowplow events |

``` mermaid
flowchart TD

    METRICTYPE{Type of Metric}
    METRICTYPE -- Database --> GLDB(GitLab.com db)
    GLDB -- Replicate db --> SNOWFLAKE[(Snowflake)]
    METRICTYPE -- Redis & RedisHLL --> SNOWPLOW(Snowplow events)
    SNOWPLOW -- Instrument all events --> SNOWFLAKE
    SNOWFLAKE -- Attribute to plan --> PAIDSAAS(Paid GitLab.com xMAU)
```

**Database metrics via GitLab.com Postgres replica**

[Database metrics](https://docs.gitlab.com/ee/development/service_ping/metrics_instrumentation.html#database-metrics)
(also referred to as "batch counters") are simple SQL-generated metrics. The SQL queries used
to generate the database metrics [can be exported](https://docs.gitlab.com/ee/api/usage_data.html#export-service-ping-sql-queries)
and are recreated using the GitLab.com Postgres replica. In fact, that is how database
metrics are generated for [automated GitLab.com Service Ping](/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/).

**Redis and RedisHLL metrics via Snowplow events**

[Redis and RedisHLL metrics](https://docs.gitlab.com/ee/development/service_ping/metrics_instrumentation.html#redis-metrics)
work differently and are NOT SQL-generated metrics. They are used to track actions that are
not in the GitLab.com Postgres DB (ex: page views) and for metrics that would non-performant
to generate via SQL query (ex: querying a massive table or querying across multiple tables).
Because these are not SQL-based counters, they *cannot* be replicated using the Postgres replica.

The solution is to instrument the Redis events as Snowplow events. The Analytics
Instrumentation team instrumented a subset of these metrics as Snowplow events.
(Moving forward this responsibility will fall to the product teams). This allows
us to aggregate the events in Snowflake and generate paid GitLab.com xMAU for a handful
of metrics.



<div class="panel panel-warning">
**Note on replicating Redis and RedisHLL metrics with Snowplow events**
{: .panel-heading}
<div class="panel-body">

- Replicating Redis and RedisHLL metrics using Snowplow events is still a WIP. Not all Redis
or RedisHLL metrics have been instrumented yet. In addition, the data is not yet modeled in
a way that it can be surfaced for "official" reporting.
- RedisHLL metrics are commonly made up of multiple Redis events. All Redis events included in
the metric must be instrumented in Snowplow in order to generate paid GitLab.com xMAU. (You
can find the list of events included in a metric by viewing the metric definition .yml file).
We cannot report on a metric until all events are instrumented.
  - Example: Metric A reflects how many unique users visit page X, Y, or Z. There is a Redis
  event for visiting page X, an event for visiting page Y, and an event for visiting page Z.
  We cannot report on Metric A until all three events are instrumented in Snowplow.
- There are some edge cases where we are able to replicate a RedisHLL metric using the
GitLab.com Postgres replica. Here is an exception where an engineer has informed the
Data team that there is a way to generate the metric via a SQL query
([thread here](https://gitlab.com/gitlab-data/analytics/-/issues/5629#note_389537508))
(internal link).

</div>
</div>

{::options parse_block_html="false" /}

#### Attributing replicated metrics to a plan

Merely replicating the Service Ping metrics is not sufficient to support
paid GitLab.com xMAU reporting, we have to be able to tie the event or action to a plan. This
inherently will not be possible for all metrics.

- In the case of database metrics, the table referenced in the SQL query must have a project
or namespace identifier in it.
- In the case of Redis and RedisHLL metrics, a plan must be associated with the event *and*
that plan must be included on the Snowplow event.

<details markdown="1">
  <summary>Example where plan attribution is not possible</summary>

As an example, let's look at [usage_activity_by_stage_monthly.manage.count_user_auth](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20220825232557_count_user_auth.yml).
This metric measures the number of users logging in. However, a login is not not tied to a
specific namespace or project, it is only tied to a user. (You do not specifically log into
a namespace on GitLab.com).

Therefore, while we can reproduce the query that generates the metric, we cannot attribute
the event to a namespace or project (and therefore a plan).

</details>

### Date range details

The exact date range depends on the data source (Service Ping vs Snowflake) and type of metric
(database vs Redis vs RedisHLL).

#### Service Ping metrics

We use the last ping generated in the calendar month for each installation.
Installations are randomly assigned a day of week to generate service pings, but that assignment
is persistent over time. For example, if an installation is assigned Tuesdays to generate pings,
it will always generate pings on Tuesdays. Since the day of week that pings are generated differs
across installations, the exact date range captured in a 28-day metric will also differ. The
"last ping of the month" methodology was updated in the TD Product Usage Data project in FY23
to use the last ping created in the calendar month.

You can read more about how the exact date range is calculated for each type of metric (database
vs Redis vs RedisHLL) in the [Service Ping docs](https://docs.gitlab.com/ee/development/internal_analytics/metrics/metrics_dictionary.html#metric-time_frame).

#### Replicated metrics

For paid GitLab.com xMAU, we use the last 28 days of the calendar month. This means that total
GitLab.com xMAU and paid GitLab.com xMAU may have slightly different date ranges.

### Data models

There are 3 main data sources that are modeled in dbt to be used for xMAU and PI analysis:

- Installation-Level Service Ping (Versions App)
- Gitlab.com Postgres Replica (Gitlab.com db tables)
- Snowplow events
  - These have not yet been incorporated into the data models to be used in xMAU reporting
  and analysis

#### Entity relationship diagrams (ERDs)

One of our goals is to create a single model that easily provides all the data needed for
reporting and analysis. As we continue to iterate on our solutions, we know that there will be
information that is not always available in this model. Here is where understanding the Entity
Relationship Diagram helps. This model shows which tables are joined to create the layer you are
accessing. This is really when you are looking to dive deeper and gain additional insight!

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embedded/3a42e56a-028e-45d7-b2ca-5ef489bafd32" id="V73lDe5VEU5q"></iframe></div>

It can also be helpful to look at the data model lineages in dbt:

- [Service Ping model lineage](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.prep_ping_instance?g_v=1&g_i=prep_ping_instance%2B&g_e=dim_installation%20%20monthly_stage_usage_by_account_ultimate%20monthly_stage_usage_by_account%20wk_usage_ping_geo_node_usage%20fct_ping_instance_metric_rolling_13_months%2B%20fct_ping_instance_metric_wave%2B%20fct_ping_instance_free_user_metrics%2B%20mart_ping_instance_metric_health_score_self_managed%2B) (starting at `prep_ping_instance`)
- [Gitlab.com usage event model lineage](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.prep_event?g_v=1&g_i=prep_event%2B&g_e=mart_marketing_contact%2B%20%20poc_pump_marketing_contact_namespace_detail%20wk_rpt_namespace_onboarding)
(starting at `prep_event`)
- Snowplow model lineage: Coming soon

#### Trusted data (TD) models

We have built a suite of data marts that allow users to explore our different product data
sources. "mart" models are a combination of dimensions and facts that are joined together to
enable easy analysis. "rpt" ("report") models are built with specific business logic for a
specific use case. (Ex: `rpt_ping_metric_totals_w_estimates_monthly` has custom logic to
generate xMAU estimations). Underneath each mart or reporting model is a clean lineage of
dimensions and facts that can also be used for analysis. This list is limited to the key marts
designed for stakeholders to do everyday analysis and reporting. You can read more about
GitLab's Enterprise Dimensional Model (EDM) [here](/handbook/business-technology/data-team/platform/edw/).

| Data Mart/Rpt Name | Grain* | Source |
| --- | --- | --- |
| [mart_ping_instance](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ping_instance) | Service Ping Instance ID | Versions App |
| [mart_ping_instance_metric](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ping_instance_metric) | Service Ping Instance ID, Metrics Path | Versions App |
| [mart_ping_instance_metric_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_service_ping_instance_metric_monthly) | Service Ping Instance ID, Metrics Path (limited to the last ping of the month per installation) | Versions App |
| [rpt_ping_metric_first_last_versions](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_ping_metric_first_last_versions) | Ping Edition, Metrics Path | Versions App |
| [rpt_ping_latest_subscriptions_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_ping_latest_subscriptions_monthly) | Month, Subscription, Installation (if available) | Versions App |
| [rpt_ping_metric_totals_w_estimates_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_ping_metric_totals_w_estimates_monthly) | Reporting Month, Metrics Path, Estimation Grain, Ping Edition Product Tier, Service Ping Delivery Type | Versions App |
| [mart_event_valid](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_event_valid) | Event (atomic-level model) | Gitlab.com Postgres Replica |
| [mart_event_user_daily](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_event_user_daily) | Event Name, Event Date, User ID, Ultimate Parent Namespace ID| Gitlab.com Postgres Replica |
| [mart_event_namespace_daily](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_event_namespace_daily) | Event Name, Event Date, Ultimate Parent Namespace ID| Gitlab.com Postgres Replica |
| [rpt_event_plan_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_event_plan_monthly) | Reporting Month, Plan ID at Event Date, Event Name | Gitlab.com Postgres Replica |
| [rpt_event_xmau_metric_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_event_xmau_metric_monthly) | Reporting Month, User Group (total, free, paid), Section Name, Stage Name, Group Name | Gitlab.com Postgres Replica |

\* Please see the linked dbt docs for information about each specific model, applied business logic, etc.

**mart_ping_instance_metric**

[`common_mart.mart_ping_instance_metric`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ping_instance_metric)
is the most comprehensive of the Service Ping data marts. (Note: unfiltered Service Ping data
sets are available in the `common` schema). This data model provides ping- and metric-level
data, and joins the Service Ping data with financial and GTM data sources such as subscription,
CRM Account, etc. This model also includes flags related to a metric's time period and whether
it is currently mapped to xMAU. To limit to the metrics used for reporting, apply the filter
`is_last_ping_of_month = TRUE`.

Read more about metric time frames [here](https://docs.gitlab.com/ee/development/internal_analytics/metrics/metrics_dictionary.html#metric-time_frame).

**rpt_ping_metric_totals_w_estimates_monthly**

[`common_mart_product.rpt_ping_metric_totals_w_estimates_monthly`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_ping_metric_totals_w_estimates_monthly)
is a customized model designed for monthly Service Ping-generated xMAU and PI reporting,
including estimated uplift. End-users can then use very simple queries to produce xMAU
and PI visualizations.

<details markdown="1">
  <summary>Example query for Create SMAU</summary>

``` sql
SELECT
  ping_created_date_month,
  ping_delivery_type,
  ping_product_tier,
  SUM(recorded_usage) AS recorded_usage,
  SUM(estimated_usage) AS estimated_usage,
  SUM(total_usage_with_estimate) AS total_usage_with_estimate
FROM common_mart_product.rpt_ping_metric_totals_w_estimates_monthly
WHERE is_smau = TRUE
  AND stage_name = 'create'
  AND estimation_grain IN ('metric/version check - subscription based estimation', 'SaaS')
GROUP BY 1,2,3
ORDER BY 1,2,3
```

</details>

This model surfaces 4 different estimation methodologies (`estimation_grain`). Our official
methodology is `metric/version check - subscription based estimation`. A more
detailed explanation of our estimation methodology is available [on this page](/handbook/business-technology/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html).

**mart_event_valid**

[`common_mart.mart_event_valid`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_event_valid)
is an atomic-/event-level model which has been enhanced for ease of analysis. It incorporates basic
business logic* that removes potentially misleading data (ex: events from blocked users) and is
flexible enough to allow the end user to aggregate and dedupe data, as desired.

**Please see dbt docs for full details on business logic*

**rpt_event_xmau_metric_monthly**

[`common_mart_product.rpt_event_xmau_metric_monthly`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_event_xmau_metric_monthly)
is a customized model designed for monthly paid SaaS xMAU reporting. This model provides user
counts at the xMAU metric-level (which is not necessarily synonymous with the event-level),
limited to the appropriate time frame (last 28 days of the month).
