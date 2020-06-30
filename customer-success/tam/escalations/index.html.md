---
layout: handbook-page-toc
title: "Customer Success Escalations Process"
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [TAM Handbook homepage](/handbook/customer-success/tam/) for additional TAM-related handbook pages.

---

## Objective

Define the process for managing account escalations and define framework for communications, activities and expectations for customer escalations.

## Scope

This addresses critical and high escalations for Enterprise customers. This can also apply to Commercial or SMB customers if there is a strategic partnership or relationship. This can also be leveraged for issues that affect a broad number of customers though the customer engagement model will differ. Any GitLab team-member can escalate an account on behalf of the customer.

## Definitions of Severity Levels

| Severity Level | Description | Cadence | Levels of Involvement |
| -------------- | ----------- | ------- | --------------------- |
| Critical | Major issue(s) significantly impacting a customer's ability to deploy and/or use a solution, risking loss of and/or use a solution, risking loss of customer and/or significant risk to the relationship and brand. | Daily | VP of Sales, Product, CRO, CEO, VP of Customer Success |
| High | Major issue(s) significantly impacting a customer's ability to deploy and/or use a solution, risking current adoption, future growth on the account and damage to the relationship. | Multiple times per week  | VP of Sales, Product, CRO, CEO, VP of Customer Success |
| Medium | Issue(s) impacting a customer's ability to deploy and/or use the product, risking current adoption and renewal. | Weekly to Bi-weekly | VP of Sales, VP of Customer Success |
| Low | Issue(s) impacting a customer's ability to deploy and/or use the product, risking customer value realization, timeline, customer satisfaction and adoption levels. | Standard Communication | Director of Customer Success, Account Manager |

- Cadence refers to the cadence of internal and external meetings and communications to the customer.
- Level of involvement defines scope of internal communication and awareness. Others can be included based on the type of issues involved.

## Responsibilities

### Critical and High Level Issues

- TAMs are responsible for managing the account engagement (not ticket), including:
  - Management of internal team and customer meetings for follow-up activities. Note: To ensure the TAM does not slow resolution of issues, the TAM doesn't need to be in all meetings (e.g., technical troubleshooting with customer and support/development).
  - Driving and coordinating TAM escalation process internally and with the customer, including associated communications, and executive-level meetings. 
  - Developing and maintaining the escalation document and supporting account documents.
  - Acting as an escalation point for customer-related issues (e.g., delayed response, open actions, non-compliance installation or use of the product, etc.)
  - Developing the business case justification and escalation to Product for escalations related to enhancement requests

- Support Engineering is responsible for:
  - Collaborating with technical resources (e.g., Development, Quality Assurance, SREs and Support Engineering staff) to drive resolution of the technical issues
  - Managing the 24x7 incident resolution and escalation process (i.e., Support Engineering, SRE, Development)
  - Supporting executive and customer calls (as needed)

### Medium and Low Level Issues

- Support Engineering is responsible for managing Low and Medium level escalations, leveraging other teams (e.g., Technical Account Managers (TAMs), Engineering) as needed.
- If a TAM is assigned, Support Engineering should inform the TAM of the escalation.
- The TAM is responsible for managing any account-related issues (e.g., delayed response, open actions, non-compliance installation or use of the product, etc.).

- When customer escalation processes are initiated by Support (low and medium) or Customer Success (Medium and High), the escalation document should be posted into the internal-only GitLab Slack channel `#escalated_customers`.

## Escalation Tracker Template

- [Link](https://docs.google.com/document/d/1DFW9WDigDZTRQlArqvyaLl_GcYi5lwsxKKKtcjB49s0/edit#) to template (only accessible by GitLab team-members). Save the document for each individual customer and replace (CUSTOMER) with the customer name.

- Executive Summary
  - This section does not need to be updated daily but should be updated when there are changes to the status of the overall engagement (e.g., top-level issue status, milestones, etc.).
  - Milestones should include key customer and GitLab milestones.

## Communication Process

- When a customer escalation is defined, the escalation document should be posted into the `#escalated_customers` channel by the escalation owner (i.e., Support for Low/Medium severity, TAM for high/critical severity escalations). The posting to this channel should occur:
  1. when the escalation is identified and created
  1. when incremental updates are required for executive or management visibility (e.g., daily updates for high or critical escalations)
  1. when the escalation is closed or risk reduced to standard business process to manage (i.e., issue resolved and monitoring the solution)
- The `#escalated_customers` channel is for awareness only and is not intended to replace account or support channels. Specifically, this channel is NOT intended for:
  - Initiation of escalations
  - The detailed tracking and interactions for the escalation
- The initiation of an escalation and detailed tracking will continue to take place in the account or support channels.

## Related Links

- [Support Engineering Page](/handbook/support/) and [Support Engineering Escalation Procedures](/handbook/support/workflows/working-with-issues.html)
- [Product Escalation Issue Template](https://gitlab.com/gitlab-com/Product/issues/new?issuable_template=Product-Support-Request) to request Product Team support for roadmap / future needs, prioritization of enhancements and/or issues and troubleshooting of customer issues.
- [Customer Health Assessment and Account Triaging](/handbook/customer-success/tam/triage/)
