---
layout: handbook-page-toc
title: "SaaS Service Ping Automation"
---
## On this page

- TOC
{:toc}

{::options parse_block_html="true" /}

---
## Service Ping Overview

Previously called "Usage Ping", [Service Ping](https://docs.gitlab.com/ee/development/service_ping/) is a background process that [runs weekly](https://docs.gitlab.com/ee/development/service_ping/#how-service-ping-works) in a GitLab Instance and is responsible for collecting, aggregating, and packaging a set of metrics useful for analytics purposes. The metrics are defined in the [Metrics Dictionary](https://docs.gitlab.com/ee/development/service_ping/metrics_dictionary.html#metrics-definition-and-validation) and this dictionary is easily extensible, with new metrics changing regularly per the [Metric Lifecycle](https://docs.gitlab.com/ee/development/service_ping/metrics_lifecycle.html). Once metrics are collected, the full set of metrics are bundled into a JSON payload (the "ping") and posted to the GitLab Versions App where they are then synced to downstream processes such as Snowflake. [Here is an example of a Service Ping Payload](https://docs.gitlab.com/ee/development/service_ping/#example-service-ping-payload).

### Service Ping Usage

Service Ping metics provide insights that help our Product, Support, and Sales teams understand how GitLab is used. For example, the data helps to:

1. Support [GitLab xMAU KPIs](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/xmau-analysis/) KPI
1. Calculate Stage Monthly Active Users (SMAU), which helps to measure the success of our stages and features
1. Understand which features are or are not being used and provide guidance to customers to help them take advantage of GitLab's rich feature set
1. Compare counts month over month (or week over week) to get a rough sense for how an instance uses different product features
1. Collect other facts that help us classify and understand GitLab installations

### Self-Managed Service Ping

Self-Managed customers setup and run Service Ping to provide analytics for their own deployments (instances) of GitLab. Customers optionally [disable Service Ping](https://docs.gitlab.com/ee/development/service_ping/#disable-service-ping) in which case metrics will not be sent to GitLab. Customers have access to Service Ping data through the console application.

### SaaS Service Ping

GitLab.com (or GitLab SaaS) is essentially a GitLab-hosted multi-tenant version of GitLab. A manually generated version of Service Ping (Manual SaaS Service Ping) has been implemented for SaaS and provides equivalent analytics coverge of SaaS that we achieve with Self-Managed instances.

However, the current process suffers from two major sets of problems: 

**Performance Problems**

* The process is error-prone and causes resource contention with live customer activity
* The process is slow, and individual metric queries regularly fail
* The process is implemented to run manually during off-peak hours
* The process requires available staffing to manage end-to-end

**Data Coverage Deficiency**

In addition, Manual SaaS Service Ping is only capable of generating instance-level (the entire site) data and does not meet all the needs of Sales, Customer Success, and others who need more granular data from the `namespace` level to measure individual GitLab.com customer adoption.

To solve for these two primary sets of problems, the Data Team is developing two new programs to be run in the [Data Platform](/handbook/business-technology/data-team/platform/), a system designed for Big Data, Automation, and Scale. With these programs fully operationalized, Manual SaaS Service Ping can be decomissioned. The two programs are:

* Automated SaaS Instance Service Ping - Automated weekly generation of Service Ping for the GitLab.com instance
* Automated SaaS Namespace Service Ping - Automated weekly generation of Service Ping for every GitLab.com instance->namespace

### 4 Types of Service Ping Processes

To summaruze, there are 4 types of Service Ping either in production or development:

| | Self-Managed Service Ping | Manual SaaS Instance Service Ping | Automated SaaS Instance Service Ping | Automated SaaS Namespace Service Ping |
| :--- | :--- | :--- | :--- | :--- |
| Where Run | A Customer's Self-Managed Instance | Within GitLab.com Infrastructure | Data Platform Infrastructure | Data Platform Infrastructure |
| Run By | Customer (Automatically) | GitLab Product Intelligence (Manually) | GitLab Data Team (Automatically) | GitLab Data Team (Automatically) |
| Data Granularity | Instance | Instance | Instance | Namespace |
| Development Status | Live-Production | Live-Production | In Development | Live-Production | 

## Service Ping Metrics Types

We have 2 main types of metrics generated in Service Ping:

- SQL-based batch counting metrics
- redis metrics

### SQL-based batch counting metrics

These metrics are actually created by a SQL query run against the Postgres SQL database of the instance. For large tables, these queries can be very long to run. An example is for example the `counts.ci_builds` metric which is running a COUNT(*) on the ci_builds which is one of our largest (see dbt table containing more than 1 bilion rows).

### Redis metrics

This type of counters are used to record occurances of some arbitrary situation happening in GitLab system that does not create any permanent record in our Database, for example when user folds or unflods side bar. 

In such cases developer might decided that it would be useful to report that situation occurrence, if they decided to do so, they arbitrary decided on the name that would represent give situation for example navigation_sidebar_opened and also arbitrary decide on moment (by adding dedicated piece of code in existing execution path) when it happen.

## SaaS Service Ping Payload Creation

We have created 2 different paths to get service ping values depending on the type of metrics.

### Redis metrics

The Product Intelligence team created an API endpoint available here that allows us to retrieve all Redis metrics value at any time we want.

An example of the JSON Response is available here. Note that `-3` means that the metrics is not redis so the API doesn't retrieve any value for it. Once the JSON response received, we store it in Snowflake.

More information in the Data Flow Diagram below.

A technical documentation about the API endpoint [is available here](https://docs.gitlab.com/ee/api/usage_data.html#usagedatanonsqlmetrics-api)

### SQL-based metrics 

The SQL-based metrics workflow is a bit more complicated. As described above, these metrics are generated through SQL queries. The goal of this module will be to run against our Snowflake database instead of the postgres SQL database of our SaaS Instance.

The Product Intelligence team has created an API endpoint that enables us to retrieve all the SQL queries to run to calculate the metrics. Here is an example file.

A technical documentation about the API endpoint [is available here](https://docs.gitlab.com/ee/api/usage_data.html#export-service-ping-sql-queries)

Let's take a look at a few queries received in the JSON response:

```
 "counts": {
    "assignee_lists": "SELECT COUNT(\"lists\".\"id\") FROM \"lists\" WHERE \"lists\".\"list_type\" = 3",
    "boards": "SELECT COUNT(\"boards\".\"id\") FROM \"boards\"",
    "ci_builds": "SELECT COUNT(\"ci_builds\".\"id\") FROM \"ci_builds\" WHERE \"ci_builds\".\"type\" = 'Ci::Build'",
    "ci_internal_pipelines": "SELECT COUNT(\"ci_pipelines\".\"id\") FROM \"ci_pipelines\" WHERE (\"ci_pipelines\".\"source\" IN (1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13) OR \"ci_pipelines\".\"source\" IS NULL)",
    "ci_external_pipelines": "SELECT COUNT(\"ci_pipelines\".\"id\") FROM \"ci_pipelines\" WHERE \"ci_pipelines\".\"source\" = 6",
    "ci_pipeline_config_auto_devops": "SELECT COUNT(\"ci_pipelines\".\"id\") FROM \"ci_pipelines\" WHERE \"ci_pipelines\".\"config_source\" = 2",
    "ci_pipeline_config_repository": "SELECT COUNT(\"ci_pipelines\".\"id\") FROM \"ci_pipelines\" WHERE \"ci_pipelines\".\"config_source\" = 1",
    "ci_runners": "SELECT COUNT(\"ci_runners\".\"id\") FROM \"ci_runners\"",
    "ci_triggers": "SELECT COUNT(\"ci_triggers\".\"id\") FROM \"ci_triggers\"",
```

So the goal would be to be able to run them against Snowflake tables. We need to do so, to have tables that have the same column names and the same granularity as the ones in the Postgres SQL tables.

Here below, you see the way we currently transform the Postgres data in Snwoflake:

![ALT](/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/images/dotcom-data-transformation.png)

As highlighted here, we created a `dedupe` layer that is exactly meeting this criteria. 

We have then identified the tables against which we can run the SQL-based metrics queries. We will then need to transform the SQL statements to query agains these tables.

We have a script running that transforms this SQL statements :

```
"SELECT COUNT(\"ci_builds\".\"id\") FROM \"ci_builds\" WHERE \"ci_builds\".\"type\" = 'Ci::Build'",
```

to this SQL statement:

```
"SELECT 'counts.ci_builds' AS counter_name,  COUNT(ci_builds.id) AS counter_value, TO_DATE(CURRENT_DATE) AS run_day   FROM prep.gitlab_dotcom.gitlab_dotcom_ci_builds_dedupe_source AS ci_builds WHERE ci_builds.type = 'Ci::Build'"
```

We then run all these queries and store the results in a json that we send them to the table called `RAW.SAAS_USAGE_PING.GITLAB_DOTCOM`. This table has the following columns:

- query_map: that stores all the queries run 
- run_results: that stores the results returns
- ping_date: date when the query got run

### Airflow setup

We created a Airflow dag `saas-instance-usage-ping` run every Saturday that executes all the operations described below:

- fetching the queries from the API Endpoint
- transforming the queries to be able to run them against Snowflake dedupe layer
- run the queries
- store the results in Snowflake 

### Summary

This Lucid chart diagram summarizes the current workflow:

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embeddedchart/8e8decaf-a45c-4bc3-9fd5-6fa3dd1ea660" id="ZaD2gkT4TN7D"></iframe></div>


## From RAW to PROD database and Sisense

We currently do limited transformation once the data is stored in RAW. In the future, the data flow will look like that:

That means the data set created will be UNIONED with the current data pipeline in the model `prep_usage_data_flattened`.
