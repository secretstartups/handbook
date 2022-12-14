---
layout: markdown_page
title: Cloud licensing and the support exemption process explained
description: "How to generate a legacy license for a customer who cannot use Cloud Licensing"
category: GitLab Self-Managed licenses
---

{:.no_toc}

----

## Cloud Licensing Overview

[Cloud Licensing](https://about.gitlab.com/pricing/licensing-faq/cloud-licensing/) allows GitLab customers to activate paid subscription features on self-managed instances using an activation code, rather than managing license files and manually uploading them into their instance. By activating through Cloud Licensing, a customer’s GitLab instance will periodically synchronize [Subscription Data](https://docs.gitlab.com/ee/subscriptions/self_managed/#subscription-data-that-gitlab-receives) with GitLab.

In order to further encourage Cloud Licensing, the Strict Cloud Licensing project will include several iterations to encourage customers to use Cloud License activation codes rather than a Legacy License file to activate their self-managed instances. The following [GitLab internal licensing terms page](https://internal-handbook.gitlab.io/handbook/product/fulfillment/definitions/#licensing-terms) provides a technical definition of the current three types of licenses (Cloud Licensing, Offline and Legacy) associated with Cloud Licensing.

## Strict Cloud Licensing

**Effective July 7, 2022:** Cloud Licensing will be enabled by default for all new and renewal customers, as detailed in the [Strict Cloud Licensing roll out plan](https://gitlab.com/gitlab-org/gitlab/-/issues/351682) (except OSS, EDU or Start-Up products). Customers will no longer have the ability to download a license file from the Customers Portal. In addition, Offline licenses will now be available to allow customers with air-gapped or offline instances to receive the benefits of Cloud Licensing. In order to receive a Legacy License or Offline License, customers will need to follow the below outlined process.

### Strict Cloud Licensing Process


NOTE: This only applies to standard and resold customers.

```mermaid
graph TD;
  A -->|IR| B;
  B -->|No| C;
  B -->|Yes| E;
  C --> D;
  D --> E;
  A -->|Customer Ticket| F;
  F -->|Yes| G;
  F -->|No| H
  H -->|Yes| G;
  H -->|No| I;
  A{Is the ticket an internal<br>request or a customer ticket?}
  B{Has approval been granted<br>for the exception?}
  C(Support uses<br>Support::L&R::Strict Cloud Licensing Sales Exemption Guidance<br>macro)
  D(Sales has gotten exemption<br>approval)
  E(Support generates legacy<br>license and replies on ticket<br>letting requester know)
  F{Did the user purchase/renew<br>before July 2022?}
  G(Support uses<br>Support::L&R::Strict Cloud Licensing - Legacy license generated<br>macro)
  H{"Did they always purchase web direct?<br>🔗 See FAQ 4"}
  I(Support uses<br>Support::L&R::Strict Cloud Licensing - contact sales<br>macro)
```

## Cloud Licensing Exemptions

### Pre-Sale Exemption (Sales)

Customers who cannot activate with Cloud Licensing will need to obtain either an Offline Cloud License or a Legacy License. If this process is handled correctly at time of sale, no Support involvement is required. 

By default, the `TurnOnCloudLicensing__c` flag in SFDC will be set to `Yes` on every quote during the sales cycle. If the Sales Rep wants to opt the customer out, they should update the quote field `[Cloud Lic] Add Cloud Licensing Opt Out` to either `Legacy License File` or `Offline License`. This in turn updates the value of `TurnOnCloudLicensing` to `No` or `Offline` respectively. Once the quote is submitted, Sales VP approval is required via the standard SFDC approval process. Once approved, the quote is synced to Zuora, which in turn creates and activates the subscription. In this scenario, the customer will receive their activation email with their license file attached and will also have the ability to download the license file from the [GitLab Customers portal](https://customers.gitlab.com/customers/sign_in).

### Post-Sale Exemptions (Support)

The above defined sales-initiated exemption process is intended to be the only means of opt out and should be used for all customers. However, there may be occurrences where a sales rep missed opting a customer out during the sale, and the customer has now incorrectly received a Cloud License activation code they cannot use. 

In a situation where a customer requires a Legacy License or a Offline License post-sale, the customer must first reach out to their sales account manager for them to [open an Internal Request with Support](https://about.gitlab.com/handbook/support/internal-support/#internal-requests). The customer's sales account manager will then need to obtain sales VP approval for a Cloud Licensing exemption in order for L&R support to be able to process the internal request and provide the customer with the required license file. If an emergency situation occurs where the customer requires access during the approval process, a support engineer should
[provide the customer with a trial license](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/self-managed/license_for_weekend_emergencies.html)
until approval is received. Once approved, the correct license type can be issued to the customer.

If approved, the support engineer will need to first update the `Cloud Licensing` flag within [CustomersDot's Admin](https://customers.gitlab.com/admin).
Under "admin/customer/CUSTOMER_ID/zuora_subscriptions", the flag needs to be set to either "Offline" or "No", as shown in the screenshot below.

![Zuora](/images/support/ZuoraImage.png)

The matrix below defines the impact of setting the `Cloud Licensing` flag value to `Yes`, `Offline` or `No` on the eligibility of three license types.

| Cloud Licensing Flag value | Cloud License | Offline Cloud | Legacy License |
| ------ | ------ | ------ | ------  |
| Yes | Eligible | Not Eligible | Eligible |
| Offline | Eligible | Eligible | Not Eligible | 
| No  | Eligible | Eligible | Eligible |

Once updated, the support engineer should then generate the license manually by impersonating the customer and selecting `Download license file` from the "Manage Purchases" view. Using this method will ensure all license details are auto-populated correctly. Note that the download license option will only be visible _after_ the `Cloud Licensing` flag has been updated. After the license is generated, [search for the license and resend the license](/handbook/support/license-and-renewals/workflows/self-managed/sending_license_to_different_email.html) because the automatically generated license does not trigger license email notification.

Once these steps are completed, please be sure to flag the ZenDesk ticket using the above macro to ensure these missed approvals are being tracked appropriately.

## Support FAQ
#### 1. Which license type should I provide for an approved opt out?
Knowing whether to provide an Offline or Legacy License will depend on the customer's specific scenario and what they request, but the following may be helpful:
* Offline licenses are preferred by GitLab over Legacy Licenses as they allow the customer to more easily provide usage data. These work best for customers who cannot use a Cloud License because their instance is air-gapped or not connected to the internet. However, in order to use an Offline Cloud License, the customer must be on 15.0 or higher.
* Legacy licenses can be sent when a customer is unwilling or unable to upgrade to Gitlab version 14.1 or higher, or is concerned about sharing Subscription Data.

#### 2. Are reseller purchases considered the same as sales-assisted? If a customer purchased after 2022-07-07 and needs a Legacy License, should we send them to their Account Manager to go through the exemption process, or do we treat them the same as web-direct and give them a Legacy License file, no questions asked?
Reseller customers should be directed to sales as well using the same process. 

#### 3. A customer would like to use a Legacy License on a dev instance after activating their production instance with a Cloud License activation code.

We can generate a legacy license in this situation, but only after an exemption has been approved. **Do not apply the exemption to the currently CL-enabled subscription.** Instead, generate a legacy license duplicate of the existing license.

Please see [this comment thread](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/610#note_1052615060) for greater context on this workaround.

#### 4. How do I tell if a purchase was web direct?   

Check the `Created By` value of either (1) the invoices for the specific purchase in the customer's Zuora account (https://www.zuora.com/apps/CustomerAccount.do?method=view&id=<ACCOUNT_ID>) or (2) the Subscription's Change History (https://www.zuora.com/platform/subscriptions/<SUBSCRIPTION_ID>):

- Web direct: If it is the **Fulfillment API User** (`svc_zuora_fulfillment_int@gitlab.com` or `ruben_APIproduction@gitlab.com`).
- Not web direct: If it either the **SalesForce API User** (`svc_ZuoraSFDC_integration@gitlab.com`) or a GitLab team member's email (mostly it would be a Billing team member).

"New Business" web direct purchase opportunities in SFDC will often be created as `ACCOUNT-NAME - Web Direct`.  The **Initial Source** field will also be filled as "Web Direct".
-  **Note:** A sales-assisted renewal or add-on may still reflect **Initial Source** as "web direct", so you can further confirm:

Web direct purchases also create a Quote in the customer's SalesForce account. However, the **Status** of the Quote is almost always `New`. 
- For Sales assisted and reseller purchases, you can confirm the details of the successful purchase by checking the Quote in the customer's SalesForce account with its **Status** set to `Sent to Z-Billing`.

### How does Cloud Licensing impact customers who have purchased multi-year GitLab subscriptions?

- If an existing or new customer purchases a multi-year subscription and has Cloud Licensing enabled then the Cloud Activation Code they receive will be valid for the entirety of the subscription period.
- If an existing customer has already activated a subscription with an Activation Code then the customer will not have do anything, the license for the subscription will automatically update during the sync process. 
- If an existing customer has not yet enabled/activated Cloud Licensing (TurnOnCloudLicensing set to Null) they can activate their instance with an Activation Code at any time
    - If an existing customer who previously was undecided (i.e. `Turn On Cloud Licensing` is set to `Null`) or opted out of Cloud Licensing (i.e. `Turn On Cloud Licensing` is set to `No` or `Offline`) wants to switch to Cloud Licensing, they will need to contact support. Support can generate and send the activation code in CustomerDot Admin as detailed in [post sales exemption support](#post-sale-exemptions-support).
    - Upon activation, the customer will receive a Cloud Activation Code which will be valid for the entirety subscription term 

## Additional Resources
For more information on Cloud Licensing, please refer to the following resources:
1. [Cloud Licensing Internal Handbook Page](https://internal-handbook.gitlab.io/handbook/product/fulfillment/cloudlicensing/cloud-licensing/)
1. [Offline Cloud Licensing Internal Handbook Page](https://internal-handbook.gitlab.io/handbook/product/fulfillment/cloudlicensing/offline-cloud-licensing/)
1. [Cloud Licensing Field Team FAQ](https://docs.google.com/document/d/1C8kQlxvK2LFBsb3N6cvS8wXkqOw5cnAvuqy_4miUbYQ/edit)

Have a question that hasn't been answered in the documentation? Add it to our [Cloud Licensing AMA doc](https://docs.google.com/document/d/1f3RzLobMn2OaHNztXVU4Sr1qwsd2IQ-a6oKVctprggY/edit#) (internal only)!
