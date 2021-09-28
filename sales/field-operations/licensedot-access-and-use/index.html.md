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

### CustomersDot Use Cases

**Lookup all issued licenses for a customer/prospect**

It provides an understanding of who and how many trials they have requested, when, and for how many users. [Self-Requested Trials](https://about.gitlab.com/free-trial/self-managed/) are not easily reported.

**Cross-reference a license with version.gitlab.com**

It's the only way to search for usage ping data if the server name is not known. For example a customer acmeinc.com uses acmeinc.ninja. There is no straightforward way to find this.

**Quickly find which email address was used to deliver a license**

It is important to know who received the license for further troubleshooting as CustomersDot is the SSOT for license information.

### Logging in 

Access is via Okta. Either go to https://customers.gitlab.com/admin/sign_in and click “Sign in with Okta” or go to your Okta App and look for the Customers Portal App.

### Available Information in CustomersDot

Once logged in, use the search (name, email, company) to find the relevant license id. Once in, you can see relevant facts such as:

- **Contact name and email address**: who was the license sent to? Which email?
- **Issued at**: When was the license issued to the customer? 
- **Starts at**: When did or does the license begin?**Expires at**: how much time do we have before the license expires?
- **Hostnames with this license**: link to the specific hostnames that the license is attached to
- **Trial?**: is this a trial or paid license?
- **GitLab Plan**: ensure the plan that’s listed here is the one they bought

### Process To Find Usage Data For a Customer By License Lookup

The following process allows you to view usage data for all servers with a given license installed.

1. Login to license.gitlab.com using Okta
2. Search for the customer using the search box at the top of the screen. If the search returns no results, check to make sure you are searching for the name as it is in Salesforce.
3. All licenses for the customer will be returned, use the issued and expiry dates to determine which is the active license. View the license data by clicking on the name column. 
4. Click the “Hostnames with this license” button at the bottom of the license details screen. This will open version.gitlab.com. Log in if needed. Version.gitlab.com does not yet support Okta so you will login with your gitlab account.
5. You will see one row for each server that has returned usage data and has this license installed. Look at the “Usage Ping Last Checked On” column to determine which entries contain recent usage ping data.
6. Click on the server name to load the usage ping details.



### References

- [Troubleshooting: Licenses](https://about.gitlab.com/handbook/business-technology/enterprise-applications/applications/troubleshooting/#licenses)
- [Changing License Owner (Contact Support)](https://about.gitlab.com/handbook/business-technology/enterprise-applications/applications/troubleshooting/#how-do-i-change-the-license-owner-for-self-managed-instances-with-licensegitlab)



