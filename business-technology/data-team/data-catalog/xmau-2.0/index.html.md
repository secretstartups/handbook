---
layout: handbook-page-toc
title: "xMAU 2.0"
description: "xMAU is a single term to capture the various levels at which we capture Monthly Active Usage (MAU)"
---

## On this page
{:.no_toc}

- TOC
{:toc}

---

## 🚧 This page is under contruction and NOT ready for use in Production.

## xMAU Analysis 

xMAU is a single term to capture the various levels at which we capture Monthly Active Usage (MAU). xMAU encompasses Action (AMAU), Group (GMAU), Stage (SMAU), and Combined (CMAU, duplicated user count), and Total (UMAU, unique user count). In order to provide a useful single metric for product groups which maps well to product-wide Key Performance indicators, each xMAU metric cascades upwards in the order noted above.

xMAU metrics are derived from Service Ping (Self-Managed instance-level granularity) and GitLab.com (SaaS namespace-level granularity). This Analytics Workflow enables the analysis of each level of xMAU metric across various segments of customers sets the foundation for reporting on [Reported, Estimated, and Projected](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#three-versions-of-xmau) metrics.

**The goal of this page:**
  

### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://www.youtube.com/watch?v=F4FwRcKb95w&feature=youtu.be" class="btn btn-purple" style="width:20%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Getting started in SiSense</a>
  <a href="https://about.gitlab.com/handbook/business-ops/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html" class="btn btn-purple" style="width:20%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Estimation Algorithm Page</a>
</div>
<br><br>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Getting Started </h1>

1) Understand the key terms, metrics, KPIs/PIs
2) Understand the data models


### Key Terms
- **[Account](/handbook/sales/sales-term-glossary/)**
- **[Host](https://metrics.gitlab.com/)**
- **[Instance](https://metrics.gitlab.com/)**
- **Instance User Count** - the total number of users on an instance
- **[Paid User](/handbook/business-technology/data-team/data-catalog/xmau-2.0/index.html#paid-xmau-definition)**
- **[Product Tier](/handbook/marketing/strategic-marketing/tiers/#overview)**
- **[Service Ping](https://docs.gitlab.com/ee/development/service_ping/)**
- **[Version](/handbook/sales/process/version-check/#what-is-the-functionality-of-the-gitlab-version-check)**

### Key Metrics, KPIs, and PIs

Explanations for the metrics below can be found on [the Product Team Performance Indicator page](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#structure):
- **[Action Monthly Active Users (AMAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#structure)**
- **[Group Monthly Active Users (GMAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#group-monthly-active-users-gmau)**
- **[Stage Monthly Active Users (SMAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#stage-monthly-active-users-smau)**
- **[Section Monthly Active Users (Section MAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#structure)**
- **[Section Total Monthly Active Users (Section CMAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#structure)**
- **[Combined Monthly Active Users (CMAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#structure)**
- **[Unique Monthly Active Users (UMAU)](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#unique-monthly-active-users-umau)**

Each metric has three different versions (Recorded, Estimated, Projected), explained on
  - [the Product Team Performance Indicator page](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#three-versions-of-xmau)
  - [the Sisense Style Guide](/handbook/business-technology/data-team/platform/sisense-style-guide/#recorded-and-calculated-data)

#### How xMAU are calculated ? [Review this section for updating]

xMAU is calculated mainly thanks to Service Ping Data source. When the project started, stage and group Product Managers chose one specific service ping metric which produces their xMAU charts.

- [list of GMAU metrics used](https://app.periscopedata.com/app/gitlab/758607/Centralized-SMAU-GMAU-Dashboard?widget=12468487&udv=1146726)
- [list of SMAU metrics used](https://app.periscopedata.com/app/gitlab/758607/Centralized-SMAU-GMAU-Dashboard?widget=12468482&udv=1146726)

The current SSOT for the xMAU metrics is `performance_indicator_type` field of the metric .yml files, which are linked in the [Service Ping Metrics Dictionary](https://metrics.gitlab.com/). Updates to `performance_indicator_type` for a specific metric will propagate downstream to the xMAU charts in Sisense and the internal handbook.

The [Product Intelligence group](/handbook/product/product-intelligence-guide/) maintains the [Service Ping Metric Dictionary](https://metrics.gitlab.com/), in addition to the following related documentation:

- [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/)
- [Metric Dictionary Guide](https://docs.gitlab.com/ee/development/service_ping/metrics_dictionary.html)
- [Performance Indicator Metrics Guide](https://docs.gitlab.com/ee/development/service_ping/performance_indicator_metrics.html)
- [Metrics Instrumentation](https://docs.gitlab.com/ee/development/service_ping/metrics_instrumentation.html)

Additional questions about Service Ping metric definitions should be directed to Product Intelligence. Also if the metrics are [database calculations](https://docs.gitlab.com/ee/development/service_ping/metrics_instrumentation.html#database-metrics), they are able to provide you with the SQL query run to generate the metrics value.

##### Date Range

For every instance (self-managed and SaaS/GitLab.com), we use the last ping generated that month to calculate xMAU. Instances are randomly assigned a day of week to generate service pings, but that assignment is persistent over time. For example, if an instance is assigned Tuesdays to generate pings, it will always generate pings on Tuesdays. Since the day of week that pings are generated differs across instances, the exact date range captured in a 28-day counter will also differ. The "last ping of the month" methodology was updated in the TD xMAU 2.0 project to use the last ping created in the calendar month.

For paid SaaS xMAU, we use the last 28 days of the calendar month. More about the difference between Service Ping-generated xMAU (Self-Managed and Total SaaS) and paid SaaS xMAU [below](/handbook/business-technology/data-team/data-catalog/xmau-2.0/index.html#calculation-of-xmau-and-paid-xmau).

#### Difference between xMAU and Paid xMAU

##### Paid xMAU Definition

Each of these above metrics will be calculated for xMAU and paid xMAU. Paid xMAU is currently defined as Monthly Active Users who "roll up to a paid instance for Self-Managed via Service Ping data _or_ a paid namespace for SaaS via GitLab.com Postgres Database Imports in a 28 day rolling period". (See [Paid Stage Monthly Active Users - Paid SMAU](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/#paid-stage-monthly-active-users-paid-smau) as an example.)

Since GitLab Business functions currently do not have a standardized way to identified which namespaces or instances belong to an OSS, EDU, internal projects, or other subscriptions that have a paid plan type but do not contribute ARR, the current implementation of xMAU include users associated with these subscriptions as "paid".

##### Calculation of xMAU and Paid xMAU

We have 2 main data sources to calculate xMAU and paid xMAU, the Version App and the Gitlab.com Postgres database. The table below summarises which data source is used for those calculations.

|   Delivery   | xMAU         | Paid xMAU                   |
|--------------|--------------|-----------------------------|
| SaaS         | version app* | Gitlab.com Postgres Table** |
| Self-Managed | version app  | version app***              |

_Notes_:

\*: For total SaaS xMAU, we use the Service Ping payloads generated for the GitLab.com instance. These payloads are easily identifiable since they are linked to an instance with `uuid = 'ea8bf810-1d6f-4a6a-b4fd-93e8cbd8b57f'`. `uuid` is synonymous with `dim_instance_id` in our data models.

\*\*: For SaaS paid XMAU, we need to use the Gitlab.com Postgres replica tables. The Service Ping payloads generated from our Gitlab.com instance gives us high-level statistics at an instance level. This is an aggregated number which can't be further broken down, for example by product tier, plan type, or namespace.
  - To be able to generate Paid SaaS xMAU we need to replicate the Service Ping counters with the replica of the Gitlab.com database which is stored in our data warehouse.
    - [Database metrics](https://docs.gitlab.com/ee/development/service_ping/metrics_instrumentation.html#database-metrics) (also referred to as "batch counters") are simple SQL-generated counters. The SQL query used to generate the counters are accessible and easily recreated using the GitLab.com Postgres replica.
    - Unfortunately, this is not doable for every single counter. [Redis counters](https://docs.gitlab.com/ee/development/service_ping/metrics_instrumentation.html#redis-metrics) are NOT SQL-generated counters. They also track actions that are not in the GitLab.com Postgres DB such as page views, or frontend interactions.
    - Therefore, only some metrics can be recreated using the Gitlab.com Postgres replica. That means that for now, we are not able to calculate some of the Paid SaaS xMAU metrics like Monitor SMAU.

\*\*\*: To calculate paid xMAU on Self-Managed we use the `edition` field in the [Service Ping Payload](https://docs.gitlab.com/ee/development/service_ping/index.html#example-service-ping-payload), selecting only service pings with `EEP`, `EES` and `EEU` edition. The edition value is derived from the [plan column in the license table in the CustomersDot database at the time the license was generated](https://gitlab.com/gitlab-data/analytics/-/issues/7257#note_464118474). That means that currently we don't exclude EDU/OSS subscriptions from the paid xMAU calculations.

### Data Sources

Based on the explanations above, the 2 main data sources we are using are:

- Service Ping Data Source (version app)
- Gitlab.com Data Source (Gitlab.com Postgres Table)

### Data marts [Update this section with a glossary of the new xMAU 2.0 data marts with links to dbt]

We have built a suite of datamarts that allow users to explore our different product data sources.

|   Data Mart Name   | Grain         | Source              |
|--------------|--------------|-----------------------------|
| [Mart_Usage_Event](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_usage_event)   | Event | Gitlab.com Postgres Table |
| [Mart_Usage_Event_Daily](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_usage_event_daily) | Event Name, Event Date, User ID, Namespace ID|   Gitlab.com Postgres Table     |
| [Mart_Usage_Namespace_Daily](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_usage_namespace_daily)  | Event Name, Event Date, Namespace ID| Gitlab.com Postgres Table |
| [Mart_Usage_Instance_Daily](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_usage_instance_daily)    | Event Name, Event Date, Instance ID | Gitlab.com Postgres Table |
| [Mart_Usage_Event_Plan_Monthly](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_usage_event_plan_monthly) | Reporting Month, Plan ID at Event Date, Event Name |   Gitlab.com Postgres Table    |
| [Mart_xMAU_Metric_Monthly](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_xmau_metric_monthly)  | Reporting Month, User Group, Section Name, Stage Name, Group Name  |  Gitlab.com Postgres Table    |



#### Mart Service Ping Data [Update this section to reference the new SSOT model for this use case]

The `mart_service_ping_product_usage_data` is the most comprehensive data model for all Service Ping data. This data model joins together Service Ping data with financial and GTM data sources such as subscription, CRM Account...

This allows users to retrieve usage data for all monthly and all-time metrics which are [defined here](/handbook/business-technology/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html)

#### Mart Estimated xMAU [Update this section with the new reference SQL for the xMAU 2.0 estimated logic]

The mart `mart_estimated_xmau` is built in order to generate easily the estimated XMAU PIs. This model contains all the estimation logic which is explained [in this page](/handbook/business-technology/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html).

End-users can then use very simple charts to create their estimated xMAU chart:

```
SELECT 
reporting_month,
product_tier,
SUM(estimated_monthly_metric_value_sum)
FROM common_mart_product.mart_estimated_xmau
WHERE xmau_level = 'SMAU' AND stage_name = 'create'
GROUP BY 1,2```
```

A `mart_paid_estimated_xmau` datamart has been created to construct specifically paid xMAU charts

### Service Ping Data Pipeline

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embeddedchart/7ccc1e4a-75fd-4d9f-bd80-8268c5d267b8" id="XKD2Se~QQWM_"></iframe></div>

### Sisense Snippets for Product Managers [Update this section for new td_xMAU snippets]

We created [another page](/handbook/business-technology/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html) which contains a comprehensive list of all the snippets that were created for Product Managers. We recommend you read this page for more information about this topic.

We also [created this dashboard](https://app.periscopedata.com/app/gitlab/793297/xMAU-Analysis-Workflow---Example-Queries-and-Visualisations) 
📊, full of examples on how to use these snippets.

#### How to update targets for a specific xMAU chart using these snippets ? [Need to update with new xMAU 2.0 method]

##### Implement your dynamic target values

It is now possible to get Monthly target values implemented in your Sisense chart for any of your Service Ping Metrics. To do so, you will need to update the .yml file where your Performance Indicator (xMAU or potentially any other PI coming from service ping) and follow the example described below:

```
----
- name: Configure:Configure - Adoption PI - Number of projects with GitLab Managed Terraform State
  base_path: "/handbook/product/performance-indicators/ops-section-performance-indicators/"
  definition: A rolling count of the number of projects using GitLab Managed Terraform State in the last 28 days
  target: 6000 by end of Q1FY22
  target_name: projects_with_terraform_states
  monthly_recorded_targets:
    "2021-04-20": 6000
    "2020-11-01": 3000
    "2020-07-01": 700
  monthly_estimated_targets:
    "2021-05-01": 6000
    "2020-11-01": 3000
    "2020-07-01": 700
  org: Ops Section
```
<div class="panel panel-gitlab-purple">
<p class="panel-heading"><strong>How to fill correctly the target</strong></p>
<div class="panel-body">
<p>The  dates added to the yml sections are the end dates of each date interval. That means for example for the example below:
</p>

<code>
monthly_estimated_targets:<br>
  "2021-05-01": 6000<br>
  "2020-11-01": 3000<br>
  "2020-07-01": 700<br>
</code>
<p>
We will then have the following targets:
<ul>
  <li>From start_date to 2020-07-01, the target is 700</li>
  <li>From 2020-08-01 to 2020-11-01, the target is 3000</li>
  <li>From 2020-12-01 to 2020-05-01, the target is 6000</li>
</ul>


</p>
</div>
</div>

So you have 2 different sections in the yml definition that can be used:

<details>
  <summary markdown="span">monthly_recorded_targets</summary>

  If the PI is an estimated PI such as all xMAU charts. To visualize your chart with your dynamic target you will need <a href='https://app.periscopedata.com/app/gitlab/snippet/td_xmau_metrics_recorded_metric_value_with_total/558696a885b64c0194d7590c24a7391b/edit?'>to use this snippet</a><br>

  <a href='https://about.gitlab.com/handbook/business-ops/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html'>More details about this snippet can be found here</a><br>
</details>

<details>
  <summary markdown="span">monthly_estimated_targets</summary>

  If the PI you want to set target for is based on recorded values (without any estimations).
  To visualize your chart with your dynamic target you will need <a href='https://app.periscopedata.com/app/gitlab/snippet/td_xmau/5511efd3a1ee44728bac7a7c17fd737e/edit'>to use this snippet.</a>

  <a href='https://about.gitlab.com/handbook/business-ops/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html'>More details about this snippet can be found here</a>
</details>

##### Using the snippet to get a static target [Review and Update]
For all embedded PI/xMAU charts using our standardized snippets and visualisation, updating the target is a very easy 4-step process:

1. Go to the PI of interest and click on the sisense link
![pi_page](/handbook/business-ops/data-team/data-catalog/xmau-analysis/images/pi_page.png)
1. Click on Edit Chart
![edit](/handbook/business-ops/data-team/data-catalog/xmau-analysis/images/edit_chart.png)
1. Change the last value (that's the target value - if you do a decimal it will increase by a certain percentage. If you type in a full number, that number will be the target line.)
![target](/handbook/business-ops/data-team/data-catalog/xmau-analysis/images/target_change.png)
1. Click the Save Button
![save](/handbook/business-ops/data-team/data-catalog/xmau-analysis/images/save_chart.png)

## Entity Relationship Diagrams [Update for entity diagrams]
One of our goals is to create a 1 model that easily provides all the data needed for analysis. As we continue to iterate on our solutions, we know that there will be information that isn't always available in this model! Here's where understanding the Entity Relationship Diagram helps. This model shows what tables are joined to create the layer you are accessing. This is really when you are looking to dive deeper and gain additional insight!

<!-- is the correct ERD? -->

| Diagram/Entity                                 | Description                                                                          |
|------------------------------------------------|--------------------------------------------------------------------------------------|
| [Event Data Sources](https://lucid.app/lucidchart/fb925529-e173-428d-831b-4d5982ceac3d/edit?existing=1&token=6730b4fc5d12a5d4176bf0609f58a9229dfe8a82-eml%3Djoshua%2540amplifycp.com%26ts%3D1646680888%26uid%3D166775925&docId=fb925529-e173-428d-831b-4d5982ceac3d&shared=true&invitationId=inv_624938c6-a573-49a8-869f-17252bae59fa&page=meXJoaUV4kZh#) | Bring in Each Event Source at the grain it exists.  Aggregate and merge the data into each level. Any datasource can be scaled and merged in at the corect level. |
| [Simple Diagram](https://lucid.app/lucidchart/fb925529-e173-428d-831b-4d5982ceac3d/edit?existing=1&token=6730b4fc5d12a5d4176bf0609f58a9229dfe8a82-eml%3Djoshua%2540amplifycp.com%26ts%3D1646680888%26uid%3D166775925&docId=fb925529-e173-428d-831b-4d5982ceac3d&shared=true&invitationId=inv_624938c6-a573-49a8-869f-17252bae59fa&page=E3zTdB7RQ2at#) | Bring in Each Event Source at the grain it exists. Aggregate and merge the data into each level. Any datasource can be scaled and merged in at the corect level. This diagram shows the high level layout of our event data and how it moves through the different schemas, not the final layout of marts |
| [Mart Event Source](https://lucid.app/lucidchart/fb925529-e173-428d-831b-4d5982ceac3d/edit?existing=1&token=6730b4fc5d12a5d4176bf0609f58a9229dfe8a82-eml%3Djoshua%2540amplifycp.com%26ts%3D1646680888%26uid%3D166775925&docId=fb925529-e173-428d-831b-4d5982ceac3d&shared=true&invitationId=inv_624938c6-a573-49a8-869f-17252bae59fa&page=lUeQ29Mck~2E#) | Bring in Each Event Source at the grain it exists to an atomic FACT table. All marts downstream represent different aggregations of this atomic level table (ex by namespace, plan, month, etc.) Meant to show the actual flow of data from source all the way through to the COMMON_MART schema |
| [WIP: Event Data Source Mapping](https://docs.google.com/spreadsheets/d/15I-8uqbAnxQ4lO_uhSmdWlfunh9xm4O_n-QNtJA9A_w/edit#gid=0) |  Event Usage data is captured to provide analytics on how the product is being used.  There are 3 basic types of Event data.  Click level data is captured as the user clicks through the system for navigation and utilizing the product. Event (Snapshot) data is captured from the Application with whatever the Event values are at the time of the capture. Service Ping data is captured at an aggregated level for Instance or Namespace.  This matrix shows how the data is captured and brought into the Data Warehouse. |
[WIP: Amplify ERD Design](https://lucid.app/lucidchart/3a42e56a-028e-45d7-b2ca-5ef489bafd32/edit?invitationId=inv_e0a19114-45d5-4a78-9123-dc3b8991d826&page=O.TAVTjR034b#) | WIP |



<details>
<summary><b>Data Classification</b></summary>

<p>Some data supporting xMAU Analysis is classified as [Orange](/handbook/engineering/security/data-classification-standard.html#orange) or [Yellow](/handbook/engineering/security/data-classification-standard.html#yellow). This includes ORANGE customer metadata from the account, contact data from Salesforce and Zuora and GitLab's Non public financial information, all of which shouldn't be publicly available. Care should be taken when sharing data from this dashboard to ensure that the detail stays within GitLab as an organization and that appropriate approvals are given for any external sharing. In addition, when working with row or record level customer metadata care should always be taken to avoid saving any data on personal devices or laptops. This data should remain in [Snowflake](/handbook/business-ops/data-team/platform/#data-warehouse) and [Sisense](/handbook/business-ops/data-team/platform/periscope/) and should ideally be shared only through those applications unless otherwise approved.
<p>

<b>ORANGE<b>
<!-- is this part applicable? -->
- Description: Customer and Personal data at the row or record level.
- Objects:
  - `dim_billing_accounts`
  - `dim_crm_accounts`
  - `usage_ping_mart`
</details>


<details>
<summary><b>### Solution Ownership</b></summary>
<br>
<p>
- Source System Owner:
    - Versions: `@jeromezng`
    - Gitlab.com: `TBD`
    - Salesforce: `@jbrennan1`
    - Zuora: `@andrew_murray`
- Source System Subject Matter Expert:
    - Versions: `@jeromezng`
    - Gitlab.com: `TBD`
    - Salesforce: `@jbrennan1`
    - Zuora: `@andrew_murray`
- Data Team Subject Matter Expert: `@snalamaru` `@chrissharp` `@tpoole1` `@mdrussell`
</p>
</detail>

### Self-Service Dashboard Solutions 

<!-- Parul: These dashboards should be there own l2 page -->
| Dashboard                                                                                                    | Purpose |
| ------------------------------------------------------------------------------------------------------------ | ------- |


## Trusted Data Solution

[Trusted Data Framework](https://about.gitlab.com/handbook/business-ops/data-team/direction/trusted-data/)

### Manual Data Validations

* [Manual Usage Ping Validation Dashboard](https://app.periscopedata.com/app/gitlab/762611/Manual-Usage-Ping-Validation)
* Version Trusted Data Dashboard

{:toc}

---

