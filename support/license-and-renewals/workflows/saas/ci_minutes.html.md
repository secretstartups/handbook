---
layout: handbook-page-toc
title: Handling CI minutes
description: Adjusting CI minutes
category: GitLab.com subscriptions & purchases
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Adding additional CI minutes

From time to time, you may need to grant additional CI minutes to a namespace
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

## Purchased CI minutes are not associated with customer's group
To transfer CI minutes from a user's personal namespace to a group namespace, use the [Force Association Mechanizer](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/force_associate.html). 

**If the Mechanizer does not work**, you will need to request a refund for the customer.  In this case:
- Confirm that the CI minutes *are* associated with the user's personal namespace.
- Verify that the CI minutes associated with the personal namespace have not been consumed. You can check this under Usage Quotas in the users personal profile.  Note: If CI minutes are assigned to a personal namespace with no project or pipeline, this page will show `0/Not supported minutes has been consumed.`
    - **If they have not been consumed**, inform the customer that they've selected their personal namespace instead of their group when they purchased the CI minutes and pass the ticket to the [billing team](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/billing_contact_change_payments.html#refunds) to process the refund. The customer can then repurchase the CI minutes for their group.
    - **If they have been consumed**, the customer is not eligible for a refund - inform the customer that they are already using the purchased CI minutes, and redirect the customer to purchase a new CI minutes pack corresponding to their group.

## GitLab.com group is not visible during the purchase

- While purchasing the CI minutes, the billing page shows a drop-down menu to choose the namespace to be associated with the CI minutes. If the user is unable to view or choose the required group during the purchase, it is probable that the GitLab user is not an owner of that group.  Reply to the user stating that they need to either get their permissions updated to owner to be able to choose the group on the billing page, or request an existing owner of the group to purchase the CI minutes using their own customer portal account.

# Enable CI minutes for sales assisted trials.

## Summary

The following process will remove the restrictions for using CI minutes for groups that meet one of the following criteria:

1. Groups on a **free** plan who have purchased CI minutes
1. Groups who are part of a sales assisted trial

## Steps

### Using Mechanizer

Use the form named [enable Ci Minutes](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/enable_ci_minutes.html). 
Choose if the group is a consumption group and enter the namespace information.

### Using customerDot Console

From the customerDot Console run the following function:

#### For sales assisted Trials

```ruby
irb(main) enable_ci_minutes_trial('namespace')

=> "{\"status\":\"success\",\"message\":\"namespace members are now enabled to run CI minutes\"}"
```

#### For consumption groups

```ruby
irb(main) enable_ci_minutes_trial('namespace', true)

=> "{\"status\":\"success\",\"message\":\"namespace members are now enabled to run CI minutes\"}"
```

**Important**

1. This will change the trial to a real subscription within the existing trial time window.
1. The grace period will apply to this namespace after the trial ends.
1. Consumption groups will be changed to `bronze` and reverted automatically.