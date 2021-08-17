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

The Enterprise Data Platform captures, processes, and stores [data collected from many systems](/handbook/business-technology/data-team/platform/#extract-and-load). Not all of this data is of the same importance and we use the [Critical System Tier](/handbook/engineering/security/security-assurance/risk-field-security/critical-systems.html) framework and [Data Classification Standard](/handbook/engineering/security/data-classification-standard.html#security-and-privacy-controls) to help us determine what data is most important and how to best secure it.

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

* For the purpose of defining Data Controls, the Enterprise Data Platform is a [Tier 1 system](/handbook/engineering/security/security-assurance/risk-field-security/critical-systems.html#determining-critical-system-tiers). 
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
