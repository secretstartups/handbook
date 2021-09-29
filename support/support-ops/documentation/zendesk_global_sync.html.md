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
  Account_ID_18__c,
  Name,
  CARR_This_Account__c,
  Ultimate_Parent_Sales_Segment_Employees__c,
  Account_Owner_Calc__c,
  Number_of_Licenses_This_Account__c,
  Type,
  Technical_Account_Manager_Name__c,
  Support_Level__c,
  Manual_Support_Upgrade__c,
  Region__c,
  JB_Support_Level__c
FROM Account
WHERE
  Type IN ('Customer', 'Former Customer') OR
  (Type IN ('Prospect', 'Prospect - CE User') AND
   Manual_Support_Upgrade__c = true)
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
  Account_ID_18__c,
  Name,
  CARR_This_Account__c,
  Ultimate_Parent_Sales_Segment_Employees__c,
  Account_Owner_Calc__c,
  Number_of_Licenses_This_Account__c,
  Partners_Partner_Status__c,
  Partner_Track__c,
  Technical_Account_Manager_Name__c,
  Support_Level__c,
  Manual_Support_Upgrade__c,
  Region__c,
  Next_Renewal_Date__c,
  Products_Purchased__c
FROM Account
WHERE
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
