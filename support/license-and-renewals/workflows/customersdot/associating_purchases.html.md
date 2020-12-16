---
layout: handbook-page-toc
title: Associating purchases with additional accounts
category: CustomersDot
description: Associating subscription with another account on CustomersDot account. 
---

{:.no_toc}

----

Sometimes customers ask that a colleague be given the ability to manage a
subscription. This can be accomplished provided they also have a CustomersDot
account.

Prior to following the below steps, ensure the requester should have access to
the subscription.

1. For self-managed, send the [Change CustomersDot Contact](https://gitlab.zendesk.com/agent/admin/macros/360028045239)
   Zendesk macro. Be sure to copy the existing CustomersDot contact on the reply.
1. For GitLab.com, as long as the requester holds `owner` permissions in the
   group associated with the subscription, they are eligible for subscription
   management.

**Contact Change Workflow**

Before we change/add subscription management contact, we need **one** of the following:

1. Approval from the existing contact
1. Prior subscription contract
1. Recent invoice (last 12 months)
1. Copy of last loaded license

Once, we got one of the above, we can proceed to change/add subscription management contact by:

1. Locate the proper accounts in the CustomersDot and navigate to the `Edit` page
1. Copy the `Zuora ID` and `Salesforce Account ID` from the existing account to the new account and select `Save`
