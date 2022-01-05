---
layout: handbook-page-toc
title: Quarterly Subscription Reconciliations
category: General
description: Workflow to assist customers with Quarterly Reconciliations.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## General Workflow

Refer to [this issue](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3540#quarterly-subscription-reconciliation) for in-depth explanations. 

## Dispute Resolution and Escalation

If a customer contacts support regarding QSR, as a first line of contact there is [a ZD macro available](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros/-/blob/master/macros/active/Support/L&R/Refund%20or%20cancellation%20request%20on%20quarterly%20subscription%20reconciliation.yaml) to use, or you can craft a manual response based on it.  If sending a manually crafted reply, it's important to follow the general guidelines and information used in the macro to be sure that we are setting appropriate and consistent expectations.

It may arise that a customer would like to dispute an upcoming reconciliation.  There are documented steps we can take for when the dispute arises before the customer has been invoiced.  Refer to the [QSR - Pre Billing steps](https://gitlab.com/gitlab-com/Finance-Division/finance/-/wikis/WIP-Quarterly-Subscription-Reconciliation-Escalation#quarterly-subscription-reconciliation-escalationdispute-pre-billing) wiki topic for more information.  In general, follow steps 1 and 2.  See [Pausing QSR on a subscription](#pausing-qsr-on-a-subscription).

If the customer has contacted us after an invoice has already been generated, there is guidance on seeking approvals for any next steps in the [QSR - Post Billing](https://gitlab.com/gitlab-com/Finance-Division/finance/-/wikis/WIP-Quarterly-Subscription-Reconciliation-Escalation#quarterly-subscription-reconciliation-escalationdispute-post-billing) wiki topic.

In either case, advise the customer that you will be putting them in contact with their sales account manager, and then [follow the workflow to escalate to sales](working_with_sales.html#general-workflow) to inform their account manager and allow them to take action if necessary.

- Be sure to set the **Transaction Issue Type** to `Quarterly Subscription Reconciliation` for tracking purposes. 
- Do not pass the ticket to Billing/AR unless and until proper approvals have been given in SFDC chatter per the wiki.

### Pausing QSR on a subscription

Support has the ability to disable QSR on a subscription, and this may be requested of us by Billing or Sales to prevent an upcoming reconciliation from triggering.  We can also pause it when a customer contacts us with a dispute as mentioned above. This can be done through the customer portal admin panel.  Please refer to the AR/Billing team [internal wiki](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/working_with_sales.html#general-workflow) for specific details on this workflow.


When pausing QSR:

1. Do not reset a namespace's `Max Seats` without manager approval or direct input from a stakeholder.

1. Depending on decisions yet to be made and documented in the finance wiki (see also the discussion around this in https://gitlab.com/gitlab-com/Finance-Division/finance/-/issues/4706), we may also need to reset `Max Seats Used` on the namespace.  This can be done with [Mechanizer](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/) or through console access.  Create an [internal-request](https://gitlab.com/gitlab-com/support/internal-requests/-/issues/new?issue%5Bmilestone_id%5D=) to track this work along with any related actions taken.
