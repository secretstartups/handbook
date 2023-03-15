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

The CSM is responsible for coordinating with all relevant parties to develop a plan to address the risks. Typically, this will involve the account team and communication group ([Communication Guidelines](/handbook/customer-success/csm/health-score-triage/#communication-guidelines)), as well as other relevant stakeholders such as Product Managers, marketing, executive, or engineering team members to develop and deliver the plan to address the risks. The CSM then drives execution of the strategy and is responsible for logging regular updates. When the risks have been addressed bringing the customer to a healthy / green status, the account team can agree to move the account out of triage.

### Gainsight Responsibilities

CSMs are responsible for keeping Gainsight up to date regarding all of their renewals.

**Timeline Entries**
- For at-risk renewals occurring this fiscal quarter and next, update Timeline with an At-Risk Update on a **weekly** basis with progress towards risk mitigation over the past week and plans for the upcoming week
- For at-risk renewals occurring beyond next fiscal quarter, update Timeline with an At-Risk Update on a **monthly** basis with progress towards risk mitigation over the past month and plans for the upcoming month

For those customers not at risk, CSMs should be ensuring they still update CSM Sentiment on at least a quarterly basis to avoid the [score going stale](/handbook/customer-success/csm/health-score-triage/#clearing-stale-health-measures).

**At-Risk CTAs**

CSMs are responsible for managing the CTA for all at-risk accounts including:
- Create an at-risk CTA as soon as the risk is identified, using the appropriate playbook
   - `At-Risk` is the generic playbook that is applicable for most situations, but CSMs can select more specific playbooks relevant to the risk type
- In the CTA, update the `Risk Reason`
   - By default, the CTA will have `Other Risk Reason`; this needs to be changed to the appropriate reason why the customer is at risk, for example, do they not find value in our product, have they lost budget via layoffs, are we not engaged with them, etc.
- In the CTA, update the `Risk Impact`
   - This field does not appear when opening the CTA, and CSMs need to click back into the CTA details after creation to update it
- In the CTA, update `Stage Name` and `Competitor` fields if applicable

### Mitigation Strategies

See the [Risk Types, Discovery & Mitigation Strategies](/handbook/customer-success/csm/risk-mitigation) page.

## Customer Health Categories and Risks

Health primarily considers the business impact to GitLab by evaluating the delivery of value and outcomes to customers. The following guideline will provide Customer Success Managers (CSMs) guidance to choose the right health assessment for their customer account. The following are the categories to assess and associated risks with each.

1. **Product adoption and utilization**: There is a delayed, low, or materially reduced usage (i.e., drop in usage) as measured by license usage, features / use cases, product version (i.e., not adopting current versions - self-managed only), and/or GitLab stages. Value and outcome delivery to the customer misses expectations as defined by the customer. This may also be impacted by way the customer is using the product (i.e., processes, operations and/or policies) where the customer may not be leveraging GitLab best practices to maximize the value of the solution.
1. **Product experience**: Customer has enhancements or defect fixes that are necessary for a customer and have not been delivered. The risk is determined according to the criticality of the request, severity of the issues, and/or number of enhancements and defects. Missed expectations for feature release can also impact product experience.
1. **Customer engagement**: Customer contact(s) are not responsive, miss meetings and/or unwilling to engage in cadence calls or other engagements like [EBRs](/handbook/customer-success/csm/ebr/). This could indirectly mean the customer does not see value in the solution or the solution has been deprioritized.
1. **Executive sponsor or champion**: Sponsor or champion leaves the company, moves to a different part of the organization, and/or has reduced scope of influence.
1. **Customer sentiment**: The customer has expressed concerns and/or dissatisfaction with their experiences with GitLab (i.e., sales, professional services, support, product, etc.) through direct conversations, surveys (e.g., NPS), social media or other communication channels.
1. **Competitive threats**: Prior to or during the renewal process it is learned that competitors are in play and the result could be a downgrade or churn as the customer is considering alternatives.
1. **Other organizational factors**: The customer's business performance is materially impacted and declining. The company is acquired, merging with another company, divested or another structural change to customer's business.

## Health Assessment Guidelines

The items below serve as *guidelines* for the CSM to assess and record customer health and should consider where the customer is their lifecycle journey. Account health feeds into [open renewal opportunities](/handbook/customer-success/csm/renewals/#tracking-renewal-opportunity-health-and-risks).

Understanding how Gainsight calculates a measure score to be Red, Yellow, or Green: 

Gainsight scoring framework:
- Green: 75-100 points
- Yellow: 50-74 points
- Red: 0-49 points

[Link to Gainsight Calculation of Measure Group Scores and Overall Score](https://support.gainsight.com/Gainsight_NXT/05Scorecards/02Admin_Guides/Calculation_of_Group_Scores_and_Overall_Scores)

Calculation: ((Score * Weight) + (Score * Weight)... / (Max Potential Score * Weight)

To view the score, hover over the colored circle.
The weight is shown in the upper right corner of the metric. 

### Reporting and Viewing Health

Use the `Customer Health` (CSM Portfolio Dashboard) report to view the health of every measure for your customers in one single view.

To view Timeline entires where the CSM Sentiment was updated:

1. Go to Global Timeline
1. Filter by Sentiment = Green, Yellow, or Red
1. Apply any other specific filters (CSM Name, Timeline date, etc)


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

There might be well understood reasons within the account team why a customer is flagged as Yellow within the current phase of the customer lifecycle. If the CSM decides that corrective actions and follow up from team members outside of the CSM group is required the CSM must follow the [At-Risk Customer Process](/handbook/customer-success/csm/renewals/#at-risk-process) and flag the account as Yellow "Requires Triage".

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

- [ ] All options discussed in the triage issue and in at-risk reviews have been exhausted
- [ ] CSM discusses it with their manager and gets agreement on moving to `will churn`
- [ ] CSM opens a `Will Churn` issue ([`Will Churn` issue template](https://gitlab.com/gitlab-com/customer-success/account-triage/-/issues/new?issuable_template=Will%20Churn%20-%20ENT))
- [ ] CSM links from the triage issue to the newly created `Will Churn` issue and closes the triage issue
- [ ] Listed personas in the `Will Churn` issue provide feedback and approval
- [ ] SAE/AE marks the opportunity as `Will Churn`
- [ ] CSM updates the Lifecycle Stage in Gainsight C360 > Attributes > Lifecycle Stage to `Will Churn`

In line with GitLab's approach to blameless root cause analysis in both [Professional Services](/handbook/customer-success/professional-services-engineering/workflows/internal/root-cause-analysis.html) and [Engineering](/handbook/engineering/root-cause-analysis/), we follow a similar methodology in the form of a retrospective in the `Will Churn` issue to identify learnings from what went well and what didn't, what we could have done better to avoid this churn, and how we can change our approach in order to avoid future churn. This information is important and required to be included the issue in order to provide context to leadership prior to them approving. This retrospective and lessons learned should also be discussed in the next 1:1 between the CSM and their manager, as well as potentially lead to a handbook or process update shared with the broader team.

## Communication Guidelines

The following are guidelines on who to notify when an account is yellow or red. This includes the [update frequency for the triage issue](/handbook/customer-success/csm/renewals/index.html.md#update-frequency). Please make sure the following people are notified with the respective customer health ratings.

### Yellow Health Rating

- Account Team (i.e., Strategic Account Executive or Account Executive, Solution Architect)
- Regional CSM Manager
- CSM Director (all non-Public Sector customers) or Director of Customer Success Public Sector (for Public Sector customers)

### Red Health Rating

- Include the list above as well as…
- Area Sales Manager and Regional Director
- Vice President of Customer Success

## Gainsight

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

## GitLab Account Triage Project

An account risk issue should be created in the [Account Triage Project](https://gitlab.com/gitlab-com/customer-success/account-triage) if the customer health assessment is either yellow or red. These are also viewable in the [CSM Risk Account Issue Board.](https://gitlab.com/gitlab-com/customer-success/account-triage/-/boards/703769)

### Update Frequency

When an account is in triage, keep the triage issue updated as follows:

- **Red:** All next steps should have an associated date and the update frequency needs to be ahead of expiring due dates.  The minimum update frequency on a red account should be bi-weekly to ensure that usage stats are fresh and focus is not lost.
- **Yellow:** At a minimum monthly, ahead of pending due dates and as new information is available

If nothing of note has occured since the last update, indicate that as well as the next steps you are taking.

### Issue Template

When creating an issue in the [Account Triage](https://gitlab.com/gitlab-com/customer-success/account-triage) project, the default template will set up the details you should include. Follow the instructions laid out in the issue description by the template for what information should be documented in the issue.

#### Issue Labels

When creating triage issues, it's important to apply the correct labels to the issue, so that we can easily track, have a holistic view of the at risk accounts, and be able to triage regionally and/or by priority. It is expected for each issue to contain one of each of the below label categories. Please refer to the [issue template](#issue-template) for more details on how to use them.

##### Risk Labels

- `~HS::Green`: Green Health Rating
- `~HS::Yellow`: Yellow Health Rating
- `~HS::Red`: Red Health Rating

##### Region Labels

- `~US-WEST`
- `~US-EAST`
- `~EMEA`
- `~APAC`
- `~LACSM`
- `~Commercial`

##### Issue Classification Labels

- `~E&A` Expected and Avoidable
- `~E&U` Expected and Unavoidable
- `~U&A` Unexpected and Avoidable
- `~U&U` Unexpected and Unavoidable

##### Customer Success Risk Reasons

- `~risk::lack of adoption`
- `~risk::product experience`
- `~risk::lack of engagement`
- `~risk::loss of sponsor or champion`
- `~risk::customer sentiment`
- `~risk::other organizational factors`
- `~risk::lack of budget`
- `~risk::competition`
- `~risk::covid-19`

##### DevOps Stage Label

If the account is labeled with a Customer Success Risk Reason of "product experience",
CSMs are encouraged to add a DevOps stage label (i.e. `~devops::*`)
to the triage issue, and clearly identify any related issues that are blocking adoption or required
to improve the customer's product experience within the triage issue.

Identify the Product DRI by from our [product categories](/handbook/product/categories/#devops-stages)
page and ping them in the issue.
As the CSM responsible for the at-risk account, you are accountable for coordinating all resources.
Engage early and often with product and any other groups required to advocate for your customer's desired outcomes.

Because `devops::` labels are scoped; please choose the highest-impact stage label and apply it.

## Related Processes

[Customer Success Escalations Process](/handbook/customer-success/csm/escalations/)

