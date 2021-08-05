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

* This page covers practices and policies around managing, securing, and governing the Enterprise Data Platform and related activities.

### Data Security Practices

The Enterprise Data Platform captures, processes, and stores [data collected from many systems](/handbook/business-technology/data-team/platform/#extract-and-load). Not all of this data is of the same importance and we use the [Critical System Tier](/handbook/engineering/security/security-assurance/risk-field-security/critical-systems.html) framework and [Data Classification Standard](/handbook/engineering/security/data-classification-standard.html#security-and-privacy-controls) to help us determine what data is most important and how to best secure it.

### Sisense

* [User Access is managed with Okta](/handbook/business-technology/data-team/platform/periscope/#accessing-sisense)
* [Each user is assigned a User Role](/handbook/business-technology/data-team/platform/periscope/#user-roles)
* Based on the Data Classification standard, [data is managed with Spaces](/handbook/business-technology/data-team/platform/periscope/#spaces)
* [Unused Dashboard Are Archived](/handbook/business-technology/data-team/platform/periscope/#auto-archival-of-unused-dashboards)
* [System Access is managed with an API Key](/handbook/business-technology/data-team/platform/periscope/#sisense-api-key)

### Snowflake

* User Access is managed with Okta and [Access Requests are managed with GitLab](/handbook/business-technology/data-team/platform/#warehouse-access)
* Each user is assigned one more (Roles based on their job function)[/handbook/business-technology/data-team/platform/#snowflake-permissions-paradigm] and this configuration is managed with [Permifrost](/handbook/business-technology/data-team/platform/permifrost/)
* Based on the Data Classification standard, [data is managed with Databases and Schemas](/handbook/business-technology/data-team/platform/#data-storage)
* Every query/user/process is assigned a [pre-defiend Warehouse, or Compute Resource](/handbook/business-technology/data-team/platform/#compute-resources)
* (Passwords are rotated)[/handbook/business-technology/data-team/platform/#passwords]

### General Data Controls

For the purpose of defining Data Controls, the Enterprise Data Platform is a [Tier 1 system](/handbook/engineering/security/security-assurance/risk-field-security/critical-systems.html#determining-critical-system-tiers). 

`RED Data`

RED data is prohibited from permanent storage or export from an approved Business Application, the Enterprise Data Warehouse, or GitLab products. RED data may be temporarily stored for the purpose of conducting a non-routine or one-time activity and in this case the Security Team will require confirmation of data purge.


| Control | RED | ORANGE | YELLOW |
|--|--| --|--|
| **General Data Controls** |
| Data Registry Listing  | Required | Required | Recommended |
| Encryption At Rest | Required | Required | Recommended |
| Encryption In Transit | Required | Required | Recommended |
| Regular Backups | Required | Required | Recommended |
| Privacy Review | Required | Recommended | Not Required |
| Data Retention Procedures | Required | Recommended | Not Required |
| Bulk Access Review (Per Instance) | Required | Required | Recommended |
| **Data Infrastructure Controls** Data Infrastructure includes any systems with interact access or process data as part of a Data Warehouse and makes data available to end users. | 
| Multi-Factor Authentication | Required | Required | Not Required |
| Role Based Access | Required | Required | Not Required |
| Access Logging | Required | Required | Recommended |
| **Data Warehouse Controls** The Enterprise Data Warehouse is a Tier 1 System |
| Quarterly Snowflake User Audits |  |  |  |
| Quarterly SiSense User Audits | Required  |  |  |
| Quarterly Change Management Review | Required  |  |  |
| Bi-Annual RED Data Audits | Required  |  |  |
| **Endpoint Devices** All Endpoints Which Have Access To The Data Warehosue are Classified as Tier 1 |
| Anti-Malware | Required |  |  |
| Full-Disk Encryption | Required |  |  |
| RED Data Audits | Required |  |  |
| Data Purge | Required | Required | Not Required |
