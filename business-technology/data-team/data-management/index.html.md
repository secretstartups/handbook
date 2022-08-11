---
layout: handbook-page-toc
title: "Data Team Data Management Page"
description: "The Data Management Page covers the content around managing, securing, and governing the Enterprise Data Platform and related activities."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

<div class="panel panel-gitlab-orange">
**This is a Controlled Document**
{: .panel-heading}
<div class="panel-body">

Inline with GitLab's regulatory obligations, changes to [controlled documents](https://about.gitlab.com/handbook/engineering/security/controlled-document-procedure.html) must be approved or merged by a code owner. All contributions are welcome and encouraged. 

</div>
</div>

##  Purpose

Data Management covers practices and policies around managing, securing, and governing the [Enterprise Data Platform](https://about.gitlab.com/handbook/business-technology/data-team/platform/) and activities related to it. The technical components of the Enterprise Data Platform are listed in the [GitLab Tech Stack](/handbook/business-technology/tech-stack-applications/).

## Scope

### Data Security Practices

The Enterprise Data Platform captures, processes, and stores [data collected from many systems](/handbook/business-technology/data-team/platform/#extract-and-load). Not all of this data is of the same importance and we use the [Critical System Tier](/handbook/engineering/security/security-assurance/security-risk/storm-program/critical-systems.html) framework and [Data Classification Standard](/handbook/engineering/security/data-classification-standard.html#security-and-privacy-controls) to help us determine what data is most important and how to best secure it.

## Roles & Responsibilities

| Role  | Responsibility | 
| :-- | :-- |
| GitLab Team Members | Responsible for following the requirements in this procedure |
| Data Management Team | Responsible for implementing and executing this procedure | 
| Data Management (Code Owners) | Responsible for approving significant changes and exceptions to this procedure |

## Procedure

### Sisense

We deploy a Role-Based Data Access Scheme in Sisense:

* [User Access is managed with Okta](/handbook/business-technology/data-team/platform/sisensecdt/#accessing-sisense)
* Data Access is managed with [Roles](/handbook/business-technology/data-team/platform/sisensecdt/#user-roles) and [Spaces](/handbook/business-technology/data-team/platform/sisensecdt/#spaces)
* Each user is assigned a Sisense Role and this enables Data Access to dashboards and reports
* The Sisense scheme interacts with the Snowflake Data Access schema to ensure a user does not have a "back door" into data from either system

Additional controls include:

* [Unused Dashboards Are Archived](/handbook/business-technology/data-team/platform/sisensecdt/#auto-archival-of-unused-dashboards)
* [System Access is managed with an API Key](/handbook/business-technology/data-team/platform/sisensecdt/#sisense-api-key)

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

The process is supported by the [Quarterly Data Health and Security issue template](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/Quarterly%20Data%20Health%20and%20Security%20Audit.md). The label `~"Quarterly Data Health and Security Audit"` is used for all issues and merge requests related to the Quarterly audit.  
 
Here is a sample checklist of activities:
 
#### Snowflake
- Deactivate off-boarded employees from Snowflake
     - All Snowflake accounts from GitLab team members that are off-boarded, should be deactived from the day they are off-boarded. This activity checks for any active accounts for off-boared GitLab team members. Subsequently any active account will be deactivated. 
- Deactivate any account, that has not logged-in within the past 60 days from the moment of performing an audit, from Snowflake.
     - Any named user Snowflake account that hasn't logged for more than 60 days will be deactivated. After deactivation, the user will be informed. If a GitLab team member wants to have access provsioned back again, a regular AR needs to be created. After manager approval the account will be activated. 
     - Validate all user accounts do not have password set.

#### Sisense
- Deactivate off-boarded employees from Sisense.
     - All Sisense accounts from GitLab team members that are off-boarded, should be deactived from the day they are off-boarded. This activity checks for any active accounts for off-boared GitLab team members. Subsequently any active account will be deactivated. To compare off-boarded employees with the actual users, 2 sources needs to be combined. This is done to extract the list of users from Sisense and load this via sheetload into Snowflake. The queries and details for this proces are in the [template](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/Quarterly%20Data%20Health%20and%20Security%20Audit.md). 
- Deactivate any account, that has not logged-in within the past 90 days from the moment of performing an audit, from Sisense.
     - Any Sisense account that hasn't logged-in for more than 90 days will be deactivated. If a GitLab team member wants to have access provsioned back again, a regular AR needs to be created. After manager approval the account will be activated. 
- Deprovision `SAFE Dashboard` Space access after 90 days not logged-in within the past 90 days from the moment of performing an audit.
     - Any GitLab Team Member with access to the `SAFE Dashboard` Space that hasn't logged-in for more than 90 days will be deprovisioned from the `SAFE Dashboard` Space. If a GitLab team member wants to have access provisioned back again, a new AR needs to be created and all approvals need to be obtained again. 
- Check and set all refresh schedules for `Skip if unused`. This setting is contributional to make efficient use of our resources. All dashboards in all spaces should have this option set to true.   
 
#### Trusted Data
- Review all Golden Record TD tests and make sure they're passing.
- Review Data Siren to confirm known existence of RED data.
- Generate a report of Business logic changes to the TD: Sales Funnel dashboard in the quarter. Business logic such as adding new dimensions, new facts, new marts, changing joins, adding new calculated fields.

## Exceptions
Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](/handbook/engineering/security/#information-security-policy-exception-management-process).

## References
* Parent Policy: [Information Security Policy](/handbook/engineering/security/)
