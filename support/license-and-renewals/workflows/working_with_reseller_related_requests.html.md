---
layout: handbook-page-toc
title: Working with reseller related requests
category: General
description: This is a guide on how to handle requests involving Reseller.
---

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

When a customer purchases through a reseller we follow a different workflow to WebDirect or Sales purchases. Note the following for a customer purchase through a reseller:

1. The customer will have _NO_ access to Customers Portal. The customer's account is held under the name of the reseller, so there is no unique account for them to login to.
1. Additions or modifications to the existing subscription made through a reseller must go through the reseller, unless specifically allowed by the reseller

### Identifying whether a customer purchased through reseller

Check if a subscription was purchased through reseller by locating the `Invoice Owner` in the customer account on Zuora.

1. [Searching for the customer account in Zuora](https://drive.google.com/file/d/1c7ChL7iCp9nYByBttX_RvWTrOxkVcDAn/view?t=2m09s)
1. Click on the relevant subscription in the `Subscription Number` column
1. The reseller should be listed in the `Invoice Owner` field in the subscription page

Note:  Sometimes you can also see Partners section in the end-user's SFDC account.

### Requests to update end-user contact information

**Important:** Do not send a license file to the reseller partner.

If a reseller partner needs to have the end-user contact details updated (who should receive the license), you have the following options:

- Have the current Sold-To contact file a support ticket with us, following the workflow [Add subscription management contact workflow](../customersdot/associating_purchases.html#add-subscription-management-contact-workflow)
- The reseller partner **must** attach a copy of the subscription invoice to verify any contact change requested on an end-user's behalf


### Handling reseller customers' requests for direct renewal

To assist a customer who requests to renew their subscription directly with GitLab instead of through their reseller, follow the [working with sales workflow](/handbook/support/license-and-renewals/workflows/working_with_sales.html) and ensure you mention that the customer first had a Reseller purchase. 

Do not activate the CustomersDot login until the Sales-assisted purchase is processed. See [Enabling CustomersDot login](#enabling-customersdot-login)

If a customer with a reseller purchase decides to make a new purchase on a different account, their subscription would be a new purchase instead of a renewal. The license generated would therefore not include the previous subscription counts. Follow the [troubleshooting license upload errors](/handbook/support/license-and-renewals/workflows/self-managed/troubleshoot_license_upload_issues.html) workflow to move the ticket forward.

#### Enabling CustomersDot login

Once a reseller customer renews directly with GitLab, we can restore login access to their CustomersDot account. To do this:

1. **Important** Navigate to the customer's Zuora account and confirm that `SSPChannel` is set as `Non-Reseller`.
    - If the subscription was a renewal, you can check the subscription history for an entry that changes the `Invoice Owner` as an extra confirmation step.
1. Navigate to the `Edit` tab of the CustomersDot account.
1. Tick the `Login activated` checkbox.
1. Click `Save`.

### Handling the ticket

 Tickets from customers who purchased through resellers are often seen in the following scenarios:

- Cannot sign into to Customers Portal or Resetting password for Customers Portal is not working
- License cannot upload because there's true-up

To move the ticket forward gather any license or subscription information relevant to the ticket, and then follow the [working with sales workflow](/handbook/support/license-and-renewals/workflows/working_with_sales.html) and pass to Sales team.
