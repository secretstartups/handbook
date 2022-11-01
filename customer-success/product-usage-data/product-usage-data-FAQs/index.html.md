---
layout: handbook-page-toc
title: "Product Usage Reporting in Gainsight FAQs"
description: "Frequently asked questions answered so Sales and Customer Success teams can confidently use Product Usage Reporting to support their customers' top initiatives and business objectives."
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}
{::options parse_block_html="true" /}

- TOC
{:toc .hidden-md .hidden-lg}

---

**This page will be redirected to https://about.gitlab.com/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/**

# Purpose

To answer questions frequently asked by Sales and Customer Success teams about Product Usage Reporting in Gainsight.

# FAQs

_Last updated 2022-11-01._

## Data Availability

#### What is the wait time for newly activated namespaces to be reflected as a known instance for an account?
- One week from activation and the data should start to populate in Gainsight. 

#### Why does my customer not have any product usage data?
- Self-managed - They are not opted into Service Ping, or they turned it off.

- Self-managed - None of their instances are labeled as Production. [Here are instructions](https://about.gitlab.com/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/#updating-self-managed-instance-type) on how to label instances as Production.

#### What does it mean if I see details in instance and namespace details but no usage trends? 
- If the customer is SM, then check if they have an instance labeled “Production.” They must have an instance labeled as “Production” to appear in the Usage Trends report

- The purpose of  Instance and Namespace Details report section is to show: 
  1. If we have any SaaS or Self-Managed instances reporting stats
  2. GitLab Version (Self-Managed),
  3. The last reporting stats (e.g., they sent us stats and then stopped on 2021-07-01). 

#### A metric is missing from my Self-Managed customer. Why?
- If a metric was implemented in a later release, it will not appear. Check the Data Mart Table definitions to identify the release for the metric in question. You can check the instance and namespace details to confirm which release version the customer is on. Example: `Billable Users` was instrumented in 14.0, and if a customer is on 13.9 or earlier, then this field will appear as NULL.

#### What is Service Ping?
- Service Ping is a GitLab process that collects customer analytics on self-managed instances and sends a weekly payload to GitLab. The payload provides important high-level statistics that helps our product, support, and sales teams understand how GitLab is used.
- [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/)
- [Service Ping FAQ](https://about.gitlab.com/handbook/customer-success/csm/service-ping-faq/)

#### How can we confirm that they have opted into Service Ping?
- The only way to confirm if they have opted into Service Ping is if we have data for them. [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/). 

#### Can my customer opt out of Service Ping?
- Yes.

#### Can my customer opt out of Cloud Licensing?
- No, unless they do a contractual exemption (limited to certain PubSec orgs).

#### What stats comes from Cloud Licensing?
- Operational Metrics

#### How does Service Ping work for Usage Stats in Gainsight? 
- Usage Statistics are received and collected weekly, and those stats are added to Gainsight every week. Even though the metrics are received and added weekly, the metrics are still shown as monthly, such as `Last 28 Days (L28)` or `All-Time`. 

#### How often is the data updated in Gainsight?
- SaaS - Usage Ping is manually pulled weekly on a schedule for the entire instance, for all customers/namespaces at once, typically on Mondays. It's loaded and passed through Snowflake into Gainsight, and those processes can take a day or two to complete.
- Self-Managed - Each Self-Managed instance Usage Ping is updated weekly, and the schedule of the weekly ping varies from instance to instance. It's loaded and passed through Snowflake into Gainsight, and those processes can take a day or two to complete.

#### How do Last 28 Days metrics work?
- Shows the data for the last 28 days, including the most recent usage ping date.<br>
**Example:**<br>
- Jan 9th ping shows data for Dec 12 - Jan 9
- Jan 16th ping shows data for Dec 19 - Jan 16
- Jan 23th ping shows data for Dec 26 - Jan 23
- Jan 30th ping shows data for Jan 3 - Jan 30
- Since this is the final ping, January data is Jan 3 - Jan 30.
- January data in Gainsight would include Jan 3 - Jan 30 and exclude Jan 1, 2, 31.
- Feb 6th ping shows data for Jan 9 - Feb 6 <br>
<details>
  <summary markdown="span"> Refer to the visual for example: </summary>
 ![28d Logic](https://lucid.app/publicSegments/view/0de4f2de-99f8-44a1-a47d-a7b31cab896e/image.png)
</details>

#### Do we have metrics for the calendar week/month?
- No. Please refer to “How do Last 28 Days metrics work?” 

#### Why are usage stats missing at the beginning of the month?
- You may notice usage stats missing for the first week of a month up until a ping is collected from the customer. The ping snapshot date will differ for each customer.

---

## Data Quality Issues

#### There's known data quality issue with collecting DevSecOps feature usage, specifically the following `_jobs` metrics listed below: 
| Gainsight | Metrics Dictionary |
|---|---|
| API Fuzzing Jobs - User L28D | usage_activity_by_stage_monthly.secure.user_api_fuzzing_jobs |
| Container Scanning Jobs - User L28D | usage_activity_by_stage_monthly.secure.user_container_scanning_jobs |
| Container Scanning Jobs All Time | counts.container_scanning_jobs |
| Coverage Fuzzing Jobs - User L28D | usage_activity_by_stage_monthly.secure.user_coverage_fuzzing_jobs |
| DAST Jobs - User L28D | usage_activity_by_stage_monthly.secure.user_dast_jobs |
| DAST Jobs All Time | counts.dast_jobs |
| Dependency Scanning Jobs - User L28D | usage_activity_by_stage_monthly.secure.user_dependency_scanning_jobs |
| Dependency Scanning Jobs - User L28D | usage_activity_by_stage.secure.user_dependency_scanning_jobs |
| Dependency Scanning Jobs All Time | counts.dependency_scanning_jobs |
| License Management Jobs - User L28D | usage_activity_by_stage_monthly.secure.user_license_management_jobs |
| License Management Jobs All Time | counts.license_management_jobs |
| SAST Jobs - User L28D | usage_activity_by_stage_monthly.secure.user_sast_jobs |
| SAST Jobs All Time | counts.sast_jobs |
| Secret Detection Jobs - User L28D | usage_activity_by_stage_monthly.secure.user_secret_detection_jobs |
| Secret Detection Jobs All Time | counts.secret_detection_jobs |
| Secure Scanners - Users L28D | usage_activity_by_stage_monthly.secure.user_unique_users_all_secure_scanners |

These metrics rely on the exact name of the job to collect usage, therefore if the customer renames their DAST job as `my_ds_job` or `default_branch_dyanmic_scan`, it will not be counted in the job-reliant metrics. It is the mechanism by which these metrics are captured that is fundamentally flawed and the product team is aware and planning to rectify this by re-intrumenting the affected metrics. Please keep this in mind when presenting `_jobs` metrics to customers. 

### Limitations of redis_hll metrics

- `redis_hll` metrics only collect usage for Self-Managed customers and will always show a `0` value for SaaS customers. Product Intelligence and Data team are working cross-functionally to fix this problem by migrating those metrics to Snowplow which will allow the collection of usage for SaaS customers for those given metrics.

#### Identifying `redis_hll` metrics

You can easily identify if a metric is affected by the `redis` limitation or not by looking directly at the `.yml` file of any given metric and reading the `key_path`. If it is a `redis` metric, either the metric `key_path` OR the `data_source` will clearly state `redis`. ((example 1)[https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216180622_incident_management_total_unique_counts_monthly.yml], (example 2)[https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216175016_analytics_total_unique_counts_monthly.yml], (example 3[https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_all/20210216182004_commit_comment.yml]))

- **Exceptions:** This (list)[https://docs.google.com/spreadsheets/d/1JurwXL5xso4BMPNu-SDB9VUiQrLwZ9MV0F9eznzXsT8/edit#gid=0] shows the status of `redis` metrics that are scheduled to be repaired. 

- WORK IN PROGRESS

---

## Data Definitions

#### What’s the best way to understand what a metric is measuring?
- Check the [Product Usage Data for Gainsight Definitions](https://docs.google.com/spreadsheets/d/1EhSXqx6YXcpqHg2TpS0ZN5Rk_d2hhrTPrW5FTbmuZjw/edit?usp=sharing).

#### What’s the best way to understand details about a metric, including availability for SaaS, and in which release we started measuring that metric?
- Check the [Product Usage Data for Gainsight Definitions](https://docs.google.com/spreadsheets/d/1EhSXqx6YXcpqHg2TpS0ZN5Rk_d2hhrTPrW5FTbmuZjw/edit?usp=sharing).

#### What are the differences between billable user, licensed user, and active user?
 1. Active user count was removed because it includes bots, guest users. 
 2. Billable user includes active users, excluding bots and guests. We can accurately compare this to the number of licenses sold to determine license utilization.
 3. Licensed user is number of licenses provisioned in CustomersDOT.

#### What is UUID?
- UUID = GitLab-assigned ID of a server. There can be more than one server for one hostname.

#### What is the difference between Product Usage Stats and telemetry?
- Telemetry has the connotation of third-party analytics, so we avoid using this word. More information and alternatives on the [Top Misused Terms Handbook Page](https://about.gitlab.com/handbook/communication/top-misused-terms/#telemetry)

---

## Multiple Hostnames and Subscriptions

#### Reports that aren’t effective for accounts with multiple hostnames and subscriptions: 
-  Product Usage Scorecard Calcs - Scorecard Product Usage Metrics



