---
layout: handbook-page-toc
title: "CustomersDot Access and Use"
description: "This page outlines how the Sales Org can access and use CustomersDot in support of their customers, including troubleshooting steps."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}


## CustomersDot Access and Use - Sales

### What is CustomersDot

[CustomersDot](https://customers.gitlab.com) is our Customer Portal. In addition to the user-facing aspects of it, there's an [Admin section](https://customers.gitlab.com/admin) with additional internal functionality.

### CustomersDot Use Cases

**Lookup all issued licenses for a customer/prospect**

It provides an understanding of who and how many trials they have requested, when, and for how many users. [Self-Requested Trials](https://about.gitlab.com/free-trial/) are not easily reported.

**Cross-reference a license with version.gitlab.com**

It's the only way to search for usage ping data if the server name is not known. For example a customer acmeinc.com uses acmeinc.ninja. There is no straightforward way to find this.

**Quickly find which email address was used to deliver a license**

It is important to know who received the license for further troubleshooting as CustomersDot is the SSOT for license information.

### Logging in

To get access, file an access request for [customers.gitlab.com/admin/](https://customers.gitlab.com/admin/sign_in) ([example access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/14359)).

Once access is granted, either go to [customers.gitlab.com/admin/](https://customers.gitlab.com/admin/sign_in) and click “Sign in with Okta” or go to your Okta App and look for the Customers Portal App.

### Available Information in CustomersDot

To see license data in CustomersDot:

1. Log in to customers.gitlab.com/admin
1. Click on the Licenses in the left navigation bar.
1. From this page, you can:
   1. View the list of most recently generated licenses
   1. Search for a license by name
1. Scroll to the right and click on ‘i’ to show details of a license.  
   1. Company name
   1. Contact name and email: who was the license sent to
   1. Issued at: when was the license issued to the customer
   1. Starts at / Expires at: when the license begins and ends, respectively.
   1. Trial: whether it's a trial license or not
   1. GitLab Plan: the plan the customer bought.
   1. User count
   1. Link to Zuora subscription  

This [CustomersDot video tutorial](https://gitlab.edcast.com/insights/card-e7589a95-0229-4d20-9c54-ee84750020df) walks through an example of how to find the license details for a particular customer. 


### Find seat reconciliations for a customer

1. Login to [customers.gitlab.com/admin/](https://customers.gitlab.com/admin/sign_in) using Okta
1. Click on Reconciliations
1. Search for the customer using the search box. Make sure you are searching for the name as it is in Salesforce.
1. Any reconciliations for the customer will be returned, and the following information:
   1. Customer name
   1. Subscription name with link to Zuora
   1. Reconciliation status
   1. Reconciliation date
   1. Reconciliation finished/done date
   1. Skip reason (if applicable)
   1. User count (after reconciliation)
   1. Invoiced amount
   1. Error message (if applicable)

### Find Usage Data For a Customer By License Lookup

The following process allows you to view usage data for all servers with a given license installed.

1. Login to [customers.gitlab.com/admin/](https://customers.gitlab.com/admin/sign_in) using Okta
1. Click on Licenses
1. Search for the customer using the search box. Make sure you are searching for the name as it is in Salesforce.
1. All licenses for the customer will be returned, use the issued and expiry dates to determine which is the active license.
1. View the license data by clicking on the name column.
1. Click the “Hostnames with this license” button at the bottom of the license details screen. This will open version.gitlab.com. Log in if needed. Version.gitlab.com does not yet support Okta so you will login with your gitlab account.
1. You will see one row for each server that has returned usage data and has this license installed. Look at the “Usage Ping Last Checked On” column to determine which entries contain recent usage ping data.
1. Click on the server name to load the usage ping details.

### References

- [Troubleshooting: Licenses](https://about.gitlab.com/handbook/business-technology/enterprise-applications/quote-to-cash/troubleshooting/#licenses)
- [Changing License Owner (Contact Support)](https://about.gitlab.com//handbook/business-technology/enterprise-applications/quote-to-cash/troubleshooting/#how-do-i-change-the-license-owner-for-self-managed-instances-with-licensegitlab)
