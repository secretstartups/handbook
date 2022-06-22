---
layout: handbook-page-toc
title: "GitLab SOX ITGC Compliance"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What are ITGCs?

ITGCs, or IT General controls (sometimes referred to at GITCs - General IT controls), are a subset of the SOX internal control set. The objectives of ITGCs are to ensure the integrity of the data and processes that the [in scope systems](https://internal-handbook.gitlab.io/handbook/finance/sox-internal-controls/it-general-controls/) support. They can be applied at the application, OS, database and infrastructure layers. 

### What are GitLab's ITGCs?

|**Sl #**|**Control Family**|**ITGC Control ID**|**Control Mapping**
|:-|:--|:-|:-|
|1|Access to Programs and Data|LA.1|Logical access provisioning requires approval from appropriate personnel.
|2|Access to Programs and Data|LA.2|Terminated users have their access revoked in a timely manner.
|3|Access to Programs and Data|LA.3|GitLab access reviews are performed on a quarterly basis; research and corrective action is taken where applicable.
|4|Access to Programs and Data|LA.4|The ability to add, modify, and delete accounts is limited to appropriate personnel.
|5|Access to Programs and Data|LA.5|Authentication to in-scope systems is configured in line with the password policy. Exemptions to the policy are formally approved.
|6|Change Management|PC.1|Access to migrate changes to production is limited to appropriate personnel.
|7|Change Management|PC.2|Changes are tested and approved by appropriate personnel in accordance with the change management policy.
|8|Computer Operations|CO.1|Access to modify relevant jobs is restricted to appropriate personnel.
|9|Computer Operations|CO.2|Jobs are monitored to ensure effective ongoing operation. Issues are researched and resolved in a timely manner.
|10|Computer Operations|CO.3|Backups are completed according to a predefined system schedule.
|11|Computer Operations|CO.4|GitLab performs backup restoration or failover tests at least annually to confirm the reliability and integrity of system backups or recovery operations.
|12|Program Development|PD.1|Significant program changes are tested and known issues are communicated to the relevant stakeholders prior to approval.
|13|Program Development|PD.2|GitLab validates that data transferred during an applicable program change is complete and accurate.
|14|SOC reports review |SR.1|SOC reports are reviewed on periodic basis. 

## Roles and Responsibilities 

* [IT Security and Compliance](https://about.gitlab.com/handbook/business-technology/it-compliance/) is responsible for ITGC control implementation oversight. 
* [Internal Audit](https://about.gitlab.com/handbook/internal-audit/) is responsible for scoping and testing of ITGC systems and management of GitLab's holistic [SOX program](https://about.gitlab.com/handbook/internal-audit/sarbanes-oxley/).
* [Security Assurance](https://about.gitlab.com/handbook/engineering/security/security-assurance/) is responsible for user access review facilitation, SOC 1/SOC 2 report review facilitation, and advisory support to control and system owners. 
* Every GitLab team member is responsible for operating the processes required by SOX against the in scope SOX systems.
* GitLab's leadership is responsible for supporting this initiative and giving all GitLab teams the resources (e.g. time and tools) they require to implement and operate SOX processes. 
