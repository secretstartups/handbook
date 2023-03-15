---
layout: handbook-page-toc
title: "Health Scoring - Calculations and Methodology"
description: "How we measure a customer's health score for general GitLab and different use cases"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}
{::options parse_block_html="true" /}

- TOC
{:toc .hidden-md .hidden-lg}

---

To drive use case enablement and expansion with customers, we need to define exactly what it means to adopt a use case at GitLab. These health measures will appear in the **Product Usage** scorecard section in Gainsight. For more, see the [Gainsight Scorecard Attributes and Calculations](/customer-health-scoring/#gainsight-scorecard-attributes-and-calculations).
 

## License Utilization

### License Usage health table

|        | 2-6 Months                               | 6-9 Months                               | > 9 Months                             |
|--------|------------------------------------------|------------------------------------------|----------------------------------------|
| < 10%  | Red       | Red       | Red     |
| 10-50% | Yellow | Red       | Red     |
| 51-75% | Green   | Yellow | Red     |
| > 75%  | Green   | Green   | Green |

## Use Case Health Scoring

| Use Case (Stage)   | Purpose / Adoption Level | Description                                                  |
| ------------------ | ------------------------ | ------------------------------------------------------------ |
| SCM (Create)       | Basic Adoption           | Is my customer using the basic toolset? Most customers should adopt these features pretty quickly into their GitLab journey |
| CI (Verify)        | Product Stickiness       | As part of their continued adoption and customer journey, we want to help our customers adopt CI, as well as helping their central DevOps teams to better understand their organization's adoption of CI. Use these metrics to help determine progress towards adoption |
| DevSecOps (Secure) | Enablement & Expansion   | For customers using our security features or who are trialing and wanting to [shift left](https://about.gitlab.com/blog/2020/06/23/efficient-devsecops-nine-tips-shift-left/), use these metrics to help identify adoption and track growth |
| CD (Release) | Enablement & Expansion   | How much has my customer adopted GitLab for deployments? The next path along the customer journey is the [CD use case](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/cd/) |

### User Engagement

User Engagement is intended to measure the number of users logging in each month / billable users.

|                       | **Red** | **Yellow** | **Green** |
| --------------------- | ------- | ---------- | --------  |
| [unique active users - L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20220621085114_unique_active_users_monthly.yml) / [Billable Users](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/license/20210531204603_license_billable_users.yml) | <50% | ≥50 - <80% | ≥80% |

This looks at all users who actively log in on a 28 day basis divided by the amount of total users that have been deployed on the account.

**Limitations**:
1. Only self-managed customers on 15.2+ will have this health measure available
1. The SaaS-equivalent metric will be available later ([issue](https://gitlab.com/gitlab-data/analytics/-/issues/11662))

As the customer progresses through the lifecycle, user engagement is a measure of the "solidity" consumption of licenses. For example, arre the users that have found their way to the platform sticking around and regularly utilizing it?

**Why it matters**: User Engagement should prove to be a great way to build a more comprehensive view of renewal risk. It'll be less efficacious for customers that have dormant-user-deactivation enabled, as un-engaged users should be being removed from the billable count on an ongoing basis.

**How to use it**:
1. Ask discovery questions of customer about user engagement: types of users, their use cases, awareness of dormancy/un-engaged-users
1. Build awareness of dormant-user-deactivation capability
1. Couple that with efforts to drive awareness of GitLab within the account (eg. GitLab for Plan/PM, GitLab for non-developers, normal user enablement). A signal to SAL/AE/BDR to drive account-based outreach. Find unaware or unegaged user cohorts. Encourage them to  bring users onto the platform.

Position as a way for the customer to get value out of the seats they've already paid for, and help the account team ensure more predictable renewal outcomes. It becomes riskier the closer we are to renewal.

### Source Code Management (SCM)

SCM is considered one of the initial land use cases. To that end, we want to ensure the customer is using it appropriately.
Adoption timeline: 1 months after license purchase

|                       | **Red** | **Yellow** | **Green** |
| --------------------- | ------- | ---------- | --------  |
| [Git Operations - Users L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216182040_action_monthly_active_users_project_repo.yml) / Licenses Sold | < 25%    | ≥ 25 - < 50%     | ≥ 50%    |

This looks to all active users who performed any Git operation (read/write/push) / Licenses Sold.

### Continuous Integration (CI)

CI is considered both an initial purchase reason or, in the case of SCM, an expansionary use case (one after the initial purchase intent has been solved). 
Adoption timeline: 1 months after license purchase

|  | **Red** | **Yellow** | **Green** |
|---|---|---|---|
| CI Pipelines Utilization % ([CI Pipelines - User L28](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216175554_ci_pipelines.yml) / Licenses Sold) | < 25% | ≥ 25% - < 50% | ≥ 50% |
| Deployments Per User L28D ([Deployments L28D (event)](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210201124930_deployments.yml) / Licenses Sold) | < 3% | ≥ 3% - < 8% | ≥ 8% |
| User Deployments Utilization % ([Deployments - User L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216181935_deployments.yml) / Licenses Sold) | < 5% | ≥ 5% - < 12% | ≥ 12% |


### DevSecOps

These DevSecOps metrics are available for all customers. Adoption timeline: 1 months after license purchase

|  | **Red** | **Yellow** | **Green** |
|---|---|---|---|
| Secure Scanner Utilization % ([Secure Scanners - Users L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216181956_user_unique_users_all_secure_scanners.yml) / Licenses Sold) | ≤ 5% | > 5% - < 20% | ≥ 20% |
| Container Scanning Jobs Utilization % ([Container Scanning Jobs - User L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216175505_user_container_scanning_jobs.yml) / Licenses Sold) | ≤ 3% | > 3% - < 10% | ≥ 10% |
| Secret Detection Jobs Utilization % ([Secret Detection Jobs - User L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216182127_user_secret_detection_jobs.yml) / Licenses Sold) | ≤ 6% | > 6% - < 20% | ≥ 20% |


### Continuous Delivery (CD)

CD is considered an expansionary use case (one after the initial purchase intent has been solved). 
Adoption timeline: 1 months after license purchase

|                    | **Red** | **Yellow** | **Green** |
| ------------------ | ------- | ---------- | --------  |
| User Deployments Utilization % ([Deployments - User L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216181935_deployments.yml) / Licenses Sold) | < 5%    | 5-12%     | > 12%    |
| Deployments Per User L28D ([Deployments L28D (event)](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210201124930_deployments.yml) / Licenses Sold) | < 2 | 2 - 7 | > 7 |
| Successful Deployments % ([Successful Deployments - L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216181923_successful_deployments.yml) / (Successful Deployments - L28D + [Failed Deployments - L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216181924_failed_deployments.yml))) | < 25% | 25% - 80% | > 80% |

## Use Case Adoption Count

_"How many use cases has a customer adopted?"_

In Gainsight, scorecards track customer adoption of Gitlab use cases. 

A green score signifies that a customer is adopting that specific use case. On the Customer Health Dashboard, in the Use Case Adoption Count chart, we count the number of green scores for each customer to visualize the count of customers adopting null, 1,2, 3 and 4 use cases.

Use this chart to understand how many use cases each of your customers have adopted.

<details>
<summary> Gainsight calculation rules
</summary>

##### Calculation of use case adoption counts for SCM, CI, CD and DevSecOps

Gainsight Rules mark boolean fields as true on `Company` object for accounts with green scores. These boolean fields are named SCM Adoption, CI Adoption, CD Adoption and DevSecOps Adoption. 

Once marked, the number of “true” booleans for each account are summed. If an account has a green SCM, CI, CD and DevSecOps, this would be a 4 score. If none of the use cases are green, this would be 0 and if all of the use case scores are N/A, this would be NULL to mean no usage stats have been recorded.
</details>

## Product Health Score Drop CTA

Using the Gainsight Rules Engine, we have created a mechanism for a Call to Action (CTA) to be created every time a Product Health Score drops from Green to Yellow/Red or from Yellow to Red. The CTA is assigned to the Customer Success Manager (CSM) for follow up, and no playbooks will be associated with the CTA. The CSM will have the option to manually create/add tasks to the CTA in order to keep track of actions taken towards correcting the decrease in score.

Through this CTA, the CSM is notified quickly when a customer may be decreasing their usage of an area of the product, so that they can investigate, ask discovery questions, and triage early, in order to help customers adopt and avoid potential churn or contraction down the line.

While there may be some false positives (for example holiday breaks when no one is working), we prefer to be extra cautious when it comes to potential risk, so we ask CSMs to do their due diligence when receiving these CTAs to ensure their customer is not facing new blockers, company changes, etc. that could affect their renewal, and if they are to begin the [triage process](/handbook/customer-success/csm/renewals/#gitlab-account-triage-project) immediately.

The CSM may also be able to spot trends of where customers may have lagging usage either over time or across their books of business and suggest best practices to their customers to help with expectations and adoption.

This logic applies to the following Scores:
- CI Adoption
- CD Adoption
- DevSecOps Adoption
- License Utilization
- SCM Adoption
- User Engagement 

_Notes:_
- Applicable to CSM-managed customer accounts only
- Rule is scheduled to run on a daily basis at 2am PT

## License Utilization in Gainsight

License Utilization is calculated on a subscription level. In Gainsight, we roll up stats from all subscriptions under an account and display it at the account level. Billable User Count comes from Operational Metrics for both SaaS and Self-Managed customers (Self-Managed stats are limited to customers in version 14.0 or later). Subscription stats are brought over from Zuora. 

If you believe there is inaccurate stats for an account, see how to [report bad usage stats](#reporting-bad-usage-statistics) below.

There are three main fields we use at the Instance and Namespace level (generally subscription-level, too) for License Utilization stats:

* **Billable User Count**: From Operational Metrics. Number of users that can be billed for a license, excludes guest users.
* **Licensed Users**: Number of licenses purchased for a given subscription.
* **License Utilization (Subscription)**: Calculated in Gainsight based on above metrics: `Billable User Count/Licensed Users` represented as a percentage.

NOTE: these exist on the `Product Usage Metrics` object. This will be represented per Instance or Namespace.

Gainsight then rolls up these statistics to the account level, and you can see the aggregated stats for your accounts (see below). 

### Customer 360 Page

On the Customer 360, you can view the following fields under the User Adoption Metrics section:

* **Billable Users - Account**: The number of current users that GitLab will bill the customer for across all subscriptions under the account 
* **Total Licenses Sold (Account)**: The number of licenses purchased across all subscriptions under the account 
* **License Utilization - Account**: Sum of the Billable User Count/Total Licenses Sold (for all subscriptions under the account).

Please note that there may be situations where fields are blank or don't seem to include utilization stats from all subscriptions. This might occur because:

* If any one subscription has a blank value in either the Billable User Count or Total Licenses Sold fields, the Account License Utilization % will be N/A, and Billable Users Sum and/or Licensed Users Sum will reflect N/A amount as well since the cumulative calculation cannot be made 

If the reporting look good (no missing stats), see how to [report bad usage stats](#reporting-bad-usage-statistics) below.

### Reporting Bad Usage Statistics

If you believe you found an inaccuracy with the usage stats, here are several steps to confirm and then report. First, the integration works by passing data from the data warehouse to Salesforce to Gainsight. In Gainsight, the health scorecard is based on subscriptions where we know both the Billable Users and Total Licenses Sold; if we don't have either one then that subscription is excluded. 

If you want to report bad usage stats, please refer to this handbook page on [Triaging Data Quality](/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/#triaging-data-quality).
