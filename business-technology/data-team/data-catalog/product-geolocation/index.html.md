---
layout: handbook-page-toc
title: "Product Geolocation Analysis"
---

## On this page
{:.no_toc}

- TOC
{:toc}

---

## Product Geolocation Analysis : Self-Managed

Understanding where your product is used around the world is an important step towards developing a more complete understanding of your customers, your product's global reach, and related location insights.

Currently, the majority of GitLab's customers choose to [download, install, and host a GitLab self-managed instance](/handbook/marketing/strategic-marketing/dot-com-vs-self-managed/#why-you-probably-want-gitlabcom), which is why we are [focused heavily on delivering a great self-managed customer experience](/direction/#strategic-challenges).

To make the right data-driven decisions on the self-managed product lifecycle and what features to invest in, [our self-managed customers](/why-gitlab/) sends GitLab a weekly [service ping](/handbook/customer-success/csm/service-ping-faq/) at an instance-level by [enabling service ping on their self-managed instance](https://docs.gitlab.com/ee/user/admin_area/settings/usage_statistics.html#instance-level-statistics) or by sharing the values with our Customer Success team.

This instance-level data allows GitLab to understand country-level statistics and trends in instance adoption, version adoption rate, and instance life cycle.

**The goal of this page:**
  * Help you understand how to navigate through the [Product Geolocation dashboard](https://app.periscopedata.com/app/gitlab/731086/Product-Geolocation-:-Self-Managed-(does-not-include-SaaS))
  * Help you understand the data models used to create the Product Geolocation Dashboard
  * Have you assess your understanding by taking a certification most applicable to your role at GitLab.
    * To learn more about how to use the Product Geolocation dashboard, take the [Dashboard user certification](https://docs.google.com/forms/d/e/1FAIpQLScflqXOnU-W6kz24b5qD715uw9_1s6tfKF34qf1tqvFgguIVw/viewform).
    * To learn more about developing Sisense dashboards, take the [Dashboard Developer certification](https://docs.google.com/forms/d/e/1FAIpQLSeqicaMfWVUfFsex9_o6GTkWJKobYBT8qucz9YNmyDm5ZKqiA/viewform?usp=sf_link).
    * To really get into the weeds of our data using SQL, take the [SQL Certification](https://docs.google.com/forms/d/e/1FAIpQLScH9CkiACQ1worzldjUi6cUWUL03tXrLEEaZALABabZPV7GuQ/viewform?usp=sf_link).
  * And overall help everyone contribute!

### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://app.periscopedata.com/app/gitlab:safe-dashboard/919321/Product-Geolocation-:-Self-Managed-(does-not-include-SaaS)" class="btn btn-purple" style="width:40%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Product Geolocation (Self-Managed Dashboard)</a>
  <a href="https://www.youtube.com/watch?v=F4FwRcKb95w&feature=youtu.be" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Getting started in Sisense</a>
</div>
<br><br>



### Getting Started
To get started we want to make sure you understand:
1. What KPIs/PIs are supported using this dashboard
1. Key terms that will explain how we account for the metrics
1. The data source behind the dashboard
1. To explore further, you can create visual and analysis yourself in Sisense. A great way to start is using the Sisense Discovery tool. Want to get started in Sisense head [here.](https://about.gitlab.com/handbook/business-technology/data-team/direction/self-service/#self-service-dashboard-developer)
1. To go even deeper, you can explore data in snowflake. The benefit of exploring in Snowflake is you can join to additional information (i.e. other data sources). Additional information on exploring in Snowflake can be found [here.](https://about.gitlab.com/handbook/business-technology/data-team/direction/self-service/#self-service-sql-developer)

The Product Geolocation Dashboard helps us to understand the following KPIs and PIs:

- [Active Hosts](/handbook/product/performance-indicators/#active-hosts)
- [Lost Instances](/handbook/product/performance-indicators/#lost-instances)
- [Paid User](/handbook/product/performance-indicators/#paid-user)
- [Paid UMAU](/handbook/product/performance-indicators/#paid-umau)
- [Unique Monthly Active Users - UMAU](/handbook/product/performance-indicators/#unique-monthly-active-users-umau)

While exploring the dashboard, you will want to understand the following **KEY TERMS:**

- [Account](/handbook/sales/#additional-customer-definitions-for-internal-reporting)
- Account Instances - the total number of reported instances that can be mapped to an account
- [Host](https://docs.gitlab.com/ee/development/product_analytics/event_dictionary.html)
- [Instance](https://docs.gitlab.com/ee/development/product_analytics/event_dictionary.html)
- Instance User Count - the total number of users on an instance
- [Paid User](/handbook/product/performance-indicators/#paid-user)
- [Product Tier](/handbook/marketing/strategic-marketing/tiers/#overview)
- [Service Ping](https://docs.gitlab.com/ee/development/product_analytics/event_dictionary.html)
- [Version](/handbook/sales/process/version-check/#what-is-the-functionality-of-the-gitlab-version-check)

Note: Additional data supporting Product Geolocation Analysis is classified as [Orange](/handbook/engineering/security/data-classification-standard.html#orange) or [Yellow](/handbook/engineering/security/data-classification-standard.html#yellow). This includes ORANGE customer metadata from the account, contact data from Salesforce and Zuora and GitLab's Non public financial information, all of which shouldn't be publicly available. Care should be taken when sharing data from this dashboard to ensure that the detail stays within GitLab as an organization and that appropriate approvals are given for any external sharing. In addition, when working with row or record level customer metadata care should always be taken to avoid saving any data on personal devices or laptops. This data should remain in [Snowflake](/handbook/business-technology/data-team/platform/#data-warehouse) and [Sisense](/handbook/business-technology/data-team/platform/sisensecdt/) and should ideally be shared only through those applications unless otherwise approved.
**ORANGE**

- Description: Customer and Personal data at the row or record level.
- Objects:
  - `dim_billing_accounts`
  - `dim_crm_accounts`
  - `usage_ping_mart`





### Solution Ownership

- Source System Owner:
    - Versions: `@jeromezng`
    - Salesforce: `@jbrennan1`
    - Zuora: `@andrew_murray`
    - Location (IP Address): `@m_walker`
- Source System Subject Matter Expert:
    - Versions: `@jeromezng`
    - Salesforce: `@jbrennan1`
    - Zuora: `@andrew_murray`
    - Location (IP Address): `@m_walker`
- Data Team Subject Matter Expert: `@mpeychet_` `@m_walker`

### Data Source:
The Product Geolocation Dashboard is built using the `usage_ping_mart` data model.
  - Data is primarily sourced from service ping data, with customer segmentation fields coming from Zuora and Salesforce.
  - Analyses are standardized around considering the last service ping received from a self-managed instance in a calendar month, available as `is_last_ping_in_month`. This ensures usage metrics are deduplicated across instances.
  - Geolocation fields are derived from the IP address of the *host* of an instance, not necessarily the physical location of an instance.
  - To understand what tables were accounted for in creating the usage_ping_mart, check out the Service Ping Mart Entity Relationship Diagram.
    - By understanding the ERD, you can understand how different data sources join and modify the model to suit your need.

### Entity Relationship Diagrams

| Diagram/Entity                                                                                        | Grain         | Purpose                                                    | Keywords |
| ----------------------------------------------------------------------------------------------------- | ------------- | ---------------------------------------------------------- |
| [Usage Ping Mart](https://app.lucidchart.com/documents/view/be5f5dc8-8ad5-4586-af53-93ff5e00f720/0_0) | usage_ping_id | Mart for exploring usage ping and related customer segmentation metrics | #### Data Discovery Function in Sisense

##### Exploring Further in Sisense
Sisense is the tool we use for visualization. It does require the dashboard designer to be familiar with SQL. However, don't feel limited as the Data Discovery function in Sisense allows you to create charts through a drag-and-drop interface (no SQL query needed).

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/h_b9A8F7Ic8" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

More information here on the [Data Discovery page in Sisense](https://dtdocs.sisense.com/article/data-discovery).


#### Sisense Snippets

Snippets are used to create a string of SQL code that can be reused in different charts. For more information, visit the [Sisense SQL Snippets page](https://dtdocs.sisense.com/article/snippets).

##### usage_pings_mart Snippet

This snippet is currently present in Sisense with the name of [usage_pings_mart](https://app.periscopedata.com/app/gitlab/snippet/usage_pings_mart/553a4fc6bf004b749eb60a144d722ccc/edit).

```sql
WITH pings AS (

  SELECT *
  FROM analytics.usage_ping_mart
  WHERE ping_source = 'Self-Managed'
    AND is_last_ping_in_month = TRUE
    AND date_id >= 20191101
    AND [ping_product_tier=product_tier]
    AND [ping_country_name=Usage_Ping_Country]

)
```

#### Reference SQL

##### Total Number of Accounts sending usage ping in a month

```sql
[usage_pings_mart]

SELECT
  ping_month,
  COUNT(DISTINCT account_id) AS total_accounts
FROM pings
GROUP BY 1
```

##### Monthly Number of Instances sending usage ping per Country

```sql
[usage_pings_mart]

SELECT
  ping_month,
  ping_country_name    AS country_name,
  COUNT(DISTINCT uuid) AS instances_reporting
FROM pings
GROUP BY 1,2
```


## Data Platform Solution

### Data Lineage

- [dbt model lineage diagram](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.usage_ping_mart?g_v=1&g_i=%2Busage_ping_mart%2B)
- The IP address mapping to geolocation is derived from the [free geolite2 Maxmind database](https://dev.maxmind.com/geoip/geoip2/geolite2/).
- The location information is also derived from the Maxmind database, with the exception of the iso3 country code field which comes from the [Zuora Country CSV in the repository](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/data/zuora_country_geographic_region.csv).

### DBT Solution

- In order to avoid large joins between tables and the IP-address-to-geolocation mapping consisting of less-than/greater-than join clauses, IP addresses are incrementally mapped to geolocations separate from other models as implemented originally in [this merge request (internal link)](https://gitlab.com/gitlab-data/analytics/-/merge_requests/3413).

- This approach also gives us the ability to obscure IP addresses in Sisense but still preserving the ability to match IP addresses across different database tables.

## Trusted Data Solution

[Trusted Data Framework](https://about.gitlab.com/handbook/business-technology/data-team/platform/#tdf)

### EDM Enterprise Dimensional Model Validations

* [Enterprise Dimensional Model Validation Dashboard](https://app.periscopedata.com/app/gitlab/760445/Enterprise-Dimensional-Model-Validation-Dashboard)

### RAW Source Data Pipeline validations

#### Version

* [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/751278/Version-Trusted-Data-Dashboard)
    * Reporting on all Version data tests which include the tdf tag.

#### License

* [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/751314/License-Trusted-Data-Dashboard)
    * Reporting on all License data tests which include the tdf tag.

#### CustomerDB

* [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/751315/CustomerDB-Trusted-Data-Dashboard)
    * Reporting on all CustomerDB data tests which include the tdf tag.

### Manual Data Validations

* [Manual Service Ping Validation Dashboard](https://app.periscopedata.com/app/gitlab/762611/Manual-Usage-Ping-Validation)
