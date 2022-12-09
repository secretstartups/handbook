---
layout: handbook-page-toc
title: Product Data Insights Data Models Cheat Sheet
---

## On this page
{:.no_toc}

- TOC
{:toc}
## Objectives for this page

This handbook page is intended to provide a high-level overview of the most common data models used by the Product Data Insights team as well as some known nuances and/or caveats about those data models that are helpful to be aware of. 

## Helpful places to start

* [DBT Docs](https://dbt.gitlabdata.com/#!/overview) - This resource contains comprehensive documentation on all available dbt models. When in doubt, search DBT! 

* [Definitive guides to data subject areas](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/#definitive-guides) managed by the Data team. 

* [Documentation on data pipelines](https://about.gitlab.com/handbook/business-technology/data-team/platform/pipelines/) for the technically curious analyst. This page goes into each data source and extraction details.

## Data Model Categories

These categories are grouped by data source and subject area.

### Service Ping

Service Ping is the GitLab process that is used to collect data and generate a JSON payload that is then sent weekly to GitLab. It provides aggregated data to our product, support, and sales team to understand how GitLab is used. 

#### Documentation


<details markdown="1"><summary>Click to expand</summary>

* [Service Ping Overview](https://docs.gitlab.com/ee/development/service_ping/)

* [Service Ping metrics dictionary](https://metrics.gitlab.com/)

* [Definitive Guide to Self-Managed Analysis](/handbook/business-technology/data-team/data-catalog/self-managed/)

* [Definitive Guide to xMAU Analysis](/handbook/business-technology/data-team/data-catalog/xmau-analysis/)

</details>

#### FAQs


<details markdown="1"><summary>Click to expand</summary>

> Is it possible to report at the namespace or user level using Service Ping data?
* Nope! As part of our [Commitment to Individual User Privacy](https://about.gitlab.com/handbook/product/product-intelligence-guide/service-usage-data-commitment/), GitLab only collects usage metrics aggregated at the installation level. 

> What is the difference between an instance and an installation?
* An installation is the unique combination of instance_id and host_id. [Read more here](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/self-managed/)

> Why does it look like this metric I'm interested in is underreported? 
* Click on the specific metric in the [metrics dictionary]((https://metrics.gitlab.com/)) to determine which version the metric you are interested in was instrumented on. We will not see reporting for installations on versions lower than the version your metric was instrumented on.



</details>

#### Commonly Used Data Models


<details markdown="1"><summary>Click to expand</summary>

| Schema | Table Name | Data Grain | Description | Notes |
| --- | --- | --- | --- | --- |
| common_mart | [mart_ping_instance](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ping_instance) | `dim_ping_instance_id` | Ping-level data with information with additional attributes for installation, subscription, account, and product information.  | No metrics are included in this data. |
| common_mart | [mart_ping_instance_metric](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ping_instance_metric)| `dim_ping_instance_id`, `metrics_path`  | Ping- and metric-level data with additional attributes for installation, subscription, account, and product information.  | This is a UNION of other tables that are filtered by a certain timeframe: `mart_ping_instance_metric_28_day` `mart_ping_instance_metric_7_day` `mart_ping_instance_metric_all_time` |
| common_mart_product | [rpt_ping_latest_subscriptions_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_ping_latest_subscriptions_monthly) | `ping_created_date_month`, `latest_subscription_id`, `dim_installation_id` | Active Self-Managed subscriptions by month, including seat count. If a subscription sends Service Ping, then installation-level data is provided.| This includes seat count and can be used to calculate Service Ping opt-in rate |
| workspace_product | [wk_fct_ping_instance_metric_none](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.wk_fct_ping_instance_metric_none) | `dim_ping_instance_id`, `metrics_path` | Ping- and metric-level data about metrics with a `none` timeframe | |
| workspace_product | [wk_fct_ping_instance_metric_null](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.wk_fct_ping_instance_metric_null) | `dim_ping_instance_id`, `metrics_path` | Ping- and metric-level data about metrics that do not appear in `dim_ping_metric` (and therefore have a `NULL` timeframe)  | |


</details>

#### Good to Know!


<details markdown="1"><summary>Click to expand</summary>

* Operational vs. optional data

* Installations are randomly assigned a day of week to generate service pings, but that assignment is persistent over time. For example, if an installation is assigned Tuesdays to generate pings, it will always generate pings on Tuesdays. We generate and load service ping on different days to distribute the payload load evenly over the entire week. 

* When new Service Ping metrics are implemented, they will only collect data from installations updated to the version that the metric was instrumented in. 


</details>


### Gitlab.com

#### Documentation


<details markdown="1"><summary>Click to expand</summary>


</details>

#### Snowplow


<details markdown="1"><summary>Click to expand</summary>


</details>

#### Commonly Used Data Models


<details markdown="1"><summary>Click to expand</summary>

| Schema | Table Name | Data Grain | Description | Notes |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |
|  |  |  |  |  |
|  |  |  |  |  |
|  |  |  |  |  |
|  |  |  |  |  |

</details>

#### Good to Know!


<details markdown="1"><summary>Click to expand</summary>


</details>
