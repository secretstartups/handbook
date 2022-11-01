---
layout: handbook-page-toc
title: "Customer Use Case Health Scoring"
description: "How we measure a customer's health score for general GitLab and different use cases"
---

To drive use case enablement and expansion with customers, we need to define exactly what it means to adopt a use case at GitLab. These health measures will appear in the **Product Usage** scorecard section in Gainsight. For more, see the [Gainsight Scorecard Attributes and Calculations](/handbook/customer-success/csm/health-score-triage/#gainsight-scorecard-attributes-and-calculations).
 

## License Utilization

See [Health Score Triage](/handbook/customer-success/csm/health-score-triage/#license-usage-health-table) for specifics.

## Use Case Health Scoring

| Use Case (Stage)   | Purpose / Adoption Level | Description                                                  |
| ------------------ | ------------------------ | ------------------------------------------------------------ |
| SCM (Create)       | Basic Adoption           | Is my customer using the basic toolset? Most customers should adopt these features pretty quickly into their GitLab journey |
| CI (Verify)        | Product Stickiness       | As part of their continued adoption and customer journey, we want to help our customers adopt CI, as well as helping their central DevOps teams to better understand their organization's adoption of CI. Use these metrics to help determine progress towards adoption |
| DevSecOps (Secure) | Enablement & Expansion   | For customers using our security features or who are trialing and wanting to [shift left](https://about.gitlab.com/blog/2020/06/23/efficient-devsecops-nine-tips-shift-left/), use these metrics to help identify adoption and track growth |
| CD (Release) | Enablement & Expansion   | How much has my customer adopted GitLab for deployments? The next path along the customer journey is the [CD use case](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/cd/) |

### User Engagement

User Engagement is intended to measure the number of users logging in each month / billable users.

|                       | **Red** | **Yellow** | **Green** |
| --------------------- | ------- | ---------- | --------  |
| [unique active users - L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20220621085114_unique_active_users_monthly.yml) / [Billable Users](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/license/20210531204603_license_billable_users.yml)) | <50%    | ≥50 - <80%     | ≥80%    |

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
| [Git Operation - Users L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216182040_action_monthly_active_users_project_repo.yml) / Licenses Sold | <25%    | ≥25 - <50%     | ≥50%    |

This looks to all active users who performed any Git operation (read/write/push) / Licenses Sold.

### Continuous Integration (CI)

CI is considered both an initial purchase reason or, in the case of SCM, an expansionary use case (one after the initial purchase intent has been solved). 
Adoption timeline: 1 months after license purchase

|  | **Red** | **Yellow** | **Green** |
|---|---|---|---|
| CI Pipelines Utilization ([CI Pipelines - User L28](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216175554_ci_pipelines.yml) / Licenses Sold) | <25% | ≥25% - <50% | ≥50% |
| Deployments Per User L28 ([Deployments L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210201124930_deployments.yml) (event) / Licenses Sold) | <3% | ≥3% - <8% | ≥8% |
| Deployments Utilization ([Deployments - User L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/config/metrics/counts_28d/20210216181935_deployments.yml) / Licenses Sold) | <5% | ≥5% - <12% | ≥12% |


### DevSecOps

These DevSecOps metrics are available for all customers. Adoption timeline: 1 months after license purchase

|  | **Red** | **Yellow** | **Green** |
|---|---|---|---|
| Secure Scanner Utilization ([Secure Scanners - Users L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216181956_user_unique_users_all_secure_scanners.yml) / Licenses Sold) | ≤5% | >5% - <20% | ≥20% |
| Container Scanning Jobs Utilization ([Container Scanning Jobs - User L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216175505_user_container_scanning_jobs.yml) / Licenses Sold) | ≤3% | >3% - <10% | ≥10% |
| Secret Detection Jobs Utilization ([Secret Detection Jobs - User L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216182127_user_secret_detection_jobs.yml) / Licenses Sold) | ≤6% | >6% - <20% | ≥20% |


### Continuous Delivery (CD)

CD is considered an expansionary use case (one after the initial purchase intent has been solved). 
Adoption timeline: 1 months after license purchase

|                    | **Red** | **Yellow** | **Green** |
| ------------------ | ------- | ---------- | --------  |
| [Deployments - User L28D](https://gitlab.com/gitlab-org/gitlab/-/blob/master/ee/config/metrics/counts_28d/20210216182127_user_secret_detection_jobs.yml) / Licenses Sold | <5%    | 5-9%     | ≥10%    |

## Use Case Adoption Count

In Gainsight, scorecards track customer adoption of Gitlab use cases. 

A green score signifies that a customer is adopting that specific use case. On the Customer Health Dashboard, in the Use Case Adoption Count chart, we count the number of green scores for each customer to visualize the count of customers adopting null, 1,2, 3 and 4 use cases.

Use this chart to understand how many use cases each of your customers have adopted.

##### Calculation of use case adoption counts for SCM, CI, CD and DevSecOps

Gainsight Rules mark boolean fields as true on `Company` object for accounts with green scores. These boolean fields are named SCM Adoption, CI Adoption, CD Adoption and DevSecOps Adoption. 

Once marked, the number of “true” booleans for each account are summed. If an account has a green SCM, CI, CD and DevSecOps, this would be a 4 score. If none of the use cases are green, this would be 0 and if all of the use case scores are N/A, this would be NULL to mean no usage stats have been recorded.

