---
layout: markdown_page
title: Cloud licensing and the support exemption process explained.
description: "How to generate a legacy license for a customer who cannot use Cloud Licensing"
category: GitLab Self-Managed licenses
---

{:.no_toc}

----

## Cloud Licensing Overview
In order to further encourage Cloud Licensing, the Strict Cloud Licensing project will include several iterations to encourage customers to use Cloud License activation codes rather than a Legacy License file to activate their self-managed instances. The following [GitLab internal licensing terms page](https://internal-handbook.gitlab.io/handbook/product/fulfillment/definitions/#licensing-terms) provides a technical definition of the current three types of licenses (Cloud Licensing, Offline and Legacy) associated with Cloud Licensing.

## Strict Cloud Licensing

**Effective April 2022:** In order to further encourage Cloud Licensing, self-managed customers will no longer receive a GitLab license file attached to their activation email. Instead, customers will now only receive a Cloud License activation code. If the customer does not want to use Cloud Licensing, they can receive a Legacy License file using the following methods:
1. Direct Customers: login to Customers Portal and download the Legacy License file.
2. Channel Customers: create a support ticket. The customer's license can be accessed via Customers Portal in the licenses section. The license should be generated with the end-user email address and emailed to the customer directly after creation. Unless the circumstances require, we should not send the licenses to any GitLab employee. Exceptions may include air-gapped installs or other situations where the customer cannot receive the license via the email. 

**Effective June 2022:** Cloud Licensing will be enabled automatically by default as detailed in the [Strict Cloud Licensing roll out plan](https://gitlab.com/gitlab-org/gitlab/-/issues/351682) for all customers (except OSS, EDU or Start-Up products). Customers will no longer have the ability to download a license file from Customers Portal. In addition, Offline licenses will now be available to allow customers with air-gapped or offline instances to receive the benefits of Cloud Licensing. In order to receive a Legacy License or Offline License, customers will need to follow the below outlined process.

## Cloud Licensing Exemptions

### Pre-Sale Exemption (Sales)

Customers who cannot activate with Cloud Licensing will need to obtain either an Offline Cloud License or a Legacy License. The process for this is that the customer will need to contact their Sales Account Manager and request a Cloud Licensing exemption. 
By default, the `TurnOnCloudLicensing__c` flag in SFDC will be set to `Yes` on every quote during the sales cycle. If the Sales Rep wants to opt the customer out, they can update this field to `Offline` or `No`. If this occurs, approval is required via the standard SFDC approval processes by a Sales VP. Once the quote is finalized AND approved, the quote is synced to Zuora, which in turn creates and activates the subscription. In this scenario, the customer will receive their activation email with their license file attached and will also have the ability to download the license file from the [GitLab Customers portal](https://customers.gitlab.com/customers/sign_in).

### Post-Sale Exemptions (Support)

The above defined sales-initiated exemption process should be used for all customers. If a situation arises where a Legacy License or Offline License is requested by a customer from Support after they have already received a Cloud License activation email, Support should engage the sales account manager to follow the above approval process to provide this customer with the requested license. If an emergency situation occurs where the customer requires access during the approval process, a support engineer should provide the customer with a trial license until approval is received. Once approved, the correct license type can be issued to the customer.

If approved, the support engineer will need to first update the `Cloud Licensing` flag within [CustomersDot's Admin](https://customers.gitlab.com/admin).
Under "admin/customer/<CUSTOMER_ID>/zuora_subscriptions", the flag needs to be set to either "Offline" or "No", as shown in the screenshot below.

![Zuora](/images/support/ZuoraImage.png)

The matrix below defines the impact of setting the `Cloud Licensing` flag value to `Yes`, `Offline` or `No` on the eligibility of three license types.

| Cloud Licensing Flag value | Cloud License | Offline Cloud | Legacy License |
| ------ | ------ | ------ | ------  |
| Yes | Eligible | Not Eligible | Eligible |
| Offline | Eligible | Eligible | Not Eligible | 
| No  | Eligible | Eligible | Eligible |

Once updated, the support engineer should then generate the license manually as detailed in [Creating a Legacy License File](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/self-managed/creating_licenses.html#create-a-legacy-license).





