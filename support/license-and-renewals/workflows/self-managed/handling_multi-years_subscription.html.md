---
layout: markdown_page
title: Handling a multi years subscription
category: GitLab Self-Managed licenses
---

{:.no_toc}

----

From time to time, you will run into cases where customer has a multi years subscription. This is only possible if a subscription is purchased through Sales, since there's no option to make multi year subscription from [CustomersDot](https://customers.gitlab.com).

### Problem with multi years subscription:
1. The license is automatically generated for the first year only. Read more at [Licensing FAQ](https://about.gitlab.com/pricing/licensing-faq/#i-purchased-a-multi-year-subscription-why-is-my-license-only-for-1-year)
1. The license will always generated with the first year start/end date for any future updates to the subscription.

---

## Workflows

### Confirm customer subscription

To check whether the customer has a multi year subscription or not:

1. Navigate to Saleforce and locate the relevant opportunity which generally has a `Close date` in the recent past
1. Click on the opportunity → search for `quotes` → click on the most recent quote
1. Search for `Renewal Term`, this show the subscription term for the quote in months

### Handling the request

After confirmation, before we can [generate a new license](creating_licenses.html) with a proper `Start date` and `End date` for the customer, please ask the customer for their system information using ZenDesk macros `Subscriptions::Active Users`.

1. If there isn't any `Users over license`, please proceed to generate the new license
1. If there's any `Users over license`, please confirm that they are accounted for in the quote. Otherwise, follow the [Working with sales workflow](../working_with_sales.html). We can generate a new license once the `Users over license` has been paid for/
