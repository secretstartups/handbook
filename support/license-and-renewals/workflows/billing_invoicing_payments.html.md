---
layout: handbook-page-toc
title: Billing, invoice and payments requests
category: General
description: Billing and invoicing requests require action from our Billing/Accounts Receivable team.
---

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Billing and invoicing requests require action from our Billing/Accounts
Receivable team.

The following information is helpful to provide to the AR team when transfering
tickets, but not required.

1. Subscription #
1. Subscription information - copy & paste from `Manage Purchases` in
   [CustomersDot](https://customers.gitlab.com/customers/sign_in)
1. Zuora ID - available in the [CustomersDot](https://customers.gitlab.com/customers/sign_in)
   under the `Edit` tab
1. Salesforce Account ID - available in the [CustomersDot](https://customers.gitlab.com/customers/sign_in)
   under the `Edit` tab

## Billing

### Zuora contact change

When a customer wants to change the contact for current and future purchases.

> **Note:** *Billing doesn't have a vetting process, so we need to vet the
customer as far as possible before passing the request*

1. Verify that they are associated with the account / authorised to make the
   request, by checking the following:
   - if they are a contact in SFDC
   - if their domain name matches the company/previous contact
   - getting permission from the old contact
   - checking if they are the owner of the group (for a SaaS subscription)
   - checking if they have access to the instance (via a screenshot)
   - checking if they have access to the account by asking for an invoice
1. Use the `General::Accounts Receivable` macro to transfer the ticket to AR to
   update the bill to and sold to contact in Zuora

Support will still generate a manual license if new contact wants an updated
license. Zuora update is primarily effective for future purchases.

### Billing processes to know about

#### Zuora entity change

When billing processes an [entity change](https://gitlab.com/gitlab-com/Finance-Division/finance/-/wikis/Process-for-change-of-entity),
billing creates a second Zuora account for the customer, with a different entity
than the original.

When an entity change happens at renewal, it can impact how licenses are
generated. If you are troubleshooting a license issue, check Zuora to see if
there are 2 accounts with different entities to confirm if an entity change took
place.

The issue that we will see more often is the renewal license not generated with
previous users or trueups. In the event of the license being impacted by the
entity change, we can assist with a manual license.

## Invoice

### Request copy of invoice

Check first if the invoice is available in [CustomersDot](https://customers.gitlab.com/customers/sign_in).

* If yes: walk the customer through locating the invoices under Payment History for future self-service ability.
* If no: Use the `General::Accounts Receivable` macro to transfer the ticket to AR to
  process the request. They will reply to the customer once done.

### Invoice modification

When a customer wishes to modify their invoice for tax or administration purposes.

1. Verify that the invoice exists in the system
1. Make sure that there aren't any other types of queries that would need the
   Support team's attention
1. Use the `General::Accounts Receivable` macro to transfer the ticket to AR to
   process the request. They will reply to the customer once done.

## Payments

### Requests to make a payment/payment failed

Use the `General::Accounts Receivable` macro to transfer the ticket to AR to
process the request. They will reply to the customer once done.

### Credit card removal

When a customer wishes to remove their credit card from their CustomersDot
account.

1. Make sure that there aren't any other types of queries that would need the
   Support team's attention.
1. Use the `General::Accounts Receivable` macro to transfer the ticket to AR to
   process the request. They will reply to the customer once done.
