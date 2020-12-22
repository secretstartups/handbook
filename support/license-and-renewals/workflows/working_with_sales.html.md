---
layout: handbook-page-toc
title: Working with Sales
category: General
description: This page is about working with sales.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## General workflow

1. Respond to the customer on Zendesk:
   1. Assign the ticket to yourself.
   1. Select the appropriate specific workflow to follow (see below).
   1. Check the `Escalated to sales` box.
   1. Set the ticket status to `Pending`.
1. Leave a message for the Salesforce `Account Owner` on Chatter with the
   relevant details.
   * Share the link to the Chatter message in an internal note on the ticket.
   * You may want to check the account owner's Slack status to see if they're
     currently taking time off work.
   * If reaching out to the account owner on Slack (always on `#support_sales_escalation`
     and always *as a courtesy*), link them the Chatter message and ask them to
     respond there.
   * Note: Support should be able to rely on the Salesforce `Account Owner`
     field to determine who is responsible for the account. If that is incorrect,
     escalate it immediately (see point `3(i)`).
1. Escalation procedure:
   1. If the Salesforce `Account Owner` is unable/unwilling to assist
      1. Mention the account owner's direct manager in a Chatter comment.
      * Examples of being unable/unwilling to assist:
        * Account owner no longer works at GitLab.
        * Account owner says the account is not theirs any more.
        * Account owner says they have no time to help.
   1. If the Salesforce `Account Owner` is not a person
      1. Find the person in charge of the [sales segment](https://about.gitlab.com/handbook/sales/field-operations/gtm-resources/#segmentation)
        and [sales territory](https://about.gitlab.com/handbook/sales/territories/#territories)
        and mention them in a Chatter comment.
   1. If anyone you reach out to does not respond within 24 hours:
      1. Mention the person's direct manager in a Chatter comment.
         * From VP level onwards, mention them in a Slack message in
           `#support_sales_escalation` in addition to a Chatter comment.
      1. Repeat as necessary every 24 hours and go one step up the reporting
         line, going all the way up to CEO if necessary.
   * It is helpful to refer to the [company organization chart](https://about.gitlab.com/company/team/org-chart/)
     to see who to escalate to.
1. When someone from sales says they'll be in touch with the customer:
   1. Post an update to the ticket, mentioning:
      * The name of the person who will be in touch.
      * Tell the customer to let us know if they haven't heard back within 2
        business days.
      * Inform the customer that the ticket will auto-close after 7 days without
        a response from them.
      * Set the ticket status to `Pending`.


_(Pro tip: create a personal ticket view where "Escalated to Sales" = checked, to pull these out into their own queue)_

## Specific workflows to pass to Sales

Many of the following workflows advise you to `Chatter Sales`.  How to do this
is described in the [expired license](/support/workflows/associating_needs_org_tickets_with_orgs.html#handling-customers-with-expired-licenses-and-updating-info-on-sfdc-side)
process.

The following workflows use the [Pass to Sales Zendesk macro](https://gitlab.zendesk.com/agent/admin/macros/360025924680)
unless otherwise stated.

**ALTERNATIVE PAYMENT METHOD**: a customer wishes to pay via method other than credit card

Workflow:

- Confirm the paymemt method the customer wishes to use (wire, ACH or check)
- Chatter Sales and summarise the customer's request, ask for them to reach out
- Respond to the customer with the appropriate macro

**PURCHASE ORDER / QUOTE**: a customer wants to pay and has a PO or requires a paper quote or invoice

Workflow:

- Find the existing opportunity or subscription (if renewal)
- Chatter Sales and summarise the customer's request, ask for them to reach out
- Respond to the customer with the appropriate macro

**RESELLER**: a reseller or reseller customer wants to make changes to their subscription or follow up on an order

Workflow:

- Confirm the end-user and the reseller, by finding the account in Zuora
- Chatter Sales and summarise the customer's request, provide the reseller and end-user information, ask for them to reach out
- Respond to the customer with the appropriate macro

**SELF-MANAGED UPGRADE**: a self-managed customer wishes to upgrade their subscription to a higher tier and their current subscription is worth more than $1,000

Workflow:

- Find the existing opportunity or subscription in Salesforce
- Chatter Sales and summarise the customer's request, ask for them to reach out
- Respond to the customer with the appropriate macro

**DISCOUNT REQUEST**: a customer is seeking a discount and their subscription is above the Starter/Bronze tier

Workflow:

- Confirm their tier and the details of the discount requested, if they are not above Starter/Bronze or the discount request is unreasonable (use your discretion), explain that a discount is not available
- If you are unsure whether a discount should be given, consult with the Account Owner first
- Chatter Sales and summarise the customer's request, ask for them to reach out if they confirm a discount is possible
- Respond to the customer with the appropriate macro, set the expectation that a discount is not guaranteed and is at the discretion of the relevant approvers

**PRODUCT TRANSFER** - a customer wishes to transfer from SaaS to Self-managed or vice versa

Workflow: To be confirmed

**DOWNGRADE PLAN** - a customer wishes to downgrade from their current tier to a differ tier (same product)

Workflow: To be confirmed

**DECREASE SEAT COUNT** - a customer wishes to renew with less seats in their subscription

Workflow: To be confirmed
