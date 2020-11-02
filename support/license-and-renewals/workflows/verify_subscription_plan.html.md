---
layout: handbook-page-toc
title: Verify GitLab.com Subscriptions
category: Legacy pages
description: Guide on how to verify the status of a GitLab.com subscription.
---

## On this page
- TOC
{:toc}

----

### Overview
Many customers sign up for GitLab.com Subscription Plans and this guide will
tell you how to verify what a customer has subscribed to, explain upgrade paths
and how to process refunds.

---

### Verifying Subscription Status

#### Using customers.gitlab.com (recommended)

1. Sign in to [customers.gitlab.com](https://customers.gitlab.com/admin) admin area using the
   support credentials in 1Password

1. Select **Customers** from the navigation on the left

1. In the **Filter** box, search for the customer using any of the criteria
   you got from the customer (name, company, etc.)

   + If you don't find the customer this way, ask the customer for more
     information about their account on customers.gitlab.com

1. On the right side of the customer's entry, you will see a lowercase **i**.
   Click on it to see lots of this customer's data.

   + On the new page you can find the Zuora and SalesForce accounts.

1. Click the **Impersonate** tab on the top of the page
1. On this new page you will see the customer's plan and its expiration date.

#### Using SalesForce

1. Sign in to [Salesforce](https://login.salesforce.com/) using the support
   credentials in 1Password

1. At the top of the page, search for the user or company

1. Look under the **Accounts** category for a result.  Click on the **Account
   Name** that matches the company you're looking for.

1. Under **GitLab Subscription Information** look for the Purchased Products.
   You can also find the Next Renewal Date in this section.


### Upgrading an account
Customers may want to upgrade their accounts (e.g. from Bronze to Silver) to
access features not offered under their plan.

To process an upgrade:

1. Verify their current subscription status
1. In SalesForce, locate their account and find the *Account Owner*
1. Reply to the upgrade request ticket in ZD (or create a new one) and CC the
   account owner.

### Refunds processed as % of orders

For a month take the number of refunds and divide that by the total amount of orders (including self-managed and sales initiated orders). This analysis can be found [in Sisense](https://app.periscopedata.com/app/gitlab/527913/Product-KPIs?widget=7720228&udv=0).

**Note** This does not include [Internal Refunds](/handbook/business-ops/order-processing/#how-to-handle-duplicate-accounts-and-opportunities-from-web-direct-purchases) which are results from when a web direct opportunity from a closed month is not credited to the correct sales person. Internal Refunds are not refunds to customers, therefore not meaningful when analyzing refunds processed as orders from GitLab's revenue system, Zuora.

We don't have a fixed goal but this number should get lower as the fullfillment group improves the self-service portal.
