---
layout: handbook-page-toc
title: 'Zendesk US Federal Sync Mechanisms'
category: 'Zendesk US Federal'
description: 'An overview of the Zendesk US Federal sync mechanisms'
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
[zd-sfdc-sync-us-federal project](https://ops.gitlab.net/gitlab-com/support/zd-sfdc-sync-us-federal),
located in the GitLab Ops instance. The scripts within pair with GitLab CI/CD
jobs to gather data from both SFDC and Zendesk US Federal, compare it, and sync
the needed changes. Unlike Zendesk Global, this sync setup also syncs contacts
under the Accounts in SFDC to Zendesk US Federal.

The script also does some slight data manipulation while gathering the date
from SFDC. This is to ensure data integrity and make sure no issues occur once
the data is sent to Zendesk.

#### SOQL queries used

For Organizations:

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
  Solutions_Architect_Lookup__r.Name,
  (SELECT
     Current_Subscription_Status__c,
     Current_Term_End_Date__c,
     Current_Term_Start_Date__c,
     Plan_Name__c
   FROM Customer_Subscriptions__r
   WHERE Current_Subscription_Status__c = 'Active'),
  (SELECT
     Zuora__Status__c,
     Zuora__SubscriptionEndDate__c     ,
     Zuora__SubscriptionStartDate__c,
     Support_Level__c,
     Zuora__OpportunityName__c,
     Zuora__SubscriptionNumber__c
   FROM Zuora__Subscriptions__r
   WHERE Zuora__Status__c = 'Active')
FROM Account
WHERE
Type IN ('Customer', 'Former Customer', 'Prospect') AND
Account_Territory__c LIKE 'USPUB-FED%' AND
(Support_Level__c IN ('Premium', 'Ultimate', 'Expired') OR
 (Support_Level__c = 'Basic' AND
  Number_of_Licenses_This_Account__c >= 2000))
```

For Users:

```
SELECT
  Contact.Name,
  Contact.Email,
  Account.Account_ID_18__c,
  Account.Name
FROM Contact
WHERE
  Account.Type IN ('Customer', 'Former Customer', 'Prospect') AND
  Account.Account_Territory__c LIKE 'USPUB_FED%' AND
  (Account.Support_Level__c IN ('Premium', 'Ultimate') OR
   (Account.Support_Level__c = 'Basic' AND
    Account.Number_of_Licenses_This_Account__c >= 2000))
```
