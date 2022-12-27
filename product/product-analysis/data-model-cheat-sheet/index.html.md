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

#### FAQs


> Is it possible to report at the namespace or user level using Service Ping data?
* Nope! As part of our [Commitment to Individual User Privacy](https://about.gitlab.com/handbook/product/product-intelligence-guide/service-usage-data-commitment/), GitLab only collects usage metrics aggregated at the installation level. 

> What is the difference between an instance and an installation?
* An installation is the unique combination of instance_id and host_id. [Read more here](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/self-managed/). We do Self-Managed analysis and reporting at the installation level.


#### Documentation


<details markdown="1"><summary>Click to expand</summary>

* [Service Ping Overview](https://docs.gitlab.com/ee/development/service_ping/)

* [Service Ping metrics dictionary](https://metrics.gitlab.com/)

* [Definitive Guide to Self-Managed Analysis](/handbook/business-technology/data-team/data-catalog/self-managed/)

* [Definitive Guide to xMAU Analysis](/handbook/business-technology/data-team/data-catalog/xmau-analysis/)

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
| common_mart_product | [rpt_ping_metric_totals_w_estimates_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_ping_metric_totals_w_estimates_monthly) | `ping_created_date_month`, `metrics_path`, `ping_edition`, `estimation_grain`, `ping_edition_product_tier`, `ping_delivery_type` | This model is used for xMAU/PI reporting and is the source for Service Ping data in the [td_xmau] snippet. | |


</details>

#### Good to Know!


<details markdown="1"><summary>Click to expand</summary>

* Operational vs. optional data

* Installations are randomly assigned a day of week to generate service pings, but that assignment is persistent over time. For example, if an installation is assigned Tuesdays to generate pings, it will always generate pings on Tuesdays. We generate and load service ping on different days to distribute the payload load evenly over the entire week. 

* The `milestone` field of the [metrics dictionary](https://metrics.gitlab.com/) can also be used to identify the version when a metric was instrumented, but there a couple of limitations. First, many metrics are just labeled `< 13.9`, so there is a lack of more detail for older metrics. Second, metrics can be introduced on different versions for CE and EE, so `milestone` could be incorrect for one edition/distribution. For these reasons, we recommend using [common_mart_product.rpt_ping_metric_first_last_versions](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_ping_metric_first_last_versions) if you are looking to find out when a metric was instrumented.


</details>


### Gitlab.com

GitLab.com (SaaS) is a single installation reporting a single ping within our Service Ping framework. In order to access more granular data by product tier, plan type, namespace, or user, we utilize the [GitLab.com Postgres database](https://about.gitlab.com/handbook/business-technology/data-team/programs/data-for-product-managers/#gitlabcom-postgres-database). This data source replicates any service ping events that create a [backend table](https://gitlab.com/gitlab-org/gitlab/-/tree/master/db/docs).

#### FAQs

> Why don't all events for all Stages and Groups show up in our Gitlab.com data?
* This is due to limitations in replicating Service Ping counters using the gitlab.com db Postgres replica

> Is it possible to associate user level behavior in our Gitlab.com data to our Snowplow events?
* No. Our snowplow user identifiers are anonymized, while our Gitlab.com user identifiers are not. However, it is possible to join Snowplow and Gitlab.com data at the namespace (group/project) level.

> I've heard there are some reliability issues with our Gitlab.com data. How can I stay up to date on outages or known problems?
* [This Issue](https://gitlab.com/gitlab-data/analytics/-/issues/12921) documents all known problems with the Gitab.com replica. 

#### Documentation


<details markdown="1"><summary>Click to expand</summary>

* [Data Guide for Product Managers documentation on Gitlab.com postgres replica data](https://about.gitlab.com/handbook/business-technology/data-team/programs/data-for-product-managers/#gitlabcom-postgres-database)

* [DB docs](https://gitlab.com/gitlab-org/gitlab/-/tree/master/db/docs) document which service ping metrics are replicated in a database. Click in to the .yml files for each table to access table specific descriptions.

* [DBT documentation on the prep_event model](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.prep_event) contains compiled SQL logic to better understand any filtering applied to events. 

* [Definitive Guide to xMAU Analysis](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/xmau-analysis/)

</details>


#### Commonly Used Data Models


<details markdown="1"><summary>Click to expand</summary>

| Schema | Table Name | Data Grain | Description | Notes |
| --- | --- | --- | --- | --- |
| common_mart | [mart_event_user_daily](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_event_user_daily) | `event_date`, `event_name`, `dim_user_id`, `dim_ultimate_parent_namespace_id` | Daily user-, namespace-, and event-level data, including attributes about the namespace and plan |  |
| common_mart | [mart_event_namespace_daily](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_event_namespace_daily) | `event_date`, `event_name`, `dim_ultimate_parent_namespace_id` | Daily namespace- and event-level data, including attributes about the namespace and plan |  |
| common_mart_product | [rpt_event_xmau_metric_monthly][https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_event_xmau_metric_monthly] | `event_calendar_month`, `user_group`, `section_name`, `stage_name`, `group_name`  | Monthly user group- and xMAU metric-level data | This is the model used in reporting paid SaaS xMAU and is used in the `[td_xmau]` snippet |
| common_mart_product | [rpt_event_plan_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_event_plan_monthly) | `event_calendar_month`, `plan_id_at_event_month`, `event_name` | Monthly plan- and event-level data |  |

</details>

#### Good to Know


<details markdown="1"><summary>Click to expand</summary>

* 

* 

* 

</details>

### Snowplow


#### FAQs

> 
* 

> 
* 

> 
*

#### Documentation


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

#### Good to Know


<details markdown="1"><summary>Click to expand</summary>


</details>

### Namespaces, users, members & memberships

Description of this category

#### FAQs

> 
* 

> 
* 

> 
*

#### Documentation


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

#### Good to Know


<details markdown="1"><summary>Click to expand</summary>


</details>

### Trials, Subscriptions & Charges

Description of this category

#### FAQs

> 
* 

> 
* 

> 
*

#### Documentation


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

#### Good to Know


<details markdown="1"><summary>Click to expand</summary>


</details>


