---
layout: handbook-page-toc
title: Troubleshoot Errors While Making Purchases on GitLab.com
category: GitLab.com subscriptions & purchases
description: Troubleshooting guide for purchase errors on GitLab.com
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Overview

This guide helps you troubleshoot purchasing errors on [GitLab.com](https://gitlab.com/sign_in).

Many subscription and consumption purchases can be made through GitLab.com. At the Payment step, a customer may encounter a generic error like the following:
> An error occured in the purchase step. If the problem persists please contact support@gitlab.com.

# Known Issues

Our top 3 most reported known issues are:

1. [Expired subscriptions on a namespace](https://gitlab.com/gitlab-org/gitlab/-/issues/349459)
1. [Blank lastname/surname field](https://gitlab.com/groups/gitlab-org/-/epics/5785)
1. [3D Secure](https://en.wikipedia.org/wiki/3-D_Secure) credit-card authentication protocol is [not supported](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/3811)

We will be [documenting any issues](https://gitlab.com/gitlab-com/support/toolbox/console-training-wheels/-/issues/19) that might be a result of the workarounds proposed in this workflow

# Workflow

## Get the error from Sentry
Attempt to [locate the specific Sentry error event](#finding-an-error-message-in-sentry) logged for the user **making the purchase**. 
Please note that sometimes the ticket submitter might not be the user making the purchase.

**NOTE:** If you are unable to locate any error messages, check that the known issues do not apply to the user before requesting them to re-attempt the purchase.

## Check for an expired subscription on the namespace
> The Contract effective date should not be later than the term end date of the basic subscription

1. Locate the accounts linked to the user's namespace in Customers Portal
1. Check that ALL subscriptions in ALL customer accounts are expired
1. Confirm that the namespace is on a `Free` plan
1. If the namespace is on `Free` and has no active subscriptions:
   - Use the [Clear Subscription form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/clear_subscription.html) to unlink the expired subscription from the namespace
1. If the namespace is on a paid plan, request the user to:
   1. Create a new [Customers Portal](https://customers.gitlab.com/customers/sign_in) account
   1. [Link their GitLab account](https://docs.gitlab.com/ee/subscriptions/#change-the-linked-account)
   1. Retry the purchase from the new portal account

## Check whether the user's account has only one name (no surname)
> "last_name":["can't be blank"]

Request the user to add a second name in their GitLab account profile as a temporary workaround. Here are the steps:

1. Navigate to your account profile settings https://gitlab.com/-/profile
1. Under Main Settings, Update the Full Name field to have **2 names with a space between the names**
1. Scroll to the bottom and click on `Update profile settings` (Don't forget this)
1. Retry the purchase

## 3D Secure Authentication (3DS)
> Transaction declined.generic_decline - Your card was declined

Our current integration with Zuora does not support authorizing payment methods which require 3DS. 
With the volume of users requiring this being low, the issue has not yet been prioritized.

For now, the first option is to request the user to try another card. 
You can also [reach out to Sales](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/working_with_sales.html#specific-workflows-to-pass-to-sales) to offer the user an alternative payment method.

### Replying with next troubleshooting steps

If you could not find the user's specific error in Sentry, then consider asking for a browser console output. Some purchasing error details are visible in this output.

Please use your best judgement to **try to limit the number of purchase retries you ask the user to attempt** 
so that their card does not get locked or blocked.

# Finding an error message in Sentry

<i class="fas fa-exclamation-triangle color-orange"></i> The Error message displayed in the top section of an issue is not always
the same error displayed for a specific user. Always check the **event details** related to the user.

To find the error specifically related to a user on Sentry, try the following:

1. Get the `ID` and `Username` of the user making the purchase from GitLab using any of the following:
   - Chatops: Run `/chatops run user find <username or email>`
   - Admin account: Navigate to the admin link in the [GitLab User Lookup](/handbook/support/support-ops/documentation/zendesk_global_apps.html#gitlab-user-lookup) Zendesk app
   - [Users API](https://docs.gitlab.com/ee/api/users.html#for-normal-users): Search for user using their email or username
   - Note the `ID` value of the user's account
1. Find the errror message for the user in Sentry's `gitlabcom-clientside` project:
   - Go to https://sentry.gitlab.net/gitlab/gitlabcom-clientside/issues/
   - Use `user:"id:userID"` (replace `userID` with the actual ID from GitLab)
   - Look for an error with `buy_minutes` or `buy_storage` that looks like `Error?(/assets/webpack/commons-pages.subscriptions.buy_minutes-pages.subscriptions.buy_storage.49207fe4.chunk.js)`
   - Open sentry issue → Click on `EVENTS`. The list of events are automatically filtered with your search term
   - Click on any to see details of the error message
1. Find the error message for the user in Sentry's `gitlabcom` project:
   - Go to https://sentry.gitlab.net/gitlab/gitlabcom/issues/
   - Use `user:"username:example"` (replace `example` with the actual username from GitLab)
   - Look for an error regarding `SubscriptionsController`
   - Open sentry issue → Click on `EVENTS`. The list of events are automatically filtered with your search term
   - Click on any to see details of the error message
1. If the purchase was also attempted from [CustomersDot portal](https://customers.gitlab.com/customers/sign_in), use
the [workflow](/handbook/support/license-and-renewals/workflows/customersdot/troubleshoot_errors_while_making_purchases.html#getting-error-message-from-sentry) 
to find the error message in [Customers Portal Sentry project](https://sentry.gitlab.net/gitlab/customersgitlabcom/issues/).
