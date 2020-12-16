---
layout: markdown_page
title: Gitlab.com subscription provisioning guide
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




