---
layout: handbook-page-toc
title: Handling CI minutes
category: GitLab.com subscriptions & purchases
---

## Adding additional CI minutes

From time to time, you may need to grant additional CI minutes to a namespace
_without_ affecting the namespace's usual monthly quota.

<details>
<summary>Using Support Forms Processor</summary>

Use the
<a href="https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/extra_minutes.html">
Extra Minutes form
</a>
.
</details>

<details>
<summary>Using GitLab.com ChatOps</summary>

View the
<a href="/handbook/support/workflows/chatops.html#setting-additional-minutes-quota-for-a-namespace">
Support ChatOps documentation
</a>
for more information.
</details>

## Purchased CI minutes are not associated with customer's group

1. Check to see if the minutes are associated with the users personal namespace.
1. Check to see if the user who purchased the minutes has owner permission for the group which the minutes should be associated.
    - If no, reply to user stating that they need to either get their permission updated to owner or we can refund the minutes and an owner can purchase them again.
    - If yes, continue …
1. Try associating the minutes in the customer’s portal via the `Change linked group` button.
    - If this works, stop and notify user.
    -  If this is unsuccessful (either [tries to charge for users due to known issue](https://gitlab.com/gitlab-org/customers-gitlab-com/issues/630) or appears to associate but doesn’t really do anything), continue …
1. Reset the pipeline minutes via GitLab.com admin UI. Sometimes this shakes things loose and the association actually works.
    - If this works, stop and notify user.
    - If this is unsuccessful, create a console esclation issue ([example](https://gitlab.com/gitlab-com/support/internal-requests/issues/1050)). Include Zendesk link, CustomersDot link, Customer ID, Group Name, Group ID, Subscription (number/name). Assign the `Customers Console escalation` label.
