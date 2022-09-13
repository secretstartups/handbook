---
layout: handbook-page-toc
title: "Product Usage Data in Gainsight FAQs"
description: "Frequently asked questions answered so Sales and Customer Success teams can confidently use Product Usage Data to support their customers' top initiatives and business objectives."
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}
{::options parse_block_html="true" /}

- TOC
{:toc .hidden-md .hidden-lg}

---
# Purpose

To answer questions frequently asked by Sales and Customer Success teams about Product Usage Data in Gainsight.

# FAQs

_Last updated 2022-05-17._

## Data Availability

#### Why does my customer not have any product usage data?
- Self-managed - They are not opted into Service Ping, or they turned it off.

- Self-managed - None of their instances are labeled as Production. [Here are instructions](https://about.gitlab.com/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/#updating-self-managed-instance-type) on how to label instances as Production.

#### What does it mean if I see details in instance and namespace details but no usage trends? 
- If the customer is SM, then check if they have an instance labeled “Production.” They must have an instance labeled as “Production” to appear in the Usage Trends report

- The purpose of  Instance and Namespace Details report section is to show: 
  1. If we have any SaaS or Self-Managed instances reporting data
  2. GitLab Version (Self-Managed),
  3. The last reporting data (e.g., they sent us data and then stopped on 2021-07-01). 

#### A metric is missing from my Self-Managed customer. Why?
- If a metric was implemented in a later release, it will not appear. Check the Data Mart Table definitions to identify the release for the metric in question. You can check the instance and namespace details to confirm which release version the customer is on. Example: `Billable Users` was instrumented in 14.0, and if a customer is on 13.9 or earlier, then this field will appear as NULL.

#### What is Service Ping?
- Service Ping is a GitLab process that collects customer analytics on self-managed instances and sends a weekly payload to GitLab. The payload provides important high-level data that helps our product, support, and sales teams understand how GitLab is used.
- [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/)
- [Service Ping FAQ](https://about.gitlab.com/handbook/customer-success/csm/service-ping-faq/)

#### How can we confirm that they have opted into Service Ping?
- The only way to confirm if they have opted into Service Ping is if we have data for them. [Service Ping Guide](https://docs.gitlab.com/ee/development/service_ping/). 

#### Can my customer opt out of Service Ping?
- Yes.

#### Can my customer opt out of Cloud Licensing?
- No, unless they do a contractual exemption (limited to certain PubSec orgs).

#### What data comes from Cloud Licensing?
- Operational Metrics

#### How does Service Ping work for Usage Data in Gainsight? 
- Data is received and collected weekly, and that data is added to Gainsight every week. Even though the metrics are received and added weekly, the metrics are still shown as monthly, such as `Last 28 Days (L28)` or `All-Time`. 

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

#### Why is usage data missing at the beginning of the month?
- You may notice usage usage data missing for the first week of a month up until a ping is collected from the customer. The ping snapshot date will differ for each customer.

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

#### What is the difference between Product Usage Data and telemetry?
- Telemetry has the connotation of third-party analytics, so we avoid using this word. More information and alternatives on the [Top Misused Terms Handbook Page](https://about.gitlab.com/handbook/communication/top-misused-terms/#telemetry)

---

## Multiple Hostnames and Subscriptions

#### Reports that aren’t effective for accounts with multiple hostnames and subscriptions: 
-  Product Usage Scorecard Calcs - Scorecard Product Usage Metrics



