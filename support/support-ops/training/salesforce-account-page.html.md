---
layout: handbook-page-toc
title: 'Salesforce Account Page Training'
category: Salesforce
description: 'Training documentation concerning the Salesforce Account page'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of various sections of the Salesforce account page
* Important things to look for when reviewing an account page

## Sections of a Salesforce Account page

There are many sections to an account page, but the ones most important to us in
Support Ops are detailed here.

### Account Detail

This section details a good bit of information, but the most important ones to
Support Ops are:

| Field                | API Name              | Why its important |
|----------------------|-----------------------|-------------------|
| Account Name         | Name                  | The account's name, this syncs to the Org's name in Zendesk |
| Type                 | Type                  | Tells us the type of account. As we don't sync all types of accounts, this is important for syncing to Zendesk |
| Account Owner (Text) | Account_Owner_Calc__c | The Account Manager, we use this when we need assistance with the customer |

### Territory

This section details a good bit of information, but the most important ones to
Support Ops are:

| Field             | API Name                                   | Why its important |
|-------------------|--------------------------------------------|-------------------|
| Sales Segment     | Ultimate_Parent_Sales_Segment_Employees__c | This tells us the sales segmentation of the account, which we sync to Zendesk |
| Account Territory | Account_Territory__c                       | This tells us the account territory, which we use for US Federal syncing |
| Region            | Region__c                                  | This tells us the region, which we sync to Zendesk |

### GitLab Subscription Information

This section details a good bit of information, but the most important ones to
Support Ops are:

| Field                                  | API Name                           | Why its important |
|----------------------------------------|------------------------------------|-------------------|
| Next Renewal Date                      | Next_Renewal_Date__c               | We use this to help determine false expired accounts in the Zendesk sync |
| CARR (This Account)                    | CARR_This_Account__c               | The ARR of the account, we sync this to Zendesk |
| Support Level                          | Support_Level__c                   | We use this to determine the level of support an org receives |
| Manual Support Upgrade                 | Manual_Support_Upgrade__c          | We use this ins the priority prosect workflow |
| Number of Licenses Sold (This Account) | Number_of_Licenses_This_Account__c | The number of seats in a license, we sync this to Zendesk |

### Customer Success

This section details a good bit of information, but the most important ones to
Support Ops are:

| Field                      | API Name                          | Why its important |
|----------------------------|-----------------------------------|-------------------|
| [GS] Health Score Color    | GS_Health_Score_Color__c          | The Gainsight health score, we sync this to Zendesk |
| Technical Account Manager	 | Technical_Account_Manager_Name__c | The TAM, we sync this to Zendesk |
| Solutions Architect	       | Solutions_Architect_Lookup__r     | The SA, we sync this to US Federal Zendesk |

### Contacts

This section contains a list of approved contacts for the Account. These users
are auto-associated in Zendesk.

### Subscriptions

Here, all subscriptions the account has had are listed. This is important as we
often need to review these to determine if an account's support level is
incorrectly set or not. The most important parts to look at are the start and
end dates.

### Subscription Product & Charges

This section contains the products tied to subscriptions. Here we can determine
if the support level is accurate or not based on the subscription name and the
effective end date.

## Useful links

* [GitLab Salesforce](https://gitlab.my.salesforce.com/)
