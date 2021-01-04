---
layout: handbook-page-toc
title: Triaging Tickets
description: "A walk through of some basic checks and items to tick off when working on the Needs Org and Triage queue in ZenDesk."
category: Handling tickets
subcategory: Triaging
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Purpose of this page

This page aims to walk you through some basic checks and items to tick off when working on the Needs Org and Triage queue in ZenDesk.

## Overall Flow

```mermaid
graph TD
    G[Ensure correct form] --> A{Is it a Support Ticket?}
    A -->|Yes| B{Is the ticket tied to an org?}
    A -->|No| H[Check if it falls under 'Other Requests']
    B -->|Yes| D{Does the ticket have an SLA?}
    B -->|No| E[Use Needs Org workflow: Find and associate the organizaton]
    D -->|Yes| C[Done]
    D -->|No| F[Use SLA and Queue workflow: Take appropriate action]
```

## Applying the Correct Form

A ticket should have the correct [form](https://gitlab.com/gitlab-com/support/support-ops/zendesk-ticket-forms-and-fields/#ticket-form-id-numbers) applied to it to help route it to the right set of individuals who can assist with that request.

Most of the forms are self-explanatory, but here are some extra considerations:

- GitLab.com Account: single user account issue only, all others go to GitLab.com.
- Security: See [when to transfer to security](/handbook/support/workflows/working_with_security.html#identifying-issues-for-transfer-to-security).
- Accounts Receivable: refunds, VAT and invoices.
- License Renewals and Upgrades: any subscription, purchase, and customers portal issue not covered by AR form (in above point). See also [L&R workflows](/handbook/support/workflows/#license-and-subscription).

## After applying the correct form

- Apply the correct `Problem type` if possible (this may need to happen after looking up the organization information).
- Use the [Needs Org workflow](associating_needs_org_tickets_with_orgs.html) to tie a ticket to the right organization.
- With help from the [Looking up customer details](looking_up_customer_account_details.html) page to understand how and where you can find customer information from ZenDesk, Salesforce and the customer portal.
- Check [SLA and Zendesk views page](sla_and_views.html) for after an org is assigned.

## Other Requests

We also receive non Support requests in our queue - if you see something not listed below or something you are unsure about, ask in the `#support_escalations` slack channel and make a MR to update the list below when you find out the answer.

|Request|Workflow|
|--|--|
|Training|Redirect requester to [Education from Professional Services](/services/education/)|
|New Set Up/Installation|Follow the [Passing a Lead to Sales](/handbook/support/workflows/passing_a_lead_to_sales.html) workflow|
|Requests for swag|Ask in the #swag internal slack channel or direct to [the FAQ](https://shop.gitlab.com/pages/f-a-q) for existing orders. For general requests for free swag, use the `General::Free Swag Request` Macro.|
|Questions related to jobs/openings|Redirect requester to [Outbound Recruiting Model](/jobs/faq/#gitlabs-outbound-recruiting-model) page|
|Questions related to status of job application| Use the `General::Job Application Questions` [macro](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros/-/blob/master/macros/active/General/Job%20Application%20Questions.yaml) and send a note to the internal `#recruiting` Slack channel.|
|Legal Questions and Concerns|Ask in the #legal internal slack channel|
|Missing Learning and Development Certificates | Direct requester to review  [Missed Certificate](/handbook/people-group/learning-and-development/certifications/#missed-certificate) and contact `learning@` with a note about which certificate/knowledge assessment is missing. |
