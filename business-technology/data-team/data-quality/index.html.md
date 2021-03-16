---
layout: handbook-page-toc
title: "Data Quality"
description: "Tools and information about GitLab's data quality"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What is data quality?

Data quality is a measurement of the value of data to the business, meaning it is dependent on the task trying to be accomplished. High quality data in one context can be low in another. However, there are common dimensions that span contexts and these are detailed here. Also discussed is the relation of Data Integrity to Data Quality, the kinds of Data Errors, and how to improve Data Quality by decreasing the number of errors.

### Dimensions

#### Data Accuracy

Data accuracy is a measure of how well the values in the database match the real-world values they represent. Inaccurate data would be having an Opportunity list the wrong value of a contract.

#### Information Completeness

Information completeness refers to the extent to which data are of sufficient breadth, depth, and scope for the task at hand. There are absolute measures of breadth, depth, and scope that will return relative differences in completeness depending on the usage.

#### Time Dimensions

The time-related dimensions of data quality have three components: currency, volatility, and timeliness.

- Data Currency refers to how promptly the data are updated when an external value changes. A common and useful measure of data currency is a last-updated and/or last-reviewed metadata tag.

- Data Volatility refers to how frequently the real world values are updated. Company names are generally of low volatility while product offerings are highly volatile.

- Data Timeliness is a measure of how current the data is for a given task. This is highly context dependent but can usually be expressed as a combination of currency and volatility along with specific data usage.

#### Data Consistency

Data consistency, also known as coherence and validity, is a measure of whether the data are violating or adhering to semantic rules. That is, given a set of values or ranges for a particular field, do the data adhere to the rules. An example of this would be Turn Around Time. Common values would be 0 to 365 days. That is, we would expect some amount of time to pass before a result is returned ( > 0) but more than a year seems unreasonable. Zero is an indication of no value for that field. With more experience we might realize that 0 to 180 might be more reasonable.

#### Data Uniqueness

Data uniqueness, also known as data deduplication, is a measure of whether or not real-world entities are represented multiple times in the same dataset. This could likewise apply to data features within a database entry. This can also have implications for reconciling data across databases (i.e. curated products database vs ordered products database.)

Other dimensions may include precision, accessibility, credibility, traceability, and confidentiality. I have chosen to exclude these dimensions because they are either sufficiently covered by the other dimensions (precision and credibility) or not particularly relevant to the broader quality conversation (accessibility, traceability, and confidentiality).

### Data Integrity

Data Integrity is the trustworthiness of the data, typically built upon Consistency and Accuracy. Therefore, Data Integrity is a result of Data Quality. Data with a high degree of integrity can be of low quality if it’s not suited for the task at hand and does not provide value to the business.

### Data Errors

Errors occur, by definition, when data is inaccurate, incomplete, out of date, inconsistent, or duplicated.

### Data Quality Improvement

Data Quality improvement is separated into three categories: Prevention, Detection, and Repair of errors. Data errors are different for each of the above data quality dimensions, but they can be avoided in all cases using these three techniques.

- Prevention - Data error prevention means slightly different things depending on the dimension. In general, however, it means putting rules in place during data input and curation so that common semantic errors are avoided.

- Detection - Data error detection means using a combination of automated and manual checks to find issues within specific dimensions. Automated processes include data dimension-specific scripts that find common errors as well as audits of particular data by an expert curator.

- Repair - Data error repair is simply correcting an error once it has been identified via the prevention or detection methodologies.

## Current Data Quality Checks

There are two main places where we programmatically check and test our data quality. The first is on extraction and loading into the warehouse with proprietary jobs, the second is via our transformations within the warehouse.

### Extraction Data Quality

We extract data from and with a variety of tools and sources. Some are proprietary and others are managed services. For a complete list of sources and pipelines with a rating for data quality verification see [this table](/handbook/business-technology/data-team/#extract-and-load)

| Rating | Description                                                                                                                                                           |
| ------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1      | No Data Validation                                                                                                                                                    |
| 2      | Source / Target Row counts in extraction job or relying on Managed service                                                                                            |
| 3      | Data Extraction, Loading, and Transformation metrics are monitored by third party system                                                                              |
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
