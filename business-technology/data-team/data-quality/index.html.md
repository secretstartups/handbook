---
layout: handbook-page-toc
title: "Data Quality"
description: "The GitLab Data Quality Program seeks to identify, monitor, and remediate problems with Data quality that effect GitLab's productivity and efficiency."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## The Data Quality Program

The **GitLab Data Quality Program** focuses on improving GitLab's productivity and efficiency through continual improvement to Data.
The program works to accomplish this goal by creating reliable processes to identify, monitor, and fix Data problems.
The scope of Data Quality all GitLab managed data and is only bounded by availability of data in the [Enterprise Data Warehouse](https://about.gitlab.com/handbook/business-technology/data-team/platform/#our-data-stack) because the EDW provides the ability to scan and detect data quality issues over large volumes of data at scale and across multiple source systems.

**Do you have a Data Quality issue?** Please see [Data Quality Issue Workflow](/handbook/business-technology/data-team/how-we-work/#data-quality-issue-workflow) to get started.
{: .alert .alert-success}

## Types Of Data Quality Problems

Traditional Data Quality programs break down quality problems into several types, including completeness, accuracy, consistency, validity, uniqueness, and integrity, and more. 
These nuances can and do create confusion when dealing with non-Data Quality experts.
To simplify this problem, the GitLab Data Quality Program recognizes the following Data Quality problem types:

- **Inaccurate Data**: Inaccurate Data is data that does not match a real-world value it _should_ represent. 
An example of Inaccurate Data is a 3-digit US ZIPCODE.

- **Missing Data**: Missing Data is a NULL or empty field or record that _should_ exist.
An example of Missing Data is a NULL ZIPCODE value within an address record.

- **Duplicate Data**: Duplicate Data is the same data repeated when it should not be repeated.
Duplicate data can be complex to identify because duplicates can naturally occur based on how data is reported.
An example of Duplicate Data is two (almost) identical customer records in a CUSTOMER master table when both are linked to a single 'real world' customer.

## Data Quality System Components

The Data Quality System is composed of **Scorecards**, which help people monitor problems over time, and **Detection Rules**, which locate specific known problems with data.

- **Data Quality Scorecard** - The Data Quality Scorecard is a dashboard used by Data Customers and Data Creators. The Dashboard displays the overall quality of a subject area as measured by the status of individual Detection Rules for the subject area. Specific and indepdendent Data Quality Scorecards can and will be created for specific purposes. For example, we are actively developing a "Data Quality Scorecard - Product Usage Data" and anticipate developing a separate "Data Quality Scorecard - Zuora" to measure quality of our Zuora billing system.

- **Data Quality Detection Rule** - A Data Quality Detection Rule is a SQL-based test to check the quality of data in a field or row versus a pre-defined condition. To run a Detection Rule, data must already exist in the Enterprise Data Warehouse. Detection Rules are enumerated and only one test is expressed per SQL statement. Examples of Detection Rules are:
     - Detection Rule 1: Inaccurate Data - State Field in Account Location record
     - Detection Rule 2: Duplicate Data - Account Name in Account Master record
     - Detection Rule 3: Missing Data - License Key should exist for new Usage Ping submissions

### Operational Process

Every week, the Detection Rule “Batch” is run and output is saved in a persistent table. The persistent table includes a run date, detection rule identifier, and transaction id to enable linking to the source syste. The persistent table is the basis from which the Scorecard is generated.

### Fixing Data Quality Problems

**Remediation** is the process of fixing, correcting, or eliminating the quality problem. Remediation is owned by 'Data Creators', the person or team repsonsible for creating the source data. Identifying or helping to identify quality problems is the responsibility of 'Data Customers'.

### Product Data Quality Scorecard

- **Purpose** - Product Data Quality Scorecard quantifies the Data Quality Issues with respect to the Product Usage Data. 

The Scorecard Dashboard contains visualizations that display the following information:
 - **Pass/Fail Percentage** of each of the Product Data Quality Detection rules. The Percentage of records passed is calculated by taking the Percentage of total number of records that have satisfy the condition or the data quality detection rule. The formula used for the Calculation is:
**((passed_record_count/processed_record_count)*100)**
 
Likewise, the Percentage of records failed is calculated by taking the percentage of total number of records that have failed to satisfy the condition or the data quality detection rule. 
**((failed_record_count/processed_record_count)*100)**

The Passing and Failing of a Detection rule is determined by comparing the percentage of records passed with that of the Threshold limit. As of now the threshold value is set to 50. The exact threshold value needs to be determined by the DRI. 

IF the **percentage of records passed > threshold limit** then the Status of Detection rule is **Green**. For example, if the percentage of records passed is 72%(which is more than 50%), it means that 72% of records have satisfied the Data Detection Rule/condition.

IF the **percentage of records passed < threshold limit** then the Status of Detection rule is **Red**. For example, if the percentage of records passed is 40%(which is less than 50%), it means that 60% of records have failed to satisfy the Data Detection Rule/condition. And they need attention and the data needs to be fixed by the Source teams.

 - **Trend Analysis Chart** indicates the change in Pass/Fail percentage of each of the Data Quality Detection Rules over the period of a week.

Kindly note that double clicking on the data points from the **Trend Analysis Chart** will navigate/drill-down to [TD: Product Data Quality Detailed Dashboard V1.0](https://app.periscopedata.com/app/gitlab/868646/TD:-Product-Data-Quality-Detailed-Dashboard-V1.0) that provides detailed information about the data rows and aggregated counts along with the Total ARR impacted for each of the Detection Rules.

 - **Summarized Counts for each day** shows the Total number of processed rows for each of the Daata Quality Detection Rule along with the Number of rows that Satisfy(pass) the rule/condition and that also do not satisfy(fail) the rule/condition for each day that is tracked by the Rule Run date.
 
The data on both the Dashboards - [TD: Product Data Quality Scorecard - Overview V1.0](https://app.periscopedata.com/app/gitlab/887191/TD:-Product-Data-Quality-Scorecard---Overview-V1.0) and [TD: Product Data Quality Detailed Dashboard V1.0](https://app.periscopedata.com/app/gitlab/868646/TD:-Product-Data-Quality-Detailed-Dashboard-V1.0) gets refreshed on a daily basis.

### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://app.periscopedata.com/app/gitlab/887191/TD:-Product-Data-Quality-Scorecard---Overview-V1.0" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">TD: Product Data Quality Scorecard - Overview V1.0</a>
  <a href="https://app.periscopedata.com/app/gitlab/868646/TD:-Product-Data-Quality-Detailed-Dashboard-V1.0" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">TD: Product Data Quality Detailed Dashboard V1.0</a>
</div>
<br><br>

The Data Quality Detection Rules that have currently been identified for Product usage data are: 

| Detection Rule ID | Rule Description | DRI |
| - | - | - |
|1|Missing instance types for Hostnames||
|2|Licenses with missing Subscription IDs||
|3|Subscriptions with missing Licenses||
|4|Subscriptions with Self-Managed plans having License Start dates in the future||
|5|Subscriptions with Self-Managed plans having License Start date greater than License Expire date||
|6|Expired License IDs with Subscription End Dates in the Past||
|7|SaaS Subscriptions with missing Namespace IDs|


## Additional Resources

### Guides and Books

- [Getting In Front Of Data](https://www.amazon.com/Getting-Front-Data-Does-What-ebook/dp/B01KTTJXZ4)
- [Non-Invasive Data Governance](https://www.amazon.com/Non-Invasive-Data-Governance-Robert-Seiner/dp/1935504851)
- [Data Lifecycle Management (DLM)](https://assets.red-gate.com/simple-talk/database-lifecycle-management-ebook.PDF) or equivalently robust approach.

#### SaaS Tools

Both Fivetran and Stitch, being managed services, provide their own data quality checks. Any problems with these data at extraction should be addressed to the vendor's support team.

#### Custom

We manage some extraction from third party tools through proprietary API connections and Airflow. Not all of these have methods available for data quality checks.

##### BambooHR

We [extract BambooHR data](https://gitlab.com/gitlab-data/analytics/tree/master/extract/bamboohr) via custom code. Our data quality checks include verifying a 200 response from the API and the existence of a minimum number of records in the JSON data.

##### Postgres Pipeline

Our own [Postgres_Pipeline](https://gitlab.com/gitlab-data/analytics/tree/master/extract/postgres_pipeline) (which handles data from gitlab.com, customers.gitlab.com, license.gitlab.com, version.gitlab.com) checks for agreement of row counts between the source and destination databases.

### Transformation Data Quality

We use dbt for all transformations in the warehouse. [We require tests on all new dbt models](/handbook/business-technology/data-team/#transformation) and regularly update tests as needed. These tests, as well as the extraction tests and checks, should be written in line with the data quality philosophy described above.

## [Data Pipeline Health Dashboard](https://app.periscopedata.com/app/gitlab/715938/Data-Pipeline-Health-Dashboard])

See [issue](https://gitlab.com/gitlab-data/analytics/-/issues/4808)

The first iteration has added with a focus on:

- SQL statements to test the daily record insert and update velocity of key tables (rowcount tests)
- SQL statements to test the aggregate totals of key fields of key tables  (column value tests)
- SQL statements to test the existence of key records of key tables  (golden record tests)
- A wireframe Dashboard to visualize these results in a simple manner
