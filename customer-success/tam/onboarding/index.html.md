---
layout: handbook-page-toc
title: "Customer Onboarding"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [TAM Handbook homepage](/handbook/customer-success/tam/) for additional TAM-related handbook pages.

---

Customer Onboarding is the [beginning phase of the customer lifecycle](/handbook/customer-success/vision/#lifecycle-stages).

## Overview

The customer onboarding phase is critical to getting a customer started on a successful journey with GitLab. This is our opportunity to ensure the customer achieves value and success from the start of their GitLab usage.

## Onboarding steps

The onboarding process should begin when the [customer opportunity reaches stage "5-Negotiating"](/handbook/sales/field-operations/gtm-resources/#opportunity-stages) in order to introduce the TAM while we have high-touch engagement to close the opportunity. Once an [opportunity that will qualify a customer for TAM alignment](/handbook/customer-success/tam/services/#tam-alignment) reaches stage 5, a [Gainsight CTA will be created](#cta-creation-criteria) for the TAM Manager to assign the customer to a TAM. The assigned TAM should then start the onboarding process with the rest of the [account team](/handbook/customer-success/account-team/).

⚠️ **NOTE:** Please review the [time to value metrics](#time-to-value-metrics) for target completion timeline.

### Internal transition

The first part of onboarding is to do a review of the customer with the [account team](/handbook/customer-success/account-team/). The SAL/AE and SA should meet with the TAM to review the Command Plan, what the customer is trying to solve for, and anything else that's relevant for the TAM to know about what motivated the customer to purchase GitLab.

As part of this discussion, the SAL/AE and TAM should [arrange an introduction of the TAM to the customer](#kickoff-call). Since the SAL/AE has the relationship with the customer, they are in the best position to facilitate that introduction and help clarify the role of the TAM.

### TAM intro email

The TAM should send the intro email that describes their role and value to the customer, using the email template [provided in Gainsight as part of the onboarding CTA](#cta-content-and-process). This should be completed prior to the [kickoff call](#kickoff-call), and is typically done after the [internal transition meeting](#internal-transition).

### Kickoff call

⏰ [**Target time:** within 14 days of starting onboarding](#time-to-engage)

The kickoff call is the first conversation between the TAM and the customer. This is when the TAM describes their role to the customer, and starts their own discovery process to fill in details they don't have from the [internal transition](#internal-transition) in order to start an effective engagement and create a [success plan](/handbook/customer-success/tam/success-plans/). 

A [kickoff slide deck](https://docs.google.com/presentation/d/1RcMrN-TQxQt-tEaX1J2EcJATJQfBunStXGTjhGu8CDA/edit?usp=sharing) is provided as part of the [onboarding CTA](#cta-content-and-process), to help drive the discussion about the role of the TAM. The TAM should review and revise this deck in advance of the kickoff call based on what they already know about the customer, and what they are still looking to understand.

One of the most important points of discussion for the kickoff call is [establishing the cadence call](/handbook/customer-success/tam/cadence-calls/). The TAM should have the cadence call schedule determined with the customer by the end of the kickoff call, and a plan for the [first cadence call](#first-cadence-call).

### Success plan development (document key attributes)

Once the [kickoff call](#kickoff-call) is complete, the TAM should have sufficient information to [start developing the success plan](/handbook/customer-success/tam/success-plans/). This is a critical step in successful onboarding and long-term customer engagement.

⚠️ **NOTE:** While the TAM should be able to create an effective first iteration of the success plan at this point in onboarding, the [success plan is a living document](/handbook/customer-success/tam/success-plans/#success-plans-are-living-documents), so the TAM should continue iterating the success plan throughout the customer lifecycle.

Please review the [success plan handbook page](/handbook/customer-success/tam/success-plans/) for more details on how to do this.

### First cadence call

⏰ [**Target time:** Within 35 days of starting onboarding](#time-to-onboard)

The first [cadence call](/handbook/customer-success/tam/cadence-calls/) is typically the TAM's second conversation with the customer, and is when we can start to deliver value through our efforts as a trusted advisor. In addition to the [general recommendations for a cadence call](/handbook/customer-success/tam/cadence-calls/), some things to cover on the first cadence call include:

- The [success plan](#success-plan-development-document-key-attributes) the TAM has created
  - Verify strategic objectives
  - Ascertain priority of objectives
  - Review the proposed roadmap and timeline to deliver on the objectives
- Initial guidance and best practices for the priority items that may have been discussed during the [kickoff call](#kickoff-call)

## Time to Value Metrics

The [Time to Value KPIs](/handbook/customer-success/vision/#time-to-value-kpis) are developed to help us understand key facts about how we are serving our customers, and how we could improve. Below are the processes for how TAMs should update and track their Time to Value KPIs. For definitions, please see [Time to Value KPIs](/handbook/customer-success/vision/#time-to-value-kpis). For data visualization, see [Customer Onboarding Dashboard](https://gitlab.gainsightcloud.com/v1/ui/home#58502af5-e7c2-4cbd-8645-d612b74424ff).

### Time to Engage

**Goal:** 14 days

Time to Engage is calculated by taking the days between Salesforce's `Original Contract Date` and subtracting the date of the first Timeline call or meeting entry. Example: Original Contract Date is 2020-01-01 and the first call was 2020-01-12, then it would be 11 days.

- Required TAM action: log the first Timeline entry (Call or Meeting)

### Time to Onboard

**Goal:** 35 days

Time to Onboard is the difference between `Original Contract Date` and the date the Onboarding CTA is closed. For example, the `Original Contract Date` is 2020-08-15 and the Onboarding CTA was closed on 2020-09-18, the Time to Onboard would be 34 days.

- Required TAM action: Close the Onboarding CTA

### Time to First Value

**Goal:** 90 days

Time to First Value is calculated by taking the `Original Contract Date` and subtracting `First Value Date`, which is a manual input on the customer's Attributes section of the C360.

- Required TAM action: update the `First Value Date`

## Onboarding delays

Given the importance of onboarding to the customer's journey and our ability to drive success, we want to move through it as quickly as possible. If onboarding is delayed, either because of something on the GitLab side or the customer side, we need to document the reasons and take appropriate action.

### Document the delay

The details around why onboarding is delayed should be documented in the following places:

- Onboarding CTA comments field
- Update timeline entry, with a [revised TAM Sentiment](/handbook/customer-success/tam/health-score-triage/#health-assessment-guidelines)

### Risk and triage

If the delay is caused by the customer (e.g. disinterest, lack of engagement/"going dark") then the [account has risk](/handbook/customer-success/tam/health-score-triage/#health-assessment-guidelines) and should be flagged.

- Add an Update timeline entry with [updated TAM Sentiment](/handbook/customer-success/tam/health-score-triage/#health-assessment-guidelines)
- [Open a triage issue](/handbook/customer-success/tam/health-score-triage/#gitlab-account-triage-project)

## Gainsight for Onboarding

### CTA Creation Criteria

[TAM-assigned accounts](https://about.gitlab.com/handbook/customer-success/tam/services/): When a customer signs at or reaches the TAM-assigned threshold, a [Call To Action (CTA)](/handbook/customer-success/tam/gainsight/ctas) is triggered within Gainsight.

[Onboarding Pilot](https://gitlab.com/groups/gitlab-com/customer-success/-/epics/71): We are also piloting in Q4 of FY21 an onboarding experience for a cohort of customers in the Commercial book of business.  For these customers, a [Call To Action (CTA)](/handbook/customer-success/tam/gainsight/ctas) is triggered within Gainsight

For both use cases above, a CTA is created for the TAM Manager if the TAM field is not populated. Once populated, an Onboarding CTA is kicked off for the TAM. The Onboarding CTA creates a Playbook with guided steps for the next several weeks.

### CTA Content and Process

The CTA guides the TAM through the initial customer engagement.  The tasks and associated content are as follows:

1. Complete internal transition with the SAL/AE and SA, covering the Command Plan, adoption goals and priorities and stakeholders
1. Send TAM Welcome Email introducing themselves and the role of the TAM (TAM sends, template in Gainsight)
1. Hold Kick Off Call Using [Kick Off Deck](https://docs.google.com/presentation/d/1RcMrN-TQxQt-tEaX1J2EcJATJQfBunStXGTjhGu8CDA/edit?usp=sharing)
1. Document Customer Attributes in Gainsight
1. Hold 1st Cadence Call Focusing on Future Growth
1. Send Customer Satisfaction Survey & Swag Email (TAM sends, template in Gainsight)

Use the Gainsight TAM Dashboard and the Customer Onboarding Dashboard to manage customers currently in Onboarding.

Please also review our [TAM and Support interaction](/handbook/customer-success/tam/support) page as well as our [Support](/handbook/support) handbook section to assist with sharing support information with customers.

While an Onboarding CTA is an automated process, it can also be created manually by going to the Cockpit, clicking `+ CTA` and then choosing the Onboarding playbook.

### Gainsight C360 Fields

During Onboarding, the TAM should also review the fields in the C360 to create a full picture. Here are a few examples:

1. Fields in the Attributes section
1. TAM Sentiment
1. [Stage Adoption](/handbook/customer-success/tam/stage-adoption/)
1. [Customer Deployment Types](/handbook/customer-success/tam/gainsight/deployment-types/)
