---
layout: handbook-page-toc
title: "Using Product Usage Data in Gainsight"
description: "Effective ways to apply product data for Sales and Customer Success teams to support their customers' top initiatives and business objectives."
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}
{::options parse_block_html="true" /}

- TOC
{:toc .hidden-md .hidden-lg}

---

## Purpose

To guide users in how to use the customer's product usage data within Gainsight, review use case adoption strategies, and understand how the data connects and what to do with data quality concerns. See [Product Usage Data Vision](https://about.gitlab.com/handbook/customer-success/product-usage-data/) page for more information.

## Using Product Usage Data in Gainsight 

For video overviews, see:

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/CJ318OGtkb8" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

- [Product Usage Data Dashboard](https://www.youtube.com/watch?v=CJ318OGtkb8)
- [Product Usage Data - video overview](https://youtu.be/5_J9Kfbu5JA)
- [Health Measures and Data Quality](https://www.youtube.com/watch?v=XQCGKL4XF_o)

**Note**: for License Usage, see [License Usage in Gainsight](/handbook/customer-success/tam/gainsight/license-usage/).

For the overall 3-year vision, see [Project Compass #15 Vision](https://gitlab.com/groups/gitlab-com/-/epics/1247). 

## Quick Links

<div class="flex-row" markdown="0" style="height:80px">
<a href="https://docs.gitlab.com/ee/development/usage_ping/dictionary.html" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Metrics Dictionary</a>
<a href="https://about.gitlab.com/handbook/sales/field-operations/customer-success-operations/gainsight/gainsight-gtm.html" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Product Usage Data:<br>Gainsight Technical Documentation</a>
<a href="/handbook/product/product-intelligence-guide/" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Product Intelligence Overview</a>
<a href="https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/product-usage-data/" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Product Usage Data -<br> Data Team Handbook</a>
</div>

<br><br><br><br>

## Gainsight Reports and Dashboards

Use the [Product Usage Data - v2](https://gitlab.gainsightcloud.com/v1/ui/home#/191fa30f-7632-4000-b57a-edb62d9bb81b) Dashboard to see the full list of your accounts. Once on the C360, these topics are most relevant for evaluating usage:

| Report Name | Description | Application |
| ------ | ------ | ------ |
| **Summary** | Shows Company-wide License Utilization and Total Licenses Sold | Use this to quickly identify the depth of adoption, if the account is Reporting  |
| **User Adoption Metrics** | Contextually-based metrics to graph the adoption percentage of the account (e.g., users who ran a pipeline divided by monthly active users). | Metrics to help the account team understand monthly use case and license usage to assess for expansion or enablement decisions. Toggle through the different reports to see different graphs. |
| **Product Usage Trends** | Month-over-Month trend analyses for use cases such as SCM, CI, DevSecOps, and License Utilization | Monthly data points for use case-specific metrics. To be used to help the account team learn feature and deployment depth and adoption — use this in conjunction with the Monthly Distilled Metrics. Toggle through the reports to analyze the top metrcs on a per use case basis. |
| **Instance and Namespace Details** | List of all instances related to the account with `Instance Type` meta data | Use [Updating Self Managed Instance Type to update the hostname](#updating-self-managed-instance-type) |

## Ways to Use These Metrics

There will be several limitations with the MVC deployment; however, as you come across use cases, please [open an issue](https://gitlab.com/gitlab-com/sales-team/field-operations/customer-success-operations/-/issues) or [request a new metric](#requesting-new-metrics). Here are several potential use cases for utilizing data:

| Topic | Description | Questions to Address | References |
| --- | --- | --- | --- |
| Understanding The Basics of My Customer's Usage | With data syncing to Gainsight, we can quickly and easily look up an account and see instances where we are receiving their data. <br> Use this to see all instances and namespaces related to your account (Production and non-Production) and their activity. <br> **Note** : This only works for instances that are tied to an active subscription. | {::nomarkdown}<ul><li>Who is sending us their usage ping data?</li><li>Are they sending Production data?</li><li>Is their activity in line with my expectations?</li><li>Does the activity found in the product usage data agree with what I know about their usage?</li></ul>{:/} |  |
| C360: Instance and Namespace Details | To better support my customer, I need to know what GitLab version they're on so I can help them upgrade or patch their self-managed instance. | {::nomarkdown}<ul><li>What versions are my customers on?</li><li> If they have multiple instances, how do I know which instance is on which version?</li></ul>{:/} | {::nomarkdown}<ul><li>C360: Instance and Namespace</li><li> Product Usage Data Dashboard (<code>Self Managed Instances - Current GitLab Version Details</code>)</li></ul>{:/} |
| How Active Is My Customer? | License Utilization (see above) to understand how many licenses have been deployed  `billable_user_count/licensed seats` . <br> For example, a customer may have purchased 200 licenses and have only deployed 80 after 9 months of being a customer. | {::nomarkdown}<ul><li>What trends can I see?</li><li> How many licenses has my customer deployed?</li></ul>{:/} | {::nomarkdown}<ul><li>C360: User Adoption Metrics</li><li> Product Usage Data dashboard</li></ul>{:/} |
| Understanding My Customer's GitLab Adoption | As an MVC, use metrics mapped to use cases SCM (Create), CI (Verify), and DevSecOps (Secure) to understand their adoption. <br> Use the  [Use Case Adoption guide](/handbook/customer-success/product-usage-data/use-case-adoption/) for specific definitions around whether a customer has adopted a specific stage. <br>  See the  [GitLab Adoption Journey](/handbook/customer-success/vision/#high-level-visual-of-gitlab-adoption-journey) for an explanation on the adoption of SCM, CI, and Secure. | {::nomarkdown}<ul><li>Which use cases has my customer adopted?</li><li>To what degree have they adopted which use case?</li><li>Which features of each use case have they adopted?</li><li>Does feature adoption align to customer purchase intent?</li></ul>{:/} | {::nomarkdown}<ul><li>C360: Scorecard </li><li> Product Usage Data dashboard</li></ul>{:/} |

Remember, this is an MVC — please [create an issue to suggest new metrics](#requesting-new-metrics), different ways to evaluate the customer's journey, or other ideas.

| Use Case (Stage)   | Purpose / Adoption Level | Description                                                  |
| ------------------ | ------------------------ | ------------------------------------------------------------ |
| SCM (Create)       | Basic Adoption           | Is my customer using the basic toolset? Most customers should adopt these features pretty quickly into their GitLab journey |
| CI (Verify)        | Product Stickiness       | As part of their continued adoption and customer journey, we want to help our customers adopt CI, as well as helping their central DevOps teams to better understand their organization's adoption of CI. Use these metrics to help determine progress towards adoption |
| DevSecOps (Secure) | Enablement & Expansion   | Finally, for customers using our security features or who are trialing and wanting to [shift left](https://about.gitlab.com/blog/2020/06/23/efficient-devsecops-nine-tips-shift-left/), use these metrics to help identify adoption and track growth |

## TAM Actions

### Viewing all Unknown Self-Managed Instances

New self-managed instances come online all the time. The different types include:

* Production: The production instance tied to the subscription
* Non-production: A test, staging, or dev server
* Obsolete: No longer in use server
* Unknown: Not yet labeled server
* Geo Secondary Node: a secondary or mirror server

To make sure we correctly identifying Production vs. other types, use these instructions to see a full list of instances yet to be labeled:

1. Go to Product Usage Data Dashboard
1. Filter to your name
1. Review Hostnames under Accounts with Unknown Instance Names Report (best to click the "Maximize Report" for viewing)
   1. Optional: if you want to view hostname usage, use this dashboard and filter via Hostname to see the usage for any specific hostnames

### Updating Self-Managed Instance Type

For your self-managed customers, label your customers' instances as Production, Staging, or Obsolete. Steps:
1. Go to the customer in Gainsight
1. On the left nav panel, click on "Instance and Namespace Details" (bottom)
1. Click on the three dots icon for the instance you want to update
1. Click "Edit"
1. For the field "Instance Type" select the proper option

NOTE: Anything labeled as "Unknown" should be treated as a _temporary_ holding title that needs to be updated to Production, Non-Production, or Obsolete.

## Field Definitions

The Product Stage definitions have been extracted from the [Metrics Dictionary](https://docs.gitlab.com/ee/development/usage_ping/dictionary.html). For more information on Stage metrics, please review the dictionary.

Eventually, the metrics list and definitions will be embedded directly in the handbook. As a first iteration, the list of metrics and their definitions are in the [Data Mart - Table Definitions](https://docs.google.com/spreadsheets/d/1EhSXqx6YXcpqHg2TpS0ZN5Rk_d2hhrTPrW5FTbmuZjw/edit#gid=0) spreadsheet.

See our technical documentation for our [instance of Gainsight's Adoption Explorer](https://docs.google.com/document/d/1TvSCT_yj73AS0PuLxPonuF5QHWyM3dqG_i8H1U1cwf0/edit).

### User and Project Adoption Metrics

Below is a list of user- and project-based adoption metrics to assist with understanding the usage of key features for the overall customer. Examples include the number of users running ci_pipelines divided by the total licensed user count.

| Metric | Calculation | Description |
| ------ | ----------- | ----------- |
| UMAU User % | UMAU/billable_user_count | How many deployed licenses are actively used on a monthly basis? |
| License Utilization | Billable_user_count / Licenses Sold | What percentage of licenses have been activated? Are they consuming their purchased licenses? |
| UMAU Utilization | UMAU/Licenses Sold | What percentage of purchased licenses are in use? Is there a risk of seat reduction? |
| Create User % | SMAU Create/ billable_user_count | What percentage of billable licenses are active on the Create stage? Has this customer sufficiently on this Product stage? |
| Protect User % | SMAU Protect/ billable_user_count | What percentage of billable users are running Container scans? |
| Secure User % | SMAU Secure/ billable_user_count | What percentage of billable users are actively running Secure scans? What is their methodology to scans, do they have few or many people running scans? |
| Verify User % | SMAU Verify/ billable_user_count | What percentage of billable users are actively running ci_pipelines? Do we have light or deep user-level penetration into CI? |
| Merge Request User % | Merge Requests / billable_user_count | What percentage of billable users run merge requests? This can reveal SCM usage, as well as providing insight for expanding into CI and other use cases. |
| CI Builds User % | CI Builds / billable_user_count | What percentage of billable users are creating CI builds? Consider contrasting this with total CI builds. |
| Auto Devops Projects % | counts.auto_devops_enabled / counts.projects | What percentage of total projects with auto devops set up. For certain customers, this can help illuminate the depth and month-over-month auto devops expansion via projects. |
| Package Registry Projects % | counts.projects_with_packages / counts.projects | What percentage of total projects with package registry enabled? |
| Competitor CI Projects % | (counts.projects_jenkins_active + projects_bamboo_active_all_time_event + projects_drone_ci_active_all_time_event) / counts.projects | What percentage of total projects have active competitor integrations? Helpful to monitor increases/decreases over time. |
| SMAU Verify Utilization | SMAU Verify / Licenses Sold | What percentage of total subscription licenses have users running ci_pipelines in the last 28 days? Useful to track CI growth over time. |
| Merge Requests Utilization | Merge Requests - User L28D / Licenses Sold | What percentage of total subscription licenses have users running merge requests? This can help us understand the depth of SCM/VC&C usage. |
| CI Pipeline Config Utilization | CI Pipeline Config - User L28D / Licenses Sold | What percentage of total subscription licenses have users running ci_pipelines from templates in the repo in the last 28 days? Useful to track pipeline config outcomes. |
| SMAU Secure Utilization | All Secure Scanners - User L28D / Licenses Sold | What percentage of total subscription licenses have users running any type of DevSecOps scan in the last 28 days? Useful as a top-level usage DevSecOps indicator. |
| Releases Utilization | Deployments - User L28D / Licenses Sold | What percentage of total subscription licenses have users running deployments in the last 28 days? Useful for Release and CD analysis. |
| Issues Created Utilization | Issues Created - User L28D / Licenses Sold | What percentage of total subscription licenses have created issues in the last 28 days? Useful for evaluating broad usage of Plan |
| Package Utilization | Packages - User L28D / Licenses Sold | What percentage of total subscription licenses have published a package to the registry in the last 28 days? Useful for a high level adoption of Package |


## Data

### Data Integrations

Data will be integrated from Snowflake —> Gainsight on a monthly basis. Over time, this will move to bi-weekly and then weekly.

![Product Usage Data Flow Diagram](https://lucid.app/publicSegments/view/cba91861-d0aa-4f96-8848-56a2eec5798b/image.jpeg)

### Data Sources and Application

Below are the various data sources, their definitions, and uses.

### Triaging Data Quality

1. Confirm with CS Operations whether the data quality issue is specific to Gainsight or upstream (post in #gainsight-users)
   1. Alternatively, compare Gainsight to LicensesDot
1. If the data quality issue is upstream, create a data quality issue in the [Data project](https://gitlab.com/gitlab-data/analytics/-/issues)
   1. Attach to the [data quality epic](https://gitlab.com/groups/gitlab-data/-/epics/216)
   1. Please include screenshots for troubleshooting and _mark issue as confidential_

##### Usage Ping (self-managed)

We utilize Usage Ping to derive self-managed customer usage data. For more details, see [Usage Ping FAQs](/handbook/customer-success/tam/usage-ping-faq/). Any references to "Usage Ping" in Gainsight explicitly refers to self-managed product usage data (licenses + feature use).

##### SaaS (Snowplow))

SaaS customer data is in Gainsight as of the end of FY22-Q2.

##### Mapping Licenses to Subscriptions

When licenses are automatically generated (either via WebStore or Deal Desk) a Zuora subscription ID is mapped to a license. This mapping enables the data to link in Gainsight to create a complete picture of an account. 

If there is ever an issue where that data is not mapped follow the steps below:

1. Confirm the account has Usage Ping enabled by checking the VersionApp
1. Check to see if their license key has a Zuora subscription linked in LicenseDot
1. IF the Zuora subscription is missing, [open a support issue](https://about.gitlab.com/handbook/support/internal-support/#regarding-licensing-and-subscriptions) to generate a new license with the correct Zuora subscription ID

Example Issue where this issue was discovered: https://gitlab.com/gitlab-data/analytics/-/issues/8518

## Requesting New Metrics 

To request a new metric, please open an issue in the [Product Analytics project](https://gitlab.com/gitlab-org/product-analytics/-/issues/new) and at-mention Product Analytics PM. You can see [Add per project count](https://gitlab.com/gitlab-org/product-analytics/-/issues/425) as an example. However, before you create an issue, please confirm the metric does not already exist in the [Event Dictionary](https://docs.google.com/spreadsheets/d/1VzE8R72Px_Y_LlE3Z05LxUlG_dumWe3vl-HeUo70TPw/edit#gid=618391485&fvid=1422977269). 

Examples of new metrics can include:

* Tracking a new feature
* Looking at feature use in a different context (raw count, activity per user, per project, etc.)
* Expanding an existing metric to track usage at different product tiers (e.g., specifically tracking the feature component used in Core vs. a paid tier)
