---
layout: handbook-page-toc
title: Subscription and billing issues
category: License and subscription
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}
## Overview

Refer to this page when a user has questions/issues related to transactions, licensing or billing for self-managed or GitLab.com. Note the information on this page applies to both Self-Managed and GitLab.com users/products unless specifically indicated as an exception.

## Issue Trackers

The list of common requests/issues below is reference for internal support engineers. Unless specifically noted, utilize the following issue tracker decision table for submitting issues.

| Issue Tracker |Use Case |
|------|-------|
| [GitLab Issue Tracker](https://gitlab.com/gitlab-org/gitlab/issues) |   Issue related to self-managed or GitLab.com functionality or backend processing  |
| [Support Engineer Escalations](https://gitlab.com/gitlab-com/support/internal-requests/-/issues) | Customers portal issue which may be billing or bad data related    |
| [Customers Portal](https://gitlab.com/gitlab-org/customers-gitlab-com/issues) | Issue is caused specifically by something within the Customers Portal    |
| [License App](https://gitlab.com/gitlab-org/license-gitlab-com/issues) | Issue is affecting self-managed license generation or generated licenses    |

## License Vs Subscription Explained

For self managed, a license is an artefact that customers need to upload to their instance to have access to the paid features in their subscription. This doesn't exist and is not needed for Gitlab.com subscriptions.

For GitLab.com, there is no artefact to be uploaded but the subscription (seen in the customer portal) has to be linked to their namespace (on GitLab.com). If the portal and Gitlab.com don't have the link, then, GitLab.com won't know that a subscription exists.

Also, subscription is an umbrella term for the base product purchased: for instance, if `subscription` is a fruit, then `Premium` (self-managed), `Silver` (Gitlab.com) etc would be types of fruits that can be purchased.

## Transactions

Transactions at GitLab are defined as anything related to purchasing; issues or questions. For example: credit card problems, bugs, trying to make a purchase, and running into confusion/problems, etc.

1. **User reports an inability to upgrade from one paid plan to another.**

    - GitLab.com users can upgrade their paid plan to a higher tier in the [customers portal](https://customers.gitlab.com/customers/sign_in) by selecting the `Upgrade` button beneath the subscription widget.
    - Self-managed GitLab users need to be put in contact with a sales rep in order to upgrade their plan to a higher tier. Utilize the `Upgrade Plan Request` macro in Zendesk. This will request necessary information from the user and reassign the ticket to the License, Renewals and Upgrades queue.

1. **User wants to trial a plan other than Gold on GitLab.com.** GitLab.com [only offers the self-service ability to trial the Gold subscription](https://gitlab.com/gitlab-org/customers-gitlab-com/issues/409). With manager approval, GitLab.com support can assist with trials of other plans. Ask the user to create the GitLab.com Gold trial, then change the plan via the customers portal admin `GitLab Groups` page.

1. **User receives an error during the purchasing process within the [customers portal](https://customers.gitlab.com/customers/sign_in).** When purchasing a subscription via the customers portal if a user receives an error about an address or credit card, check the address listed in the `My Account` section of the customers portal. This is typically due to a bad address (city/state/zip code). If the address is correct and the error persists, check sentry for a relevant error and file an issue in the [customers portal tracker](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/) as necessary.

1. **User wants to downgrade subscription.** There is currently [no ability to downgrade a subscription from a self-service perspective](https://gitlab.com/gitlab-org/customers-gitlab-com/issues/368). If a user wants to downgrade and they are within 45 days of the purchase, send the request to the AR team by selecting the form `Accounts Receivable` in Zendesk and advise the user to purchase the desired plan once cancelled/refunded. If the user is outside of the 45 day period, advise them that we can cancel the purchase but the subscription will not be refunded. In this case you can also consider passing the issue to the assigned Account Manager in sales if the deal is midmarket or higher.

1. **User wants the red renewal approaching banner message in their Self-Managed system removed.** This message will be displayed to all users in the 30 days leading up to the renewal date. The message will only be removed when a new license key is uploaded.

1. **User doesn't know the steps to purchase a GitLab.com subscription.**

   - Create an account in [GitLab.com](https://gitlab.com/users/sign_in)
   - [Create a group](https://docs.gitlab.com/ee/user/group/#create-a-new-group) if desired in GitLab.com and [add group members](https://docs.gitlab.com/ee/user/group/#add-users-to-a-group)
   - Create an account in the [customers portal](https://customers.gitlab.com/customers/sign_up)
   - Associate GitLab.com account with customers portal account. First log into GitLab.com, then in another tab in the same browser open the customers portal and navigate to `My Account` and select `Change Linked Account`
   - Purchase desired subscription from https://about.gitlab.com/pricing/#compare-options, selecting the desired group during the purchase process.

1. **User doesn't see their group during purchase process.** If the customer can't see their Group when purchasing a subscription, one of the below options are likely happening:
   - They need to create a Group on GitLab.com first
   - They need to associate their GitLab.com account with their customers portal account

1. **User purchased CI minutes but they aren't associated with their group.**

    1. Check to see if the minutes are associated with the users personal namespace.
    1. Check to see if the user who purchased the minutes has owner permission for the group which the minutes should be associated.
       - If no, reply to user stating that they need to either get their permission updated to owner or we can refund the minutes and an owner can purchase them again.
       - If yes, continue …
    1. Try associating the minutes in the customer’s portal via the `Change linked group` button.
        - If this works, stop and notify user.
        -  If this is unsuccessful (either [tries to charge for users due to known issue](https://gitlab.com/gitlab-org/customers-gitlab-com/issues/630) or appears to associate but doesn’t really do anything), continue …
    1. Reset the pipeline minutes via GitLab.com admin UI. Sometimes this shakes things loose and the association actually works.
        - If this works, stop and notify user.
        - If this is unsuccessful, create a console esclation issue ([example](https://gitlab.com/gitlab-com/support/internal-requests/issues/1050)). Include Zendesk link, customers portal link, Customer ID, Group Name, Group ID, Subscription (number/name). Assign the `Customers Console escalation` label.

1. **User wants to pay monthly.** - [This is not an available option.](https://about.gitlab.com/pricing/licensing-faq/#can-i-pay-for-the-subscription-monthly)

1. **User wants to know how pricing works with members in their group on GitLab.com** - [Read faq here](https://about.gitlab.com/pricing/licensing-faq/#whats-the-difference-between-a-group-plan-and-a-personal-plan-on-gitlabcom)

1. **User wants to know if they should add more users midterm or during the renewal process.** - Using the "Add more seats" button (for self-managed) in the customers portal at any time during their subscription will charge a pro-rated amount for the additional users. If they wait to purchase the additional users at the renewal via the [true-up users](https://about.gitlab.com/pricing/licensing-faq/#what-does-users-over-license-mean) process, the users will be charged for 12 months of use.

1. **User reports they cannot log into the [customers portal](https://customers.gitlab.com/customers/sign_in).** - The user is likely logging into the wrong system (usually GitLab.com). Provide the user with the proper url as demonstrated in this example ticket[#144710](https://gitlab.zendesk.com/agent/tickets/144710).


## Licensing
Licensing requests refers to problems or questions related to license keys for the Self-Managed product.


1. **Instructions for activating the license key.** For Self-Managed subscriptions, a license key must be uploaded in order to unlock the applicable paid features. Follow the instructions for [uploading the license key](https://docs.gitlab.com/ee/user/admin_area/license.html#uploading-your-license)

1. **User wants to know when they will receive the license key or who the license will be sent to.** The license key will be emailed, [to the email address associated with the subscription in the customers portal](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1044#note_318221832), once subscription payment is approved internally by the billing team.  If there is an unusually long delay, assign the ticket to the "License, Renewals and Upgrades" queue or [open an issue](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=license%20issue) using the "license issue" template.

1. **User doesn't renew paid Self-Managed plan, what happens to the license and features?** The license key will expire 14 days after the expiration date. The system will revert to  read-only mode  if a new key is not uploaded. If  the user doesn't purchase  another plan and  subsequently upload a new license, instruct them to remove the old license so the system will revert to the free Core (EE) functionality. Note, it is no longer necessary to downgrade to CE package.

1. **A customer reports problems when registering their license key** All license issues should be redirected to the "License, Renewals and Upgrades" queue. The following troubleshooting guide is provided here as reference.

A license key will error if any of the following 3 values are incorrect:

| Key Field |Definition & source of truth |
|------|-------|
| Users count |   We identify the minimum amount via the active.users command: `sudo gitlab-rails runner 'p User.active.count'`  |
| Previous users count |   We can try to assume based on licenses in our License App but this cannot be certain since multiple licenses may be generated for one period. Instead, the best identifier is the system itself. For this we request a screenshot of the user statistics panel from `Admin Area -> Overview -> Dashboard`. The Previous users count = `Users in License` in the widget on the top left. |
| True-up count |   The best identifier for this value is to take Max Users - Previous users count. I recommend using the historical.max command: `sudo gitlab-rails runner 'p ::HistoricalData.max_historical_user_count'` for the Max count.  |

Note that for Ultimate licenses, guest users are not counted in the licensed user count. Therefore, the `User.active.count` will be a greater number than the `Active Users` count displayed in the Admin UI dashboard. This can be confusing in a situation where the customer is downgrading from Ultimate or if they have an Ultimate trial, as they'll need a license for `User.active.count` rather than what's displayed for `Active Users`.

Consider the following examples:

**EXAMPLE 1**
   - Subscription for 10 users
   - During the subscription term incurs a max of 15 users
   - Before renewal, blocks 3 users
   - At renewal, the license would need to be generated as: `Users count: 12` (or more), `Previous users count: 10`, `Trueup count: 5 `

**EXAMPLE 2**
  - Subscription for 20 users starts in December with only 12 active users in the system
  - In March, 5 users are blocked leaving 7 active users (12 max users)
  - In April, 5 new users are added making the active user count 12 (12 max users)
  - In July, 10 more new users are added making the active user count 22 (22 max users)
  - In August, 5 users are blocked making the active user count 17 (22 max users)
  - At renewal, the license would need to be generated as: `Users count: 17` (or more), `Previous users count: 20`, `Trueup count: 2`

**EXAMPLE 3**
  - Ultimate subscription for 10 users
  - During the subscription term, has 12 active users, including 2 guest users
  - At renewal, downgrades to Premium license
  - License would need to be generated as: `Users count: 12` (or more), `Previous users count: 10`, `Trueup count: 0`


## Billing
Billing refers to inquiries which can be handled by our Accounts Receivable team. Examples of common billing requests are list below. These request should be sent to Accounts Receivable using the `General>Accounts Receivable` macro.

1. Copy of invoice - _check first if the invoice is available in the [customers portal](https://customers.gitlab.com/customers/sign_in),  if  yes, walk the customer through locating the invoices under Payment History for future self-service ability._
1. Changes to invoice (address, company name, VAT #, etc)  - _before sending this to AR, make sure the customer has provided all of the needed information._
1. Refund requests - _only if the purchase was made within the last 45 days. If outside this period loop in account manager._
1. Requests to make a payment/payment failed - pass the request to AR by selecting `Accounts Receivable` in the form field in the Zendesk ticket.


The following information is helpful to provide to the AR team when transfering tickets, but not required.

1. Subscription #
1. Subscription information - copy & paste from `Manage Purchases` in [customers portal](https://customers.gitlab.com/customers/sign_in)
1. Zuora ID - available in the [customers portal](https://customers.gitlab.com/customers/sign_in)  under the  `Edit` tab
1. Salesforce Account ID - available in the [customers portal](https://customers.gitlab.com/customers/sign_in)  under the  `Edit` tab

## Passing to sales

 1. **Sales leads pass.** Note, [sales territories](/handbook/sales/territories/) are segmented by region and size. Size is broken up into Large (2000+ total employees), MidMarket (100-1,999 total employees), Small business (0-99 total employees).
    1. **New business workflow** - a user does not currently subscribe to a GitLab subscription and wants a quote from sales.
        - Identify if the company is in SFDC; look up the email domain in SFDC global search. Note the `Type` field in the SFDC account record (Customer vs. Prospect). If prospect account is found, and `Account Owner` contains a sales rep, pass the ticket to the Account Owner listed using the [Pass to Sales ZD macro](https://gitlab.zendesk.com/agent/admin/macros/360025924680).
        - If the account is in SFDC, but there is no Account Owner listed, use the `Sales Segment` (Large, MM, Small) and Billing Address to determine which salesperson the request should be passed using the [Pass to Sales ZD macro](https://gitlab.zendesk.com/agent/admin/macros/360025924680) based on [Sales territories](/handbook/sales/territories/).
        - If the account is not in SFDC, respond to ticket with the [New Sales Quote ZD macro](https://gitlab.zendesk.com/agent/admin/macros/360026025019).
    1. **Renewals workflow** - a current customer wants a renewal quote.
        - Identify if the company is in SFDC; look up the email domain in SFDC global search. Note the `Type` field in the SFDC account record (Customer vs. Prospect). Note the Account Owner and the Opportunity Owner of the upcoming renewal opportunity. Pass the request to the opportunity owner.
        - If the opportunity and account owner is listed as "SFDC Admin", check the `Sales Segment` field as this is likely Small Business. If so, use the [Sales territories](/handbook/sales/territories/) reference to identify who it should be referred to using the [Pass to Sales ZD macro](https://gitlab.zendesk.com/agent/admin/macros/360025924680).
    1. **Additional reasons to escalate to renewal sales**:
        - complaint with request of credit (ex. GitLab.com performance has been terrible, they want credit)
        - any paper quote request for orders more than $1,000 annually (has a PO, can't pay via credit card, need an invoice prior to payment
        - downgrading product tiers
        - transitioning from one product to another (GitLab.com <-> Self-Managed)
        - downgrading the number of users
        - renewal cancellation/refund other than SMB
    1. **Workflow for tickets which have been escalated to sales** - daily, review the tickets which have been escalated to sales, requesting status and closing as possible. _(pro tip: create a personal ticket view where "Escalated to Sales" = checked, to pull these out into their own queue)_
        - Ping in Slack ([#sales](https://gitlab.slack.com/archives/C02NE5PQM) for new business, [#account-management](https://gitlab.slack.com/archives/C44SXGG8M) for renewals) if ticket is urgent or the copy to the sales person was not answered. Copy the manager on the 2nd ping in Slack.

## Troubleshooting sales-assisted transactions for GitLab.com

If the user sees a subscription in the customers portal but doesn't see the paid plan active in their GitLab.com account, have the user associate the group with the subscription.

Associating a group with a subscription in the customers portal:
1. Log into: https://customers.gitlab.com/customers/sign_in
1. Navigate to **Manage Purchases**
1. Select **Change linked group**
1. Select the desired group from the **This subscription is for dropdown**
1. Select Proceed to checkout

If the user doesn't see a subscription in their customers portal:
1. Log into [Salesforce](https://login.salesforce.com/) using the generic
email. Password is stored in 1Password.
1. Using the global navigation search on the top right, enter the email address associated with the purchase
1. Select the appropriate account (note that Type = Customer)
1. Copy the SFDC Account ID from the page's URL to a clipboard _note: this is the number appended to end of the URL after `gitlab.my.salesforce.com/`_
1. From the Quotes related list, select the Quote record with the proper susbcription term and with `Status` = `Sent to Z-Billing`
1. Copy the `Zuora Account ID` to a clipboard
1. Log into the [customers portal](https://customers.gitlab.com/customers/sign_in) using the generic
email. Password is stored in 1Password.
1. Locate the proper account in the customers portal and navigate to the `Edit` page
1. Enter the `Zuora ID` and `Salesforce Account ID` in the fields and select `Save`
1. Walk the user through the steps for Associating a group with a subscription noted above

## Creating a license key

You will frequently need to generate a new license key due to either user error or system error. If a license exists for the same subscription, prior term is ok, simply choose that license and select the `Duplicate` button to generate the new license. During the edit process, update the applicable fields (recipient name, email, number of active users, prior users, true-up users, plan, start/end dates, etc) and add a link to the Zendesk ticket or GitLab issue for the request in the Notes field. Select the `Create License` button and the license key will be automatically emailed to the address you inputted.

When an existing license isn't available to duplicate, instead select, `New license` and fill in all of the above mentioned fields, along with the Zuora subscription ID and Zuora subscription name.

## Associating customer portal subscriptions with additional accounts

Sometimes customers ask that a colleague be given the ability to manage a subscription. This can be accomplished provided they also have a customer portal account.

Prior to following the below steps, ensure the requester should have access to the subscription.
1. For self-managed, send the [Change Customers Portal Contact](https://gitlab.zendesk.com/agent/admin/macros/360028045239) Zendesk macro. Be sure to copy the existing customers portal contact on the reply.
1. For GitLab.com, as long as the requester holds `owner` permissions in the group associated with the subscription, they are eligible for subscription management.

**Contact Change Workflow**

Before we change/add subscription management contact, we need **one** of the following:

1. Approval from the existing contact
1. Prior subscription contract
1. Recent invoice (last 12 months)
1. Copy of last loaded license

Once, we got one of the above, we can proceed to change/add subscription management contact by:

1. Locate the proper accounts in the customers portal and navigate to the `Edit` page
1. Copy the `Zuora ID` and `Salesforce Account ID` from the existing account to the new account and select `Save`

## Access to Customers Portal Staging

If you want access to [customers portal staging](https://customers.stg.gitlab.com/customers/sign_in) as a user (and not an admin) you can browse to the link and register a new account. You need to use your @gitlab.com email address in order to get the verification. As an example, you can use yourname+test@gitlab.com so that you receive emails to your usual yourname@gitlab.com email address.

Once you create a user account, you can use the [stripe test cards](https://stripe.com/docs/testing#cards) for testing.

Note: access to customers portal staging as an admin will require an Access Request.

## Additional Reference

1. [Licensing and Subscription Faq](https://about.gitlab.com/pricing/licensing-faq/) _(user facing)_
2. [Subscription Setup and Management](https://docs.gitlab.com/ee/subscriptions/) _(user facing)_
3. [Customers Portal Admin Docs](/handbook/internal-docs/customers-admin/) _(internal audience)_
4. [Sales Enablement Reference: GitLab.com Subscriptions](/handbook/marketing/product-marketing/enablement/dotcom-subscriptions/) _(internal audience)_
