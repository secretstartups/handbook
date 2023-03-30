---
layout: handbook-page-toc
description: "This page covers the factors to consider for customer health, guidelines for selecting the appropriate rating, communication guidelines, CSM responsibilities and instructions for the account triage issue creation."
title: "Customer Health Assessment and Management"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

View the [CSM Handbook homepage](/handbook/customer-success/csm/) for additional CSM-related handbook pages.

----
This page covers the factors to consider for customer health, guidelines for selecting the appropriate rating, communication guidelines, CSM responsibilities and instructions for the account triage issue creation.

## CSM Responsibilities

The CSM is responsible for coordinating with all relevant parties to develop a plan to address account risks. Typically, this will involve the account team and communication group ([Communication Guidelines](/handbook/customer-success/csm/health-score-triage/#communication-guidelines)), as well as other relevant stakeholders such as Product Managers, marketing, executive, or engineering team members to develop and deliver the plan to address the risks. The CSM then drives execution of the strategy and is responsible for logging regular updates. When the risks have been addressed bringing the customer to a healthy / green status, the account team can agree to move the account out of triage.

## Tracking Customer Health

CSMs can use Red, Yellow, and Green to reflect their sentiment of a customer's health. Below is an explanation about how to think about a customer's health.

### Green

Customer is very likely to renew and/or expand with no known or assumed risk of downsell or churn. Customer's experience: engagement, adoption and experiences are as expected or better than expected, delivering value and outcomes as appropriate the customer's stage in their journey. Examples:

- Progressive adoption of GitLab use cases as defined by their success plan, considering their stage in their journey
- Alignment with stakeholders who can drive desired outcomes
- Regular communication and engagement in meetings
- Positive feedback on the product and experience and/or high scores on NPS surveys
- Leveraging support services as defined by creation of tickets (1-5 tickets per month)
- Interest in providing feedback and engaging with GitLab through other programs and events (e.g., Commit, CAB)

### Yellow & Yellow "Needs Triage"

Potential risk or significant lack of information leading to uncertainty. Indicates challenges to overcome, with a lower risk of churn or downsell. Customer's experience: engagement, adoption and/or experiences are lower than expected, risking GitLab's ability to deliver customer value and outcomes and/or drive future revenue growth. Examples:

- Slow, delayed, or blocked adoption of GitLab use cases in support of the customer's success plan
- Customer lacks definition of goals or success criteria
- High number of support cases, critical / blocker product issue(s), or poor experience based on the customer's expectations
- Lack of engagement, responsiveness or participation in meetings and/or events
- Loss of sponsor or champion due to change of role or organization or acquisition
- Lack of adoption of releases (self-managed only) where they are more than a major release behind the current release
- Not leveraging technical support services or has a large number of cases and/or high severity cases (6-15 tickets per month, or no ticket(s) opened after being advised by the CSM that Support is the best path to resolution for an issue(s))
- Poor experiences with Support, Professional Services or another part of GitLab
- Working with a single contact at a company (single-threaded).

There might be well understood reasons within the account team why a customer is flagged as Yellow within the current phase of the customer lifecycle. If the CSM decides that corrective actions and follow up from team members outside of the CSM group is required the CSM must create an [At Risk Timeline Entry](/handbook/customer-success/csm/health-score-triage/#at-risk-timeline-entries) and flag the account as Yellow "Requires Triage".

### Red

Specific, known risks to account retention or upcoming opportunity, or overwhelming lack of information, such as unresponsiveness leading up to renewal. Customer's experience: engagement, adoption and/or experiences are significantly lower than expected where issues are blocking GitLab's ability to deliver expected value, outcomes, or positive experiences as defined by the customer.
Examples:

- Lack of alignment with stakeholders who can drive outcomes... 
   - [Economic Buyer](https://about.gitlab.com/handbook/sales/meddppicc/#economic-buyer) 
   - [Champion](https://about.gitlab.com/handbook/sales/meddppicc/#champion)
   - Key [Personas](https://about.gitlab.com/handbook/product/personas/) 
      - [Cameron (Compliance Manager)](https://about.gitlab.com/handbook/product/personas/#cameron-compliance-manager)
      - [Delaney (Development Team Lead)](https://about.gitlab.com/handbook/product/personas/#delaney-development-team-lead)
- Product does not deliver expected value or outcomes as defined by success plan
- No or low product adoption with no progression
- Communication of poor sentiment
- Lack of any engagement
- Significantly poor experiences with Support or Professional Services
- Significant number of support tickets (16+ per month)


### Will Churn (Grey)

Very rarely, a customer reaches a point at which it is accepted by the account team and leadership that a customer will churn. As Gainsight does not support a 'grey' color (or any color outside of the standard green to red health scoring), the `will churn` lifecycle stage can be applied in 360º Attributes.  Applying this stage will remove the customer from health scoring reporting, so that at-risk reviews are spent productively.

In order for a customer to move to the `will churn` stage, the following must be completed:

1. All options discussed in the triage issue and in at-risk reviews have been exhausted
1. CSM discusses it with their manager and gets agreement on moving to `will churn`
1. CSM opens a `Will Churn` issue ([`Will Churn` issue template](https://gitlab.com/gitlab-com/customer-success/account-triage/-/issues/new?issuable_template=Will%20Churn%20-%20ENT))
1. CSM links from the triage issue to the newly created `Will Churn` issue and closes the triage issue
1. Listed personas in the `Will Churn` issue provide feedback and approval
1. SAE/AE marks the opportunity as `Will Churn`
1.  CSM updates the Lifecycle Stage in Gainsight C360 > Attributes > Lifecycle Stage to `Will Churn`

In line with GitLab's approach to blameless root cause analysis in both [Professional Services](/handbook/customer-success/professional-services-engineering/workflows/internal/root-cause-analysis.html) and [Engineering](/handbook/engineering/root-cause-analysis/), we follow a similar methodology in the form of a retrospective in the `Will Churn` issue to identify learnings from what went well and what didn't, what we could have done better to avoid this churn, and how we can change our approach in order to avoid future churn. This information is important and required to be included the issue in order to provide context to leadership prior to them approving. This retrospective and lessons learned should also be discussed in the next 1:1 between the CSM and their manager, as well as potentially lead to a handbook or process update shared with the broader team.

## Reporting and Viewing Customer Health

Use the `Customer Health` (CSM Portfolio Dashboard) report to view the health of every measure for your customers in one single view.

To view Timeline entires where the CSM Sentiment was updated:

1. Go to Global Timeline
1. Filter by Sentiment = Green, Yellow, or Red
1. Apply any other specific filters (CSM Name, Timeline date, etc)

## Gainsight Responsibilities

CSMs are responsible for keeping Gainsight up to date regarding all of their account risks.

### At Risk Timeline Entries

For any account that is Red or Yellow, the following steps for an At Risk timeline update is required: 

1. In the account timeline, log an `At-Risk Update`, marking CSM Sentiment as Red (or Yellow) and any context for the at-risk account
1. Gainsight will auto create the `At-Risk` CTA (in Cockpit) within 24h
1. CSM updates CTA [Risk Impact](/handbook/customer-success/csm/health-score-triage/#risk-impact-definitions) and [Risk Reason](/handbook/customer-success/csm/health-score-triage/#risk-reason-definitions) dropdown fields
   1. In the CTA, update `Stage Name` and `Competitor` fields if applicable
1. CSM logs new `At-Risk Update` based on [Frequency of At Risk Timeline Entries](/handbook/customer-success/csm/health-score-triage/#frequency-of-at-risk-timeline-entries)
1. At-Risk Conclusion:
   1. Customer is won back:
      1. Log Account-level Timeline `At-Risk Update` type for CSM Sentiment as Green and final notes
      1. Change customer Lifecycle Stage to Adopting
      1. Close out CTA with success criteria (Closed-Won, win reasons)
   1. Customer is lost:
      1. Log Account-level Timeline `At-Risk Update` type with final update
      1. Change customer Lifecycle Stage to: Will Churn for a churning customer and Adopting for downgrade customer
      1. Close out CTA with success criteria (Closed-Lost, loss reasons)

**Tips**:

- **Keep the CTA open until fully resolved**. Resolved can mean the customer is won back, contraction has happened, or they will churn
- Use `closed-won` when we saved the customer AND had a flat or positive net ARR opportunity
- Use `closed-lost` when we churned the customer or had contraction

This can then be discussed with the [Account Team](/handbook/customer-success/account-team/) during account reviews.

### Frequency of At Risk Timeline Entries

1. If customer renewal is this fiscal quarter or next: 
   1. Weekly [At-Risk Timeline](/handbook/customer-success/csm/health-score-triage/#at-risk-timeline-entries) updates
      - Entry should include progress towards risk mitigation over the past week and plans for the upcoming week.
1. If customer renewal is after next fiscal quarter: 
   1. Monthly [At-Risk Timeline](/handbook/customer-success/csm/health-score-triage/#at-risk-timeline-entries) updates
      - Entry should include progress towards risk mitigation over the past month and plans for the upcoming month.

![GitLab At-Risk Customer Process](images/CSM_AtRisk_Customer_Process.jpeg)

### When to open an Account Escalation

If a CSM has marked an account as [Red](/handbook/customer-success/csm/health-score-triage/#red) and further assistance from Product, Support or Managers+ is needed, open an [Account Escalation](/handbook/customer-success/csm/escalations/).

### Risk impact definitions

1. **Customer Churn** - fully churn the account
1. **Tier Downgrade** - move down tiers
1. **Seat Churn** - reduce license seat count
1. **Customer Sentiment** (Impact Unknown) - customer is unhappy and the impact isn’t quantified
1. **Competitor** - any competitive intelligence we might be up against
1. **Stage Name** - stage impact, for example, product deficiencies, direction, or needs.

### Risk reason definitions

#### Lack of adoption

Customer never adopted the product or specific features so they did not get value. This can be because of organizational silos or lack of internal resources. If they didn't adopt because they didn't see / experience value, it should be Product Gap

#### Product Value / Gaps

Prospect or customer used the product and features (i.e., trial, POV, or purchased product), but did not see the value. The product did not meet requirements of the customer. This can also be a prospect where they did not experience perceived value

#### Product Quality / Availability

Prospect or customer used the product and features (i.e., trial, POV, or purchased product) though they did not meet the prospect or customer's needs or expectations. This can be defects, poor performance, or uptime/availability issues. Includes both self-managed and SaaS products

#### Lack of Engagement / Sponsor

We lost or were never able to get engagement with the prospect or customer team. The champion / sponsor left, changed responsibility, or became unresponsive. We were never able to re-establish connection with a new sponsor or champion

#### Loss of Budget

The prospect or customer lost budget due to business contraction, change of priorities, reduction of employees, or other. This was not a competitive loss.

#### Corporate Decision

Due to management decision or policy, the prospect or customer chose a different product but not because of product gaps, adoption, etc. This would be a top-down decision (e.g., ELA, decision to commit to a single provider)
* **Other** - other company issues that contribute to a blocker for the renewal

### Mitigation Strategies

For CSM guidance on mitigating risk, please see the [Risk Types, Discovery & Mitigation Strategies](/handbook/customer-success/csm/risk-mitigation) page.


## At Risk Communication Guidelines

The following are guidelines on who to notify when an account is yellow or red. Please make sure the following people are notified with the respective customer health ratings.

### Yellow Health Rating

- Account Team (i.e. Account Executive and Solution Architect)
- Regional CSM Manager
- CSM Director (all non-Public Sector customers) or Director of Customer Success Public Sector (for Public Sector customers)

### Red Health Rating

- Include the list above as well as…
- Area Sales Manager and Regional Director
- Vice President of Customer Success

## Gainsight Scoring Definitions

### CSM Sentiment

CSMs update CSM Sentiment in determining overall account health. The guidelines are as follows:

- **CSM Sentiment**: Qualitative measure that the CSM updates to indicate their perceived sentiment of the customer. This should consider all the factors mentioned above and measured by the health assessment (green, yellow, red) criteria
- **CSM Sentiment Override of Overall Health Score**: When the CSM Sentiment score becomes red, the overall score will automatically become red. Once the CSM Sentiment moves back to a green or yellow score, the standard weighting of measures and groups will be reapplied as usual.

The CSM Sentiment score will be updated each time you [log a Timeline activity](/handbook/customer-success/csm/gainsight/timeline/) and select a value from the CSM Sentiment dropdown. Once you have logged the activity to Timeline, Gainsight will update the value of the CSM Sentiment scorecard measure and display the notes from the Timeline activity on the scorecard. The rule that sets the scorecard value runs every 2 hours.

There are a number of [enablement videos](/handbook/customer-success/csm/gainsight/#videos) you can watch to learn how to update customer health assessment and log activities that affect that assessment.

#### Clearing Stale Health Measures

**Product**
If usage data stops being received into Gainsight, the health measures will move to "NA" after 60 days. This is to prevent analysis and actions based on outdated data. In this case, we prefer to show nothing ("NA") over outdated data.

**CSM Sentiment**
`CSM Sentiment` health scores become stale after 90 days of not being updated; this will be reflected on your health score dashboard by an exclamation point next to the score. If an account is marked as stale, but you've updated the `CSM Sentiment` within 90 days, please reach out in [gainsight-users](https://gitlab.slack.com/archives/C011ACG9MJB). Accounts with a stale `CSM Sentiment` will also be monitored via the CSM Burn-Down Dashboard in Gainsight and discussed in account planning meetings. Sentiment scores will be set to NA if they have not been updated in more than 120 days to remove outdated values.

**Support Measures**
Support measures are considered stale if they have not been updated in more than 30 days. They will be automatically set to NA after 30 days without an update.


#### Gainsight Scorecard Attributes and Calculations

Health score criteria is either manually or automatically applied to determine the overall measure. If an individual measure is missing, the weighting is redistributed to the completed measures.

* Except for CSM Sentiment, all health measures will typically be NULL for the first 30 days of the customer's onboarding due to insufficient stats and inaccurate results, such as Engagement.
* In instances where a measure is N/A, the percentage weighting will be redistributed to the other health measures.
   * Example 1: If all product usage stats are missing, then it's entirely reallocated to the other measures (Engagement, ROI, CSM Sentiment...). Heavier weighter measures, such as CSM Sentiment, would receive a bigger allocation because it's already the largest.
   * Example 2: If we're receiving Product Usage Statistics but Continuous Delivery (CD) is NULL, that will be reallocated among Product Usage stats measures. So CI health would go from, say, 5% to 7%.


| Group (PROVE) | Measure | Description | Method | Calculation | Measure Weight | Group Weighting | Segmentation |
|---|---|---|---|---|---|---|---|
| **Product** |  | Scores the customer based on their depth and breadth of adoption, if Operational Metrics are available | Automatic | [See Customer Use Case Adoption](https://rgorbanescu-master-patch-65934.about.gitlab-review.app/handbook/customer-success/product-usage-data/use-case-adoption/) |  | 50% |  |
|  | License utilization |  |  |  | 30% |  | All |
|  | User Engagement |  |  |  | 10% |  | All |
|  | SCM adoption |  |  |  | 15% |  | All |
|  | CI adoption |  |  |  | 15% |  | All |
|  | DevSecOps adoption |  |  |  | 15% |  | All |
|  | CD adoption |  |  |  | 15% |  | All |
| **Risk** | [CSM sentiment](/handbook/customer-success/csm/health-score-triage/#gainsight) | Qualitative measure the CSM updates to indicate their perceived sentiment of the customer | Manual/Automatic | For all `CSM-owned` accounts, CSM manually determines red/yellow/green | 100% | 25% | N/A for Tech Touch |
| **Outcomes** | ROI | Does the customer have a Success Plan that has objectives and notes? | Automatic | For All `CSM Prioritization = 1` accounts AND all CSM-owned accounts that have an open Success Plan:<br>- Green: Active Success Plan with 1 or more objectives and no Strategy/Highlight information<br>- Yellow: Draft Success Plan OR Active Success Plan with 1 or more objectives and no Strategy/Highlight information<br>- Red: No Success Plan or no objectives | 100% | 10% | N/A for Scale and Tech Touch |
| **Voice of the customer** |  |  |  |  |  | 5% |  |
|  | Support issues | Assess the health of our support interactions. Current version is MVC with [v2 coming](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/issues/1202). | Automatic | - Green: 1-5 tickets/month<br>- Yellow: 5-15 tickets/month<br>- Red: More than 15 tickets/month | 100% |  | All |
|  | Support emergency tickets | Based on the number of open/closed tickets.<br>**Priority**: urgent tickets | Automatic | - Yellow: 1+ closed emergency ticket in the last 7 days<br>- Red: 1+ open emergency ticket | 0% |  | All |
| **Engagement** |  |  |  |  |  | 10% |  |
|  | Meeting cadence | Based on recency of last call or meeting with the customer | Automatic | For `CSM Prioritization = 1` accounts:<br>- Green: <= 35 days<br><br>- Yellow: > 35 days and <= 60 days<br><br>- Red: > 60 days<br><br><br>For `CSM Prioritization = 2` accounts:<br>- Green: <= 65 days<br><br>- Yellow: > 65 days and <= 90 days<br><br>- Red: > 90 days | 50% |  | N/A for Scale and Tech Touch |
|  | **Persona engagement** | Are we meeting with the correct personas in the account? | Automatic | Persona Engagement is based on the roles of External Attendees added on timeline entries<br>- Green: both Dev Lead and Security Lead are listed as external attendees on a timeline entry in the past three months<br>- Yellow: one of the two personas attend<br><br>- Red: neither personas are listed as having attended a meeting | 50% |  | N/A for Growth, Scale and Tech Touch |

### Multiple Production Instances Health Scoring
 
When an account has multiple GitLab instances identified as Production (Instructions on how to [Update Self-Managed Instance Type](https://about.gitlab.com/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/#updating-self-managed-instance-type)), the Product Usage health measures the most recently updated instance instead of the primary instance, causing scoring inconsistencies. Note: this is less than 5% of the time because the vast majority of accounts have a single production instance.

#### Solution

[Video Instructions](https://youtu.be/N0JUABX88Hg) to update instance data in Gainsight to include only one instance in Product Usage health measure.

1. On the account C360 scroll to the Instance and Namespace Details Section
2. Scroll right to see the “Included in Health Measure” column
3. To exclude instances, click the three dots, "Edit", and then select “Opt-Out” in the `Included in Health Measures` to EXCLUDE the instance section. NOTE: Make sure you select “Opt-Out” rather than null, or the system may overwrite your update. Then click Update
4. To select your **primary** instance for health scoring, click on the three dots, Edit, and click “Included in health Score” then click "Update"

**Important Notes**: 
1. Best practice is to only have ONE instance marked as "Included in Health Measure" 
2. All Production instances are automatically marked "Included in Health Measure" unless they are marked "Opt-Out" 
3. Select "Opt-Out" rather than null, or the system may overwrite your update

<details>

<summary markdown='span'>Multiple Production Instances: Gainsight Admin Processes</summary>
<br>

Because the DevSecOps health measure looks to the account as "Ultimate", this step was added to make sure the correct production instance is scored in the case of multiple subscriptions under a given account. 

If a CSM has marked a production instance under a Premium subscription, DevSecOps health will appear as be “NA”. Meaning, even if there are two subscriptions with one Premium and another Ultimate, as long as the CSM marked the Premium one for health scoring, you will no longer see a DevSecOps health score (generally red) on the account.

**Gainsight Rules:**

1. `NEW: Admin: Update Plan Name on Product Usage Instance Metrics`
   1. This pushes `Plan Name` from the Customer Subscription object to the Product Usage Instance Metrics object
2. `Set Score: DevSecOps Adoption Individual Measures`
   1. The rule looks at the `Plan Name` on the Product Usage Instance Metrics object instead of the `Products Purchased` on the Company object

</details>
<br>

## Related Processes

[Customer Success Escalations Process](/handbook/customer-success/csm/escalations/)

