---
layout: handbook-page-toc
title: "Data Team Data Management Page"
description: "The Data Management Page covers the content around managing, securing, and governing the Enterprise Data Platform and related activities."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

##  Welcome to the Data Management Page

This page covers practices and policies around managing, securing, and governing the [Enterprise Data Platform](https://about.gitlab.com/handbook/business-technology/data-team/platform/) and activities related to it.

## Data Security Practices

The Enterprise Data Platform captures, processes, and stores [data collected from many systems](/handbook/business-technology/data-team/platform/#extract-and-load). Not all of this data is of the same importance and we use the [Critical System Tier](/handbook/engineering/security/security-assurance/security-risk/storm-program/critical-systems.html) framework and [Data Classification Standard](/handbook/engineering/security/data-classification-standard.html#security-and-privacy-controls) to help us determine what data is most important and how to best secure it.

### Sisense

We deploy a Role-Based Data Access Scheme in Sisense:

* [User Access is managed with Okta](/handbook/business-technology/data-team/platform/periscope/#accessing-sisense)
* Data Access is managed with [Roles](/handbook/business-technology/data-team/platform/periscope/#user-roles) and [Spaces](/handbook/business-technology/data-team/platform/periscope/#spaces)
* Each user is assigned a Sisense Role and this enables Data Access to dashboards and reports
* The Sisense scheme interacts with the Snowflake Data Access schema to ensure a user does not have a "back door" into data from either system

Additional controls include:

* [Unused Dashboards Are Archived](/handbook/business-technology/data-team/platform/periscope/#auto-archival-of-unused-dashboards)
* [System Access is managed with an API Key](/handbook/business-technology/data-team/platform/periscope/#sisense-api-key)

### Snowflake

We deploy a Role-Based Data Access Scheme in Snowflake:

* User Access is managed with Okta and [Access Requests are managed with GitLab](/handbook/business-technology/data-team/platform/#warehouse-access)
* Each user is assigned one more (Roles based on their job function)[/handbook/business-technology/data-team/platform/#snowflake-permissions-paradigm] and this configuration is managed with [Permifrost](/handbook/business-technology/data-team/platform/permifrost/)
* The Snowflake scheme interacts with the Sisense Data Access scheme to ensure a user does not have a "back door" into data from either system.

Additional controls include:

* Based on the Data Classification standard, [data is managed with Databases and Schemas](/handbook/business-technology/data-team/platform/#data-storage)
* Every query/user/process is assigned a [pre-defiend Warehouse, or Compute Resource](/handbook/business-technology/data-team/platform/#compute-resources)
* (Passwords are rotated)[/handbook/business-technology/data-team/platform/#passwords]

### General Data Security Controls

* For the purpose of defining Data Controls, the Enterprise Data Platform is a [Tier 1 system](/handbook/engineering/security/security-assurance/security-risk/storm-program/critical-systems.html). 
* `IMPORTANT`: [Customer Private RED data](/handbook/engineering/security/data-classification-standard.html#red) is prohibited from permanent storage in the Enterprise Data Platform.

| Control | RED | ORANGE | YELLOW |
| :-- | :-- | :-- | :-- |
| **General Data Controls** | | | |
| Data Registry Listing  | Required | Required | Recommended |
| Encryption At Rest | Required | Required | Required |
| Encryption In Transit | Required | Required | Required |
| Privacy Review | Required | Recommended | Not Required |
| Data Retention Procedures | Required | Recommended | Not Required |
| **Data Infrastructure Controls** | | | |
| Multi-Factor Authentication | Required | Required | Required |
| Role Based Access | Required | Required | Required |
| Access Logging | Required | Required | Recommended |
| **Data Warehouse Controls** | | | |
| Quarterly Snowflake User Audits | Required | Required | Required |
| Quarterly SiSense User Audits | Required  | Required | Required |
| Quarterly Change Management Review | Required  | Recommended | Not Required |
| Quarterly RED Data Scanner | Required | N/A | N/A |
| **Endpoint Devices** | | | |
| Anti-Malware | Required | Required | Required |
| Full-Disk Encryption | Required | Required | Required |
| Quarterly Data Purge | Required | Required | Required |


* **Data Infrastructure**: includes any systems with interact access or process data as part of a Data Warehouse and makes data available to end users.
* **Data Warehouse Controls**: The Enterprise Data Warehouse is a Tier 1 System.
* **Endpoint Devices**: All Endpoints Which Have Access To The Data Warehosue are Classified as Tier 1

### Quarterly Data Health and Security Audit

A **Quarterly Audit** is performed to validate system security, such as ensuring the right people have correct data access configuration and data pipelines are running correctly.

The process is supported by the [Quarterly Data Health and Security issue template](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/Quarterly%20Data%20Health%20and%20Security%20Audit.md). 
 
Here is a sample checklist of activities:
 
* [ ] **Snowflake**
     - Deactivate off-boarded employees from Snowflake
     - All Snowflake accounts from GitLab team members that are off-boarded, should be deactived from the day they are off-boared. This activity checks for any active accounts for off-boared GitLab team members. Subsequently any active account will be deactivated. 
     - Deactivate any account, that has not logged-in within the past 60 days from the moment of performing an audit, from Snowflake.
     - Any named user Snowflake account that hasn't logged for more than 60 days will be deactivated. After deactivation, the user will be informed. If a GitLab team member wants to have access provsioned back again, a regular AR needs to be created. After manager approval the account will be activated. 
     - Validate all user accounts require multi-factor authentication.

* [ ] **Sisense**
     - Deactivate off-boarded employees from Sisense.
     - All Sisense accounts from GitLab team members that are off-boarded, should be deactived from the day they are off-boared. This activity checks for any active accounts for off-boared GitLab team members. Subsequently any active account will be deactivated. 
     - Deactivate any account, that has not logged-in within the past 60 days from the moment of performing an audit, from Sisense.
     - Any Sisense account that hasn't logged for more than 60 days will be deactivated. After deactivation, the user will be informed. If a GitLab team member wants to have access provsioned back again, a regular AR needs to be created. After manager approval the account will be activated. 
     -  Validate all user accounts require multi-factor authentication.
 
* [ ] **Trusted Data**
     - Review all Golden Record TD tests and make sure they're passing.
     - Review Data Siren to confirm known existence of RED data.
     - Generate a report of all changes to the TD: Sales Funnel dashboard in the quarter.
