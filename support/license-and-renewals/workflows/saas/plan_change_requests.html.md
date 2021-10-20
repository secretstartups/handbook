---
layout: markdown_page
title: Plan change requests
description: "How to handle requests for plan changes"
category: GitLab.com subscriptions & purchases
---

{:.no_toc}

----
# Plan change requests

## Important

- Before using this workflow verity if the namespace recently purchase a plan and if that is the case,
associate that purchase instead of using this method.

- If this workflow is used always verify the number of seats with the requestor before closing the request.

## Summary

A plan change is when an existing GitLab SaaS plan will be modified on its plan level or subscription end date.

### Which are the plan levels?

1. Ultmate
1. Premium
1. Free

## Steps

### Using Mechanizer

1. Use the [Update GitLab Subscription](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/update_gitlab_plan.html)
   to modify the customer's plan as neeed.

  > If you don't enter a date, the existing subscription date will be used.

### Using customerDot

**Important**

From CustomerDot you can only change the plan type not the subscription end date.

1. From the left side menu click on `customers` and search for the customer.
1. In the search results click on the GitLab groups icon for the customer you want to update.
1. You'll see a list of groups owned by the customer and you can perform your change here.
> If you receive an error, follow the usual troubleshooting procedures in
> looking up the error in sentry and/or for an existing CustomersDot issue,
> adding to an existing issue or creating a new one as required.

### What if I got an error?

If these don't work, as a workaround the plan can be changed manually in one of two ways:
   1. GitLab.com: Add ~"Admin Escalation" label and if needed, ping the dotcom group.
   1. Customers Console: Add ~"Console Escalation::Customers" and if needed, ping the customers-console group.
