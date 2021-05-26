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

## GitHub Enterprise to GitLab Self Managed
- This is one of our strongest combinations of source and destination systems. We have migrated 7,000+ projects per wave in our best case. 
- If minimizing the transition period is a concern, we will want to maximize the number of projects per wave.
    - To do this, we need to have full control over the GitHub API Rate limit setting.
    - We also want to ensure there is a strong enough network connection between the GHE and GitLab SM instance to support moving the data. We don't have a hard number, but ask them about moving hundreds of GB over a few hours across lots of connections. Their network team should be able to answer. 
- If the customer wants to reorganize their groups/project structure, we can support this (see below common customer requests).
- Make sure the customer acknowledges that they need to have email addresses public, not private for any migration to work properly.  
- GitLab self managed should be on 13.7+ or later to take advantage of an API change that allows us to specify a specific github hostname in the import call (rather than defaulting to github.com). 

## GitHub Enterprise to GitLab SaaS
- The destination system rate limit will be the limiting factor in these migrations. We have no control over gitlab.com rate limit so these will need to be scoped at 200-300 per wave. 
- GitLab self managed should be on 13.7+ or later to take advantage of an API change that allows us to specify a specific github hostname in the import call (rather than defaulting to github.com). 

## Github.com to GitLab Self Managed
- The Github.com API rate limit is very low per user so we workaround by using multiple userIDs provided by the customer. 
- The total projects migrated per day should not exceed 200 until we deliver this to a customer at scale. We've done it at small scale in terms of number of projects. But some of those projects were gigantic (70K+ Pull Requests).
- Make sure the customer acknowledges that they need to have email addresses public, not private for any migration to work properly.
   


## Github.com to GitLab SaaS
- We are limited by both the source and destination system rate limits


## Common customer requests
### 1. Can we reorganize our projects and groups during migration?
- In congregate, we can do this for source systems of Github Enterprise and Bitbucket. The customer must provide a `.csv` file with `source project url` and `destination parent path` to let us know where the projects will land on the destination system. Also the customer or we must create the group structure prior to a migration with this reorganization involved. There should be additional time added for new group hierarcy creation to the scope. 
- We strongly recommend against this for GitLab as the source and destination systems. This seems counterintuitive, but because GitLab has lots of other data outside of the repository structure that sits in the project/group structure that needs to be maintained, the reorganization step should not happen during the migration. If a customer MUST do this, recommend doing it as a pre or post migration step using the UI or API to coordinate the local moves of projects and groups.
   - This can be positioned as additional days of migration advisory time. We need to determine what this is a function of to have objective scoping.


