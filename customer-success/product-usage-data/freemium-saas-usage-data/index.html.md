---
layout: handbook-page-toc
title: "Freemium SaaS Usage Data"
description: "How to view and use usage data from freemium and trial SaaS namespaces in Salesforce."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

---


## Purpose

Empower our internal team with lightweight Free/Trial usage insights in Salesforce.

## Expected Outcomes

1. **Identification** of freemium accounts for efficient account targeting
1. **Insights** into freemium accounts of their current GitLab usage
1. **Trial visibility** with an understanding of which accounts have an active trial and their usage

### Using the Data

##### Video Overview

For a high level overview (6 minutes), see:

([**SaaS Free Trial Usage Data in SFDC: Training Video**](https://youtu.be/28_bgDL__BQ) above is Private on GitLab Unfiltered)

##### Field Definitions

Below are the fields, descriptions, and best practices for each field. These can be used to help us understand what the customer is using GitLab for and how we can help them achieve their desired outcomes. For example, high ci pipeline usage indicates we may want to start the conversation around CI, or that they've already accomplished that objective.

| Field Label                            | Description                                                  | Use Case                                                     |
| -------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Number of Active Namespace**         | The number of currently active namespaces attached to this Salesforce Account record with active being defined as used in the last 3 months | Helpful to know if there's just one or many actively used namespaces related to this account |
| **Has Trial Experience**               | Is in a trial (Yes) or is SaaS Free (No)                     | Helpful to differentiate between a Trial and a Free SaaS namespace |
| **Activity Level**                     | Denotes the product activity level based on last 3 month of event data | Strong indicator if the namespace is actively in use, or has been ignored                                                     |
| **Number of Active Stages in Company** | Measures the number of stages being used in the namespace in the last 3 months (e.g., Create, Verify, and Package would be "3") | Helpful at a high level to see if they're active on just a few stages, or exploring and/or finding value from multiple Product stages |
| **Number of Active Users in Company**  | The number of billable users who have logged in and used 1+ stages in the last 3 months | As a rep, how many users are actively using GitLab? What is the difference between Billable (deployed) and Active (logging in and using it)? |
| **Last Updated Date [Usage Data]**     | The date that this dataset was last updated for the Account  | Use this to know how recent the data is for this Account     |
| **Total Billable Users**               | The number of users under the account that could be billed for | As a rep, how many billable users do they have? This can differ from Active user count. How many licenses would they likely need? |
| **Git Operations Users**               | The number of users running git operations in the last 28 days (SMAU Create) | As a rep, I want to know how many users are active with git operations (SMAU Create) so I can start a conversation around SCM |
| **Merge Requests Users**               | The number of users creating merge requests in the last 28 days | As a rep, I want to know how many users are actively using merge requests so I can have conversations about SCM and version control |
| **CI Pipeline Users**                  | The number of users creating CI pipelines in the last 28 days (SMAU Verify) | As a rep, I want to know how many users are actively ci pipelines (SMAU Verify) so I can have CI conversations with them |
| **CI Builds Count All Time**           | Total number of CI builds for the namespace                  | As a rep, I want to know the cumulative number of CI builds. This helps me understand their history with us. |
| **Secure Scanners Users**              | The number of users who ran any Secure scan in the last 28 days (SMAU Secure) | As a rep, I want to know how many users are actively using deployments |
| **Deployments Users**                  | The number of users who ran deployments in the last 28 days (SMAU Release) | As a rep, I want to know how many users are actively using deployments |
| **List of Namespaces**                 | The list of namespace data for the top several namespaces attached to this account | Helpful to see the raw data from the namespace, such as the contact information, high level usage, and if there are multiple namespaces, what are the top ones? |
| **Account Count**                      | No of accounts sharing the same zoominfo company id          | Useful to see how many Salesforce Accounts are tied to the same Zoominfo company                                                             |
| **List of Shared Accounts**            | List of the accounts that is sharing the same company id     |                                                              |

You can view this on the Salesforce Account page, or create a Salesforce report using "Account" as the type.

### Additional Resources

1. [List of all Free/Trial Accounts in SFDC](https://gitlab.my.salesforce.com/00O8X000008QZom)
1. [SaaS Free/Trial Usage Data Dashboard](https://gitlab.my.salesforce.com/01Z8X000001DgIu)
1. [Personalized Report for Account Owners](https://gitlab.my.salesforce.com/00O8X000008Qa7o) - This report will allow you to see a complete list of your assigned accounts which have Freemium SaaS usage. Insert your name into the `Account Owner` filter to populate this report. 

### Providing feedback

Please add your questions, data quality concerns, and general feedback on [this issue](https://gitlab.com/gitlab-com/sales-team/field-operations/customer-success-operations/-/issues/1031). This is needed for us to continue to improve the SaaS Free/Trial experience!

