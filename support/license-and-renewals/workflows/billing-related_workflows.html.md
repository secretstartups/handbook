---
layout: handbook-page-toc
title: Billing-related Workflows
category: General
description: These workflows outline the steps for working on a ticket that would require action from our Billing/Accounts Receivable team.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

##### Overview

These workflows outline the steps for working on a ticket that would require action from our Billing/Accounts Receivable team.

---

## Workflows

### Refunds:

When a customer wants a refund and their purchase is [eligible for a refund](/terms/) (within the 45 day refund period).
>**Note:** *There may be special circumstances where we may be able to request a refund
outside of the eligibility window - if you believe a case qualifies for this, CC a manager for approval.*
<<<<<<< HEAD

1. Determine the reason that they're cancelling and requesting a refund. 
=======
1. Determine the reason that they're cancelling and requesting a refund.
1. Make sure that there aren't any other types of queries that would need the Support team's attention
1. Use the `General::Accounts Receivable` macro to transfer the ticket to AR to process the refund. They will reply to the customer once done.

Note: we cannot do partial refunds, so when a refund is requested, the whole subscription will have to be cancelled and refunded. See `Renewal reversal` for accidental renewal scenarios.

----

### Renewal reversal:

When a customer has accidentally renewed twice or mistakenly
1. Determine the reason that the renewal has to be reversed
1. Use the `General::Accounts Receivable` macro to transfer the ticket to AR, they will reverse the renewal so that the subscription is in the same state as before the renewal and refund the renewal if applicable

----

### Subscription cancellation:

When a customer wishes to cancel their subscription and they are not interested in waiting until the subscription expires
1. Make sure that there aren't any other types of queries that would need the Support team's attention
1. Use the `General::Accounts Receivable` macro to transfer the ticket to AR to process the cancellation. They will reply to the customer once done and issue a refund if applicable.

----

### Zuora contact change:

When a customer wants to change the contact for current and future purchases
>**Note:** *Billing doesn't have a vetting process, so we need to vet the customer as far as possible before passing the request*

1. Verify that they are associated with the account / authorised to make the request, by checking the following:
   - if they are a contact in SFDC
   - if their domain name matches the company/previous contact
   - getting permission from the old contact
   - checking if they are the owner of the group (for a SaaS subscription)
   - checking if they have access to the instance (via a screenshot)
   - checking if they have access to the account by asking for an invoice
1. Use the `General::Accounts Receivable` macro to transfer the ticket to AR to update the bill to and sold to contact in Zuora

Support will still generate a manual license if new contact wants an updated license. Zuora update is primarily effective for future purchases.

----

### Credit card removal:

When a customer wishes to remove their credit card from their CustomersDot account
1. Make sure that there aren't any other types of queries that would need the Support team's attention
1. Use the `General::Accounts Receivable` macro to transfer the ticket to AR to process the request. They will reply to the customer once done.

----

### Invoice modification:

When a customer wishes to modify their invoice for tax or administration purposes
1. Verify that the invoice exists in the system
1. Make sure that there aren't any other types of queries that would need the Support team's attention
1. Use the `General::Accounts Receivable` macro to transfer the ticket to AR to process the request. They will reply to the customer once done.

## Billing processes to know about

### Zuora entity change

When billing processes an [entity change](https://gitlab.com/gitlab-com/Finance-Division/finance/-/wikis/Process-for-change-of-entity), billing creates a second Zuora account for the customer, with a different entity than the original.

When an entity change happens at renewal, it can impact how licenses are generated. If you are troubleshooting a license issue, check Zuora to see if there are 2 accounts with different entities to confirm if an entity change took place.

The issue that we will see more often is the renewal license not generated with previous users or trueups. In the event of the license being impacted by the entity change, we can assist with a manual license.
