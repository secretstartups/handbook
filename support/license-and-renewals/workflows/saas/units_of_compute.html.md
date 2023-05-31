---
layout: handbook-page-toc
title: Handling units of compute
description: Adjusting units of compute
category: GitLab.com subscriptions & purchases
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Adding additional units of compute

From time to time, you may need to grant additional units of compute to a namespace
_without_ affecting the namespace's usual monthly quota.

<details>
<summary>Using Support Forms Processor</summary>

Use the <a href="https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/extra_minutes.html">
Extra Minutes form</a>.
</details>

<details>
<summary>Using GitLab.com ChatOps</summary>

View the <a href="/handbook/support/workflows/chatops.html#setting-additional-minutes-quota-for-a-namespace">
Support ChatOps documentation</a> for more information.
</details>

## Process for authorising additional units of compute for customers as an act of goodwill

- For an existing customer, Support is able to issue units of compute as an act of goodwill. Example situations include: customer has encountered a product bug related to units of compute; customer experienced an unplanned GitLab.com downtime. In such cases, 
please request the customer to provide a list of impacted projects to our Support team. 
([Example Ticket 1](https://gitlab.zendesk.com/agent/tickets/294974) 
| [Example Ticket 2](https://gitlab.zendesk.com/agent/tickets/391109)) 
- Once you have reviewed and validated: 
  1. Post an internal note on the ticket denoting the number of units of compute to be applied, using the following formula: 
  - `Total units of compute = Their current units of compute + (2 x sum of units of compute for all failed jobs)`
  2. Request Manager Approval to `Restore Units of Compute as an act of goodwill` to the [#spt_managers](https://gitlab.slack.com/archives/C01F9S37AKT) channel in Slack 
  3. MANAGERS: Acknowledge in Slack and post approval via internal note in the ticket. 
  4. Once Approval provided in ticket, restore the units of compute using the [mechanizer zendesk app: Set units of compute to namespace workflow](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/customersdot/mechanizer.html#set-units-of-compute-to-namespace)
- This will provide recovery of the units of compute lost, with an additional amount in recognition of the inconvenience caused to the customer 
- If the request falls outside of the examples above, any additional units of compute should be paid for. If you are unsure, verify in 
the [#spt_managers](https://gitlab.slack.com/archives/C01F9S37AKT) channel in Slack.

## Process for authorising additional units of compute to be added to GitLab Trial customers

- If a customer is in trial and a request is submitted to increase their amount of units of compute to match those a Premium or Ultimate subscriber receives then the support engineer should seek authorisation from the customers sales representative to provide the additional units of compute, as they are able to self-authorise such requests. However, if a request is made for an increase in excess of the standard allotments of units of compute (i.e. more than 10,000 minutes for a Premium trial and more than 50,000 minutes for an Ultimate trial) then a transaction is required and those minutes should be paid.

- For an existing customer - other than an act of goodwill (i.e product bug, unplanned GitLab.com downtime, performance issues etc...), any additional units of compute or Storage should be paid for


## Purchased units of compute are not associated with customer's group

To transfer units of compute from a user's personal namespace to a group namespace, use the [Force Association option in the ZD Mechanizer App](../mechanizer.html#force-associate).

**If the Mechanizer does not work**, you will need to request a refund for the customer.  In this case:
- Confirm that the units of compute *are* associated with the user's personal namespace.
- Verify that the units of compute associated with the personal namespace have not been consumed. You can check this under Usage Quotas in the users personal profile.  Note: If units of compute are assigned to a personal namespace with no project or pipeline, this page will show `0/Not supported minutes has been consumed.`
    - **If they have not been consumed**, inform the customer that they've selected their personal namespace instead of their group when they purchased the units of compute and pass the ticket to the [billing team](/handbook/support/license-and-renewals/workflows/billing_contact_change_payments.html#refunds) to process the refund. The customer can then repurchase the units of compute for their group.
    - **If they have been consumed**, the customer is not eligible for a refund - inform the customer that they are already using the purchased units of compute, and redirect the customer to purchase a new units of compute pack corresponding to their group.

## GitLab.com group is not visible during the purchase

- While purchasing the units of compute, the billing page shows a drop-down menu to choose the namespace to be associated with the units of compute. If the user is unable to view or choose the required group during the purchase, it is probable that the GitLab user is not an owner of that group.  Reply to the user stating that they need to either get their permissions updated to owner to be able to choose the group on the billing page, or request an existing owner of the group to purchase the units of compute using their own customer portal account.

# Enable units of compute

## Manual credit card validation for community contributors

Please do **not** use the enabling units of compute process for validating a user account to bypass the need for a credit card when requested for community contributors. 

Qualifying requirements:

1. Requester has [filed an internal request](https://gitlab-com.gitlab.io/support/internal-requests-form/) or ZenDesk ticket to track request.
1. Request is approved or created by a [Community Relations](https://about.gitlab.com/handbook/marketing/developer-relations/#-meet-the-team) or [Contributor Success](https://about.gitlab.com/handbook/marketing/developer-relations/contributor-success/#team-members) team member.
1. GitLab.com admin account

Once verified, use the following steps:

1. Edit the user account `https://gitlab.com/admin/users/USERNAME/edit`.
1. Select the `Validate user account` checkbox.
1. Add an [Admin note](../../../workflows/admin_note.html).
1. `Save changes`.

## Enabling units of compute for sales assisted trials

The following process will remove the restrictions for using units of compute for groups who are part of a sales assisted trial.

## Steps

### Using Mechanizer ZD App

Use the [Enable units of compute via ZD Mechanizer app](../mechanizer.html#enable-units-of-compute).

### Using customerDot Console

From the customerDot Console run the following function:

#### For sales assisted Trials

```ruby
irb(main) enable_ci_minutes_trial('namespace')

=> "{\"status\":\"success\",\"message\":\"namespace members are now enabled to run compute credits\"}"
```
