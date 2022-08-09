---
layout: markdown_page
title: Handling multi-year subscriptions
description: "How to handle GitLab multi-year subscriptions"
category: GitLab Self-Managed licenses
---

{:.no_toc}

----

From time to time, you will run into cases where customer has a multi-year subscription. This is only possible if a subscription is purchased through Sales, since there's no option to make a multi-year subscription from [CustomersDot](https://customers.gitlab.com).

### Problem with multi-year subscriptions:
1. The license is automatically generated for the **first year only**. Read more at [Licensing FAQ](https://about.gitlab.com/pricing/licensing-faq/#i-purchased-a-multi-year-subscription-why-is-my-license-only-for-1-year)
1. The license is always generated with the first year's start/end date for any future updates to the subscription.

---

## Workflows

### Confirm customer subscription

To check whether the customer has a multi-year subscription:

1. Navigate to Saleforce and locate the relevant opportunity which generally has a `Close date` in the recent past
1. Click on the opportunity → search for `quotes` → click on the most recent quote
1. Search for `Renewal Term`, which shows the subscription term for the quote in months

### Handling the request

After confirmation and before [generating a new license](creating_licenses.html) with a proper `Start date` and `End date` for the customer, please ask the customer for their system information using the ZenDesk `Subscriptions::Active Users` macro.

1. If there are *not* any `Users over license`, proceed to generate the new license.
1. If there *are* `Users over license`, confirm that they are accounted for in the quote. Otherwise, follow the [Working with sales workflow](../working_with_sales.html). We can generate a new license once the `Users over license` has been paid for.
