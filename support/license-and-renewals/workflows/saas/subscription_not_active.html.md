---
layout: markdown_page
title: Subscription not active
category: GitLab.com subscriptions & purchases
---

If the user sees a subscription in CustomersDot but doesn't see the paid plan
active in their GitLab.com account, have the user associate the group with the
subscription.

Associating a group with a subscription in CustomersDot:

1. Log into: https://customers.gitlab.com/customers/sign_in
1. Navigate to **Manage Purchases**
1. Select **Change linked group**
1. Select the desired group from the **This subscription is for dropdown**
1. Select Proceed to checkout

If the user doesn't see a subscription in CustomersDot:

1. Log into [Salesforce](https://login.salesforce.com/) using the generic
   email. Password is stored in 1Password.
1. Using the global navigation search on the top right, enter the email address
   associated with the purchase
1. Select the appropriate account (note that Type = Customer)
1. Copy the SFDC Account ID from the page's URL to a clipboard _note: this is
   the number appended to end of the URL after `gitlab.my.salesforce.com/`_
1. From the Quotes related list, select the Quote record with the proper
   susbcription term and with `Status` = `Sent to Z-Billing`
1. Copy the `Zuora Account ID` to a clipboard
1. Log into the [CustomersDot](https://customers.gitlab.com/customers/sign_in)
   using the generic email. Password is stored in 1Password.
1. Locate the proper account in the CustomersDot and navigate to the `Edit` page
1. Enter the `Zuora ID` and `Salesforce Account ID` in the fields and select `Save`
1. Walk the user through the steps for Associating a group with a subscription
   noted above
