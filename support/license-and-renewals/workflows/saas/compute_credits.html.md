---
layout: handbook-page-toc
title: Handling compute credits
description: Adjusting compute credits
category: GitLab.com subscriptions & purchases
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Adding additional compute credits

From time to time, you may need to grant additional compute credits to a namespace
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

## Process for authorising additional compute credits to be added to GitLab Trial customers

- If a customer is in trial and a request is submitted to increase their amount of compute credits to match those a Premium or Ultimate subscriber receives then the support engineer should seek authorisation from the customers sales representative to provide the additional compute credits, as they are able to self-authorise such requests. However, if a request is made for an increase in excess of the standard allotments of compute credits (i.e. more than 10,000 minutes for a Premium trial and more than 50,000 minutes for an Ultimate trial) then a transaction is required and those minutes should be paid.

- For an existing customer - other than an act of goodwill (i.e product bug, unplanned GitLab.com downtime, performance issues etc...), any additional compute credits or Storage should be paid for


## Purchased compute credits are not associated with customer's group

To transfer compute credits from a user's personal namespace to a group namespace, use the [Force Association Mechanizer](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/force_associate.html).

**If the Mechanizer does not work**, you will need to request a refund for the customer.  In this case:
- Confirm that the compute credits *are* associated with the user's personal namespace.
- Verify that the compute credits associated with the personal namespace have not been consumed. You can check this under Usage Quotas in the users personal profile.  Note: If compute credits are assigned to a personal namespace with no project or pipeline, this page will show `0/Not supported minutes has been consumed.`
    - **If they have not been consumed**, inform the customer that they've selected their personal namespace instead of their group when they purchased the compute credits and pass the ticket to the [billing team](/handbook/support/license-and-renewals/workflows/billing_contact_change_payments.html#refunds) to process the refund. The customer can then repurchase the compute credits for their group.
    - **If they have been consumed**, the customer is not eligible for a refund - inform the customer that they are already using the purchased compute credits, and redirect the customer to purchase a new compute credits pack corresponding to their group.

## GitLab.com group is not visible during the purchase

- While purchasing the compute credits, the billing page shows a drop-down menu to choose the namespace to be associated with the compute credits. If the user is unable to view or choose the required group during the purchase, it is probable that the GitLab user is not an owner of that group.  Reply to the user stating that they need to either get their permissions updated to owner to be able to choose the group on the billing page, or request an existing owner of the group to purchase the compute credits using their own customer portal account.

# Enable compute credits

## Manual credit card validation for community contributors

Please do **not** use the enabling compute credits process for validating a user account to bypass the need for a credit card when requested for community contributors. Instead, use the following method:

Requirements:

1. Requester has [filed an internal request](https://gitlab-com.gitlab.io/support/internal-requests-form/) or ZenDesk ticket to track request.
1. Request is approved or created by a [Community Relations](https://about.gitlab.com/handbook/marketing/community-relations/#-meet-the-team) or [Contributor Success](https://about.gitlab.com/handbook/marketing/community-relations/contributor-success/#team-members) team member.
1. GitLab.com admin account

Steps:

1. Edit the user account `https://gitlab.com/admin/users/USERNAME/edit`.
1. Select the `Validate user account` checkbox.
1. Add an [Admin note](../../../workflows/admin_note.html).
1. `Save changes`.

## Enabling compute credits for sales assisted trials

The following process will remove the restrictions for using compute credits for groups who are part of a sales assisted trial.

## Steps

### Using Mechanizer

> <i class="fas fa-exclamation-triangle color-orange"></i> **NOTE**: Soon to be [deprecated](/handbook/support/license-and-renewals/workflows/customersdot/mechanizer.html#mechanizer-notice)

Use the form named [enable compute credits](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/enable_ci_minutes.html).
Enter the namespace information.

### Using customerDot Console

From the customerDot Console run the following function:

#### For sales assisted Trials

```ruby
irb(main) enable_ci_minutes_trial('namespace')

=> "{\"status\":\"success\",\"message\":\"namespace members are now enabled to run compute credits\"}"
```
