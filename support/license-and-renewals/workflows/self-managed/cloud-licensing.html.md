---
layout: markdown_page
title: Cloud licensing and the support exemption process explained.
description: "How to generate a legacy license for a customer who cannot use Cloud Licensing"
category: GitLab Self-Managed licenses
---

{:.no_toc}

----

## Overview of Cloud Licensing

From April 2022, in order to further encourage Cloud Licensing, self-managed customers will no longer receive a GitLab license file attached to their activation email. Instead, customers will now only receive a Cloud License activation code. The following [GitLab internal licensing terms page](https://internal-handbook.gitlab.io/handbook/product/fulfillment/definitions/#licensing-terms) provides a technical definition of the current three types of licenses (Cloud Licensing, Offline and Legacy) associated with Cloud Licensing.

### Cloud Licensing Exemption

Cloud Licensing will be enabled automatically by default as detailed in the [Strict Cloud Licensing roll out plan](https://gitlab.com/gitlab-org/gitlab/-/issues/351682) for all customers, with the exception of those purchasing an OSS, EDU or Start-Up product.

Customers who cannot activate with Cloud Licensing will need to obtain either an Offline Cloud License or a Legacy License. The process for this is that the customer will need to contact their Sales Account Manager and request a Cloud Licensing exemption. This request must then be approved by a Sales VP.

For a customer exemption to be put in place, the following flag "Cloud Licensing" in [CustomersDot's Admin](https://customers.gitlab.com/admin) under:
 "admin/customer/<CUSTOMER_ID>/zuora_subscriptions" needs to be set to either "Offline" or "No", as shown in the screenshot below.

![Zuora](/images/support/ZuoraImage.png)

The matrix below defines the impact of setting the `Cloud Licensing` flag value to `Yes`, `Offline` or `No` on the eligibility of three license types.

| Cloud Licensing Flag value | Cloud License | Offline Cloud | Legacy License |
| ------ | ------ | ------ | ------  |
| Yes | Eligible | Not Eligible | Eligible |
| Offline | Eligible | Eligible | Not Eligible | 
| No  | Eligible | Eligible | Eligible |

#### Emergency Legacy License generation

The above defined sales-initiated exemption process should be used for all customers, however if an emergency situation arises where a Legacy License is required by a customer and the sales account manager is unable or unavailable to exempt the customer, then a support engineer should request that a support manager approves the exemption request. In scenarios such as this, the support engineer should ensure that the `Cloud Licensing Flag` is set to `No` before updating the subscription. 

Next they should then generate the license manually as detailed in [Creating a Legacy License File](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/self-managed/creating_licenses.html#create-a-legacy-license)


## Direct Customers
Customers who are not purchasing through a channel partner will be able to access their license file from within the Customer Portal if the "Cloud Licensing" flag is set to "Offline" or "No".


## Channel Customers
Currently channel customers do not have access to the Customer Portal. Instead, they will be directed to submit a Support ticket to receive a license file.

The customer's license can be accessed via CustomerDot in the licenses section. The license should then be emailed to the customer directly after creation. Unless the circumstances require, we should not send the licenses to any GitLab employee. Exceptions may include air-gapped installs or other situations where the customer cannot receive the license via the email.

Note that a license should always be generated with the end-user email address. A license should not be generated with reseller or GitLab team member details if the license is for a customer.

Please note that from [Iteration 4 of the roll out plan](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/intake/-/issues/526) channel customers will be also included as part of the Cloud Licensing roll out and any exemption requests should follow the above outlined guidelines.  
