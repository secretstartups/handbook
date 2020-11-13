---
layout: handbook-page-toc
title: "Customer Health Assessment and Management"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [TAM Handbook homepage](/handbook/customer-success/tam/) for additional TAM-related handbook pages.

----
This page covers the factors to consider for customer health, guidelines for selecting the appropriate rating, communication guidelines, TAM responsibilities and instructions for the account triage issue creation.

## Customer Health Categories and Risks

Health primarily considers the business impact to GitLab by evaluating the delivery of value and outcomes to customers. The following guideline will provide Technical Account Managers (TAMs) guidance to choose the right health assessment for their customer account. The following are the categories to assess and associated risks with each.

1. **Product adoption and utilization**: There is a delayed, low, or materially reduced usage (i.e., drop in usage) as measured by license usage, features / use cases, product version (i.e., not adopting current versions - self-managed only), and/or GitLab stages. Value and outcome delivery to the customer misses expectations as defined by the customer. This may also be impacted by way the customer is using the product (i.e., processes, operations and/or policies) where the customer may not be leveraging GitLab best practices to maximize the value of the solution.
1. **Product experience**: Customer has enhancements or defect fixes that are necessary for a customer and have not been delivered. The risk is determined according to the criticality of the request, severity of the issues, and/or number of enhancements and defects. Missed expectations for feature release can also impact product experience.
1. **Customer engagement**: Customer contact(s) are not responsive, miss meetings and/or unwilling to engage in cadence calls or other engagements like [EBRs](/handbook/customer-success/tam/ebr/). This could indirectly mean the customer does not see value in the solution or the solution has been deprioritized.
1. **Executive sponsor or champion**: Sponsor or champion leaves the company, moves to a different part of the organization, and/or has reduced scope of influence.
1. **Customer sentiment**: The customer has expressed concerns and/or dissatisfaction with their experiences with GitLab (i.e., sales, professional services, support, product, etc.) through direct conversations, surveys (e.g., NPS), social media or other communication channels.
1. **Competitive threats**: Prior to or during the renewal process it is learned that competitors are in play and the result could be a downgrade or churn as the customer is considering alternatives.
1. **Other organizational factors**: The customer's business performance is materially impacted and declining. The company is acquired, merging with another company, divested or another structural change to customer's business.

## Health Assessment Guidelines

The items below serve as *guidelines* for the TAM to assess and record customer health and should consider where the customer is their lifecycle journey. Account health feeds into [open renewal opportunities](/handbook/customer-success/tam/renewals/#tracking-renewal-opportunity-health-and-risks).

### Green

Customer is very likely to renew and/or expand with no known or assumed risk of downsell or churn. Customer's experience: engagement, adoption and experiences are as expected or better than expected, delivering value and outcomes as appropriate the customer's stage in their journey. Examples:

- Progressive adoption of GitLab use cases as defined by their success plan, considering their stage in their journey
- Regular communication and engagement in meetings
- Positive feedback on the product and experience and/or high scores on NPS surveys
- Leveraging support services as defined by creation of tickets (1-5 tickets per month)
- Interest in providing feedback and engaging with GitLab through other programs and events (e.g., Commit, CAB)

### Yellow

Potential risk or significant lack of information leading to uncertainty. Indicates challenges to overcome, with a lower risk of churn or downsell. Customer's experience: engagement, adoption and/or experiences are lower than expected, risking GitLab's ability to deliver customer value and outcomes and/or drive future revenue growth. Examples:

- Slow, delayed, or blocked adoption of GitLab use cases in support of the customer's success plan
- Customer lacks definition of goals or success criteria
- High number of support cases, critical / blocker product issue(s), or poor experience based on the customer's expectations
- Lack of engagement, responsiveness or participation in meetings and/or events
- Changes of roles (e.g., sponsor or champion), organizational change or acquisition
- Lack of adoption of releases (self-managed only) where they are more than a major release behind the current release
- Not leveraging technical support services or has a large number of cases and/or high severity cases (6-15 tickets per month, or no ticket(s) opened after being advised by the TAM that Support is the best path to resolution for an issue(s))
- Poor experiences with Support, Professional Services or another part of GitLab
- Working with a single contact at a company (single-threaded).

### Red

Specific, known risks to account retention or upcoming opportunity, or overwhelming lack of information, such as unresponsiveness leading up to renewal. Customer's experience: engagement, adoption and/or experiences are significantly lower than expected where issues are blocking GitLab's ability to deliver expected value, outcomes, or positive experiences as defined by the customer. 
Examples:

- Product does not deliver expected value or outcomes as defined by success plan
- No or low product adoption with no progression
- Communication of poor sentiment
- Lack of any engagement
- Loss of sponsor or champion due to change of role or organization or acquisition
- Significantly poor experiences with Support or Professional Services
- Significant number of support tickets (16+ per month)

## Communication Guidelines

The following are guidelines on who to notify when an account is yellow or red. This includes the [update frequency for the triage issue](#update-frequency). Please make sure the following people are notified with the respective customer health ratings.

### Yellow Health Rating

- Account Team (i.e., Strategic Account Leader or Account Executive, Solution Architect)
- Regional TAM Manager
- TAM Director (all non-Public Sector customers) or Director of Customer Success Public Sector (for Public Sector customers)

### Red Health Rating

- Include the list above as well as…
- Area Sales Manager and Regional Director
- Vice President of Customer Success

## Responsibilities

The TAM is responsible for coordinating with all relevant parties to develop a plan to address the risks. Typically, this will involve the account team and communication group (above), as well as other resources such as Product Managers, marketing, executive or engineering resources meeting to develop and deliver the plan to address the risks. The TAM then drives execution of the strategy and is responsible for regular updates to the triage issue. When the risks have been addressed bringing the customer to a healthy / green status, the triage issue can be closed.

### Mitigation Strategies

- **Failure to upgrade.** Is the customer more than a major release behind? Work with the customer to explain the new features and security updates of the current version of GitLab and address any internal technical limitations that have prevented upgrades. Develop an upgrade plan with the customer if appropriate.

### Gainsight

TAMs update TAM Sentiment in determining overall account health. The guidelines are as follows:

- **TAM Sentiment**: Qualitative measure that the TAM updates to indicate their perceived sentiment of the customer. This should consider all the factors mentioned above and measured by the health assessment (green, yellow, red) criteria

The TAM Sentiment score will be updated each time you [log a Timeline activity](handbook/customer-success/tam/gainsight/timeline/) and select a value from the TAM Sentiment dropdown. Once you have logged the activity to Timeline, Gainsight will update the value of the TAM Sentiment scorecard measure and display the notes from the Timeline activity on the scorecard. 
**Note:** The rule that sets the scorecard value runs every 2 hours

You will receive CTAs automatically to update health scores if they are out of date (monthly for Enterprise accounts and quarterly for Commercial).

There are a number of [enablement videos](/handbook/customer-success/tam/gainsight/#videos) you can watch to learn how to update customer health assessment and log activities that affect that assessment.

#### Gainsight Scorecard Attributes and Calculations

Health score criteria is either manually or automatically applied to determine the overall measure. If an individual measure is missing, the weighting is redistributed to the completed measures.

##### Enterprise 

| Category | Description | Method | Calculation | Weighting |
| ------------------------------------------------------------ | ------------------------------------------------------------ | --------- | ------------------------------------------------------------ | --------- |
| Engagement | Based on recency of last call/meeting with the customer | Automatic | - Green: <= 35 days <br>- Yellow: > 35 days and <= 60 days <br>- Red: > 60 days | 10% |
| ROI | Does the customer have a Success Plan that has objectives and notes? | Automatic | - Green: Active Success Plan with 1+ objective and Strategy/Highlights <br>- Yellow: Draft Success Plan OR Active Success Plan with no objectives or Strategy/Highlight information <br>- Red: No Success Plan | 10% |
| Support Issues | Assess the health of our support interactions. Current version is MVC with [v2 coming](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/issues/1202). | Automatic | - Green: 1-5 tickets/month <br>- Yellow: 5-15 tickets/month <br>- Red: \>15 tickets/month | 5% |
| [TAM Sentiment](/handbook/customer-success/tam/health-score-triage/#gainsight) | Qualitative measure that the TAM updates to indicate their perceived sentiment of the customer. | Manual/Automatic | TAM manually determines red/yellow/green | 75% |



##### Commercial

| Category | Description | Method | Calculation | Weighting |
|--------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------|
| Engagement | Based on recency of last call/meeting with the customer | Automatic | Mid-Market >=50k ARR:<br>- Green: <= 30 days <br>- Yellow: > 30 days and <= 60 days<br>- Red: > 60 days<br><br>Mid-Market <50k and >=20k ARR:<br>- Green: <= 90 days<br>- Yellow: > 90 days and <= 120 days<br>- Red: > 120 days | 10% |
| ROI | Does the customer have a Success Plan that has objectives and notes? | Automatic | - Green: Active Success Plan with 1+ objective and Strategy/Highlights<br>- Yellow: Draft Success Plan OR Active Success Plan with no objectives or Strategy/Highlight information<br>- Red: No Success Plan | 10% |
| Support Issues | Assess the health of our support interactions. Current version is MVC with [v2 coming](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/issues/1202). | Automatic | - Green: 1-5 tickets/month<br>- Yellow: 5-15 tickets/month<br>- Red: \>15 tickets/month | 5% |
| [TAM Sentiment](/handbook/customer-success/tam/health-score-triage/#gainsight) | Qualitative measure that the TAM updates to indicate their perceived sentiment of the customer. | Manual/Automatic | TAM manually determines red/yellow/green | 75% |


#### Triage CTA

When an account's health status changes to something other than [Green](#green), it may warrant creating a [Gainsight CTA](/handbook/customer-success/tam/gainsight/#ctas). The following criteria determine the creation of the triage CTA:

- [Red](#red): The TAM will create a triage CTA
- [Yellow](#yellow): the TAM will determine whether the CTA should be created, based on the [severity of the risk](#yellow).

To manually create the triage CTA, perform the following steps:

- Within the account, go to the Cockpit.
- Create a new CTA, and select "Risk" as the type.
- Choose the triage playbook.

Automatic triage CTA creation is triggered by the Gainsight rule `CTA - Create Triage CTA when health becomes Red` the next day if a Triage CTA and/or playbook has not yet been created.

### GitLab Account Triage Project

An account risk issue should be created in the [Account Triage Project](https://gitlab.com/gitlab-com/customer-success/account-triage) if the customer health assessment is either yellow or red. These are also viewable in the [TAM Risk Account Issue Board.](https://gitlab.com/gitlab-com/customer-success/account-triage/-/boards/703769)

#### Update Frequency

When an account is in triage, keep the triage issue updated as follows:

- **Red:** Weekly, and as new information is available
- **Yellow:** Biweekly, and as new information is available

If nothing of note has occured since the last update, indicate that as well as the next steps you are taking.

#### Issue Template

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
- `~LATAM`
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

## Related Processes

[Customer Success Escalations Process](/handbook/customer-success/tam/escalations/)
