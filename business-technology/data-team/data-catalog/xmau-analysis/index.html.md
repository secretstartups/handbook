---
layout: handbook-page-toc
title: "Data Guide to xMAU Analysis"
description: "This page explains key terms, concepts, and data models used in xMAU reporting and analysis"
---
 
## On this page
{:.no_toc}
 
- TOC
{:toc}
 
---
 
## xMAU Analysis
 
xMAU is a single term to capture the various levels at which we capture Monthly Active Usage
(MAU). xMAU encompasses Action (AMAU), Group (GMAU), Stage (SMAU), and Combined (CMAU,
duplicated user count across all Stages in a Section or across all Stages in the product), 
and Total (UMAU, unique user count). In order to provide a useful single metric for product 
groups which maps well to product-wide Key Performance indicators, each xMAU metric cascades 
upwards in the order noted above.
 
xMAU metrics are derived from Service Ping (installation-level granularity) and GitLab.com
Postgres replica (gitlab.com db event-level granularity). This workflow enables the analysis 
of each level of xMAU metric across various segments of customers and sets the foundation for 
reporting on [Reported, Estimated, and Predicted](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#three-versions-of-xmau) 
metrics.
 
**Goal of this page**
 
1. Understand the key terms, metrics, KPIs/PIs
1. Understand the data models
 
### Quick links
 
<div class="d-flex" markdown="0" style="height:80px">
 <a href="https://metrics.gitlab.com/" class="btn btn-purple" style="white-space:initial;min-width:0;width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Service Ping Metrics Dictionary</a>
 <a href="/handbook/business-technology/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html" class="btn btn-purple" style="white-space:initial;min-width:0;width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Data Guide to Self-Managed Estimation Algorithm</a>
 <a href="/handbook/business-technology/data-team/data-catalog/self-managed/" class="btn btn-purple" style="white-space:initial;min-width:0;width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Data Guide to Self-Managed Analysis</a>
 <a href="/handbook/business-technology/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html" class="btn btn-purple" style="white-space:initial;min-width:0;width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Product Manager Toolkit</a>
</div>
 
<br>
 
<h1 id="headerformat">Getting Started </h1>
 
<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
 
### Key terms
 
- **[Account](/handbook/sales/sales-term-glossary/)**
- **[Host](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/license/20210204124827_hostname.yml)**
- **[Instance](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/license/20210201124933_uuid.yml)**
- **Installation** - the combination of instance uuid and hostname
  - Analysis is done at the installation level
- **Instance User Count** - the total number of non-blocked users on an installation, appears 
as [active_user_count](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/license/20210204124829_active_user_count.yml) in Service Ping
  - "Active" is a misnomer here as it is _NOT_ synonymous with what we consider "active users" 
  for xMAU and PIs. This value represents the number of registered users on an installation vs 
  the number of users who perform a specific action or event.
- **[Paid User](/handbook/business-technology/data-team/data-catalog/xmau-analysis/index.html#paid-xmau-definition)**
- **[Product Tier](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/tiers/#overview)**
- **[Service Ping](https://docs.gitlab.com/ee/development/service_ping/)**
- **[Version](/handbook/sales/process/version-check/#what-is-the-functionality-of-the-gitlab-version-check)**
 
### Key metrics, KPIs, and PIs
 
Explanations for the metrics below can be found on [the Product Team Performance Indicator page](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#structure):
- **[Action Monthly Active Users (AMAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#structure)**
- **[Group Monthly Active Users (GMAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#group-monthly-active-users-gmau)**
- **[Stage Monthly Active Users (SMAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#stage-monthly-active-users-smau)**
- **[Section Monthly Active Users (Section MAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#structure)**
- **[Section Total Monthly Active Users (Section CMAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#structure)**
- **[Combined Monthly Active Users (CMAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#structure)**
- **[Unique Monthly Active Users (UMAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#unique-monthly-active-users-umau)**
 
Each metric has three different versions (Recorded, Estimated, Predicted), explained on the
 - [Product Team Performance Indicator page](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#three-versions-of-xmau)
 - [Sisense Style Guide](/handbook/business-technology/data-team/platform/sisense-style-guide/#recorded-and-calculated-data)
 
## How are xMAU and PIs calculated?
 
Self-Managed and total SaaS xMAU are calculated using Service Ping, and paid SaaS xMAU is
calculated using the gitlab.com db replica in Snowflake. Product Managers choose one specific
Service Ping metric that they consider to be representative of using the given stage or group,
and that metric is used to produce xMAU charts.
 
- [List of GMAU metrics](https://metrics.gitlab.com/?q=gmau)
- [List of SMAU metrics](https://metrics.gitlab.com/?q=smau)
 
The current SSOT for the metric-to-xMAU mapping is the `performance_indicator_type` field of
the Service Ping metric .yml files, which are linked in the [Service Ping Metrics Dictionary](https://metrics.gitlab.com/).
Updates to `performance_indicator_type` for a specific metric will propagate downstream to the
xMAU charts in Sisense and the internal handbook PI pages.
 
{::options parse_block_html="true" /}

<div class="panel panel-warning">
**Service Ping-to-xMAU Metric Mappings**
{: .panel-heading}
<div class="panel-body">

There should be a 1-1 mapping of Service Ping metrics to xMAU. We cannot dedupe users across
distinct metrics, so multiple metrics mapped to a single group's GMAU, stage's SMAU, etc will
lead to double-counting.


**Edge case:** Currently 2 distinct Service Ping metrics are mapped to Release SMAU. This means 
that Release SMAU is _not_ a distinct count of users, but rather a sum of users across 2 metrics. 
This is a temporary solution while we determine if we would like to implement a new metric for 
Release SMAU. Details on the metrics and the reasoning for the edge case can [be found here](https://gitlab.com/gitlab-data/product-analytics/-/issues/565#note_1066839312). 

</div>
</div>

{::options parse_block_html="false" /}
 
### Service Ping metrics

The [Product Intelligence group](/handbook/product/product-intelligence-guide/) maintains the
[Service Ping Metric Dictionary](https://metrics.gitlab.com/), in addition to the following
related documentation:
 
- [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/)
- [Metric Dictionary Guide](https://docs.gitlab.com/ee/development/service_ping/metrics_dictionary.html)
- [Performance Indicator Metrics Guide](https://docs.gitlab.com/ee/development/service_ping/performance_indicator_metrics.html)
- [Metrics Instrumentation](https://docs.gitlab.com/ee/development/service_ping/metrics_instrumentation.html)
- [How to export Service Ping queries](https://docs.gitlab.com/ee/api/usage_data.html#export-service-ping-sql-queries)
  - Note: this is only applicable for [database metrics](https://docs.gitlab.com/ee/development/service_ping/metrics_instrumentation.html#database-metrics)
 
### Date range
 
For every GitLab installation (self-managed and SaaS/GitLab.com), we use the last ping generated
during the reporting period (i.e., calendar month) to calculate xMAU. Installations are randomly 
assigned a day of week to generate service pings, but that assignment is persistent over time. 
For example, if an installation is assigned Tuesdays to generate pings, it will always generate 
pings on Tuesdays. Since the day of week that pings are generated differs across installations, 
the exact date range captured in a 28-day counter will also differ. The "last ping of the month" 
methodology was updated in the TD xMAU 2.0 project to use the last ping created in the calendar 
month.
 
For paid SaaS xMAU, we use the last 28 days of the calendar month. More about the difference
between Service Ping-generated xMAU (Self-Managed and Total SaaS) and paid SaaS xMAU.
[below](/handbook/business-technology/data-team/data-catalog/xmau-analysis/index.html#difference-between-total-xmau-and-paid-xmau).

### Identifying SaaS data in Service Ping

For total SaaS xMAU, we use the Service Ping payloads generated for the GitLab.com production 
installation. These payloads are easily identifiable since they are linked to known unique 
identifiers (specifics below). The filters applied to our data models ensure that data from 
non-production GitLab.com installations (ex: staging.gitlab.com) is _not_ included in total 
SaaS xMAU or PIs.

<details markdown="1">
  <summary>Specifics on identifying the GitLab.com production installation</summary>

In order to identify the GitLab.com production installation, we use `dim_installation_id = '8b52effca410f0a380b0fcffaa1260e7'`. 

Alternatively, you could use `uuid = 'ea8bf810-1d6f-4a6a-b4fd-93e8cbd8b57f'` _AND_ 
`host_name = 'gitlab.com'`. (Note: `uuid` is synonymous with `dim_instance_id` in our data
models).

</details>
 
## Difference between Total xMAU and Paid xMAU
 
We have 3 main data sources to calculate xMAU and paid xMAU, the Versions App (Service Ping), 
the Gitlab.com Postgres database, and Snowplow event data. The table below summarizes which 
data source is used for those calculations.

|   Delivery   | Total xMAU   | Paid xMAU                   |
|--------------|--------------|-----------------------------|
| Self-Managed | Versions App | Versions App                |
| SaaS         | Versions App | Gitlab.com Postgres Replica; Snowplow events |

### Paid xMAU definition
 
Paid xMAU is defined as Monthly Active Users on a Self-Managed installation or gitlab.com 
namespace with a paid plan type/tier. See [Paid Stage Monthly Active Users - Paid SMAU](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#paid-stage-monthly-active-users-paid-smau)
as an example.
 
#### Identifying paid installations and namespaces
 
In order to determine if a self-managed installation or GitLab.com/SaaS namespace is paid, we use 
the tier/plan type, _not_ the presence of ARR. Those on a paid tier (ex: Premium,
Ultimate, etc) are considered to be paid. This means that namespaces or installations belonging
to an OSS or EDU program, internal project, or other subscription that has a paid tier but
does not contribute ARR are considered to be "paid".
 
<details markdown="1">
  <summary>Specifics on determining tier/plan type</summary>
 
* Paid Self-Managed installations: To identify paid self-managed installations we use 
`ping_product_tier` in the data models, which is derived from [`edition`](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/settings/20210216175604_edition.yml) 
in the Service Ping payload. Paid installations are those on paid tiers (which is not determined 
using ARR) (`ping_product_tier != 'Core'`)
  * Tier is derived in [`common_prep.prep_ping_instance`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.prep_ping_instance). 
  * The `edition` value is derived from the plan column in the license table in the CustomersDot 
  database at the time the license was generated ([internal link](https://gitlab.com/gitlab-data/analytics/-/issues/7257#note_464118474)).
* Paid SaaS namespaces: To identify paid namespaces, we use the plan type associated with the last
event available during the measurement period. This is similar to the self-managed methodology
in that we do not look at the plan type _during_ the period, but rather the plan at time of
reporting. (`plan_was_paid_at_event_date = TRUE`)
  * Plan type on the last event is identified in [`common_mart_product.rpt_event_xmau_metric_monthly`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_event_xmau_metric_monthly)

</details>

**To reiterate, we do not exclude EDU/OSS subscriptions from the paid xMAU calculations.**

### Generating Paid SaaS xMAU 

We cannot use Service Ping to report on paid SaaS metrics. Since the metrics are reported at 
the installation-level, there is not a way to tease apart paid from free namespaces. (This is 
not a problem for self-managed because the entire installation is attributed to a plan/tier). 
In order to report paid SaaS xMAU, we need to be able to do two things:

1. Replicate the Service Ping metric using a different data source (ex: Gitlab.com Postgres replica)
1. Attribute the event/action to a project or namespace (and therefore plan)

#### Replicating Service Ping counters

There are different types of counters to replicate, each generated using a 
different data source in Service Ping:

| Metric type | Paid SaaS xMAU data source |
| --- | --- |
| Database | Gitlab.com Postgres Replica |
| Redis & RedisHLL | Snowplow events |

* [Database metrics](https://docs.gitlab.com/ee/development/service_ping/metrics_instrumentation.html#database-metrics) 
(also referred to as "batch counters") are simple SQL-generated counters. 
  * The SQL queries used to generate the database counters are accessible and easily recreated using the 
GitLab.com Postgres replica.

* [Redis and RedisHLL counters](https://docs.gitlab.com/ee/development/service_ping/metrics_instrumentation.html#redis-metrics) 
are NOT SQL-generated counters. They are used to track actions that are not in the GitLab.com 
Postgres DB (ex: page views and frontend interactions) and for metrics that would non-performant 
to generate via SQL query (ex: querying a massive table or querying across multiple tables).
  * Redis and RedisHLL counters _cannot_ be replicated using the Postgres replica.
  * As a work-around the Product Intelligence team is instrumenting a subset of these counters 
as Snowplow events. This will allow us to aggregate the events in Snowflake and generate 
paid SaaS xMAU.

{::options parse_block_html="true" /}

<div class="panel panel-warning">
**Note on replicating Redis and RedisHLL counters with Snowplow events**
{: .panel-heading}
<div class="panel-body">

* Replicating Redis and RedisHLL metrics using Snowplow events is still a WIP. The data 
still needs to be modeled in order to surface it for reporting. In addition, not all Redis or 
RedisHLL counters have been instrumented in Snowplow.
* There are some edge cases where we are able to replicate a RedisHLL counter using the 
GitLab.com Postgres replica. Here is an exception where an engineer has informed the 
Data team that there is a way to generate the metric via a SQL query 
([thread here](https://gitlab.com/gitlab-data/analytics/-/issues/5629#note_389537508)) 
(internal link).

</div>
</div>

{::options parse_block_html="false" /}

#### Attributing replicated counters to a plan

As mentioned above, merely replicating the Service Ping counters is not sufficient to support 
paid SaaS xMAU reporting - we have to be able to tie the event or action to a plan. This 
inherently will not be possible for all metrics. 

* In the case of database metrics, the table referenced in the SQL query must have a project 
or namespace identifier in it.
* In the case of Redis and RedisHLL metrics, a plan must be associated with the event _and_ 
included on the Snowplow event. 

<details markdown="1">
  <summary>Example</summary>

For example, let's look at [usage_activity_by_stage_monthly.manage.count_user_auth](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20220825232557_count_user_auth.yml). 
This metric measures the number of users logging in. However, a login is not tied to a specific 
namespace or project, it is only tied to a user.

</details>
 
## Data sources
 
As mentioned above, there are 3 main data sources used for xMAU analysis:
 
* Installation-Level Service Ping (Versions App)
* Gitlab.com Postgres Replica (Gitlab.com db tables)
* Snowplow events (Snowplow tables)
  * These have not yet been incorporated into the data models to be used in xMAU reporting 
  and analysis

### Entity relationship diagrams

One of our goals is to create a single model that easily provides all the data needed for 
reporting and analysis. As we continue to iterate on our solutions, we know that there will be 
information that is not always available in this model. Here is where understanding the Entity 
Relationship Diagram helps. This model shows which tables are joined to create the layer you are 
accessing. This is really when you are looking to dive deeper and gain additional insight!

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embedded/3a42e56a-028e-45d7-b2ca-5ef489bafd32" id="V73lDe5VEU5q"></iframe></div>

It can also be helpful to look at the data model lineages in dbt:

- [Service Ping model lineage](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.prep_ping_instance?g_v=1&g_i=%2Bprep_ping_instance%2B)
- [Gitlab.com usage event model lineage](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.prep_event?g_v=1&g_i=prep_event%2B) 
(starting at `prep_event`)

### Data models
 
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
 
#### mart_ping_instance_metric
 
[`common_mart.mart_ping_instance_metric`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ping_instance_metric)
is the most comprehensive of the Service Ping data marts. (Note: unfiltered Service Ping data
sets are available in the `common` schema). This data model provides ping- and metric-level 
data, and joins the Service Ping data with financial and GTM data sources such as subscription, 
CRM Account, etc. This model also includes flags related to a metric's time period and whether 
it is currently mapped to xMAU.
 
This mart allows users to retrieve usage data for 7-day, 28-day, and all-time metrics. Read more
about metric time frames [here](https://docs.gitlab.com/ee/development/service_ping/metrics_dictionary.html#metric-time_frame).
 
#### rpt_ping_metric_totals_w_estimates_monthly
 
[`common_mart_product.rpt_ping_metric_totals_w_estimates_monthly`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_ping_metric_totals_w_estimates_monthly)
is a customized model designed for monthly Service Ping-generated xMAU and PI reporting,
including estimated uplift.
 
End-users can then use very simple queries to produce xMAU and PI visualizations:
 
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
 
This model also enables easy comparison of one estimation methodology vs another (referred to
as `estimation_grain` in the model). At the time of rollout in July 2022, 4 different
methodologies will be available in this model, with options to add more in the future. A more
detailed explanation of each estimation methodology is available [on this page](/handbook/business-technology/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html).
 
#### mart_event_valid
 
[`common_mart.mart_event_valid`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_event_valid)
is an atomic-/event-level model which has been enhanced for ease of analysis. It incorporates basic
business logic* that removes potentially misleading data (ex: events from blocked users) and is
flexible enough to allow the end user to aggregate and dedupe data, as desired.
 
_*Please see dbt docs for full details on business logic_
 
#### rpt_event_xmau_metric_monthly
 
[`common_mart_product.rpt_event_xmau_metric_monthly`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_event_xmau_metric_monthly)
is a customized model designed for monthly paid SaaS xMAU reporting. This model provides user
counts at the xMAU metric-level (which is not necessarily synonymous with the event-level),
limited to the appropriate time frame (last 28 days of the month).
 
## Other xMAU-related information

### Sisense snippets for Product Managers
 
Please check out the [Product Manager Toolkit](/handbook/business-technology/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html) 
for more information on how to use xMAU-related snippets.
 
### Data Classification
 
Due to the sensitive nature of metrics like user counts, PI charts are not publicly accessible
and must reside in the [internal handbook](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/).
However, this data is not considered to be [SAFE](/handbook/legal/safe-framework/) and therefore
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
 
**Orange**

- Description: Customer and Personal data at the row or record level.
- Example models:
   - `dim_billing_account`
   - `dim_crm_account`
   - `mart_ping_instance`

### Solution Ownership

System Owners
  - Service Ping & Versions App: [Product Intelligence](/handbook/product/product-intelligence-guide/)
  - Gitlab.com db: [Engineering teams across GitLab](https://docs.google.com/spreadsheets/d/1Rb4YgFz-2BP81v1efWxLn6TeKuf37SKvAdo91WQHqP0/edit#gid=0)
  - Salesforce: `TBD`
  - Zuora: `TBD`
  - dbt/Data Models: [R&D Data Fusion team](/handbook/business-technology/data-team/#data-fusion-teams)

### Feedback

Please add feedback to [this issue](https://gitlab.com/gitlab-data/analytics/-/issues/13007)
