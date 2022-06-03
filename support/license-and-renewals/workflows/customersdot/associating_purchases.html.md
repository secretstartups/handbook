---
layout: handbook-page-toc
title: Associating purchases with additional accounts
category: CustomersDot
description: Associating subscription with another account on CustomersDot account and for changing primary contact.
---

{:.no_toc}

----

Sometimes a customer may ask that a colleague be given the ability to manage a
subscription. This can be accomplished provided they also have a CustomersDot
account.

This process would also apply for requests to send a license to a different email
than the one used on the purchasing account.

## Add or change subscription management contact workflow

This process should be a last resort for **non-reseller customers**, and self-service options must first be explored.

Reseller customers **do not** have access to CustomersDot -- for such customers, proceed to the [ownership verification](#ownership-verification) steps.

**Ensure that the requestor has exhausted all self-service options:**

1. If the requestor is the existing Owner, suggest that they [change the account details](https://docs.gitlab.com/ee/subscriptions/#change-your-personal-details), 
and issue a [password reset](https://customers.gitlab.com/customers/password/new) to the new Owner's email.
1. If they have access to the existing Owner's email address, suggest that the requestor issue a [password reset](https://customers.gitlab.com/customers/password/new) 
to the existing Owner's email, and [claim the account](https://docs.gitlab.com/ee/subscriptions/#change-your-personal-details).
1. For **SaaS customers** who use a self-service option, mention that we highly recommend the new Owner to log in 
and [link their GitLab account](https://docs.gitlab.com/ee/subscriptions/#change-the-linked-account) 
to ensure their subscription is kept in sync with the linked GitLab group.


### Ownership verification

Before we add a subscription management contact, we need **one** of the following, once the above requirements have been met:

1. Approval from the existing contact
1. Prior subscription contract
1. Recent GitLab invoice (last 12 months)
  - This option is not available for customers who purchased through a reseller. Instead, the reseller can either open a ticket with this request or the customer can CC the reseller and also confirm that they would like to authorize the reseller to participate in the ticket. The reseller can then provide the invoice as proof of identity.
1. Copy of last loaded license (Self-Managed only)

**NOTE:** We do not accept vouches from Account Owners as proof of a customer's association to a subscription.

Please consider using the [Change Customers Portal Contact](https://gitlab.zendesk.com/agent/admin/macros/360028045239) macro to ask for this information. Be sure to copy the existing CustomersDot contact on the reply.

### Add subscription management contact workflow

If a customer requests to **add** another subscription management contact without removing the current contact,
first verify their identity as outlined under [ownership verification](#ownership-verification).

Once we have received one of the verification requirements, we can proceed to add a subscription management contact:

1. Locate the proper accounts in the CustomersDot and navigate to the `Edit` page
1. Copy the `Zuora ID` and `Salesforce Account ID` from the existing account to the new account
1. Navigate to the Zuora Customer Account and check the value of `SSPChannel`. If it is marked as **Reseller**, ensure the `Login activated` checkbox is **unchecked**.
**Note:** Make sure you tell the customer that they cannot log in to the account because they purchased through a reseller.
1. Click `Save`


### Change subscription management contact workflow

Use this workflow if a customer requests to change a subscription contact by either taking over ownership, 
handing over ownership, or re-gaining access to a subscription that was set-up by another person not in the 
organization anymore.

We should try to always retain the original CustomersDot account with access to the Zuora subscription 
until [Issue#4247](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4247) is resolved.

**Reason:**
Currently, an Order entry in the database is linked to one customer account only. 
If the Order points at a Customer that doesn't have a `zuora_id` on it, the customer's Subscription cannot be found.
This may then lead to cloud activation errors and SaaS subscriptions not syncing to GitLab.com.

In order to change the subscription management contact, we should ask for the same [ownership verification](#ownership-verification) information. Then confirm with the customer which of the cases below matches their goal:

| Cases                                                                                             | Response |      Actions  |  
|:---------------------------------------------------------|:----:|:-----|
| Transfer the subscription management to the `new email`                                           | Yes      | Copy the `Zuora ID` and `Salesforce Account ID` from the existing account to the new account on CustomersDot, uncheck the `Login activated` checkbox for **Reseller** customers, and select `Save`. |
| Stop managing subscription on the `existing email`                                                | Yes      | Remove the `Zuora ID` and `Salesforce Account ID` from the existing account on CustomersDot and select `Save`. If `No`, do not update the existing account. |
| Also change future renewal related email to the `new email` or keep it to the `existing email`    | Yes      | Pass to Billing team by following the [Zuora Contact Change Workflow](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/billing_contact_change_payments.html#zuora-contact-change) |

**Note:** For any situation where an account with the new contact's email does not exist on CustomersDot,
update the `Names` and `Email` of the account and trigger a [password reset](https://customers.gitlab.com/customers/password/new)
to the new email.

Always remind SaaS customers to [link their GitLab account](https://docs.gitlab.com/ee/subscriptions/#change-the-linked-account) 
to ensure their subscription is kept in sync with the linked GitLab group.
