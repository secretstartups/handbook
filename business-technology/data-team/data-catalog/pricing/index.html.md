---
layout: handbook-page-toc
title: "Pricing Analysis"

---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page

- TOC
{:toc}

{::options parse_block_html="true" /}

---
## Pricing Analysis

Pricing is the process of analyzing the value customers receive from GitLab at specific price points along with the profitability of those price points. The analysis also includes understanding how these prices affect the overall business and determining what the optimal price points are for customers and GitLab's profitability. The Pricing Analysis page will provide the information and tools that GitLab team members can use to explore our current pricing strategy and develop insights to optimize it.

The goal of this page:

* Help you understand how to navigate through the [Pricing - Customer Discounts Dashboard](https://app.periscopedata.com/app/gitlab/768077/TD:-Pricing-Dashboard---Customer-Discounts)
* Help you understand the data models used to create the Pricing - Customer Discounts Dashboard.
* Have you asess your understanding by taking a certification most applicable to your role at GitLab.
    * To learn more about how to use the dashboard, take the [Dashboard user certification](https://forms.gle/AbU9KgT5hQ1hZdwu8).
    * To learn more about developing Sisense dashboards, take the [Dashboard Developer certification](https://forms.gle/4ChX74yMthXAS7Ur7)
* And overall help everyone contribute!

### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://app.periscopedata.com/app/gitlab/768077/Pricing-Dashboards---Customer-Discounts" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Pricing - Customer Discounts Dashboard</a>
  <a href="https://app.periscopedata.com/app/gitlab/735150/PnP-Analysis,-Test-and-Research" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">PnP Test and Research Dashboard</a>
  <a href="https://app.periscopedata.com/app/gitlab/748119/Pricing---Customer-Overview" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Pricing - Customer Overview Dashboard</a>
  <a href="https://www.youtube.com/watch?v=F4FwRcKb95w&feature=youtu.be" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Getting started using Sisense Discovery</a>
</div>

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

More of a visual learner? Make sure you watch this [Pricing Analysis Solution Training](https://www.youtube.com/watch?v=_lmbopJk8Eg&feature=youtu.be)


<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Key Terms, Metrics, KPIs/PIs, and Key Field and Business Logic </h1>

<details>
<summary markdown='span'>
  Key Terms
</summary>
* <a href="https://about.gitlab.com/handbook/marketing/strategic-marketing/tiers/#overview">Product Category, Product Tier, Delivery</a>
* <a href="https://about.giab.com/handbook/sales/field-operations/gtm-resources/#segmentation">Sales Segment</a>
* <a href="https://about.gitlab.com/handbook/sales/#initial-account-owner---based-on-segment">Account Owner Team</a>
* <a href="https://about.gitlab.com/handbook/sales/sales-term-glossary/#customer)"> Customer</a>

</details>

<details>
<summary markdown='span'>
  Key Metrics, KPIs, and PIs
</summary>
* <a href= "https://about.gitlab.com/handbook/sales/sales-term-glossary">ARR </a>
* <a href= "https://about.gitlab.com/handbook/sales/sales-term-glossary/#revenue-per-licensed-user-also-known-as-arpu-or-arpa"> ARPU </a>
* <a href= "https://about.gitlab.com/handbook/sales/sales-term-glossary/#licensed-users"> Licensed Users </a>
</details>

<details>
<summary markdown='span'>
  Key Fields and Business Logic
</summary>
* Data is sourced from Zuora and Salesforce
* Percent Discount = ( Sum(ARR List Price) - Sum(ARR) ) / Sum(ARR List Price )
* ARR List Price = Annual Product List Price * Number of Seats
* Resellers are identified at the charge level by looking at the `dim_crm_account_id_invoice` of the invoice. Determining if a subscription is from a reseller or not can only be done by looking at the invoices.
* `Reporter`, `Education`, `OSS`,`Y combinator`,`Support` and `Guests` product charges can be removed from `Mart_Discount_ARR` by using the `is_excluded_from_disc_analysis=FALSE` flag as can be seen <a href = "https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/models/marts/arr/mart_discount_arr.sql#L93">here</a>)
* Self-Serve and Sales Assisted subscriptions are differentiated by looking at its `created_by_id` as can be seen [HERE](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/models/marts/arr/mart_discount_arr.sql#L96).
</details>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;}
</style>
<h1 id="headerformat">Understanding the Data Sources and Data Models</h1>
<br>
This dashboard is created off the `base_pricing_discount` snippet in Sisense. Sisense snippets and views allow us to reference a simple string of sql in as many charts as we want. This helps to take the guess work out for an end user in understanding logic behind calculations like ARR, or number of seats and also the guesswork out of understanding which joins are possible.

To create your own dashboards off this model you'll simply be able to type the following in your query in Sisense:
>[base_pricing_discount]

`Base_pricing_discount` is built off `mart_discount_arr`, which provides insights into discounts and reseller deals by various customer dimensions (i.e. parent customer, product category, delivery, account owner team, reseller/not, subscription, and accounts).

This mart takes into account the data models as seen in the Entity Relationship Diagram (ERD):

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embeddedchart/718f41f8-b223-4121-a6b7-a6b286db218b" id="EbyZiNw1jtTG"></iframe></div>



<details>
<summary markdown='span'>
  Data Lineage
</summary>
* Data is sourced from Salesforce.com and Zuora, excluding accounts from manually managed list of <a href ="https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/data/zuora_excluded_accounts.csv"> zuora excluded accounts </a>
* The dbt solution generates a dimensional model from RAW source data. Thie documentation for <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_discount_arr">mart_discount_arr can be found here </a>, and the complete data lineages can be found at <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_discount_arr?g_v=1&g_i=%2Bmart_discount_arr%2B"> dbt mart_discount_arr lineage chart </a>, <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_arr?g_v=1&g_i=%2Bmart_arr%2B">dbt mart_arr lineage chart </a>
</details>

<details>
<summary markdown='span'>
  Example Query
</summary>
We have our model we are going to reference, so let's start with figuring out the discount percent has been over a given time range. We encapsulate our `base_pricing_discount` into a cte (this allows us to reference it as a dataset now), and identify what we want to create our chart on. In this case, we are looking for the discount percent so we care about two fields: `arr_list_price` and `arr`:
<br>
```
WITH base_pricing_discount AS (

  [base_pricing_discount]

)

SELECT
  (SUM(arr_list_price) - SUM(arr) ) / SUM(arr_list_price) AS discount
FROM base_pricing_discount
WHERE [effective_start_month=daterange_no_tz]
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
Much of the data within and supporting Pricing Analysis is [Orange](/handbook/engineering/security/data-classification-standard.html#orange) or [Yellow](/handbook/engineering/security/data-classification-standard.html#yellow). This includes ORANGE customer metadata from the account and GitLab's Non public financial information, all of which shouldn't be publicly available. Care should be taken when sharing data from this dashboard to ensure that the detail stays within GitLab as an organization and that appropriate approvals are given for any external sharing. In addition, when working with row or record level customer metadata care should always be taken to avoid saving any data on personal devices or laptops. This data should remain in [Snowflake](/handbook/business-technology/data-team/platform/#data-warehouse) and [Sisense](/handbook/business-technology/data-team/platform/sisensecdt/) and should ideally be shared only through those applications unless otherwise approved.

**ORANGE**

- Description: Customer and Personal data at the row or record level.
- Objects:
  - `dim_billing_accounts`
  - `dim_crm_accounts`

**YELLOW**

- Description: GitLab Financial data, which includes aggregations or totals.
- Objects:
  - `dim_subscriptions`
  - `fct_charges`
  - `fct_invoice_items`
  - `fct_mrr`
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
* Data Team Subject Matter Expert: `@paul_armstrong` `@jeanpeguero` `@jjstark` `@iweeks`
</details>

