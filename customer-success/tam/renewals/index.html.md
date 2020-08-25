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



A key part of the customer relationship lifecycle is the renewal phase. TAMs must proactively track the renewal dates of their customers and align with their Strategic Account Manager (SAL) or Account Executive (AE) to ensure that a customer renewal takes place.

## Timeframe

Four months before the renewal date for a customer, a CTA will trigger in Gainsight, prompting the TAM to reach out to their aligned account team to discuss strategy and next steps for the renewal. The expectation is that the team will meet internally and speak with the customer regarding the renewal within 30 days, leaving 90 days to run the renewal process.

## Renewal Playbook Steps

1. Renewal Review: Internal sync with SAL/AE and potentially SA as defined below
1. Renewal Question
1. Renewal Plan


## Renewal Review Meeting - Internal Sync

A “Renewal Review” meeting should have the following attendees:

- Strategic Account Leader
- Technical Account Manager
- Solutions Architect (if an upsell is being discussed)


The agenda of a “Renewal Review” meeting should include at least the following:

 1. Review of the customer's business objectives as documented in the success plan, and progress/completion of these goals
 1. Review of the customer health score and any changes over the past few months - changes can be seen in the Timeline in Gainsight.
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

If it is decided that the TAM will ask the initial renewal question, this should be a ['soft'](https://www.mbaskool.com/business-concepts/marketing-and-strategy-terms/7214-soft-fact-questions.html) question to see if there is any risk in the account and to provide time to mitigate any risk.

## Renewal Plan

The action items created from the “Renewal Review” meeting should be incorporated into the TAM customer cadence meetings and into any pending QBRs. The actual renewal plan will be documented by the SAL or AE in Salesforce.

## Tracking Renewal Opportunity Health and Risks

For greater predictability across the customer base for renewal, upselling, downgrade, and churn, tracking Opportunity Health and Risks is incorporated into Gainsight. This process creates tighter collaboration with the overall CRO Organization and the rest of GitLab.

The [Renewal CTA](#timeframe) will include a step for the TAM to update the Opportunity information within Gainsight. The TAM can and should update the Opportunity Health and Risks throughout the renewal when something changes or because of new information.

To access this information, TAMs should either:
* On the Renewal CTA, click the “1” next to “Call to Action” and select “New GS Opportunity”, OR
* On the C360, scroll down to the Opportunities section, find the Opportunity to edit and click the pencil icon to edit the relevant fields

This can then be discussed with the [Account Team](/handbook/customer-success/account-team/) during account reviews.


### Fields

##### Opportunity Health

Similar to Account Health, the TAM will set the health of the Opportunity. Nuances exist between Opportunities and Account, such as if a customer is happy with GitLab (Account) but is considering downgrading their renewal (Opportunity), or if there are two distinct Opportunities. However, the [Health assessment guidelines](/handbook/customer-success/tam/health-score-triage/#health-assessment-guidelines) are similar. Opportunity Health should be thought of in this way:

* Green - very likely to renew at or above current ARR
* Yellow - some risk of downgrade or churn
* Red - high probability of downgrade or churn

##### Risk Reason
* AzureDevOps - competitive risk due to MSFT
* Competition - risk of loss to a competitor
* Customer Sentiment - customer is unhappy with GitLab
* Lack of adoption - customer has not deeply adopted GitLab
* Lack of budget - customer is unlikely to have budgetary coverage for maintaining the current GitLab license
* Lack of engagement - customer is nonresponsive or rarely engages
* Loss of sponsor or champion - our key contact(s) left the company
* Other organizational factors - other company issues that contribute to a blocker for the renewal
* Product experience - poor experience with the GitLab product


##### Risk Type
* Customer Churn - fully churn the account
* Tier Downgrade - move down tiers
* Seat Churn - reduce license seat count
* Customer Sentiment (Impact Unknown) - customer is unhappy and the impact isn’t quantified

##### TAM Notes
This is where the TAM can enter notes on this specific opportunity and will be saved to the Opportunity record.
