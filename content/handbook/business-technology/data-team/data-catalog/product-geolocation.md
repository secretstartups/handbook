---

title: "Data Guide to Self-Managed Product Geolocation Analysis"
---







---

## Product Geolocation Analysis : Self-Managed



Understanding where your product is used around the world is an important step towards developing a more complete understanding of your customers, your product's global reach, and related location insights.

Currently, the majority of GitLab's customers choose to [download, install, and host a GitLab self-managed installation](/features/), which is why we are [focused heavily on delivering a great self-managed customer experience](https://about.gitlab.com/direction/#strategic-challenges).

To make the right data-driven decisions on the self-managed product lifecycle and what features to invest in, [our self-managed customers](/why-gitlab/) sends GitLab a weekly [service ping](https://about.gitlab.com/handbook/customer-success/csm/service-ping-faq/) at an installation-level by [enabling service ping on their self-managed installation](https://docs.gitlab.com/ee/administration/settings/usage_statistics.html#why-enable-service-ping) or by sharing the values with our Customer Success team.

This installation-level data allows GitLab to understand country-level statistics and trends in installation adoption, version adoption rate, and installation life cycle.

**Goal of this page**

We want to make sure you understand the following about the [Self-Managed Product Geolocation dashboard](https://app.periscopedata.com/app/gitlab/860249/Self-Managed-Product-Geolocation):

1. What KPIs/PIs are supported using this dashboard
1. Key terms that will explain the metrics
1. The data source behind the dashboard

### Quick links

<div class="d-flex" markdown="0" style="height:80px">
 <a href="https://app.periscopedata.com/app/gitlab/860249/Self-Managed-Product-Geolocation" class="btn btn-purple" style="white-space:initial;min-width:0;width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Self-Managed Product Geolocation Dashboard</a>
 <a href="/handbook/business-technology/data-team/data-catalog/self-managed/" class="btn btn-purple" style="white-space:initial;min-width:0;width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Data Guide to Self-Managed Analysis</a>
 <a href="/handbook/business-technology/data-team/data-catalog/xmau-analysis/" class="btn btn-purple" style="white-space:initial;min-width:0;width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Data Guide to xMAU Analysis</a>
 <a href="/handbook/business-technology/data-team/data-catalog/xmau-analysis/product-manager-toolkit.html" class="btn btn-purple" style="white-space:initial;min-width:0;width:auto;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Product Manager Toolkit</a>
</div>

<br>

### Key terms and metrics

- **[Host](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/license/20210204124827_hostname.yml)**
- **[Instance](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/license/20210201124933_uuid.yml)**
- **Installation** - the unique combination of instance uuid and hostname
  - Analysis is done at the installation level
- **Registered User Count** - the total number of non-blocked users on an installation, also known as `instance_user_count`.
- **[Paid Installation](/handbook/business-technology/data-team/data-catalog/xmau-analysis/index.html#paid-xmau-definition)**
- **Total Accounts/Accounts Reporting** - the total number of reported installations that can be mapped to a billing account
- **[Unique Monthly Active Users (UMAU)](https://internal.gitlab.com/handbook/company/performance-indicators/product/#unique-monthly-active-users-umau)**
- **[Product Tier](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/tiers/#overview)**
- **[Service Ping](https://docs.gitlab.com/ee/development/service_ping/)**
- **[Version](https://about.gitlab.com/handbook/sales/process/version-check/#what-is-the-functionality-of-the-gitlab-version-check)**

### Data sources

Geo-related fields are surfaced on many models in the EDM. This section is just a brief overview and is not exhaustive. We will continue to build on this in subsequent iterations.

#### Geolocation dimensions and mapping tables

Here are some of the dimensions and mapping tables in the EDM that can be used for geolocation analysis:

- [`common.dim_location_country`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_location_country) - join to other models using `dim_location_country_id`
- [`common.dim_location_region`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_location_region) - join to other models using `dim_location_region_id`
- [`common_mapping.map_ip_to_country`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.map_ip_to_country) - join to other models using `ip_address_hash`

#### Self-Managed Product Geolocation dashboard

The Product Geolocation Dashboard is built using the [`common_mart.mart_ping_instance`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ping_instance) data model.
  - Data is primarily sourced from service ping data, with customer segmentation fields coming from Zuora and Salesforce.
  - Analyses are standardized around considering the last service ping received from a self-managed installation in a calendar month, available as `is_last_ping_of_month`. This ensures usage metrics are deduplicated across installations.
  - Geolocation fields are derived from the IP address of the *host* of an installation, not necessarily the physical location of an installation.
  - To understand what tables were accounted for in creating the `mart_ping_instance`, check out the [Service Ping portion of the xMAU Entity Relationship Diagram](https://lucid.app/lucidchart/3a42e56a-028e-45d7-b2ca-5ef489bafd32/edit?invitationId=inv_e0a19114-45d5-4a78-9123-dc3b8991d826&page=8XAjn~AniBES#) or the [model lineage in dbt docs](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ping_instance).
    - By understanding the ERD and model lineage, you can understand how different data sources join and modify the model to suit your needs.

##### Data classification

Additional data supporting Product Geolocation Analysis is classified as [Orange](/handbook/security/data-classification-standard.html#orange) or [Yellow](/handbook/security/data-classification-standard.html#yellow). This includes ORANGE customer metadata from the account, contact data from Salesforce and Zuora and GitLab's Non public financial information, all of which shouldn't be publicly available. Care should be taken when sharing data from this dashboard to ensure that the detail stays within GitLab as an organization and that appropriate approvals are given for any external sharing. In addition, when working with row or record level customer metadata care should always be taken to avoid saving any data on personal devices or laptops. This data should remain in [Snowflake](/handbook/business-technology/data-team/platform/#data-warehouse) and [Sisense](/handbook/business-technology/data-team/platform/sisensecdt/) and should ideally be shared only through those applications unless otherwise approved.

**ORANGE**

- Description: Customer and Personal data at the row or record level.
- Objects:
  - [`common.dim_billing_account`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_billing_account)
  - [`restricted_safe_common.dim_crm_account`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_crm_account)
  - [`common_mart.mart_ping_instance`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ping_instance)

### Capabilities and limitations of geolocation analysis

You can read more about the capabilities and limitations of geolocation analysis on [this slide (internal link)](https://docs.google.com/presentation/d/1ySP9sndhF9BdRhaZhMK6kGbc8txO_UkAu48HmoxLtfI/edit#slide=id.gf5365a8b52_0_4).

<!---

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
- The IP address mapping to geolocation is derived from the [free GeoLite2 MaxMind database](https://dev.maxmind.com/geoip/geoip2/geolite2/).
- The location information is also derived from the MaxMind database, with the exception of the iso3 country code field which comes from the [Zuora Country CSV in the repository](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/data/zuora_country_geographic_region.csv).

### DBT Solution

- In order to avoid large joins between tables and the IP-address-to-geolocation mapping consisting of less-than/greater-than join clauses, IP addresses are incrementally mapped to geolocations separate from other models as implemented originally in [this merge request (internal link)](https://gitlab.com/gitlab-data/analytics/-/merge_requests/3413).

- This approach also gives us the ability to obscure IP addresses in Sisense but still preserving the ability to match IP addresses across different database tables.

## Trusted Data Solution

[Trusted Data Framework](/handbook/business-technology/data-team/platform/#tdf)

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

--->