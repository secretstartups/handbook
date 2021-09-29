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
  Account_ID_18__c,
  Name,
  CARR_This_Account__c,
  Ultimate_Parent_Sales_Segment_Employees__c,
  Account_Owner_Calc__c,
  Number_of_Licenses_This_Account__c,
  Type,
  Technical_Account_Manager_Name__c,
  Support_Level__c,
  Solutions_Architect_Lookup__r.Name
FROM Account
WHERE
  Type IN ('Customer', 'Former Customer', 'Prospect') AND
  Account_Territory__c LIKE 'USPUB-FED%' AND
  (Support_Level__c IN ('Premium', 'Ultimate') OR
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
