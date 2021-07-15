---
layout: markdown_page
title: Gitlab.com subscription provisioning guide
description: "How to provision GitLab.com subscriptions"
category: GitLab.com subscriptions & purchases
---

L&R and people working in the gitlab.com queue have been tasked with assisting customers who don't have access to the [customers portal](https://customers.gitlab.com/customers/sign_in) in their provisioning steps for setting up a new gitlab.com subscription. You can read more about the change in [this issue](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1373).

Note that the requests will come in as a response to this [provisioning email](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1444#note_349585674). Reseller customer and sales-assisted customers will receive this email.

You can verify reseller customers by looking at the edit page for their customers portal account - you will see ```Login activated``` field is unchecked.

Take the following steps for this provisioning request:
1. Login into the customers portal with admin permissions
2. Log into gitlab.com with admin login
3. Impersonate user on gitlab.com
4. Impersonate user on customers portal
5. In Customer portal, go to ```My account``` drop-down -> select ```Account details``` -> go to ```Your GitLab.com account section``` -> select ```Link my Gitlab.com account``` button
6. You should now have linked the user's GitLab.com account because you impersonated them on GitLab.com
7. Go to ```Manage purchases``` page
8. Select ```Change linked namespace``` button
9. Select the namespace the subscription should be applied to from the drop-down (the customer should give you this info)
If the namespace isn't on the list, it means the user doesn't have owner level permissions on the group they are trying to link. Ask the customer to get themselves added to the group as an owner.
10. Proceed to checkout
11. You should see the namespace linked to the subscription card
12. Send the customer a confirmation email, you can use the following snippet:

> I have successfully provisioned your subscription and it has been associated with your account and namespace. Please navigate to your group's billing page for confirmation: https://gitlab.com/groups/GROUPNAME/-/billings

Use the `Associate namespace` transactions issue type in ZD and set the ticket to Pending.

## Troubleshooting 502 errors while provisioning the subscrpition 

While handling the subscription provisioning requests, we might encounter a 502 error while impersonating the user on the customer portal, this occurs when an admin accidentally links their GitLab.com admin account with the customer portal account, due to which the customer portal tries to fetch all the groups that are accessible to the admin user on GitLab.com and eventually returns a 502 error. 

- We can verify that by [retrieving the token information](https://docs.gitlab.com/ee/api/oauth2.html#retrieving-the-token-information)(grab the `access_token` from the customer portal and call the API endpoint to retrieve the `resource_owner_id` attribute, which should be the same as the  GitLab.com `userID`).

To fix this, we should **completely unlink the GitLab.com account with the customer portal** account using the [unlink_customer console function](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/customersdot/customer_console.html#unlink_customer)

## Force Associate SaaS Subscription  

While handing the subscription provisioning requests, we'll face some cases where it's not possible to associate the subscription by following the normal procedure(the workflow mentioned above) using the customer portal admin 

- If the namespace has more active users than the number of seats in the subscription, the system redirects to the payment page to purchase additional seats to match the GitLab.com Group's active user count, in this scenario if the customer is not interested in purchasing additional seats upfront then we can force associate the subscription and the additional seats will be reflected as true-ups on the group's billing page. 

- Another scenario would be while handling subscription provisioning requests corresponding to EDU/OSS customers - the ```Change Linked Namespace``` button on the subscription doesn't exist and in this case, we can use the [force Associate subscription form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/force_associate.html) to associate the subscription. 

Proceed as follows:

Use the [force Associate subscription form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/force_associate.html) - Open this page and enter the ```Namespace``` and ```Subscription ID``` details and submit the form. This will create an internal issue and updates the issue description with the response of the force association script
 
 -  If it's successful then the response would be {:success=>true} -> You can also verify the namespace and close the issue.   
 -  If it's not successful then add the `~Console Escalation - customers` label and this will be investigated by the engineers with console access. 

## Clear Subscription

While associating the subscription with a namespace if there are any errors(example: errors like: `unable to associate the subscription as the destination namespace is already associated with a subscription`), we can unlink the subscription associated with that namespace. 

[Clear subscription form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/clear_subscription.html) is used to clear the subscription associated with that namespace. Please follow the below steps:

Navigate to the [Clear subscription form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/clear_subscription.html) page -> enter the ```Subscription Name``` and submit the form. This will create an internal issue and updates the issue description with the response of the force association script
 
 -  If it's successful then the namespace will be switched to free plan: `"name"=>"Free"` -> You can also verify the namespace and close the issue.   
 -  If it's not successful then add the `~Console Escalation - customers` label and this will be investigated by the engineers with console access. 

 ***
 FYI: If interested, you can find more information about the L&R's Mechanizer tools [here](/handbook/support/license-and-renewals/workflows/customersdot/mechanizer.html):




