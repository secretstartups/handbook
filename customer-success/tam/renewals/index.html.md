---
layout: handbook-page-toc
title: "Customer Renewal Tracking"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [TAM Handbook homepage](/handbook/customer-success/tam/) for additional TAM-related handbook pages.

Link to [Commercial Renewal Process](/handbook/customer-success/comm-sales/renewals/)

## Overview

A key part of the customer relationship lifecycle is the renewal phase. TAMs must proactively track the renewal dates of their customers and align with their Strategic Account Manager (SAL) or Account Executive (AE) to ensure that a customer renewal takes place.

## Timeframe

Six months before the renewal date for a customer, a CTA will trigger in Gainsight to prompt the TAM to reach out to their aligned account team to discuss strategy and next steps for the renewal. The expectation is that the team will meet internally and speak with the customer regarding the renewal within 60 days. This leaves four months to execute any renewal strategy, such as an account triage.

## Renewal Playbook Steps

1. Renewal Review: Internal sync with SAL/AE and potentially SA as defined below
1. Renewal Question
1. Renewal Plan
1. Update `TAM Sentiment`

Once the above tasks are complete, the playbook and CTA can be closed out as all actionable items have been performed.

## Renewal Review Meeting - Internal Sync

A “Renewal Review” meeting should have the following attendees:

- Strategic Account Leader
- Technical Account Manager
- Solutions Architect (if an upsell is being discussed)


The agenda of a “Renewal Review” meeting should include at least the following:

 1. Review of the customer's business objectives as documented in the success plan, and progress/completion of these goals
 1. Review of the customer health score and any changes over the past few months - changes can be seen in the Timeline in Gainsight.
 1. Review usage data to identify low/high adoption of licenses and use cases to identify risks or expansion opportunities
 1. Review of support issues and the underlying reasons for any escalations.
 1. Review of high priority feature requests.
 1. Review of the customer's utilization of the product.
 1. Review of any known risk in the account
 1. Agree who will ask the renewal question (s) of the customer

From this meeting a set of action items should be created to improve customer utilization and satisfaction with the product. These items can include:

 1. **Architecture review** with Professional Services to address any underlying architectural weaknesses that could have contributed to an “Urgent” support escalation.
 1. **Product utilization review** to explore GitLab functionally that the customer is not using but could benefit from.
 1. **Roadmap review** to show the customer features that will be added to the product in the near term that may be valuable to them. This could include a discussion with Product Management for strategic customers.

## Renewal Question

The TAM will ask the initial renewal question, this should be a ['soft'](https://www.mbaskool.com/business-concepts/marketing-and-strategy-terms/7214-soft-fact-questions.html) question to see if there is any risk in the account and to provide time to mitigate any risk.

## Renewal Plan

The action items created from the “Renewal Review” meeting should be incorporated into the TAM customer cadence meetings and into any pending QBRs. The actual renewal plan will be documented by the SAL or AE in Salesforce.

## Tracking Account Health and Risks

For greater predictability across the customer base for renewal, upselling, downgrade, and churn, tracking Account Health and Risks is incorporated into Gainsight. This process creates tighter collaboration with the overall CRO Organization and the rest of GitLab. Note: this was formerly at the Opportunity level instead of Account level. It was moved to Account to be long-term oriented and as Sales owns the Opportunity.

To learn the full process, watch the [At-Risk Customer Process](https://youtu.be/MQqfL3WT1zo) video.  

See the [At Risk Customers Dashboard](https://gitlab.gainsightcloud.com/v1/ui/gsdashboard#/8e0f5cb6-c8e1-4b06-8cd2-92af72d76615) for more information.

### At-Risk Process

TAMs can use Red, Yellow, and Green to reflect their sentiment of a customer's contraction or churn risk. Below is a brief explanation about how to think about colors in the At-Risk process. Links provide more detailed information.

- [Green](https://about.gitlab.com/handbook/customer-success/tam/health-score-triage/#green) - Healthy customer, no risk of contraction or churn. No risk follow-up required.
- [Yellow](https://about.gitlab.com/handbook/customer-success/tam/health-score-triage/#yellow) - Some low risk, or some admin hygiene needed. No risk follow-up required.
- Yellow with Requires Triage - Higher level of risk, including product risk. Indicates that TAM has started corrective actions on an account and follow - up from team members outside of the TAM group is needed, but it is not red yet.
- [Red](https://about.gitlab.com/handbook/customer-success/tam/health-score-triage/#red) - High risk of contraction or churn. Indicates that At-Risk Process is required.


![GitLab At-Risk Customer Process](images/TAM_AtRisk_Customer_Process.jpeg)

#### When a TAM has determined an account is red:

1. **Log Timeline: Risk Update**: log `Risk Update` Timeline post marking TAM Sentiment as Red and any context for the at-risk account
1. **Create CTA**:
   1. Immediate: TAM will create an `At-Risk` CTA to track the high level risks, OR
   1. Overnight: Gainsight will auto create the `At-Risk` CTA overnight for the TAM
1. **Update CTA**: TAM to update Risk Type and Risk Reason dropdown fields
1. **Monthly Timeline Update: Risk Update**: TAM logs a `Risk Update` Timeline post. Update CTA as necessary
1. **At-Risk Conclusion**:
   1. Customer is won back:
      1. Log Timeline `Risk Update` type for TAM Sentiment as Green and final notes
      1. Change customer Lifecycle Stage to Adopting
      1. Close out CTA with success criteria (Closed-Won, win reasons)
   1. Customer is lost:
      1. Log Timeline `Risk Update` type with final update
      1. Change customer Lifecycle Stage to: Will Churn for a churning customer and Adopting for downgrade customer
      1. Close out CTA with success criteria (Closed-Lost, loss reasons)

**Tips**:
1. **Keep the CTA open until fully resolved**. Resolved can be the customer is won back, contraction has happened, or they will churn
1. Use `closed-won` when we saved the customer AND had a flat or positive net ARR opportunity
1. Use `closed-lost` when we churned the customer or had contraction

This can then be discussed with the [Account Team](/handbook/customer-success/account-team/) during account reviews.


#### When a TAM has determined an account is yellow and requires triage:

1. **Log Timeline: Risk Update**: log `Risk Update` Timeline post marking TAM Sentiment as Yellow and any context for the at-risk account, and checks the `Requires Triage` box. 
1. **Create CTA**:
   1. Immediate: TAM will create an `At-Risk` CTA to track the high level risks, OR
   1. Overnight: Gainsight will auto create the `At-Risk` CTA overnight for the TAM
1. **Update CTA**: TAM to update Risk Type and Risk Reason dropdown fields
1. **Monthly Timeline Update: Risk Update**: TAM logs a `Risk Update` Timeline post. Update CTA as necessary
1. **At-Risk Conclusion**:
   1. Customer is won back:
      1. Log Timeline `Risk Update` type for TAM Sentiment as Green and final notes
      1. Change customer Lifecycle Stage to Adopting
      1. Close out CTA with success criteria (Closed-Won, win reasons)
   1. Customer is lost:
      1. Log Timeline `Risk Update` type with final update
      1. Change customer Lifecycle Stage to: Will Churn for a churning customer and Adopting for downgrade customer
      1. Close out CTA with success criteria (Closed-Lost, loss reasons)

This can then be discussed with the [Account Team](/handbook/customer-success/account-team/) during account reviews.

### Fields

##### Account Health

When a TAM considers an account at-risk of contraction or churn, they should set the Account's `TAM Sentiment` to **red**. From there, the TAM can create an at-risk CTA on the account, or Gainsight will auto-create it during the nightly sync (within 24 hours). 

##### Risk Type
* **Customer Churn** - fully churn the account
* **Tier Downgrade** - move down tiers
* **Seat Churn** - reduce license seat count
* **Customer Sentiment** (Impact Unknown) - customer is unhappy and the impact isn’t quantified
* **Competitor** - any competitive intelligence we might be up against
* **Stage Name** - stage impact, for example, product deficiencies, direction, or needs.

##### Risk Reason
* **Lack of adoption** - Customer never adopted the product or specific features so they did not get value. This can be because of organizational silos or lack of internal resources. If they didn't adopt because they didn't see / experience value, it should be Product Gap
* **Product Value / Gaps** - Prospect or customer used the product and features (i.e., trial, POV, or purchased product), but did not see the value. The product did not meet requirements of the customer. This can also be a prospect where they did not experience perceived value
* **Product Quality / Availability** - Prospect or customer used the product and features (i.e., trial, POV, or purchased product) though they did not meet the prospect or customer's needs or expectations. This can be defects, poor performance, or uptime/availability issues. Includes both self-managed and SaaS products
* **Lack of Engagement / Sponsor** - We lost or were never able to get engagement with the prospect or customer team. The champion / sponsor left, changed responsibility, or became unresponsive. We were never able to re-establish connection with a new sponsor or champion
* **Loss of Budget** - The prospect or customer lost budget due to business contraction, change of priorities, reduction of employees, or other. This was not a competitive loss
* **Corporate Decision** - Due to management decision or policy, the prospect or customer chose a different product but not because of product gaps, adoption, etc. This would be a top-down decision (e.g., ELA, decision to commit to a single provider)
* **Other** - other company issues that contribute to a blocker for the renewal
 
### Manually Creating At-Risk CTA

**CTA creation steps**
1. In the Cockpit, click **+ CTA**
1. Title it (e.g., "At-Risk CTA")
1. Under Type select "Risk"
1. Under Reason select the appropriate reason (See reason codes above)
1. Under Playbook select "Account Triage"
