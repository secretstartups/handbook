---
layout: handbook-page-toc
title: 'ZD<>SFDC Sync Training'
category: Zendesk
description: 'Training documentation concerning Zendesk<>Salesforce Sync'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what the ZD<>SFDC sync is
* How the ZD<>SFDC sync works
* How often does the ZD<>SFDC sync run
* Troubleshooting issues within the ZD<>SFDC sync
* GitLab Support Ops change management process for the ZD<>SFDC sync

## What is the ZD<>SFDC sync

The Zendesk-Salesforce Sync (ZD<>SFDC sync for short) is a set of scripts that
are run via GitLab CI/CD to sync the account and contact (US Federal only) data
from Salesforce into Zendesk.

## How does the ZD<>SFDC sync work

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/kzZbHHUCotI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This works in 3 stages:

* Gather info from Salesforce
* Gather info from Zendesk
* Compare the two data sources
* Sync the data

### Gather from Salesforce

This utilizes the [restforce gem](https://rubygems.org/gems/restforce) to gather
data from Salesforce using various
[Salesforce Object Query Language (SOQL)](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql.htm)
queries:

<details>
<summary>Global SFDC query</summary>
<div><pre><code>
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
  Account.Account_Demographics_Geo__c,
  Account.GS_Health_Score_Color__c,
  Account.Next_Renewal_Date__c,
  Account.Restricted_Account__c,
  (SELECT
     Current_Subscription_Status__c,
     Current_Term_End_Date__c,
     Current_Term_Start_Date__c,
     Entitled_Seats__c,
     Product_Tier_Name_Short__c,
     Plan_Name__c
   FROM Customer_Subscriptions__r
   WHERE Current_Subscription_Status__c = 'Active'),
  (SELECT
     Name,
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
  (Account.Type IN ('Customer', 'Former Customer') OR
   Account.Account_ID_18__c = '0014M00001sGJ8xQAG') OR
  (Account.Type = 'Partner' AND
   Account.Partners_Partner_Status__c IN ('Authorized', 'Former') AND
   Account.Partners_Partner_Type__c IN ('Alliance', 'Channel') AND
   Account.Partner_Track__c IN ('Open', 'Select', 'Technology')
  )
</code></pre></div>
</details>

<details>
<summary>US Federal SFDC query (accounts)</summary>
<div><pre><code>
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
</code></pre></div>
</details>

<details>
<summary>US Federal SFDC query (contacts)</summary>
<div><pre><code>
SELECT
  Contact.Name,
  Contact.Email,
  Account.Account_ID_18__c,
  Account.Name,
  Contact.Inactive_Contact__c
FROM Contact
WHERE
  Contact.Inactive_Contact__c = false AND
  Account.Type IN ('Customer', 'Former Customer', 'Prospect') AND
  Account.Account_Territory__c LIKE 'USPUB_FED%' AND
  (Account.Support_Level__c IN ('Premium', 'Ultimate') OR
   (Account.Support_Level__c = 'Basic' AND
    Account.Number_of_Licenses_This_Account__c >= 2000))
</code></pre></div>
</details>

This data is then parsed and formatted into objects that will be comparable with
the data obtained from Zendesk.

The data is then checked for issues that would prevent syncing. Currently, that
would be cases where two (or more) SFDC accounts have the same name (case
insensitive). For those that do have this issues, they are removed from the main
data object and put into a different object to be reported on at the end of the
stage.

From here two artifacts are created, one for the good data and one for the
errors.

A report is then outputted showing the number of accounts that should be synced
and any errors for accounts that will not be synced.

### Gather from Zendesk

This utilizes the
[faraday_middleware gem](https://rubygems.org/gems/faraday_middleware) and the
[oj gem](https://rubygems.org/gems/oj) to make Zendesk API requests to get a
list of organizations and users (US Federal only).

The data is then translated into objects that can be compared easily with the
Salesforce data.

From here, artifacts are created and the number of found objects is reported on.

### Compare the data

This stages used the artifacts made in the previous stages and compares them. If
an object exists in the Salesforce data but not in the Zendesk data, it is
put into a `creates` object. If the data exists in both but is not the same, it
is put into an `updates` object.

These two objects are then made into artifacts for use by the next stage.

### Sync the data

This stage uses the artifacts made in the compare stage to create or update
within Zendesk. It then reports on successes/failures.

## How often does the ZD<>SFDC sync run

We run the sync script at the bottom of every hour (UTC time)

## Troubleshooting the ZD<>SFDC sync

Troubleshooting the script can be tricky and will require a deeper level of
knowledge of ruby, Zendesk, and Salesforce. That said, you can normally find out
why something didn't sync/create by checking the CI/CD pipeline outputs of the
sync repo itself. The reporting they do will usually explain why something
didn't create/sync properly.

**Note**: If the CI/CD pipeline fails due to a `Net::ReadTimeout` error, this is
fine. Connections can get lost and this is normally fixed during the next run.
If you see this occur three times in a row, consider something very wrong and
begin troubleshooting the problem.

## Change management

When it comes to making changes to the ZD<>SFDC syncs, it is important to first
determine the scope of the change by asking the following question:

1. Will this require adding data on _every_ Zendesk organization?

If the answer to thisis no, then you will undergo the
[short process](#short-process).

If the answer to this is yes, then you will need to undergo the
[lengthy process](#lengthy-process).

### Short process

This process should only be used for updates that do not require syncing _every_
organization in Zendesk. This process is used because it will not cause
disruptions in the normal CI/CD process. This process uses the following stages:

* [repo stage](#repo-stage)
* [Pre-implementation announcement stage](pre-implementation-announcement-stage)
* [Implementation stage](#implementation-stage)
* [Post-implementation announcement stage](#post-implementation-announcement-stage)

### Lengthy process

This process should be userd for updates that will require syncing _every_
organization in Zendesk. This is because the need to sync every organization
will cause disruptions in the normal CI/CD process. This process uses the
following stages:

* [repo stage](#repo-stage)
* [Pre-implementation announcement stage](pre-implementation-announcement-stage)
* [Implementation sync stage](#implementation-sync-stage)
* [Implementation stage](#implementation-stage)
* [Post-implementation announcement stage](#post-implementation-announcement-stage)

#### Repo stage

To prepare for the implementation, you will need to create a merge request to
the corresponding sync repo (see [Useful links](#useful-links) down below).

After creating the merge request, make sure it is linked in the original
request and you have added any additional time spent to the requester issue.

From here, have one of your fellow Support Ops team members or a Support Ops
Manager review the merge request and add their approval (or comments). Once
approval has been added, an implementation date can be determined.

**Note**: All merge requests in the zd-sfdc-sync-global repo should contain the
following labels (the same as with issues):

* "Support-Ops-Category::Other"
* A priority label, which is one of:
  * "Support-Ops-Priority::Urgent"
  * "Support-Ops-Priority::High"
  * "Support-Ops-Priority::Normal"
  * "Support-Ops-Priority::Low"
* "Zendesk::Global" if this is about the Zendesk Global instance
* "Zendesk::US-Federal" if this is about the Zendesk US Federal instance
* "SupportOps::To Do"

#### Pre-implementation announcement stage

Once an implementation date has been determined, you need to announce this
upcoming change. To do this, go to the Slack channel
`#support_ops-accouncements` and click the lightning bolt on the text box (this
is the shortcuts icon). From there, select `Support Ops Announcement`. This
will cause a form to pop-up. Fill out the form to generate a message in the
`#support_ops-accouncements` channel.

The form asks for the following:

* **Who** is this impacting
* **What** is changing
* **When** is it changing
* **Why** is it changing
* Other info (optional)
* **Request link**

Once it posts, you will need to screenshot the post message and add that to the
`Support Operations Corner` of the
[Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
document

After adding it in the Support Week in Review, you then want to cross-link
(copy the link to the post) the announcement to the following channels:

| Channel | When to cross-link |
|---------|--------------------|
| `#support_operations` | Every time |
| `#support_team-chat` | If this impacts Support only or Everyone |
| `#spt_managers` | If this impacts Support only or Everyone |
| `#whats-happening-at-gitlab` | If the change is concerning SLA OR provisioning/deprovisioning |

#### Implementation sync stage

**Note**: This should only be used during the
[lengthy process](#lengthy-process).

Because your changes are going to require a massive number of organizations be
synced to Zendesk, we need to do the sync manually before letting the CI/CD
process take over. To accomplish this, do the following:

* Turn the pipeline schedule for the repo to `Inactive`
* Manually run the sync scripts via CLI
* Once those have completed, run it once more
  * The goal is the "final" run to show less than 50 accounts needing to be
    updated
* Turn the pipeline schedule for the repo to `Active`
* Process to the [Implementation stage](#implementation-stage)

**Note**: This stage will take a long time. We run the sync as often as we do to
prevent a backlog of organizations needing to be synced. When the number of
organizations needing to be synced is too large, the process takes a lengthy
amount of time and cause the CI/CD processes to encounter issues.

#### Implementation stage

This stage should be the simplest one to implement, as you already have a merge
request ready to go! Simply mark the merge request as ready and merge it. If
you encounter any issues here, reach out to your fellow Support Ops team members
for assistance.

#### Post-implementation announcement stage

Once an implementation has been completed, you need to announce the change. To
do this, go to the Slack channel `#support_ops-accouncements` and click the
lightning bolt on the text box (this is the shortcuts icon). From there, select
`Support Ops Announcement`. This will cause a form to pop-up. Fill out the form
to generate a message in the `#support_ops-accouncements` channel.

The form asks for the following:

* **Who** is this impacting
* **What** is changing
* **When** is it changing
* **Why** is it changing
* Other info (optional)
* **Request link**

Once it posts, you will need to screenshot the post message and add that to the
`Support Operations Corner` of the
[Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
document

After adding it in the Support Week in Review, you then want to cross-link
(copy the link to the post) the announcement to the following channels:

| Channel | When to cross-link |
|---------|--------------------|
| `#support_operations` | Every time |
| `#support_team-chat` | If this impacts Support only or Everyone |
| `#spt_managers` | If this impacts Support only or Everyone |
| `#whats-happening-at-gitlab` | If the change is concerning SLA OR provisioning/deprovisioning |

## Useful links

* [ZD<>SFDC Sync Global](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zd-sfdc-sync-global)
* [ZD<>SFDC Sync US Federal](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/zd-sfdc-sync-us-federal)
* [ZD Main<>SFDC Sync Video](https://youtu.be/kzZbHHUCotI)
* [ZD US Federal<>SFDC Sync Videp](https://youtu.be/Lv5MlHTekBc)
