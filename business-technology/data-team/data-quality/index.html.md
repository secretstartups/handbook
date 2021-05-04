---
layout: handbook-page-toc
title: "Data Quality"
description: "The GitLab Data Quality Program seeks to identify, monitor, and remediate problems with Data that effect GitLab's productivity and efficiency."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## The Data Quality Program

The **GitLab Data Quality Program** focuses on improving GitLab's productivity and efficiency through the improvement of Data.
The program accomplishes this goal by identifing, monitoring, and helping to remediate Data problems.
The scope of Data Quality is all of GitLab and is only bounded by availability of data in the Enterprise Data Warehouse.
The Enterprise Data Warehouse is a key technology component because it provides the ability to scan and detect data quality issues over large data volumes at scale.


## Types Of Data Quality Problems

Other dimensions may include precision, accessibility, credibility, traceability, and confidentiality. I have chosen to exclude these dimensions because they are either sufficiently covered by the other dimensions (precision and credibility) or not particularly relevant to the broader quality conversation (accessibility, traceability, and confidentiality).

- **Accuracy**: Data accuracy is a measure of how well the values in the database match the real-world values they represent. Inaccurate data would be having an Opportunity list the wrong value of a contract.

- **Completeness**: completeness refers to the extent to which data are of sufficient breadth, depth, and scope for the task at hand. There are absolute measures of breadth, depth, and scope that will return relative differences in completeness depending on the usage.

- **Integrity**: Data Integrity is the trustworthiness of the data, typically built upon Consistency and Accuracy. Therefore, Data Integrity is a result of Data Quality. Data with a high degree of integrity can be of low quality if it’s not suited for the task at hand and does not provide value to the business.

- **Duplication**: 

Data uniqueness, also known as data deduplication, is a measure of whether or not real-world entities are represented multiple times in the same dataset. This could likewise apply to data features within a database entry. This can also have implications for reconciling data across databases (i.e. curated products database vs ordered products database.)

## Data Quality System Components

- Data Quality Scorecard (DQS) - a dashboard (wireframe) which displays the overall quality of a table, schema, or system. Overall Quality is based on a set of one or more  Quality Detection Rules. Each dashboard contains a summary of statistics for all QDS.
Remediation is the process of fixing, correcting, or eliminating the quality problem. Remediations are owned by source system owners. The Data Team is responsible for helping to identify and report on problems and the Data Owner is responsible for remediating problems.

- Data Quality Issues

- Data Quality Detection Rule - SQL-based tests to check the quality of data
Data must exist in EDW
Detection Rules are numbered; 1 detection rule per quality test
A set of detection rules are run together and the results saved for later analysis and remediation
A “Batch” run every week or month is responsible for processing every detection rule and storing the results in an output table.
The Data Quality Scorecard presents the results of the detection rule output for Data Owners to work on.


### Data Errors

Errors occur, by definition, when data is inaccurate, incomplete, out of date, inconsistent, or duplicated.



## Prioritizing Data Quality Issues

Data quality is a measurement of the value of data to the business, meaning it is dependent on the task trying to be accomplished. High quality data in one context can be low in another. 



### Data Quality Improvement

Data Quality improvement is separated into three categories: Prevention, Detection, and Repair of errors. Data errors are different for each of the above data quality dimensions, but they can be avoided in all cases using these three techniques.

- Prevention - Data error prevention means slightly different things depending on the dimension. In general, however, it means putting rules in place during data input and curation so that common semantic errors are avoided.

- Detection - Data error detection means using a combination of automated and manual checks to find issues within specific dimensions. Automated processes include data dimension-specific scripts that find common errors as well as audits of particular data by an expert curator.

- Repair - Data error repair is simply correcting an error once it has been identified via the prevention or detection methodologies.

system                                                                              |
| 4      | Implementation of [Data Lifecycle Management (DLM)](https://assets.red-gate.com/simple-talk/database-lifecycle-management-ebook.PDF) or equivalently robust approach. |

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
