---
layout: handbook-page-toc
title: Customer Success Escalations Process
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [CSM Handbook homepage](/handbook/customer-success/csm/) for additional CSM-related handbook pages.

- - -

## Background:
Escalations can take at least two different forms:

1.  Account Escalation.  This occurs when the customer expresses or a GitLab team member identifies that a customer is facing a challenging situation that may or may not relate to a specific support ticket.  

2.  Support Ticket Attention Requests (STAR).  This occurs when an open support ticket is deemed moving too slowly. 

The purpose of this handbook entry is to describe the process for account escalations.  Please see the [Support Ticket Attention Requests](/handbook/support/internal-support/support-ticket-attention-requests.html) for details on how to request a support ticket escalation. 

## Objective

Define the process for managing account escalations and define a framework for communications, activities, and expectations for customer escalations.

## Scope

This process addresses critical and high escalations for Strategic customers. This process can also apply to other segments if a strategic partnership or relationship exists. Any GitLab team member can escalate an account on behalf of the customer.

## Definitions of Severity Levels

| Severity Level | Description | Cadence | Levels of Involvement |
| -------------- | ----------- | ------- | --------------------- |
| Critical | Major issue(s) significantly impact customers' ability to deploy or use a solution, risk loss of or use of a solution, high risk loss of a customer or significant contraction, or significant risk to the relationship and brand. | Daily | VP of Sales, Product, CRO, CEO, VP of Customer Success, Global/PubSec CSM Leader |
| High | Major issue(s) significantly impact a customer's ability to deploy or use a solution, risking current adoption, risk of loss of customer or contraction, future growth on the account, and damage to the relationship. | Multiple times per week | VP of Sales, Product, CRO, CEO, VP of Customer Success, Global/PubSec CSM Leader |
| Medium | Issue(s) impact a customer's ability to deploy or use the product, risking current adoption and renewal. | Weekly to Bi-weekly | Global/PubSec CSM Leader |
| Low | Issue(s) impacting a customer's ability to deploy or use the product, risking customer value realization, timeline, customer satisfaction, and adoption levels. | Standard Communication | Regional CSM Manager, Account Manager |

- Cadence refers to the cadence of internal and external meetings and communications to the customer.
- Level of involvement defines scope of internal communication and awareness. Others can be included based on the type of issues involved.

### Escalation DRI

Based on the level of the escalation, the DRI for the escalation will be:

1. Support for low or medium-level escalations
2. The CSM for high and critical escalations that are **outside of a professional services project**, 
3. The Professional Services Project Manager for any escalation during/as a part of a professional services project. 

At the beginning of the escalation, the DRI must be determined - the DRI owns the following responsibilities and key steps:

- Overall articulation of the approach to resolution, including ensuring the plan and approach is understood
- Coordination of internal GitLab and customer resources to drive troubleshooting and resolution of the issue
- Management of customer and internal communications, both async and synchronous 
- Ownership of next steps, ensuring these are determined, communicated clearly with appropriate timelines to meet the level of urgency

### Critical and High-Level Escalations

- The DRI is responsible for managing the account engagement (not the ticket), including:

   - Management of internal team and customer meetings for follow-up activities. 

     - Note: To ensure the DRI does not slow the resolution of issues, the DRI doesn't need to be in all meetings (e.g., technical troubleshooting with the customer and support/development).
   - Driving and coordinating the escalation process internally and with the customer, including associated communications and executive-level meetings.
   - Developing and maintaining the escalation document and supporting account documents.
   - Acting as an escalation point for customer-related issues (e.g., delayed response, open actions, non-compliance installation or product use, etc.)
   - Developing the business case justification and escalation to Product for escalations related to enhancement requests
   - Posting a daily update to the dedicated escalated customer Slack channel to ensure all parties are kept updated

- Support Engineering is responsible for:

   - Collaborating with technical resources (e.g., Development, Quality Assurance, SREs, and Support Engineering staff) to drive resolution of the technical issues
   - Managing the 24x7 incident resolution and escalation process (i.e., Support Engineering, SRE, Development)
   - Supporting executive and customer calls (as needed)

### Medium and Low-Level Escalations

- Support Engineering is responsible for managing Low and Medium level escalations, leveraging other teams (e.g., Customer Success Managers (CSMs), Engineering) as needed.
- Support Engineering should inform the CSM of the escalation if a CSM is assigned.
- The CSM is responsible for managing any account-related issues (e.g., delayed response, open actions, non-compliance installation or product use, etc.) and coordinating with any GitLab executives (e.g., egroup) or senior leadership to address account concerns.

### What's the difference between an account escalation or an incident escalation?

- This page describes the account level risk meaning the customer impacting issues could be a single incident or an aggregation of issues. The assessment considers impact to the customer, risk to future business with that customer, and GitLab brand.
- Technical Support is ultimately accountable for driving resolution to the support case, including escalation to Engineering, Security, and/or Infrastructure teams.  Incident escalation processes should be leveraged for a single incident / support case. 


- [Declare a GitLab.com Incident](/handbook/engineering/infrastructure/incident-management/#report-an-incident-via-slack) if you suspect a widespread issue on GitLab.com
- [Escalate an individual support ticket to Support Management](/handbook/support/internal-support/support-escalations.html) for cases with context that necessitate they should be handled outside of standard priority order.
- Have the customer [trigger Emergency Support](https://about.gitlab.com/support/#how-to-trigger-emergency-support) for S1/instance down issues to connect directly with the Support Engineer on-call.
   - You can also [page the on-call support manager](/handbook/support/on-call/#paging-the-on-call-manager) in cases where you've received word that a customer attempted to raise an emergency, but the on-call engineer was not paged. 
- This page outlines the additional support and operational procedures for the varying levels of account escalation.

## Initiating, Managing and Closing an Escalation

The following steps are to be taken by the escalation DRI:

### Opening the Escalation

For Critical and High-Level escalations, create an escalation document using the [Escalation Tracker Template](https://docs.google.com/document/d/1DFW9WDigDZTRQlArqvyaLl_GcYi5lwsxKKKtcjB49s0/edit#) (internal GitLab access only). 

1. Copy and save the document for the individual customer and replace (CUSTOMER) with the customer name, complete the required fields
2. Create a temporary slack channel to facilitate communication internally at GitLab. This channel will remain open until the escalation is closed and should be listed in the escalation document. Name the channel #a_customername_escalation and ensure it is a public channel so that relevant parties can be easily added/find the channel. 
3. Post the escalation document and the name of the temporary slack channel into the #escalated_customers. The posting to this channel should occur:

   - when the escalation is identified and created
   - when the escalation is closed or risk reduced to standard business process to manage (i.e., issue resolved and monitoring the solution)
   - The #escalated_customers channel is for awareness only and is not intended to replace the dedicated slack channel created as above, the account or support channels. Leverage the specific escalation channel created for working communications, collaborations and executive updates.

4. If requested, The VP of Product is responsible for designating Product Leaders who will be the R&D response DRIs for the escalation. That process is expected to happen in the #a_customername_escalation channel with a ping to the VP of Product stating - @david - This is a newly escalated customer, and we are looking for you to assign a Product Leader to be the R&D DRI for the response.

5. Update the customer's CSM Sentiment in Gainsight to reflect the impact of the escalation on the account.

### Managing the Escalation:

- DRI owns the functions as outlined here
- Escalation document kept updated with minimum daily updates
- **Daily Slack updates are posted to the designated customer escalation channel (see escalation doc for format)**

### Closing the Escalation

- To close an escalation, a clear alignment between GitLab stakeholders and the customer (including documentation in an issue or email) is required. Both parties need to agree the situation is resolved. 

- If the customer requests an RCA and the escalation was platform-related, GitLab engineering will lead the RCA and will provide it in writing to the corresponding GitLab DRI, who is managing & closing the escalation.

- When the issue(s) related to the escalation are resolved or move into a non-escalated state:

  - Post an update to #escalated_customers with the status and resolution
  - Update the escalation document with the resolution
  - Archive the temporary Slack channel
  - Update the customer's CSM Sentiment in Gainsight to reflect the new state of the account.

## CSM Manager's role in Escalations
The CSM Manager's responsibility is to ensure that the CSM is familiar with the above process and is actively managing the escalation, including the Slack Channel updates and the management of the escalation doc. 

When a customer is in an escalated state, the path to resolution must continue to move forward, with both the internal stakeholders and the customer clear on current actions and next steps. The CSM manager is responsible for ensuring that this forward-motion and clear alignment is present and for stepping in and driving action or alignment where necessary. 

## Support Engineering's role in Escalations

See the [Support Engineering Guide to Escalations](/handbook/support/internal-support/support-escalations.html) for more specific information on how support manages customers in an escalated state.

## Related Links

- [Support Engineering Page](/handbook/support/) and [Support Engineering Escalation Procedures](/handbook/support/workflows/working-with-issues.html)
- [Product Escalation Issue Template](https://gitlab.com/gitlab-com/Product/issues/new?issuable_template=Product-Support-Request) to request Product Team support for roadmap / future needs, prioritization of enhancements and/or issues and troubleshooting of customer issues.
- [Customer Health Assessment and Account Triaging](/handbook/customer-success/csm/health-score-triage/)
