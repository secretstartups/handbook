---
layout: handbook-page-toc
title: Downgrades, cancellation and refund requests
category: General
description: Valid cancellation and refund requests require action from our Billing/Accounts Receivable team.
---

----

## Overview

Valid cancellation and refund requests require action from our Billing/Accounts
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

## Downgrades

There is currently [no ability to downgrade a subscription from a self-service perspective](https://gitlab.com/gitlab-org/customers-gitlab-com/issues/368).

If a user wants to downgrade and they are within 45 days of the purchase, send
the request to the AR team by selecting the form `Accounts Receivable` in
Zendesk and advise the user to purchase the desired plan once cancelled/refunded.

If the user is outside of the 45 day period, advise them that we can cancel the
purchase but the subscription will not be refunded. In this case you can also
consider passing the issue to the assigned Account Manager in sales if the deal
is midmarket or higher.

## Cancellations

When a customer wishes to cancel their subscription and they are not interested
in waiting until the subscription expires.

1. Make sure that there aren't any other types of queries that would need the
   Support team's attention
1. Use the `General::Accounts Receivable` macro to transfer the ticket to AR to
   process the cancellation. They will reply to the customer once done and issue
   a refund if applicable.

## Refunds

When a customer wants a refund and their purchase is [eligible for a refund](/terms/)
(within the 45 day refund period).

> **Note:** *There may be special circumstances where we may be able to request
a refund outside of the eligibility window - if you believe a case qualifies for
this, CC a manager for approval.*

1. Determine the reason that they're cancelling and requesting a refund.
1. Make sure that there aren't any other types of queries that would need the
   Support team's attention
1. Use the `General::Accounts Receivable` macro to transfer the ticket to AR to
   process the refund. They will reply to the customer once done.

Note: we cannot do partial refunds, so when a refund is requested, the whole
subscription will have to be cancelled and refunded. See `Renewal reversal` for
accidental renewal scenarios.

## Renewal reversal

When a customer has accidentally renewed twice or mistakenly.

1. Determine the reason that the renewal has to be reversed
1. Use the `General::Accounts Receivable` macro to transfer the ticket to AR,
   they will reverse the renewal so that the subscription is in the same state
   as before the renewal and refund the renewal if applicable
