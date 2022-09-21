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

1. If the requestor is the existing Customers Portal account owner, inform them that
   to transfer account ownership they need only:
   1. [change the personal details](https://docs.gitlab.com/ee/subscriptions/#change-account-owner-information)
      to be the new account owner's personal details
   2. issue a
      [password reset](https://customers.gitlab.com/customers/password/new)
      to the new owner's email
   3. [link their GitLab account](https://docs.gitlab.com/ee/subscriptions/#change-the-linked-account)
      to ensure their subscription is kept in sync with the linked GitLab group
1. Otherwise, if they have access to the existing Customer Portal account owner's
   email address, guide them to:
   1. issue a [password reset](https://customers.gitlab.com/customers/password/new)
      to the existing owner's email
   2. [claim the account](https://docs.gitlab.com/ee/subscriptions/#change-account-owner-information)
      by changing over the personal details
   3. [link their GitLab account](https://docs.gitlab.com/ee/subscriptions/#change-the-linked-account)
      to ensure their subscription is kept in sync with the linked GitLab group

### Ownership verification

Only after ruling out the self-service options above will we consider making
the requested ownership change.

First, we need **one** of the following in order to verify eligibility for the
ownership change:

1. Approval from the existing contact
1. Prior subscription contract
1. Recent GitLab invoice (last 12 months)
   - This option is not available for customers who purchased through a reseller. Instead, the reseller can either open a ticket with this request or the customer can CC the reseller and also confirm that they would like to authorize the reseller to participate in the ticket. The reseller can then provide the invoice as proof of identity.
1. Copy of last loaded license (Self-Managed only) in text format only.
   - Screenshots are not valid
   - Customer can quickly and easily [retrieve the license text data](https://docs.gitlab.com/ee/subscriptions/self_managed/index.html#export-your-license-usage) from `/admin/subscription` -> `Export license usage file` button on the right-hand side (or directly from `/admin/license/usage_export.csv`).
   - License file can be decoded in customersDot from `Licenses` -> `Validate License` (`/admin/license/validate_license`)

**NOTE:** We do not accept vouches from GitLab Team Members (including Account Owners listed in SFDC) as proof of a customer's association to a subscription.

Please consider using the [Change Customers Portal Contact](https://gitlab.zendesk.com/agent/admin/macros/360028045239) macro to ask for this information. Be sure to copy the existing CustomersDot contact on the reply.

### Add subscription management contact

If a customer requests to **add** another subscription management contact without removing the current contact,
first verify their identity as outlined under [ownership verification](#ownership-verification).

Once we have received one of the verification requirements, we can proceed to add a subscription management contact:

1. Locate the proper accounts in the CustomersDot and navigate to the `Edit` page
1. Copy the `Zuora ID` and `Salesforce Account ID` from the existing account to the new account
1. Navigate to the Zuora Customer Account and check the value of `SSPChannel`. If it is marked as **Reseller**, ensure the `Login activated` checkbox is **unchecked**.
**Note:** Make sure you tell the customer that they cannot log in to the account because they purchased through a reseller.
1. Click `Save`


### Change subscription management contact

#### Important

- In order to change the subscription management contact, we should ask for the same [ownership verification](#ownership-verification) information.
- **Do not** change/move the zuora_account_id or salesforce_id of the customer account in CustomersDot.

Use this workflow if a customer requests to change a subscription contact by either taking over ownership,
handing over ownership, or re-gaining access to a subscription that was set-up by another person not in the
organization anymore.

We should try to always retain the original CustomersDot account with access to the Zuora subscription
until [Issue#4247](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4247) is resolved.

**Reason:**
Currently, an Order entry in the database is linked to one customer account only.
If the Order points at a Customer that doesn't have a `zuora_id` on it, the customer's Subscription cannot be found.
This may then lead to cloud activation errors and SaaS subscriptions not syncing to GitLab.com.

#### Workflow

##### Self-Served

As first option we should **always** ask the customer to reset the account password and access the corporate email address to complete the reset and then change the associated email, name for the account, and linked GitLab.com account (if applicable).

##### Support assisted

For any situation where the customer is not able to complete the self-served option on CustomersDot:

1. If the customer has already created a new account and wants the ownership to be transferred.
    - Point them to [Issue#4247](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4247) and explain that might cause purcharing problems.
    - Change the email in the new account for example: `person@example.com` to `person_edited@example.com`
1. Update the `Name` and `Email` of the current account.
1. For SaaS only, use the [unlink GitLab.com Account mechanizer function](mechanizer.html#unlink-gitlabcom-account).
1. Trigger a [password reset](https://customers.gitlab.com/customers/password/new) to the new email, and for SaaS, to link their GitLab.com account.

#### If a change is needed in the contact for future renewal related emails   
Pass to Billing team by following the [Zuora Contact Change Workflow](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/billing_contact_change_payments.html#zuora-contact-change).

Always remind SaaS customers to [link their GitLab account](https://docs.gitlab.com/ee/subscriptions/#change-the-linked-account)
to ensure their subscription is kept in sync with the linked GitLab group.

**Reseller customer note:** This process is slightly different for customers who have purchased their subscription through a reseller, as the customer will not be directed to create a new cDot account. Instead:

1. Confirm the requester's identity.
2. Update the current (locked to the customer) CustomersDot account with the requested changes.
3. Pass the request to billing to update the Zuora record for the customer.

Please keep in mind that the customer (if purchased via a reseller) will only have one subscription contact in CustomersDot - if such a customer is requesting multiple contacts be added, please recommend that they propose a shared inbox or email address for the account update.
