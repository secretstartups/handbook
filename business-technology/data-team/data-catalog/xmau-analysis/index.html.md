---
layout: handbook-page-toc
title: "Definitive Guide to xMAU Analysis"
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
 
<div class="flex-row" markdown="0" style="height:80px">
 <a href="https://metrics.gitlab.com/" class="btn btn-purple" style="width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Service Ping Metrics Dictionary</a>
 <a href="/handbook/business-ops/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html" class="btn btn-purple" style="width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Self-Managed Estimation Algorithm</a>
 <a href="/handbook/business-technology/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html" class="btn btn-purple" style="width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Product Manager Toolkit</a>
</div>
 
<br><br>
 
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
- **Instance User Count** - the total number of users on an instance, appears as [active_user_count](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/license/20210204124829_active_user_count.yml) in Service Ping
  - "Active" is a misnomer here as it is _NOT_ synonymous with what we consider "active users" 
  for xMAU and PIs. This value represents the number of registered users on an installation vs 
  the number of users who perform a specific action or event.
- **[Paid User](/handbook/business-technology/data-team/data-catalog/xmau-analysis/index.html#paid-xmau-definition)**
- **[Product Tier](/handbook/marketing/strategic-marketing/tiers/#overview)**
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
 
There should be a 1-1 mapping of Service Ping metrics to xMAU. We cannot dedupe users across
distinct metrics, so multiple metrics mapped to a single group's GMAU, stage's SMAU, etc will
lead to double-counting.
{: .alert .alert-warning}
 
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
[below](/handbook/business-technology/data-team/data-catalog/xmau-analysis/index.html#calculation-of-xmau-and-paid-xmau).
 
## Difference between Total xMAU and Paid xMAU
 
### Paid xMAU definition
 
Paid xMAU is defined as Monthly Active Users on a Self-Managed installation or gitlab.com 
namespace with a paid plan type/tier. See [Paid Stage Monthly Active Users - Paid SMAU](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#paid-stage-monthly-active-users-paid-smau)
as an example.
 
#### Identifying paid installations and namespaces
 
In order to determine if a self-managed installation or gitlab.com/SaaS namespace is paid, we use
the plan type/tier, _not_ the presence of ARR. Those on a paid plan type (ex: Premium,
Ultimate, etc) are considered to be paid. This means that namespaces or installations belonging
to an OSS or EDU program, internal project, or other subscription that has a paid plan type but
does not contribute ARR are considered to be "paid".
 
Here are more specifics on this identification:
 
* Paid Self-Managed xMAU: To identify paid self-managed installations we use the `edition` field
in the [Service Ping payload](https://docs.gitlab.com/ee/development/service_ping/index.html#example-service-ping-payload),
selecting only service pings with `EEP`, `EES` and `EEU` edition. The edition value is derived
from the [plan column in the license table in the CustomersDot database at the time the license
was generated (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/7257#note_464118474).
* Paid SaaS xMAU: To identify paid namespaces, we use the plan type associated with the last
event available during the measurement period. This is similar to the self-managed methodology
in that we do not look at the plan type _during_ the period, but rather the plan at time of
reporting.
 
**To reiterate, we do not exclude EDU/OSS subscriptions from the paid
xMAU calculations.**
 
### Calculation of xMAU and Paid xMAU
 
We have 2 main data sources to calculate xMAU and paid xMAU, the Versions App (Service Ping) and
the Gitlab.com Postgres database. The table below summarizes which data source is used for
those calculations.

|   Delivery   | Total xMAU   | Paid xMAU                   |
|--------------|--------------|-----------------------------|
| Self-Managed | Versions App | Versions App                |
| SaaS         | Versions App | Gitlab.com Postgres Replica |

#### Identifying SaaS data in Service Ping

For total SaaS xMAU, we use the Service Ping payloads generated for the GitLab.com production 
installation. These payloads are easily identifiable since they are linked to an instance with 
`uuid = 'ea8bf810-1d6f-4a6a-b4fd-93e8cbd8b57f'` _AND_ `host_name = 'gitlab.com'`. (Note: `uuid` is 
synonymous with `dim_instance_id` in our data models). You can also simply filter on 
`dim_installation_id = '8b52effca410f0a380b0fcffaa1260e7'`, which is unique to the gitlab.com 
production installation. These filters ensure that data from non-production gitlab.com 
installations (ex: staging.gitlab.com) is _not_ included in total SaaS xMAU or PIs.

#### Generating Paid SaaS xMAU 

Since Service Ping is reported at an installation-level, there is not a way that we can 
differentiate paid from total usage within the metrics. For self-managed instances, we have the 
license and plan type, so it is easy to attribute a subset of pings to paid xMAU. However, since 
gitlab.com is a single installation reporting a single ping, we do not have a way to break down 
the aggregates by product tier, plan type, or namespace. As a work-around, we replicate Service 
Ping metrics using the Gitlab.com Postgres replica tables. The challenge comes in that we can 
only replicate a subset of Service Ping metrics, database metrics, and we are not able to 
replicate Redis counters.
 
- [Database metrics](https://docs.gitlab.com/ee/development/service_ping/metrics_instrumentation.html#database-metrics)
  (also referred to as "batch counters") are simple SQL-generated counters. The SQL queries
  used to generate the counters are accessible and easily recreated using the GitLab.com
  Postgres replica.
- [Redis counters](https://docs.gitlab.com/ee/development/service_ping/metrics_instrumentation.html#redis-metrics)
  are NOT SQL-generated counters. They also track actions that are not in the GitLab.com
  Postgres DB such as page views and frontend interactions.
 
Therefore, only some metrics can be recreated using the Gitlab.com Postgres replica.
That means that, for now, we are not able to calculate some of the Paid SaaS xMAU metrics
like Monitor SMAU. Product Intelligence is actively working to find a way to replicate Redis 
counters ([Epic here](https://gitlab.com/groups/gitlab-org/-/epics/6833)).
 
## Data sources
 
As mentioned above, there are 2 main data sources used for xMAU analysis:
 
- Instance-Level Service Ping (Versions App)
- Gitlab.com Postgres Replica (Gitlab.com db tables)

### Entity relationship diagrams

One of our goals is to create a single model that easily provides all the data needed for 
reporting and analysis. As we continue to iterate on our solutions, we know that there will be 
information that is not always available in this model. Here is where understanding the Entity 
Relationship Diagram helps. This model shows which tables are joined to create the layer you are 
accessing. This is really when you are looking to dive deeper and gain additional insight!

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embedded/3a42e56a-028e-45d7-b2ca-5ef489bafd32" id="V73lDe5VEU5q"></iframe></div>

<!-- Do we still need this section? 
| Diagram/Entity                                 | Description                                                                          |
|------------------------------------------------|--------------------------------------------------------------------------------------|
| [Event Data Sources](https://lucid.app/lucidchart/fb925529-e173-428d-831b-4d5982ceac3d/edit?existing=1&token=6730b4fc5d12a5d4176bf0609f58a9229dfe8a82-eml%3Djoshua%2540amplifycp.com%26ts%3D1646680888%26uid%3D166775925&docId=fb925529-e173-428d-831b-4d5982ceac3d&shared=true&invitationId=inv_624938c6-a573-49a8-869f-17252bae59fa&page=meXJoaUV4kZh#) | Bring in Each Event Source at the grain it exists.  Aggregate and merge the data into each level. Any data source can be scaled and merged in at the correct level. |
| [Simple Diagram](https://lucid.app/lucidchart/fb925529-e173-428d-831b-4d5982ceac3d/edit?existing=1&token=6730b4fc5d12a5d4176bf0609f58a9229dfe8a82-eml%3Djoshua%2540amplifycp.com%26ts%3D1646680888%26uid%3D166775925&docId=fb925529-e173-428d-831b-4d5982ceac3d&shared=true&invitationId=inv_624938c6-a573-49a8-869f-17252bae59fa&page=E3zTdB7RQ2at#) | Bring in Each Event Source at the grain it exists. Aggregate and merge the data into each level. Any data source can be scaled and merged in at the correct level. This diagram shows the high level layout of our event data and how it moves through the different schemas, not the final layout of marts |
| [Mart Event Source](https://lucid.app/lucidchart/fb925529-e173-428d-831b-4d5982ceac3d/edit?existing=1&token=6730b4fc5d12a5d4176bf0609f58a9229dfe8a82-eml%3Djoshua%2540amplifycp.com%26ts%3D1646680888%26uid%3D166775925&docId=fb925529-e173-428d-831b-4d5982ceac3d&shared=true&invitationId=inv_624938c6-a573-49a8-869f-17252bae59fa&page=lUeQ29Mck~2E#) | Bring in Each Event Source at the grain it exists to an atomic FACT table. All marts downstream represent different aggregations of this atomic level table (ex by namespace, plan, month, etc.) Meant to show the actual flow of data from source all the way through to the COMMON_MART schema |
| [WIP: Event Data Source Mapping](https://docs.google.com/spreadsheets/d/15I-8uqbAnxQ4lO_uhSmdWlfunh9xm4O_n-QNtJA9A_w/edit#gid=0) |  Event Usage data is captured to provide analytics on how the product is being used.  There are 3 basic types of Event data.  Click level data is captured as the user clicks through the system for navigation and utilizing the product. Event (Snapshot) data is captured from the Application with whatever the Event values are at the time of the capture. Service Ping data is captured at an aggregated level for Instance or Namespace.  This matrix shows how the data is captured and brought into the Data Warehouse. |
[Amplify ERD Design](https://lucid.app/lucidchart/3a42e56a-028e-45d7-b2ca-5ef489bafd32/edit?invitationId=inv_e0a19114-45d5-4a78-9123-dc3b8991d826&page=O.TAVTjR034b#) | The Amplify ERD showcases the relationships between the fct_service_ping_instance and the relatable dimensional models that surround product usage data. |

--> 

<!-- This either needs an update or needs to be removed
#### Service Ping Data Pipeline [Needs update]
 
<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embeddedchart/7ccc1e4a-75fd-4d9f-bd80-8268c5d267b8" id="XKD2Se~QQWM_"></iframe></div>
-->

It can also be helpful to look at the data model lineages in dbt:

- [Service Ping model lineage](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.prep_ping_instance?g_v=1&g_i=%2Bprep_ping_instance%2B)
- [Gitlab.com usage event model lineage](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.prep_event?g_v=1&g_i=prep_event%2B) 
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
| [mart_ping_instance](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_ping_instance) | Service Ping Instance ID | Versions App |
| [mart_ping_instance_metric](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_ping_instance_metric) | Service Ping Instance ID, Metrics Path | Versions App |
| [mart_ping_instance_metric_monthly](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_service_ping_instance_metric_monthly) | Service Ping Instance ID, Metrics Path (limited to the last ping of the month per installation) | Versions App |
| [rpt_ping_metric_first_last_versions](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.rpt_ping_metric_first_last_versions) | Ping Edition, Metrics Path | Versions App |
| [rpt_ping_latest_subscriptions_monthly](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.rpt_ping_latest_subscriptions_monthly) | Month, Subscription, Installation (if available) | Versions App |
| [rpt_ping_metric_totals_w_estimates_monthly](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.rpt_ping_metric_totals_w_estimates_monthly) | Reporting Month, Metrics Path, Estimation Grain, Ping Edition Product Tier, Service Ping Delivery Type | Versions App |
| [mart_event_valid](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_event_valid) | Event (atomic-level model) | Gitlab.com Postgres Replica |
| [mart_event_user_daily](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_event_user_daily) | Event Name, Event Date, User ID, Ultimate Parent Namespace ID| Gitlab.com Postgres Replica |
| [mart_event_namespace_daily](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_event_namespace_daily) | Event Name, Event Date, Ultimate Parent Namespace ID| Gitlab.com Postgres Replica |
| [rpt_event_plan_monthly](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.rpt_event_plan_monthly) | Reporting Month, Plan ID at Event Date, Event Name | Gitlab.com Postgres Replica |
| [rpt_event_xmau_metric_monthly](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.rpt_event_xmau_metric_monthly) | Reporting Month, User Group (total, free, paid), Section Name, Stage Name, Group Name | Gitlab.com Postgres Replica |
 
\* Please see the linked dbt docs for information about each specific model, applied business logic, etc.
 
#### mart_ping_instance_metric
 
[`common_mart.mart_ping_instance_metric`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_ping_instance_metric)
is the most comprehensive of the Service Ping data marts. (Note: unfiltered Service Ping data
sets are available in the `common` schema). This data model provides ping- and metric-level 
data, and joins the Service Ping data with financial and GTM data sources such as subscription, 
CRM Account, etc. This model also includes flags related to a metric's time period and whether 
it is currently mapped to xMAU.
 
This mart allows users to retrieve usage data for 7-day, 28-day, and all-time metrics. Read more
about metric time frames [here](https://docs.gitlab.com/ee/development/service_ping/metrics_dictionary.html#metric-time_frame).
 
#### rpt_ping_metric_totals_w_estimates_monthly
 
[`common_mart_product.rpt_ping_metric_totals_w_estimates_monthly`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.rpt_ping_metric_totals_w_estimates_monthly)
is a customized model designed for monthly Service Ping-generated xMAU and PI reporting,
including estimated uplift.
 
End-users can then use very simple queries to produce xMAU and PI visualizations:
 
``` sql
SELECT
 ping_created_at_month,
 ping_delivery_type,
 ping_product_tier,
 SUM(recorded_usage) AS recorded_usage,
 SUM(estimated_usage) AS estimated_usage,
 SUM(total_usage_with_estimate) AS total_usage_with_estimate
FROM common_mart_product.rpt_ping_metric_totals_w_estimates_monthly
WHERE is_smau = TRUE
 AND stage_name = 'create'
 AND estimation_grain = 'metric/version check - subscription based estimation'
GROUP BY 1,2,3
ORDER BY 1,2,3
```
 
This model also enables easy comparison of one estimation methodology vs another (referred to
as `estimation_grain` in the model). At the time of rollout in July 2022, 4 different
methodologies will be available in this model, with options to add more in the future. A more
detailed explanation of each estimation methodology is available [on this page](/handbook/business-technology/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html).
 
#### mart_event_valid
 
[`common_mart.mart_event_valid`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_event_valid)
is an atomic-/event-level model which has been enhanced for ease of analysis. It incorporates basic
business logic* that removes potentially misleading data (ex: events from blocked users) and is
flexible enough to allow the end user to aggregate and dedupe data, as desired.
 
_*Please see dbt docs for full details on business logic_
 
#### rpt_event_xmau_metric_monthly
 
[`common_mart_product.rpt_event_xmau_metric_monthly`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.rpt_event_xmau_metric_monthly)
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
 
Some data supporting xMAU Analysis is classified as [Orange](/handbook/engineering/security/data-classification-standard.html#orange)
or [Yellow](/handbook/engineering/security/data-classification-standard.html#yellow). This
includes Orange customer metadata from the account, contact data from Salesforce and Zuora and
GitLab's Non public financial information, none of which should be publicly available. Care
should be taken when sharing data from this dashboard to ensure that the detail stays within
GitLab as an organization and that appropriate approvals are given for any external sharing. In
addition, when working with row or record level customer metadata care should always be taken
to avoid saving any data on personal devices or laptops. This data should remain in [Snowflake](/handbook/business-ops/data-team/platform/#data-warehouse)
and [Sisense](/handbook/business-ops/data-team/platform/periscope/) and should ideally be shared
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
