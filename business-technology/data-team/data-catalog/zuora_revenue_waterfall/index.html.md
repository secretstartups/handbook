---
layout: handbook-page-toc
title: "TD: Zuora Revenue Waterfall"
description: "The goal of this page is to help you understand how to navigate the Zuora Revenue Waterfall."
---
## Goal of this Page:

* Help you understand how to navigate the Zuora Revenue Waterfall.

## Waterfall Report
The waterfall report allows us to understand when revenue from a given transaction will be recognized over time. This will be timed differently for various products in our catalog and is defined by the contract's particular schedule. The waterfall report is a powerful tool to see how much revenue will be recognized in a given month as well as the amount previously recognized for a specific transaction.

Since the nature of a given contract may change over time, the waterfall report has the ability to look back at an historical period and view the deals as they stood then. In v1.0, we are taking live data from Zuora Revenue, which will cause a diversion from the waterfall report in the UI because it is a snapshotted version taken at month-end-close, while the data warehouse is live and will reflect changes made to contracts after month-end-close. For example, the UI would maintain a record of contracts that are deleted while the warehouse will not. In the future there will be a snapshotted version of the report in the warehouse as well so we can tie out to the source report.

### Release Train Cadence:

1. Coming Soon

### Maintenance Schedule:

1. As needed, Scheduled Maintenance will be performed every two weeks on Friday, from 9am to 11am EST.

### Quick Links
- [Zuora Revenue Waterfall Documentation](https://knowledgecenter.zuora.com/Zuora_Revenue/Reports/Report_reconciliation/Waterfall_Report)
- [Zuora Revenue BI Views Base Waterfall Query](https://knowledgecenter.zuora.com/Zuora_Revenue/Zuora_Revenue_BI_views/Sample_queries#Revenue_waterfall)

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Getting Started </h1>

To get started we want to make sure you understand:

* What KPIs/PIs are supported using this report
* Key terms that will explain how we account for the metrics
* The data source behind the report
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
<ul>
  <li>as_of_period_id: key filter to show the waterfall report as it was for a past time period</li>
  <li>revenue_contract_line_attribute_16: indicates if a line has been adjusted through a manual true-up </li>
  <li>revenue_contract_schedule: The performance obligations are recognized over time based on the rules for the performance obligation type. These rules are expressed as a schedule, which states when and what percent of a contract obligation can be recognized. This is the basis for the waterfall report</li>
</ul>
</details>
<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;}
</style>
<h1 id="headerformat">Understanding the Data Sources and Data Models</h1>
<br>

Zuora Billing is our enterprise solution for tracking subscriptions. It is the basis for many of our important financial metrics, like [ARR](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/finance-arr/). Zuora Revenue is a tool used by the Corporate Finance team to recognize our subscription revenue based on both GAAP and non-GAAP rules.

<details>
<summary markdown='span'>
  Data Lineage
</summary>
Data is sourced from Zuora Revenue. The dbt solution generates a dimensional model from revenue contract lines, schedules, as well as other pertinent details about a given contract to generate a report containing all deals being recognized in a given period. It will allow users to view these deals at various points in time (`as_of_period_id`) since a given deal may be modified between its start and end dates.
</details>
<details>
<summary markdown='span'>
  Example Queries
</summary>

<br>

Revenue recognized from October 2021, as it was known in October 2021
```
SELECT 
  SUM("OCT-21") AS october_revenue
FROM prod.restricted_safe_common_mart_finance.mart_waterfall
WHERE as_of_period_id = 20211001
```
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

ARR models use the `zuora_revenue` tags for Trusted Data tests and their results. This can be seen most easily using the [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/756199/Trusted-Data-Dashboard)

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
* Data Team Subject Matter Expert: `@michellecooper`
</details>
