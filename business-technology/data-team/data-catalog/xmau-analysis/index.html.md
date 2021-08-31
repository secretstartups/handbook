---
layout: handbook-page-toc
title: "xMAU Analysis"
description: "xMAU is a single term to capture the various levels at which we capture Monthly Active Usage (MAU)"
---

## On this page
{:.no_toc}

- TOC
{:toc}

---

## xMAU Analysis

xMAU is a single term to capture the various levels at which we capture Monthly Active Usage (MAU), encompassing Action (AMAU), Group (GMAU), Stage (SMAU), and Total CMAU). In order to provide a useful single metric for product groups which maps well to product-wide Key Performance indicators, each xMAU metric cascades upwards in the order noted above.

xMAU metrics are derived from Usage Ping (Self-Managed instance-level granularity) and GitLab.com (SaaS namespace-level granularity). This Analytics Workflow enables the analysis of each level of xMAU metric across various segments of customers sets the foundation for reporting on [Reported, Estimated, and Projected](https://about.gitlab.com/handbook/product/performance-indicators/#three-versions-of-xMAU) metrics.

**The goal of this page:**
  * Help you understand how to navigate through the [Product Adoption Dashboard](https://app.periscopedata.com/app/gitlab/771580/WIP:-Executive-Dashboard)
  * Help you understand the data models used to Product Adoption Dashboard
  * Have you asess your understanding by taking a certification most applicable to your role at GitLab.
    * Assess your understanding of the dashboard solution, take the [Dashboard user certification](https://forms.gle/kY3cC6ZGzUhqY3mp9).
    * Dashboard Developer certification to come.
    * In addition, we recommend understanding our [methodology for recorded to estimated xMAU](/handbook/business-ops/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html)
  * And overall help everyone contribute!

### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://app.periscopedata.com/app/gitlab/771580/WIP:-Executive-Dashboard" class="btn btn-purple" style="width:20%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Product Adoption Dashboard</a>
  <a href="https://www.youtube.com/watch?v=F4FwRcKb95w&feature=youtu.be" class="btn btn-purple" style="width:20%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Getting started in SiSense</a>
  <a href="https://app.periscopedata.com/app/gitlab/793297/xMAU-Analysis-Workflow---Example-Queries-and-Visualizations" class="btn btn-purple" style="width:20%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">xMAU Example Dashboard</a>
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
- **[Host](https://docs.gitlab.com/ee/development/telemetry/event_dictionary.html)**
- **[Instance](https://docs.gitlab.com/ee/development/telemetry/event_dictionary.html)**
- **Instance User Count** - the total number of users on an instance
- **[Paid User](/handbook/product/performance-indicators/#paid-user)**
- **[Product Tier](/handbook/marketing/strategic-marketing/tiers/#overview)**
- **[Usage Ping](https://docs.gitlab.com/ee/development/telemetry/event_dictionary.html)**
- **[Version](/handbook/sales/process/version-check/#what-is-the-functionality-of-the-gitlab-version-check)**

### Key Metrics, KPIs, and PIs

Explanations for the metrics below can be found on [the Product Team Performance Indicator page](/handbook/product/performance-indicators/#structure):
- **[Action Monthly Active Users (AMAU)](/handbook/product/performance-indicators/#action-monthly-active-users-amau)**
- **[Stage Monthly Active Users (SMAU)](/handbook/product/performance-indicators/#stage-monthly-active-users-smau)**
- **[Section Monthly Active Users (Section MAU)](/handbook/product/performance-indicators/#structure)**
- **[Section Total Monthly Active Users (Section CMAU)](https://about.gitlab.com/handbook/product/performance-indicators/#structure)**
- **[Cobined Monthly Active Users (CMAU)](/handbook/product/performance-indicators/#structure)**

Each metric has three different versions (Recorded, Estimated, Projected), explained on
  - [the Product Team Performance Indicator page](/handbook/product/performance-indicators/#three-versions-of-xmau)
  - [the Sisense Style Guide](/handbook/business-ops/data-team/platform/sisense-style-guide/#recorded-and-calculated-data)
Currently, recorded metrics that have identified usage ping metrics have been charted on the Centralized Dashboard, but we are working on our first version of Estimated values [in this issue](https://gitlab.com/gitlab-data/analytics/-/issues/6547#note_429610192).

#### How xMAU are calculated ?

xMAU is calculated mainly thanks to Service Ping Data source. When the project started, stage and group Product Managers chose one specific service ping metric based on which are produced their xMAU charts.

- list of GMAU metrics used
<embed width="100%" height="400px" src="<%= signed_periscope_url(chart: 12468487, dashboard: 758607, embed: 'v2') %>">

- list of SMAU metrics used
<embed width="100%" height="400px" src="<%= signed_periscope_url(chart: 12468482, dashboard: 758607, embed: 'v2') %>">


The current SSOT for the xMAU metrics is [this spreadsheet](https://docs.google.com/spreadsheets/d/1_b-BoKfrt2iH1dYUMYBxSw_CFpYiQ2W84XD3-AnfuwY/edit?usp=sharing) which is imported via Sheetload to our datawarehouse. That means that when updating the GMAU, SMAU columns for a specific metrics, the changes will propagate downstream until the xMAU charts updated in the handbook.

There is a plan for migrating this SSOT from this spreadsheet to the dictionary YAML files, [work to do is in this issue](https://gitlab.com/gitlab-data/analytics/-/issues/10106).

If you have more questions on the metrics definition, you should ask the Product Intelligence team. They are currently maintaining a Metric dictionary available here. Also if the metrics are database calculation they are able to provide you with the SQL query run to generate the metrics value.

#### Difference between xMAU and Paid xMAU

##### Paid xMAU Definition

Each of these above metrics will be calculated for xMAU and paid xMAU. Paid xMAU is currently defined as Monthly Active Users who "roll up to a paid instance for Self-Managed via Usage Ping data _or_ a paid namespace for SaaS via GitLab.com Postgres Database Imports in a 28 day rolling period". (See [Paid Stage Monthly Active Users - Paid SMAU](https://about.gitlab.com/handbook/product/performance-indicators/#paid-stage-monthly-active-users-paid-smau) as an example.)

Since GitLab Business functions currently do not have a standardized way to identified which namespaces or instances belong to an OSS, EDU, internal projects, or other subscriptions that have a paid plan type but do not contribute ARR, the current implementation of xMAU include users associated with these subscriptions as "paid".

##### Calculation of xMAU and Paid xMAU

We have 2 main data sources to calculate xMAU and paid xMAU, the Version App and the Gitlab.com Postgres database. The table below summarises which data source is used for those calculations.

|   Delivery   | xMAU         | Paid xMAU                   |
|--------------|--------------|-----------------------------|
| SaaS         | version app* | Gitlab.com Postgres Table** |
| Self-Managed | version app  | version app***              |

_Notes_:

\*: For SaaS xMAU, we use the payloads generated for gitlab.com. These payloads are easily identifiable since they are linked to an instance with uuid = `ea8bf810-1d6f-4a6a-b4fd-93e8cbd8b57f`

\*\*: For SaaS paid XMAU, we need to use Gitlab.com postgres table. The Usage Ping payloads generated from our Gitlab.com Instance gives us high-level statistics at an instance level. This is an aggregated number which can't be further broken down, for example by product tier, plan type, or namespace.
  * To be able to generate SaaS paid xMAU we need to replicate the xMAU counters with the replica of the Gitlab.com database which is stored in our data warehouse.
    * [Batch counters](https://docs.gitlab.com/ee/development/usage_ping/#ordinary-redis-counters) are simple SQL-generated counters. The SQL query used to generate the counters are accessible and easily recreated.
    * Unfortunately, this is not doable for every single counter. [Redis counters](https://docs.gitlab.com/ee/development/usage_ping/#redis-counters) are NOT SQL-generated counters. They also track actions that are not in the Postgres DB such as pageviews, or frontend interactions.
  * Therefore, only some metrics can be recreated using the Gitlab.com Postgres Replica. That means that for now, we are not able to calculate some of the SaaS Paid xMAU metrics like the Monitor Stage.

\*\*\*: To calculate paid xMAU on Self-Managed we use the `edition` field in the [Usage Ping Payload](https://docs.gitlab.com/ee/development/usage_ping/#example-usage-ping-payload), selecting only usage pings with `EEP`, `EES` and `EEU` edition. The edition value is derived from the [plan column in the license table in the licenseDot database at the time the license was generated](https://gitlab.com/gitlab-data/analytics/-/issues/7257#note_464118474). That means that currently we don't exclude EDU/OSS subscriptions from the paid xMAU calculations.

### Data Sources

Based on the explanations above, the 2 main data sources we are using are:

- Service Ping Data Source
- Gitlab.com Data Source

### Data marts

We have built a suite of datamarts that allow users to explore our different product data sources.

#### Mart Service Ping Usage Ping Data

The `mart_service_ping_product_usage_data` is the most comprehensive data model for all Service Ping data. This data model joins together Service Ping data with financial and GTM data sources such as subscription, CRM Account...

This allows users to retrieve usage data for all monthly and all-time metrics which are [defined here](/handbook/business-technology/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html)

#### Mart Estimated xMAU

The mart `mart_estimated_xmau` is built in order to generate easily the estimated XMAU PIs. This model contains all the estimation logic which is explained [in this page](/handbook/business-technology/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html).

End-users can then use very simple charts to create their estimated xMAU chart:

```
code snippet needed
```

A `mart_paid_estimated_xmau` datamart has been created to construct specifically paid xMAU charts

### Service Ping Data Pipeline

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embeddedchart/7ccc1e4a-75fd-4d9f-bd80-8268c5d267b8" id="XKD2Se~QQWM_"></iframe></div>

### Sisense Snippets for Product Managers

We created [another page](/handbook/business-technology/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html) which contains a comprehensive list of all the snippets that were created for Product Managers. We recommend you read this page for more information about this topic.

We also [created this dashboard](https://app.periscopedata.com/app/gitlab/793297/xMAU-Analysis-Workflow---Example-Queries-and-Visualisations) 
📊, full of examples on how to use these snippets.

#### How to update targets for a specific xMAU chart using these snippets ?

##### Implement your dynamic target values

It is now possible to get Monthly target values implemented in your SiSense chart for any of your Usage Ping Metrics. To do so, you will need to update the yml file where your Performance Indicator (xMAU or potentially any other PI coming from usage ping) and follow the example described below:

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
  <a href='https://app.periscopedata.com/app/gitlab/825261/WIP-[td_xmau]-monthly_targets?widget=11099255&udv=0'>
  Example of what can be done </a>

  <embed width="100%" height="400px" src="<%= signed_periscope_url(chart: 11125394, dashboard: 825261, embed: 'v2') %>"> 
</details>

<details>
  <summary markdown="span">monthly_estimated_targets</summary>

  If the PI you want to set target for is based on recorded values (without any estimations).
  To visualize your chart with your dynamic target you will need <a href='https://app.periscopedata.com/app/gitlab/snippet/td_xmau/5511efd3a1ee44728bac7a7c17fd737e/edit'>to use this snippet.</a>

  <a href='https://about.gitlab.com/handbook/business-ops/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html'>More details about this snippet can be found here</a>
  <a href='https://app.periscopedata.com/app/gitlab/825261/WIP-[td_xmau]-monthly_targets?widget=11099255&udv=0'>
  Example of what can be done:</a>

  <embed width="100%" height="400px" src="<%= signed_periscope_url(chart: 11099255, dashboard: 825261, embed: 'v2') %>">
</details>

##### Using the snippet to get a static target
For all embedded PI/xMAU charts using our standardized snippets and visualisation, updating the target is a very easy 4-step process:

1. Go to the PI of interest and click on the sisense link
![pi_page](/handbook/business-ops/data-team/data-catalog/xmau-analysis/images/pi_page.png)
1. Click on Edit Chart
![edit](/handbook/business-ops/data-team/data-catalog/xmau-analysis/images/edit_chart.png)
1. Change the last value (that's the target value - if you do a decimal it will increase by a certain percentage. If you type in a full number, that number will be the target line.)
![target](/handbook/business-ops/data-team/data-catalog/xmau-analysis/images/target_change.png)
1. Click the Save Button
![save](/handbook/business-ops/data-team/data-catalog/xmau-analysis/images/save_chart.png)

## Entity Relationship Diagrams
One of our goals is to create a 1 model that easily provides all the data needed for analysis. As we continue to iterate on our solutions, we know that there will be information that isn't always available in this model! Here's where understanding the Entity Relationship Diagram helps. This model shows what tables are joined to create the layer you are accessing. This is really when you are looking to dive deeper and gain additional insight!

<!-- is the correct ERD? -->

| Diagram/Entity                                 | Grain                                               | Purpose                                                                              |
|------------------------------------------------|-----------------------------------------------------|--------------------------------------------------------------------------------------|
| [Fact Monthly Usage Ping Data ERD and Data Flow](https://app.lucidchart.com/lucidchart/invitations/accept/b1a46304-f878-4c90-9252-d76ce4015b7a) | host_id, instance_id, reporting_month, metrics_path | Provides insights into Feature Usage by various instance and subscription dimensions |



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
- Data Team Subject Matter Expert: `@mpeychet_` `@m_walker`
</p>
</detail>

### Self-Service Dashboard Solutions

<!-- Parul: These dashboards should be there own l2 page -->
| Dashboard                                                                                                    | Purpose |
| ------------------------------------------------------------------------------------------------------------ | ------- |
| Executive Overview - TBD | This dashboard presents an executive overview of the current status of all metrics. |
| Dev Section Analysis - TBD | This dashbaord presents a section overview of the current status of related metrics. |
| [DRAFT: Centralized Dashboard for Handbook Updates](https://app.periscopedata.com/app/gitlab/758607/WIP-SMAU-GMAU-Mathieu) | The charts on this dashboard are used for handbook embeds. |

## Trusted Data Solution

[Trusted Data Framework](https://about.gitlab.com/handbook/business-ops/data-team/direction/trusted-data/)

### Manual Data Validations

* [Manual Usage Ping Validation Dashboard](https://app.periscopedata.com/app/gitlab/762611/Manual-Usage-Ping-Validation)
* Version Trusted Data Dashboard

{:toc}

---

## xMAU Analysis

xMAU is a single term to capture the various levels at which we capture Monthly Active Usage (MAU), encompassing Action (AMAU), Group (GMAU), Stage (SMAU), and Total CMAU). In order to provide a useful single metric for product groups which maps well to product-wide Key Performance indicators, each xMAU metric cascades upwards in the order noted above.

xMAU metrics are derived from Usage Ping (Self-Managed instance-level granularity) and GitLab.com (SaaS namespace-level granularity). This Analytics Workflow enables the analysis of each level of xMAU metric across various segments of customers sets the foundation for reporting on [Reported, Estimated, and Projected](https://about.gitlab.com/handbook/product/performance-indicators/#three-versions-of-xMAU) metrics.

**The goal of this page:**
  * Help you understand how to navigate through the [Product Adoption Dashboard](https://app.periscopedata.com/app/gitlab/771580/WIP:-Executive-Dashboard)
  * Help you understand the data models used to Product Adoption Dashboard
  * Have you asess your understanding by taking a certification most applicable to your role at GitLab.
    * Assess your understanding of the dashboard solution, take the [Dashboard user certification](https://forms.gle/kY3cC6ZGzUhqY3mp9).
    * Dashboard Developer certification to come.
    * In addition, we recommend understanding our [methodology for recorded to estimated xMAU](/handbook/business-technology/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html)
  * And overall help everyone contribute!

### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://app.periscopedata.com/app/gitlab/771580/WIP:-Executive-Dashboard" class="btn btn-purple" style="width:20%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Product Adoption Dashboard</a>
  <a href="https://www.youtube.com/watch?v=F4FwRcKb95w&feature=youtu.be" class="btn btn-purple" style="width:20%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Getting started in SiSense</a>
  <a href="https://app.periscopedata.com/app/gitlab/793297/xMAU-Analysis-Workflow---Example-Queries-and-Visualizations" class="btn btn-purple" style="width:20%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">xMAU Example Dashboard</a>
  <a href="https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html" class="btn btn-purple" style="width:20%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Estimation Algorithm Page</a>
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
- **[Host](https://docs.gitlab.com/ee/development/telemetry/event_dictionary.html)**
- **[Instance](https://docs.gitlab.com/ee/development/telemetry/event_dictionary.html)**
- **Instance User Count** - the total number of users on an instance
- **[Paid User](/handbook/product/performance-indicators/#paid-user)**
- **[Product Tier](/handbook/marketing/strategic-marketing/tiers/#overview)**
- **[Usage Ping](https://docs.gitlab.com/ee/development/telemetry/event_dictionary.html)**
- **[Version](/handbook/sales/process/version-check/#what-is-the-functionality-of-the-gitlab-version-check)**

### Key Metrics, KPIs, and PIs

Explanations for the metrics below can be found on [the Product Team Performance Indicator page](/handbook/product/performance-indicators/#structure):
- **[Action Monthly Active Users (AMAU)](/handbook/product/performance-indicators/#action-monthly-active-users-amau)**
- **[Stage Monthly Active Users (SMAU)](/handbook/product/performance-indicators/#stage-monthly-active-users-smau)**
- **[Section Monthly Active Users (Section MAU)](/handbook/product/performance-indicators/#structure)**
- **[Section Total Monthly Active Users (Section CMAU)](https://about.gitlab.com/handbook/product/performance-indicators/#structure)**
- **[Total Monthly Active Users (CMAU)](/handbook/product/performance-indicators/#structure)**

Each metric has three different versions (Recorded, Estimated, Projected), explained on
  - [the Product Team Performance Indicator page](/handbook/product/performance-indicators/#three-versions-of-xmau)
  - [the Sisense Style Guide](/handbook/business-technology/data-team/platform/sisense-style-guide/#recorded-and-calculated-data)
Currently, recorded metrics that have identified usage ping metrics have been charted on the Centralized Dashboard, but we are working on our first version of Estimated values [in this issue](https://gitlab.com/gitlab-data/analytics/-/issues/6547#note_429610192).

### Difference between xMAU and Paid xMAU

#### Paid xMAU Definition

Each of these above metrics will be calculated for xMAU and paid xMAU. Paid xMAU is currently defined as Monthly Active Users who "roll up to a paid instance for Self-Managed via Usage Ping data _or_ a paid namespace for SaaS via GitLab.com Postgres Database Imports in a 28 day rolling period". (See [Paid Stage Monthly Active Users - Paid SMAU](https://about.gitlab.com/handbook/product/performance-indicators/#paid-stage-monthly-active-users-paid-smau) as an example.)

Since GitLab Business functions currently do not have a standardized way to identified which namespaces or instances belong to an OSS, EDU, internal projects, or other subscriptions that have a paid plan type but do not contribute ARR, the current implementation of xMAU include users associated with these subscriptions as "paid".

#### Calculation of xMAU and Paid xMAU

We have 2 main data sources to calculate xMAU and paid xMAU, the Version App and the GitLab.com Postgres database. The table below summarises which data source is used for those calculations.

|   Delivery   | xMAU         | Paid xMAU                   |
|--------------|--------------|-----------------------------|
| SaaS         | version app* | GitLab.com Postgres Table** |
| Self-Managed | version app  | version app***              |

_Notes_:

\*: For SaaS xMAU, we use the payloads generated for gitlab.com. These payloads are easily identifiable since they are linked to an instance with uuid = `ea8bf810-1d6f-4a6a-b4fd-93e8cbd8b57f`

\*\*: For SaaS paid XMAU, we need to use GitLab.com postgres table. The Usage Ping payloads generated from our GitLab.com Instance gives us high-level statistics at an instance level. This is an aggregated number which can't be further broken down, for example by product tier, plan type, or namespace.
  * To be able to generate SaaS paid xMAU we need to replicate the xMAU counters with the replica of the GitLab.com database which is stored in our data warehouse.
    * [Batch counters](https://docs.gitlab.com/ee/development/usage_ping/#ordinary-redis-counters) are simple SQL-generated counters. The SQL query used to generate the counters are accessible and easily recreated.
    * Unfortunately, this is not doable for every single counter. [Redis counters](https://docs.gitlab.com/ee/development/usage_ping/#redis-counters) are NOT SQL-generated counters. They also track actions that are not in the Postgres DB such as pageviews, or frontend interactions.
  * Therefore, only some metrics can be recreated using the GitLab.com Postgres Replica. That means that for now, we are not able to calculate some of the SaaS Paid xMAU metrics like the Monitor Stage.

\*\*\*: To calculate paid xMAU on Self-Managed we use the `edition` field in the [Usage Ping Payload](https://docs.gitlab.com/ee/development/usage_ping/#example-usage-ping-payload), selecting only usage pings with `EEP`, `EES` and `EEU` edition. The edition value is derived from the [plan column in the license table in the licenseDot database at the time the license was generated](https://gitlab.com/gitlab-data/analytics/-/issues/7257#note_464118474)

### Data Models and Snippets

We created 2 different data solutions:
- The [xmau_202011 snippet](https://app.periscopedata.com/app/gitlab/snippet/xmau_202011/5539c0e26d2d4b0aad82a176896d2d2f/edit) that allows PMs to chart quickly their XMAU metric to put in my group/personal dashboard or embed them in the Dashboard: [More info here]()
- The [mart_monthly_product_usage table](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_monthly_product_usage). If PMs want to investigate more into the data, understand who their top users are, or break down the results by some other dimensions (size of the deal, size of the company, product tier...).

The Product Adoption Dashboard is created using 1 main snippet:


<!-- I would recommend changing the sql snippet to a view so people can see what the data looks like when they click on this link by hitting run  -->
#### [xmau_202011](https://app.periscopedata.com/app/gitlab/view/xmau_202011_example_all_tmau_view/5e845ed76f574567b892ecc8cd0ebfdb/edit)

NB: The link redirects you to a Sisense View using this snippet. By hitting the `RUN SQL` button, you will be able to see the dataset.

Some examples would help understand better the following explanations:

- [Estimated CMAU for Dev Section](https://app.periscopedata.com/app/gitlab/793297/xMAU-Analysis-Workflow---Example-Queries-and-Visualisations?widget=10690026&udv=0)
- [Estimated Paid GMAU for Release Management Group](https://app.periscopedata.com/app/gitlab/793297/xMAU-Analysis-Workflow---Example-Queries-and-Visualisations?widget=10690032&udv=0)
- [Estimated SMAU for Plan Stage by edition](https://app.periscopedata.com/app/gitlab/602123/Data-For-Product-Managers:-Supporting-Dashboard?widget=10634308&udv=953103)

This  snippet is mainly used to give estimated value for [estimated and recorded XMAU](https://app.periscopedata.com/app/gitlab/793297/xMAU-Analysis-Workflow---Example-Queries-and-Visualisations?widget=10690035&udv=0).

You need to declare 4 parameters to use it succesfully:

- **xmau_type**: to decide if you want to show All XMAU data or paid only. Values accepted are *'All'* or 'paid'
- **xmau_level**: to choose among one of these values: `'CMAU'`, `'UMAU'`, `'SMAU'`, `'GMAU'`
- **filter**: this depends on the value chosen for xmau_level:
  - CMAU: you can declare ``All`` or choose a section name (camel case, possible values are `'dev'`, `'enablement'`, `'ops'`, `'secure_protect'`)
  - SMAU: you can either choose a section name (camel case, possible values are `'dev'`, `'enablement'`, `'ops'`, `'secure_protect'`) or a stage_name (camel_case). The list of stage_names is shown in this [table](https://app.periscopedata.com/app/gitlab/789044/Estimation-Methodology-Experimentation-Dashboard?widget=10657566&udv=0)
  - GMAU: you can either choose a stage name (camel case, list of stage names are available here) or a group name (camel_case). The list of group names is shown in this [table](https://app.periscopedata.com/app/gitlab/789044/Estimation-Methodology-Experimentation-Dashboard?widget=10657566&udv=0)
- **target**: this allows you to define a target line in your chart. If you leave it empty it won't return anything. You can either create a static target line by just inputting the value you with to set as your target or a dynamic target line, by puting your monthly growth target (10% for example) as a decimal value (0.1 in this specific case)/

This snippet will return a compact table with a limited set of dimensions you can play with:

- **created_month**: reporting month
- **product_tier**: [see definition here](/handbook/marketing/strategic-marketing/tiers/#overview). This is representing the product_tier the instance is on, not the product_tier of the subscription linked to the instance. ('All', 'target' are also potential values)
- **delivery**: SaaS or Self-Managed ('All', 'target' are also potential values)
- **breakdown**: SaaS for delivery='SaaS'. delivery='Self-Managed' is split between `Recorded Self-Managed` and `Estimated Self-Managed`. That allows us to create XMAU charts following our design standards ([see example here](https://about.gitlab.com/handbook/product/performance-indicators/#estimated-combined-monthly-active-users-tmau)). Note that 'All', 'target' are also potential values
- **edition**: CE, EE or SaaS ('All', 'target' are also potential values)

And one measure:

- **mau_value**: which is the number of Active Users for the specific dimensions

If you want to read more about the Estimation Algorithm, more details about the current methodology and our vision [are available here](https://mp-add-predicted-page.about.gitlab-review.app/handbook/business-technology/data-team/data-catalog/xmau-analysis/predicted-xmau-algorithm.html)


#### [mart_monthly_product_usage](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_monthly_product_usage)

This model joins together usage ping data with license, salesforce and zuora data. That means you will be able to play around with sales/financial and product data at the same time. You will be for example able to answer questions like:

* Top 10 Universities who are contributing the most to plan XMAU (number of users creating issues)
* Adoption Rate of a specific stage per month and per product tier
* verify SMAU split by industry

[The dbt model is well-documented](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_monthly_product_usage) with a definition for each column. We also created [a dashboard which shows some questions](https://app.periscopedata.com/app/gitlab/793297/WIP:-MP-New-Product-Model---some-examples) that can be answered with this new model.

Basic SQL query to plot monthly Number of Users creating an issue.

```
SELECT
  reporting_month,
  main_edition,
  delivery,
  SUM(monthly_metric_value)
FROM legacy.mart_monthly_product_usage
WHERE metrics_path = 'usage_activity_by_stage_monthly.plan.issues'
GROUP BY 1,2,3
```

Basic query to extract Top 10 EDU/OSS subscriptions using the most the CI Pipelines feature:

```
SELECT
  host_name,
  license_id,
  ping_id,
  subscription_name_slugify,
  ping_product_tier,
  main_edition,
  monthly_metric_value
FROM legacy.mart_monthly_product_usage
WHERE metrics_path = 'usage_activity_by_stage_monthly.verify.ci_pipelines'
  -- snippet [last_month] is used to get the value from last calendar month only
  AND reporting_month = [last_month]
  AND delivery = 'Self-Managed'
  -- is_program_subscription is a boolean flag turned to TRUE for all subscriptions which are part of the EDU/OSS Program
  AND is_program_subscription
ORDER BY monthly_metric_value DESC
LIMIT 50
```

Basic query to plot monthly Number of users who created a deployments on Paid Self-Managed instances split by Salesforce Industry type

```
SELECT
  reporting_month,
  IFF(ultimate_parent_industry IS NOT NULL, ultimate_parent_industry, 'Unknown') AS ultimate_parent_industry,
  SUM(monthly_metric_value)
FROM legacy.mart_monthly_product_usage
WHERE metrics_path = 'usage_activity_by_stage_monthly.release.deployments'
  AND is_paid_subscription
GROUP BY 1,2
```

## Entity Relationship Diagrams
One of our goals is to create a 1 model that easily provides all the data needed for analysis. As we continue to iterate on our solutions, we know that there will be information that isn't always available in this model! Here's where understanding the Entity Relationship Diagram helps. This model shows what tables are joined to create the layer you are accessing. This is really when you are looking to dive deeper and gain additional insight!

<!-- is the correct ERD? -->

| Diagram/Entity                                 | Grain                                               | Purpose                                                                              |
|------------------------------------------------|-----------------------------------------------------|--------------------------------------------------------------------------------------|
| [Fact Monthly Usage Ping Data ERD and Data Flow](https://app.lucidchart.com/lucidchart/invitations/accept/b1a46304-f878-4c90-9252-d76ce4015b7a) | host_id, instance_id, reporting_month, metrics_path | Provides insights into Feature Usage by various instance and subscription dimensions |



<details>
<summary><b>Data Classification</b></summary>

<p>Some data supporting xMAU Analysis is classified as [Orange](/handbook/engineering/security/data-classification-standard.html#orange) or [Yellow](/handbook/engineering/security/data-classification-standard.html#yellow). This includes ORANGE customer metadata from the account, contact data from Salesforce and Zuora and GitLab's Non public financial information, all of which shouldn't be publicly available. Care should be taken when sharing data from this dashboard to ensure that the detail stays within GitLab as an organization and that appropriate approvals are given for any external sharing. In addition, when working with row or record level customer metadata care should always be taken to avoid saving any data on personal devices or laptops. This data should remain in [Snowflake](/handbook/business-technology/data-team/platform/#data-warehouse) and [Sisense](/handbook/business-technology/data-team/platform/periscope/) and should ideally be shared only through those applications unless otherwise approved.
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
    - GitLab.com: `TBD`
    - Salesforce: `@jbrennan1`
    - Zuora: `@andrew_murray`
- Source System Subject Matter Expert:
    - Versions: `@jeromezng`
    - GitLab.com: `TBD`
    - Salesforce: `@jbrennan1`
    - Zuora: `@andrew_murray`
- Data Team Subject Matter Expert: `@mpeychet_` `@m_walker`
</p>
</detail>

### Self-Service Dashboard Solutions

<!-- Parul: These dashboards should be there own l2 page -->
| Dashboard                                                                                                    | Purpose |
| ------------------------------------------------------------------------------------------------------------ | ------- |
| Executive Overview - TBD | This dashboard presents an executive overview of the current status of all metrics. |
| Dev Section Analysis - TBD | This dashbaord presents a section overview of the current status of related metrics. |
| [DRAFT: Centralized Dashboard for Handbook Updates](https://app.periscopedata.com/app/gitlab/758607/WIP-SMAU-GMAU-Mathieu) | The charts on this dashboard are used for handbook embeds. |


#### How to update targets for a specific xMAU chart using these snippets ?

For all embedded PI/xMAU charts using our standardized snippets and visualisation, updating the target is a very easy 4-step process:

1. Go to the PI of interest and click on the sisense link
![pi_page](/handbook/business-technology/data-team/data-catalog/xmau-analysis/images/pi_page.png)
1. Click on Edit Chart
![edit](/handbook/business-technology/data-team/data-catalog/xmau-analysis/images/edit_chart.png)
1. Change the last value (that's the target value - if you do a decimal it will increase by a certain percentage. If you type in a full number, that number will be the target line.)
![target](/handbook/business-technology/data-team/data-catalog/xmau-analysis/images/target_change.png)
1. Click the Save Button
![save](/handbook/business-technology/data-team/data-catalog/xmau-analysis/images/save_chart.png)



## Trusted Data Solution

[Trusted Data Framework](https://about.gitlab.com/handbook/business-technology/data-team/direction/trusted-data/)

### Manual Data Validations

* [Manual Usage Ping Validation Dashboard](https://app.periscopedata.com/app/gitlab/762611/Manual-Usage-Ping-Validation)
* Version Trusted Data Dashboard
