---
layout: handbook-page-toc
title: "Professional Services EM Scoping - Migrations"
description: "Describes the processes for scoping migrations."

---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

`:warning: This page is under construction` 

# Migration Scoping Details

This page describes scoping migrations from one GitLab source to another or from Bitbucket Server or GitHub (Enterprise or .com).  The migrations utilize our [Congregate](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/migration/congregate) automation tool.  Migrations from other SCM systems and non-GitLab CI/CD migrations are out of scope for this migration tooling and must be scoped separately.

## GitLab Self-Managed to GitLab.com Migration Notes
- see [Congregate Features Matrix](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/migration/congregate/-/blob/master/gitlab-migration-features-matrix.md) to see a comparison of GitLab ui migration vs Congregate migration and gain a better understanding of which features get migrated and which don't.
- Migrations from one GitLab instance to another using Congregate require that the group and project structure of the source system is retained during migration. 
- scoping uses our standard [Automated Migration PS Engagement Estimate Template](https://docs.google.com/spreadsheets/d/1YKMyflzsA-VPEVobB82zC8-n0hlC-uRBtiNB7Fm-kZg/edit#gid=498273375) as long as there are 50 projects or more; for less than 50 projects, use the [Manual Migration Estimate Template](https://docs.google.com/spreadsheets/d/1YKMyflzsA-VPEVobB82zC8-n0hlC-uRBtiNB7Fm-kZg/edit#gid=1993932036)
- SaaS Discovery, SSO configuration and Security configuration activities are typically added to migrations to SaaS.  See Services Calculator activities for more details:
   - [saas_discovery_remote](https://gitlab.com/services-calculator/services-calculator.gitlab.io/-/blob/master/public/resources/sow-activites.yml#L2260)
   - [saas_sso_configuration_remote](https://gitlab.com/services-calculator/services-calculator.gitlab.io/-/blob/master/public/resources/sow-activites.yml#L2293)
   - [saas_security_configuration_remote](https://gitlab.com/services-calculator/services-calculator.gitlab.io/-/blob/master/public/resources/sow-activites.yml#L2309)
- see [TEMPLATE Professional Services Presentation](https://docs.google.com/presentation/d/1-svCV8CFqZZr0ma-1TJIzy-Lobu4sSslP5eAS2BaCbc/edit?usp=sharing) for a summary of our migration approach and which features get migrated or not.  This also includes a description of our SaaS Discovery, SSO configuration and Security configuration activities, which we often add for new SaaS customers. 


## Common customer requests
### 1. Can we reorganize our projects and groups during migration?
- In congregate, we can do this for source systems of Github Enterprise and Bitbucket. The customer must provide a `.csv` file with `source project url` and `destination parent path` to let us know where the projects will land on the destination system. Also the customer or we must create the group structure prior to a migration with this reorganization involved. There should be additional time added for new group hierarcy creation to the scope. 
- We strongly reccommend against this for gitlab as the source and destination systems. This seems counterintuitive, but becuase gitlab has lots of other data outside of the repository structure that sits in the project/group structure that needs to be maintained, the reorganization step should not happen during the migration. If a customer MUST do this, reccommend doing it as a pre or post migration step using the UI or API to coordinate the local moves of projects and groups.
   - This can be positioned as additional days of migration advisory time. We need to determine what this is a function of to have objective scoping.


