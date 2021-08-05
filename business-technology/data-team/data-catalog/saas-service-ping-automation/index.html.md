---
layout: handbook-page-toc
title: "SaaS Service Ping Automation"
---
## On this page

- TOC
{:toc}

{::options parse_block_html="true" /}

---
## SaaS Service Ping Automation

Service Ping is a process in GitLab that collects and sends a weekly payload to GitLab Inc. The payload provides important high-level data that helps our product, support, and sales teams understand how GitLab is used. For example, the data helps to:

Compare counts month over month (or week over week) to get a rough sense for how an instance uses different product features.
Collect other facts that help us classify and understand GitLab installations.
Calculate our Stage Monthly Active Users (SMAU), which helps to measure the success of our stages and features.

For SaaS, the process is currently manually created every week by one of the Product Intelligence Engineers. This process is very time-consuming and relies on the availability and the bandwidth of the Product Intelligence Engineers

SaaS Service Ping Microservice is a service replicating the Service Ping currently generated manually.

## What is Service Ping ?

Service Ping payload is a JSON containing more than 1000 aggregated metrics that will help track feature adoption and product usage. This data is consumed to build all our xMAU KPIS.

We have 2 main types of metrics:

- SQL-based batch counting metrics
- redis metrics

### SQL-based batch counting metrics

These metrics are actually created by a SQL query run against the Postgres SQL database of the instance. For large tables, these queries can be very long to run. An example is for example the `counts.ci_builds` metric which is running a COUNT(*) on the ci_builds which is one of our largest (see dbt table containing more than 1 bilion rows).

### Redis metrics


## SaaS Service Ping Payload Creation

We have created 2 different paths to get service ping values depending on the type of metrics.

### Redis metrics

The Product Intelligence team created an API endpoint available here that allows us to retrieve all Redis metrics value at any time we want.

An example of the JSON Response is available here. Note that `-3` means that the metrics is not redis so the API doesn't retrieve any value for it. Once the JSON response received, we store it in Snowflake.

More information in the Data Flow Diagram below.

### SQL-based metrics 

The SQL-based metrics workflow is a bit more complicated. As described above, these metrics are generated through SQL queries. The goal of this module will be to run against our Snowflake database instead of the postgres SQL database of our SaaS Instance.

The Product Intelligence team has created an API endpoint that enables us to retrieve all the SQL queries to run to calculate the metrics. Here is an example file.

Let's take a look at a few queries received in the JSON response:

So the goal would be to be able to run them against Snowflake tables. We need to do so, to have tables that have the same column names and the same granularity as the ones in the Postgres SQL tables.

Here below, you see the way we currently transform the data:

As highlighted here, we created a `dedupe` layer that is exactly meeting this criteria. 

We have then identified the tables against which we can run the SQL-based metrics queries. We will then need to transform the SQL statements to query agains these tables.

We have a script running that transforms this SQL statements :

to this SQL statement:

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

This Lucid chart diagram summarizes the current workflow
## From RAW to Sisense

