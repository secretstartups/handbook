---
layout: handbook-page-toc
title: Working with Sales
category: General
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview of Sales

Account Managers are assigned accounts based on market segment, which is determined by region and size.

Noting size is defined by:

1. Large (2000+ total employees)
1. MidMarket (100-1,999 total employees)
1. Small business (0-99 total employees).

When we pass to sales, we can find the relevant person by looking at the [sales territories](/handbook/sales/territories/).

### Find the Account Manager in Salesforce (SFDC)

- **Account exists, Sales assigned**: Identify if the company is in SFDC; look up the email domain in SFDC global search. Note the `Type` field in the SFDC account record (Customer vs. Prospect). If prospect account is found, and `Account Owner` contains a sales rep, pass the ticket to the Account Owner listed using the [Pass to Sales ZD macro](https://gitlab.zendesk.com/agent/admin/macros/360025924680).
- **Account exists, Sales not assigned**: If the account is in SFDC, but there is no Account Owner listed, use the `Sales Segment` (Large, MM, Small) and Billing Address to determine which salesperson the request should be passed using the [Pass to Sales ZD macro](https://gitlab.zendesk.com/agent/admin/macros/360025924680) based on [Sales territories](/handbook/sales/territories/).
- **Account does not exist**: If the account is not in SFDC, respond to ticket with the [New Sales Quote ZD macro](https://gitlab.zendesk.com/agent/admin/macros/360026025019).

## Reasons to pass to Sales

NOTE: Many of the following workflows advise you to `Chatter` sales.  How to do this is described in the [expired license](/support/workflows/associating_needs_org_tickets_with_orgs.html#handling-customers-with-expired-licenses-and-updating-info-on-sfdc-side) process.

**ALTERNATIVE PAYMENT METHOD**: a customer wishes to pay via method other than credit card

Workflow:

- Confirm the paymemt method the customer wishes to use (wire, ACH or check)
- Find the Account manager in Salesforce using the `Find the Account Manager in Salesforce` steps above
- Chatter Sales and summarise the customer's request, ask for them to reach out
- Respond to the customer with the appropriate macro
- Apply the correct ticket form data, check the `Escalated to sales` box, assign ticket to yourself and set status to `Open`

**PURCHASE ORDER / QUOTE**: a customer wants to pay and has a PO or requires a paper quote or invoice

Workflow:

- Find the existing opportunity or subscription (if renewal)
- Find the Account manager in Salesforce using the `Find the Account Manager in Salesforce` steps above
- Chatter Sales and summarise the customer's request, ask for them to reach out
- Respond to the customer with the appropriate macro
- Apply the correct ticket form data, check the `Escalated to sales` box, assign ticket to yourself and set status to `Open`

**RESELLER**: a reseller or reseller customer wants to make changes to their subscription or follow up on an order

Workflow:

- Confirm the end-user and the reseller, by finding the account in Zuora
- Find the Account manager in Salesforce using the `Find the Account Manager in Salesforce` steps above
- Chatter Sales and summarise the customer's request, provide the reseller and end-user information, ask for them to reach out
- Respond to the customer with the appropriate macro
- Apply the correct ticket form data, check the `Escalated to sales` box, assign ticket to yourself and set status to `Open`

**SELF-MANAGED UPGRADE**: a self-managed customer wishes to upgrade their subscription to a higher tier and their current subscription is worth more than $1,000

Workflow:

- Find the existing opportunity or subscription in Salesforce
- Find the Account manager in Salesforce using the `Find the Account Manager in Salesforce` steps above
- Chatter Sales and summarise the customer's request, ask for them to reach out
- Respond to the customer with the appropriate macro
- Apply the correct ticket form data, check the `Escalated to sales` box, assign ticket to yourself and set status to `Open`

**DISCOUNT REQUEST**: a customer is seeking a discount and their subscription is above the Starter/Bronze tier

Workflow:

- Confirm their tier and the details of the discount requested, if they are not above Starter/Bronze or the discount request is unreasonable (use your discretion), explain that a discount is not available
- If you are unsure whether a discount should be given, consult with the Account Manager first
- Find the Account manager in Salesforce using the `Find the Account Manager in Salesforce` steps above
- Chatter Sales and summarise the customer's request, ask for them to reach out if they confirm a discount is possible
- Respond to the customer with the appropriate macro, set the expectation that a discount is not guaranteed and is at the discretion of the relevant approvers
- Apply the correct ticket form data, check the `Escalated to sales` box, assign ticket to yourself and set status to `Open`

**PRODUCT TRANSFER** - a customer wishes to transfer from SaaS to Self-managed or vice versa

Workflow: To be confirmed

**DOWNGRADE PLAN** - a customer wishes to downgrade from their current tier to a differ tier (same product)

Workflow: To be confirmed

**DECREASE SEAT COUNT** - a customer wishes to renew with less seats in their subscription

Workflow: To be confirmed

---
**Follow-up workflow for tickets which have been escalated to sales**: daily, review the tickets which have been escalated to sales, requesting status and closing as possible.
_(pro tip: create a personal ticket view where "Escalated to Sales" = checked, to pull these out into their own queue)_

- If no response in the Chatter thread, tag the manager
- Ping in Slack #support_sales_escalation if ticket is urgent or the copy to the sales person was not answered
- Copy the manager on the 2nd ping in Slack
- Find sales managers on the [GitLab org page](https://about.gitlab.com/company/team/org-chart/)
