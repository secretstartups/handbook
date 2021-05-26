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

## GitHub Source 
### GitHub Enterprise to GitLab Self Managed
- This is one of our strongest combinations of source and destination systems. We have migrated 7,000+ projects per wave in our best case. 
- If minimizing the transition period is a concern, we will want to maximize the number of projects per wave.
    - To do this, we need to have full control over the GitHub API Rate limit setting.
    - We also want to ensure there is a strong enough network connection between the GHE and GitLab SM instance to support moving the data. We don't have a hard number, but ask them about moving hundreds of GB over a few hours across lots of connections. Their network team should be able to answer. 
- If the customer wants to reorganize their groups/project structure, we can support this (see below common customer requests).
- Make sure the customer acknowledges that they need to have email addresses public, not private for any migration to work properly.  
- GitLab self managed should be on 13.7+ or later to take advantage of an API change that allows us to specify a specific github hostname in the import call (rather than defaulting to github.com). 

### GitHub Enterprise to GitLab SaaS
- The destination system rate limit will be the limiting factor in these migrations. We have no control over gitlab.com rate limit so these will need to be scoped at 200-300 per wave. 
- GitLab self managed should be on 13.7+ or later to take advantage of an API change that allows us to specify a specific github hostname in the import call (rather than defaulting to github.com). 
- Make sure the customer acknowledges that they need to have email addresses public, not private for any migration to work properly.

### Github.com to GitLab Self Managed
- The Github.com API rate limit is very low per user so we workaround by using multiple userIDs provided by the customer. 
- The total projects migrated per day should not exceed 200 until we deliver this to a customer at scale. We've done it at small scale in terms of number of projects. But some of those projects were gigantic (70K+ Pull Requests).
- Make sure the customer acknowledges that they need to have email addresses public, not private for any migration to work properly.

### Github.com to GitLab SaaS
- We are limited by both the source and destination system rate limits. 
- Make sure the customer acknowledges that they need to have email addresses public, not private for any migration to work properly.

## Bitbucket Source 
_Note: A project on bitbucket is equivalent to a GitLab group. A Repository on Bitbucket is equivalent to a GitLab project._

### Bitbucket Server to GitLab Self Managed
- Theoretically, migrations with this pair of source/destination should be able to be scaled as high as GHE to GL Self Managed. Its safe to increase the projects per wave to 1,000. 
- If minimizing the transition period is a concern, we will want to maximize the number of projects per wave.
   - To do this, we need to have full control over the BitBucket API Rate limit setting.
   - We also want to ensure there is a strong enough network connection between the GHE and GitLab SM instance to support moving the data. We don't have a hard number, but ask them about moving hundreds of GB over a few hours across lots of connections. Their network team should be able to answer.
- If the customer wants to reorganize their groups/project structure, we can support this (see below common customer requests).

### Bitbucket Cloud to GitLab Self Managed
- GitLab does not have an API to initiate an import from bitbucket cloud currently. Automated migrations are not possible. 
- Can position a teach a customer to fish advisory approach that uses the [BB cloud import UI](https://docs.gitlab.com/ee/user/project/import/bitbucket.html) to help with importing. 

### Bitbucket Server to GitLab SaaS
- We will be limited by the rate limit on GitLab SaaS, which is why our scoping is low (e.g. 200 projects per wave)


### Bitbucket Cloud to GitLab SaaS
- GitLab does not have an API to initiate an import from bitbucket cloud currently. Automated migrations are not possible. 
- Can position a teach a customer to fish advisory approach that uses the [BB cloud import UI](https://docs.gitlab.com/ee/user/project/import/bitbucket.html) to help with importing. 

## Other git based SCMs
- We can support these customers by using the "bare git" method of migration. This is done through the [Import repo by URL UI](https://docs.gitlab.com/ee/user/project/import/repo_by_url.html) or command line using `git push -u. 
- The customer should provide a list of git urls to iterate over to support the migration. 
- Data elements outside of the git envelope (e.g. pull request comments, user membership, etc.) will not be migrated. Only git data elements (e.g. branches, commits, files, tags, etc.) will be migrated. 

## Non-git based SCMs
- For sources like CSV, ClearCase, SVN, TFVC we can support non automated migration but there is risk that should be factored into these engagements as we dont have deep experience with these source systems. Consider working with a channel partner to find expertise in these source systems. 
- Ensure the customer has researched and thought about how their projects will be organized on the destination gitlab system. Often times during the initial transformation from non-git SCM to git scm, there will be splitting of a single trunk of source code to multiple git repositories. 


## Common customer requests
### 1. Can we reorganize our projects and groups during migration?
- In congregate, we can do this for source systems of Github Enterprise and Bitbucket. The customer must provide a `.csv` file with `source project url` and `destination parent path` to let us know where the projects will land on the destination system. Also the customer or we must create the group structure prior to a migration with this reorganization involved. There should be additional time added for new group hierarcy creation to the scope. 
- We strongly recommend against this for GitLab as the source and destination systems. This seems counterintuitive, but because GitLab has lots of other data outside of the repository structure that sits in the project/group structure that needs to be maintained, the reorganization step should not happen during the migration. If a customer MUST do this, recommend doing it as a pre or post migration step using the UI or API to coordinate the local moves of projects and groups.
   - This can be positioned as additional days of migration advisory time. We need to determine what this is a function of to have objective scoping.


