---
layout: handbook-page-toc
title: "TD: Snapshot Annual Recurring Revenue (ARR)"
---
## On this page

- TOC
{:toc}

{::options parse_block_html="true" /}

---

The goal of this page:

* Help you understand how to navigate through the Snapshot ARR Dashboards.
* Help you understand the data models used to create the Snapshot ARR dashboards.
* And overall help everyone contribute!

## Snapshot ARR

ARR in the Zuora data changes on a daily basis as subscriptions are renewed and amended. Therefore, it is necessary to create a snapshot of the data each day so we can have a historical record of ARR in the data warehouse to use for reporting and analysis. The three methodologies we use to Snapshot and report ARR are described below.

#### Method One: 

We use [dbt snapshots](https://docs.getdbt.com/docs/building-a-dbt-project/snapshots) which implement type-2 Slowly Changing Dimensions over mutable source tables. These Slowly Changing Dimensions (or SCDs) identify how a row in a table changes over time. In Method One, we snapshot the [mart_arr](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_arr#code) table which is the mart used to generate our live ARR metrics. This method produces an exact replica of `mart_arr` each day which is then modeled using [date spine techniques](https://discourse.getdbt.com/t/building-models-on-top-of-snapshots/517). In this method, we do not use the snapshoted raw data and instead snapshot the mart table. We found this has benefits of producing a simple model of the snapshotted mart_arr table that always stays up to date with the columns in the `mart_arr` without having to do full refreshes. This is a great fit for the use case of needing an exact `three ring binder` copy of `mart_arr` that keeps up with the columns and does not need to be fully refreshed. Even if the model is fully refreshed, it would still return the same results all of the time. 

#### Method Two: 

We use the [Snowflake Clone](https://docs.snowflake.com/en/sql-reference/sql/create-clone.html) feature to create a [zero-copy clone](https://docs.snowflake.com/en/user-guide/tables-storage-considerations.html#label-cloning-tables) of `mart_arr`. Method Two satitfies the same use cases as Method One where an exact `three ring binder` copy of `mart_arr` is needed each day. This method serves as a backup to Method One by using a methodlogy that is independent of dbt. These cloned tables will not be the primary tables queried or used for reporting, but will provide redundancy and a fail safe to the dbt snapshots in case there is a performance issue with them on a particular day.

#### Method Three: 

Method Three uses the more traditional bottoms-up snapshoting approach that is detailed in this [dbt blog post](https://discourse.getdbt.com/t/building-models-on-top-of-snapshots/517). We use [dbt snapshots](https://docs.getdbt.com/docs/building-a-dbt-project/snapshots) which implement type-2 Slowly Changing Dimensions over mutable source tables to snapshot the raw source data. We then use date spinning modeling techniques to build a snapshotted `mart_arr` table from the bottom-up. This model uses a Snapshotted ARR Fact and live CRM Account and Product Details dimensions. This allows us to answer questions about how ARR looks with the current state of the Sales CRM Account Hierarchy and Product Details attributes such as Product Tier and Product Delivery. This method allows for full refreshes and while the total ARR amount on a given day will not change during a full refresh, the slicing of that ARR will change and update according to what the live Sales CRM Account Hierarchy and Product Details dimensions report.

### Release Train Cadence:

1. Coming Soon

### Maintenance Schedule:

1. As needed, Scheduled Maintenance will be performed every two weeks on Friday, from 9am to 11am EST.

### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://app.periscopedata.com/app/gitlab:safe-dashboard/919263/Go-To-Market-Analytics-Hub-v1.0" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Go To Market Analytics Hub</a>
  <a href="https://www.youtube.com/watch?v=F4FwRcKb95w&feature=youtu.be" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Getting started using Sisense Discovery</a>
</div>
<br><br><br><br><br><br><br><br><br>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Getting Started </h1>

To get started we want to make sure you understand:

* What KPIs/PIs are supported using this dashboard
* Key terms that will explain how we account for the metrics
* The data source behind the dashboard
* To explore further, you can create visual and analysis yourself in Sisense. A great way to start is using the Sisense Discovery tool. Want to get started in Sisense head here.
* To go even deeper, you can explore data in snowflake. The benefit of exploring in Snowflake is you can join to additional information (i.e. other data sources). Additional information on exploring in Snowflake can be found here.


<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Key Terms, Metrics, KPIs/PIs, and Key Field and Business Logic </h1>

<details>
<summary markdown='span'>
  Key Terms
</summary>
Dimensions:

* Coming soon

</details>

<details>
<summary markdown='span'>
  Key Metrics, KPIs, and PIs
</summary>
Facts:

* Coming Soon
</details>

<details>
<summary markdown='span'>
  Key Fields and Business Logic
</summary>
Coming Soon
</details>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;}
</style>
<h1 id="headerformat">Understanding the Data Sources and Data Models</h1>
<br>

The ARR Dashboards and Data models use the data models as seen in the [ARR ERD](https://app.lucidchart.com/documents/view/998dbbae-f04e-4310-9d85-0c360a40a018)

<details>
<summary markdown='span'>
  Data Lineage
</summary>
* Data is sourced from Salesforce.com and Zuora
* The dbt solution generates a dimensional model from Mart Snapshot source data. The documentation and SQL for <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_arr_snapshot_model"> mart_arr_snapshot_model </a>, and the complete data lineages can be found at <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_arr_snapshot_model?g_v=1&g_i=%2Bmart_arr_snapshot_model%2B"> dbt mart_arr_snapshot_model lineage chart </a>
* The dbt solution generates a dimensional model from RAW snapshot source data. The documentation and SQL for <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_arr_snapshot_bottom_up"> mart_arr_snapshot_bottom_up can be found here </a>, and the complete data lineages can be found at <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_arr_snapshot_bottom_up?g_v=1&g_i=%2Bmart_arr_snapshot_bottom_up%2B"> dbt mart_arr_snapshot_bottom_up lineage chart </a>
</details>

<details>
<summary markdown='span'>
  Example Queries
</summary>
Coming Soon
<br>

Coming Soon

</details>
<br>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Additional Resources </h1>

<details>
<summary markdown='span'>
  Trusted Data Solution
</summary>

ARR models use the `arr`, `arr_snapshots`, `mrr`, `zuora`, `billing_account`, and `crm_account` tags for Trusted Data tests and their results. This can be seen most easily using the [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/756199/Trusted-Data-Dashboard)

See overview at [Trusted Data Framework](https://about.gitlab.com/handbook/business-technology/data-team/platform/#tdf)

[dbt guide examples](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/#trusted-data-framework) for
details and examples on implementing further tests
</details>

<details>
<summary markdown='span'>
  EDM Enterprise Dimensional Model Validations
</summary>
The [(WIP) Enterprise Dimensional Model Validation Dashboard](https://app.periscopedata.com/app/gitlab/760445/WIP:-Enterprise-Dimensional-Model-Validation-Dashboard) reports on latest Enterprise Dimensional model test and runs.
</details>

<details>
<summary markdown='span'>
  RAW Source Data Pipeline validations
</summary>
[Data Pipeline Health Validations](https://app.periscopedata.com/app/gitlab/715938/Data-Pipeline-Health-Dashboard)
</details>

<details>
<summary markdown='span'>
  Data Security Classification
</summary>

Coming Soon

**ORANGE**

- Description: Customer and Personal data at the row or record level.
- Objects:
  - 
  - 

**YELLOW**

- Description: GitLab Financial data, which includes aggregations or totals.
- Objects:
  - 
  - 
</details>

<details>
<summary markdown='span'>
  Solution Ownership
</summary>
* Source System Owner:
  * Salesforce: `@jbrennan1`
  * Zuora: `@andrew_murray`
* Source System Subject Matter Expert:
  * Salesforce: `@jbrennan1`
  * Zuora: `@andrew_murray`
* Data Team Subject Matter Expert: `@paul_armstrong` `@jeanpeguero` `@jjstark` `@iweeks` `@michellecooper`
</details>
