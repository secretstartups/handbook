---
layout: handbook-page-toc
title: 'Zendesk Global Sync Mechanisms'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global sync mechanisms'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

For GitLab Support, we treat Salesforce (SFDC) as a single source of truth
(SSoT). Because of this, we strive to keep all Zendesk information as
up-to-date as possible. To achieve this, we have several sync mechanisms in
place.

## Organization sync

As GitLab's sync needs are very specific, we currently use a solution designed
internally to achieve organization sync. 

### Standard organization sync

We sync the standard organizations using the
[zd-sfdc-sync-main project](https://ops.gitlab.net/gitlab-com/support/zd-sfdc-sync-main),
located in the GitLab Ops instance. The scripts within pair with GitLab CI/CD
jobs to gather data from both SFDC and Zendesk Global, compare it, and sync the
needed changes.

The script also does some slight data manipulation while gathering the date
from SFDC. This is to ensure data integrity and make sure no issues occur once
the data is sent to Zendesk.

#### SOQL query used

```
SELECT
  Account.Account_ID_18__c,
  Account.Name,
  Account.CARR_This_Account__c,
  Account.Ultimate_Parent_Sales_Segment_Employees__c,
  Account.Account_Owner_Calc__c,
  Account.Number_of_Licenses_This_Account__c,
  Account.Type,
  Account.Technical_Account_Manager_Name__c,
  Account.Support_Level__c,
  Account.Manual_Support_Upgrade__c,
  Account.Region__c,
  Account.GS_Health_Score_Color__c,
  Account.Next_Renewal_Date__c,
  (SELECT
     Current_Subscription_Status__c,
     Current_Term_End_Date__c,
     Current_Term_Start_Date__c,
     Plan_Name__c
   FROM Customer_Subscriptions__r
   WHERE Current_Subscription_Status__c = 'Active'),
   (SELECT
      Zuora__Status__c,
      Zuora__SubscriptionEndDate__c	,
      Zuora__SubscriptionStartDate__c,
      Support_Level__c,
      Zuora__OpportunityName__c,
      Zuora__SubscriptionNumber__c
    FROM Zuora__Subscriptions__r
    WHERE Zuora__Status__c = 'Active')
FROM Account
WHERE
  Account.Type IN ('Customer', 'Former Customer') OR
  (Account.Type IN ('Prospect', 'Prospect - CE User') AND
   Account.Manual_Support_Upgrade__c = true) OR
  Account.Account_ID_18__c = '0014M00001sGJ8xQAG'
```

### Partner organization sync

As partners have different sync requirements, we us the 
[zd-sfdc-sync-partners project](https://ops.gitlab.net/gitlab-com/support/zd-sfdc-sync-partners)
located in the GitLab Ops instance. The scripts within pair with GitLab CI/CD
jobs to gather data from both SFDC and Zendesk Global, compare it, and sync the
needed changes.

The script also does some slight data manipulation while gathering the date
from SFDC. This is to ensure data integrity and make sure no issues occur once
the data is sent to Zendesk.

#### SOQL query used

```
SELECT
  Account.Account_ID_18__c,
  Account.Name,
  Account.CARR_This_Account__c,
  Account.Ultimate_Parent_Sales_Segment_Employees__c,
  Account.Account_Owner_Calc__c,
  Account.Number_of_Licenses_This_Account__c,
  Account.Type,
  Account.Technical_Account_Manager_Name__c,
  Account.Support_Level__c,
  Account.Manual_Support_Upgrade__c,
  Account.Region__c,
  Account.GS_Health_Score_Color__c,
  Account.Next_Renewal_Date__c,
  Account.Partners_Partner_Status__c,
  Account.Partner_Track__c
FROM Account
WHERE
  Type = 'Partner' AND
  Partners_Partner_Status__c IN ('Authorized', 'Former') AND
  Partner_Track__c IN ('Open', 'Select', 'Technology')
```

## Ticket sync

Currently, we use the
[official Zendesk Salesforce Data Sync](https://support.zendesk.com/hc/en-us/articles/360034751534--Configuring-Data-Sync-from-Salesforce-to-Zendesk)
to achieve this. The way it works is concerting New tickets into SFDC cases. 
From there, it sends them to SFDC (under the organization is associated,
otherwise under a general grouping).

It then will update said cases when the ticket is closed or merged. 
