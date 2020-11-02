---
layout: handbook-page-toc
title: Customer Success Escalations Process
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [TAM Handbook homepage](/handbook/customer-success/tam/) for additional TAM-related handbook pages.

- - -

## Objective

Define the process for managing account escalations and define framework for communications, activities and expectations for customer escalations.

## Scope

This addresses critical and high escalations for Enterprise customers. This can also apply to Commercial or SMB customers if there is a strategic partnership or relationship. This can also be leveraged for issues that affect a broad number of customers though the customer engagement model will differ. Any GitLab team-member can escalate an account on behalf of the customer.

## Definitions of Severity Levels

| Severity Level | Description | Cadence | Levels of Involvement |
| -------------- | ----------- | ------- | --------------------- |
| Critical | Major issue(s) significantly impact customer's ability to deploy and/or use a solution, risking loss of and/or use a solution, risking loss of customer, and/or significant risk to the relationship and brand. | Daily | VP of Sales, Product, CRO, CEO, VP of Customer Success |
| High | Major issue(s) significantly impact a customer's ability to deploy and/or use a solution, risking current adoption, future growth on the account, and damage to the relationship. | Multiple times per week | VP of Sales, Product, CRO, CEO, VP of Customer Success |
| Medium | Issue(s) impact a customer's ability to deploy and/or use the product, risking current adoption, and renewal. | Weekly to Bi-weekly | VP of Sales, VP of Customer Success |
| Low | Issue(s) impacting a customer's ability to deploy and/or use the product, risking customer value realization, timeline, customer satisfaction, and adoption levels. | Standard Communication | Director of Customer Success, Account Manager |

- Cadence refers to the cadence of internal and external meetings and communications to the customer.
- Level of involvement defines scope of internal communication and awareness. Others can be included based on the type of issues involved.

## Responsibilities

### Escalation DRI

Based on the level of the escalation, the DRI for the escalation will either be someone in Support for low and medium level or the TAM for high and critical escalations. Key general responsibilities include:

- Coordination of internal GitLab and customer resources to drive troubleshooting and resolution of the issue
- Management of customer and internal communications
- Overall articulation of the approach to resolution, including ensuring the plan and approach is understood
- Assist overall collaboration (i.e., setting up meetings)

### Critical and High-Level Escalations

- TAMs are responsible for managing the account engagement (not ticket), including:
    - Management of internal team and customer meetings for follow-up activities. Note: To ensure the TAM does not slow the resolution of issues, the TAM doesn't need to be in all meetings (e.g., technical troubleshooting with customer and support/development).
    - Driving and coordinating TAM escalation process internally and with the customer, including associated communications, and executive-level meetings.
    - Developing and maintaining the escalation document and supporting account documents.
    - Acting as an escalation point for customer-related issues (e.g., delayed response, open actions, non-compliance installation or use of the product, etc.)
    - Developing the business case justification and escalation to Product for escalations related to enhancement requests
- Support Engineering is responsible for:
    - Collaborating with technical resources (e.g., Development, Quality Assurance, SREs and Support Engineering staff) to drive resolution of the technical issues
    - Managing the 24x7 incident resolution and escalation process (i.e., Support Engineering, SRE, Development)
    - Supporting executive and customer calls (as needed)

### Medium and Low-Level Escalations

- Support Engineering is responsible for managing Low and Medium level escalations, leveraging other teams (e.g., Technical Account Managers (TAMs), Engineering) as needed.
- If a TAM is assigned, Support Engineering should inform the TAM of the escalation.
- The TAM is responsible for managing any account-related issues (e.g., delayed response, open actions, non-compliance installation or use of the product, etc.).

## Initiating and Closing an Escalation

Depending on the level of customer impact, either Technical Support or TAM organization may initiate the escalation. The following steps should be taken:

- For medium, high and critical-level escalations, create an escalation document using the [Escalation Tracker Template](https://docs.google.com/document/d/1DFW9WDigDZTRQlArqvyaLl_GcYi5lwsxKKKtcjB49s0/edit#) (internal GitLab access only). 
    - Save the document for each individual customer and replace (CUSTOMER) with the customer name.
- Create a temporary slack channel to facilitate communication internally at GitLab. This will remain open until the escalation is closed and should be documented in the escalation document. 
- When a customer escalation is defined, the escalation document should be posted into the `#escalated_customers` channel by the escalation owner (i.e., Support for Low/Medium severity, TAM for high/critical severity escalations). The posting to this channel should occur:
    - when the escalation is identified and created
    - when incremental updates are required for executive or management visibility (e.g., daily updates for high or critical escalations)
    - when the escalation is closed or risk reduced to standard business process to manage (i.e., issue resolved and monitoring the solution)
    - The `#escalated_customers` channel is for awareness only and is not intended to replace account or support channels. Leverage the specific escalation channel created for working communications and collaborations.
- Maintain the escalations document
    - Executive Summary: This section does not need to be updated daily but should be updated when there are changes to the status of the overall engagement (e.g., top-level issue status, milestones, etc.)
    - Milestones should include key customer and GitLab milestones
    - Capture escalation-related meetings 
    - Document updates at a cadence defined by the level of the escalation 
    - Copy any key updates or next steps from other channels like Slack
- When the issue(s) related to the escalation are resolved or move into a non-escalated state:
    - An update should be posted to `#escalated_customers `at with the status and reason for closure
    - Escalation document updated with reason for closure
    - The temporary Slack channel can be archived

## Support Engineering's role in Escalations

See the Support Engineering Guide to Escalations for more specific information on how support manages customers in an escalated state.

## Related Links

- [Support Engineering Page](/handbook/support/) and [Support Engineering Escalation Procedures](/handbook/support/workflows/working-with-issues.html)
- [Product Escalation Issue Template](https://gitlab.com/gitlab-com/Product/issues/new?issuable_template=Product-Support-Request) to request Product Team support for roadmap / future needs, prioritization of enhancements and/or issues and troubleshooting of customer issues.
- [Customer Health Assessment and Account Triaging](/handbook/customer-success/tam/health-score-triage/)