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

# Info for Sales - positioning migrations to SaaS
 - [GitLab self-managed to SaaS migration](SM-to-SaaS/)



# Migration Scoping Details

This page describes scoping migrations from GitLab, Bitbucket Server or GitHub (Enterprise or .com) to a destination GitLab instance (Self Managed or SaaS).  The migrations typically utilize our [Congregate](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/migration/congregate) automation tool.  Migrations from other SCM systems and non-GitLab CI/CD migrations are out of scope for this migration tooling and must be scoped separately.

Using the [services calculator](https://services-calculator.gitlab.io/), an SA or CSM/TAM can create scoping issue, and work with an Engagement Manager to iterate and refine the services estimate for a customer. In this issue, we have included additional context to the SCM Migration Scoping Questions, which can be previewed below

<!--DEBT: below should be embedded from the SSOT locaed https://gitlab.com/services-calculator/services-calculator.gitlab.io/-/blob/master/make-ps-creates.py#L25-->

| SCM Migration Scoping Question | Customer Response | Example response | Rationale for asking | 
| - | - | - | - |
| Source SCM System(s) | to-do | Bitbucket Server, GitLab Self-Managed | GitLab PS has automation to facilitate migration for the most popular source systems. Need to know what systems the data is coming from to accurately scope the time to migrate. |
| Destination GitLab deployment  (SaaS, Self-Managed(HA), Self-Managed(single node)) | to-do | SaaS | We ask this to ensure the destination system deployment is strong enough to handle the throughput of data that will be required during migration. |
| Source gitlab version (must be 2 behind latest) | to-do | 13.4 | Migration services leverage many GitLab APIs including our project import/export API. There are specific compatability guidelines [documented here](https://docs.gitlab.com/ee/user/project/settings/import_export.html#version-history) |
| Destination gitlab version (must be within 2 minor versions of source) | to-do | 14.1 |  Migration services leverage many GitLab APIs including our project import/export API. There are specific compatability guidelines [documented here](https://docs.gitlab.com/ee/user/project/settings/import_export.html#version-history) |
| Total number of Users** | to-do | BB = 225, GLSM = 775 | Migrating users is a pre-requisite step to migrating the data to ensure data elements are associated properly. This is a discrete task in migration engagements and must be scoped with number of users as an input. |
| Total portfolios (w/ stakeholder rep) | to-do | 6 | We use total portfolios as a proxy metric to identify how much coordination will be required during migration. Each portfolio leader needs to understand and buy into the migration process for things to go smoothly. This coordination time is built into the migration engagement. |
| Total number of git repositories  | to-do | BB = 1,234; GL = 4321 | We need to know the total number of repositories to be migrated in order to estimate the number of days of effort.  Note: A bitbucket project can contain multiple git repositories.  We need the total number of repos. |
| Total >5GB GitLab repositories | to-do | BB N/A, GL = 3 | Only applicable for GitLab self-managed migrations to GitLab.com; repos >5GB must be manually migrated due to a 5 GB Cloudflare limitation.  Note that we only care about repo size, not the total project size. |
| CI/CD System(s) | to-do | Jenkins | We need to know what CI/CD systems are being used to estimate how much it will take to repoint those pipeline jobs to the new SCM system to help the customer resume IT operations. |
| Total ci/cd jobs? (CI/CD jobs will need cut-over even if not migrated) | to-do | 4567 | The engagement could include repointing CI/CD jobs back to a source repository. If this is the case, we will need to know how many jobs need to be reconfigured. |
| Typical registry size | to-do | 159MB | If registry sizes are unusually big, it could affect the speed of migration. _Note: this question only applies to migrations where gitlab is a source system._ |
| SSO Identity Provider | to-do | Auth0 | We want to make sure this is already in place prior to migration as it is a foundational to the success of a migration engagement. See here for a [full list of supported Identity Providers](https://docs.gitlab.com/ee/administration/auth/) |
| Source system OS and Version | to-do | Ubuntu v21.10 | If an upgrade of the source system is needed/included prior to the migration, we want to be sure the OS does not need to be upgraded by the customer to support the new version of GitLab. See [installation requirements](https://docs.gitlab.com/ee/install/requirements.html) for more details. |
| Source system DB version | to-do | PostgreSQL 13.0 | If an upgrade of the source system is needed/included prior to the migration, we want to be sure the DB does not need to be upgraded by the customer to support the new version of GitLab.  See [installation requirements](https://docs.gitlab.com/ee/install/requirements.html) for more details. |

**Notes:**
1. Source Code Management (SCM) Migrations do not include secrets mediation.
1. SCM migrations do not include transitioning CI/CD functionality to use GitLab CI.


## GitLab Self-Managed to GitLab.com Migration Notes
- [Migrating from Self-Managed to SaaS](/handbook/customer-success/professional-services-engineering/engagement-mgmt/scoping-information/migrations/SM-to-SaaS/) has additional information, rough order magnitude estimates, and common customer questions
- see [Congregate Features Matrix](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/migration/congregate/-/blob/master/gitlab-migration-features-matrix.md) to see a comparison of GitLab ui migration vs Congregate migration and gain a better understanding of which features get migrated and which don't.
- Migrations from one GitLab instance to another using Congregate require that the group and project structure of the source system is retained during migration. 
- scoping uses our standard [Automated Migration PS Engagement Estimate Template](https://docs.google.com/spreadsheets/d/1YKMyflzsA-VPEVobB82zC8-n0hlC-uRBtiNB7Fm-kZg/edit#gid=498273375). For very small migrations with less than 30 repositories, use the [Manual Migration Estimate Template](https://docs.google.com/spreadsheets/d/1YKMyflzsA-VPEVobB82zC8-n0hlC-uRBtiNB7Fm-kZg/edit#gid=1993932036) to compare the cost of a manual migration to the cost of automated migration
- SaaS Discovery, SSO configuration and Security configuration activities are typically added to migrations to SaaS.  See Services Calculator activities for more details:
   - [saas_discovery_remote](https://gitlab.com/services-calculator/services-calculator.gitlab.io/-/blob/master/public/resources/sow-activites.yml#L2260)
   - [saas_sso_configuration_remote](https://gitlab.com/services-calculator/services-calculator.gitlab.io/-/blob/master/public/resources/sow-activites.yml#L2293)
   - [saas_security_configuration_remote](https://gitlab.com/services-calculator/services-calculator.gitlab.io/-/blob/master/public/resources/sow-activites.yml#L2309)
- see [TEMPLATE Professional Services Presentation](https://docs.google.com/presentation/d/1-svCV8CFqZZr0ma-1TJIzy-Lobu4sSslP5eAS2BaCbc/edit?usp=sharing) for a summary of our migration approach and which features get migrated or not.  This also includes a description of our SaaS Discovery, SSO configuration and Security configuration activities, which we often add for new SaaS customers.

## GitLab Self-Managed to GitLab Self-Managed
- You can use congregate but you also have other options at your disposal:
   - **Backup and restore** using rake-tasks. This enables you to restore all of the data from one instance of GitLab to another. This can be used to shorten the migration period, but will cause complete downtime as the source instance will need to be locked during the time it takes to backup. Also, this could take many hours to days depedening on the size of the data. 
   - **Geo Replication**. This method allows you to setup the new gitlab instance as a GEO secondary. The data will sync over the course of time. Then you can perform a failover to make the new instance primary. This tends to be more complex and requires a more specialized skillset than the backup/restore approach. 

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
   - We also want to ensure there is a strong enough network connection between the BitBucket Server and GitLab SM instance to support moving the data. We don't have a hard number, but ask them about moving hundreds of GB over a few hours across lots of connections. Their network team should be able to answer.
- If the customer wants to reorganize their groups/project structure, we can support this (see below common customer requests).

### Bitbucket Cloud to GitLab Self Managed
- GitLab does not have an API to initiate an import from bitbucket cloud currently. Automated migrations are not possible. 
- Can position a teach a customer to fish advisory approach that uses the [BB cloud import UI](https://docs.gitlab.com/ee/user/project/import/bitbucket.html) to help with importing. 

### Bitbucket Server to GitLab SaaS
- We will be limited by the rate limit on GitLab SaaS, which is why our scoping is low (e.g. 200 projects per wave)


### Bitbucket Cloud to GitLab SaaS
- GitLab does not have an API to initiate an import from bitbucket cloud currently. Automated migrations are not possible. 
- Can position a teach a customer to fish advisory approach that uses the [BB cloud import UI](https://docs.gitlab.com/ee/user/project/import/bitbucket.html) to help with importing. 

## Team Foundation Server (TFS)/Azure DevOps (ADO) to GitLab

Azure DevOps (formerly named Team Foundation Server) contains more than a source code repository, so additional questions need to be asked while scoping out an ADO migration. Three common components in ADO are the following:

- Code: The source code itself
- Builds: Any automated build processes, usually defined in a XAML file along with a solution (.sln) and/or project file (.csproj)
- Workitems: Issues/tickets for tracking work. Similar to GitLab issues or JIRA tickets

| Question | Answer | Sample Answer | Rationale for asking|
| ----- | ----- | ----- | ----- |
| Are you using Git or TFVC for your SCM? | | TFVC | This will influence how we interact with the ADO server and determine if a conversion to Git is necessary |
| How many code repositories? | | 500 | This will affect the decision on general approaches listed above |
| Are you using branches in your code repositories? | | Yes | If the answer is no for some of the repositories, the customer will have to choose between converting specific folders in the repository to branches to retain history or accept a flat file migration of the repository with no history
| Do you need to retain history in your code repositories? | | Yes | If the answer is no and the customer is using ADO, then we do not need to convert the repos to Git. 
| Are you using ADO to build your software? | | yes | This will add CI/CD consulting/transformation activities to the engagement if the answer is yes |
| How many builds/build templates are used per code repository? | | 1 | This is a guage of complexity. Sometimes a code repository can contain several different build definitions |
| Are multiple solution (.sln) or project (.csproj) files building the same packages? | | yes | If yes, this can require advisory services to refactor to those solution/project files to work with gitlab pipelines |
| How many build servers do you use? |  | 1 | We usually convert a build server to something more epehemeral so the more build servers in use, the more development is required to transition them to something more ephemeral |
| Are you using workitems in ADO? |  | yes | If workitems need to be retained, then additional migration and/or advisory activities need to be added to the engagement. _Note: there are features in ADO workitems (e.g. custom fields and workflows) that are not supported by GitLab issues. During scoping, make sure the customer is aware of these differences._  |
| Are there any specific flags used in your build process? If so, what? |  | Yes  | This shows the customer is measuring this data to be used during the transition process. |
| Are there any external tools/applications tied to your ADO server? | | Yes. We use an in-house tool that pulls from TFS daily for gathering metrics | If the answer is yes, additional activities will need to be added to the SOW to accomodate transitioning those tools to pull from Git instead.


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

### 2. We're on 13.5 (or some old version), can we still migrate?
- The more of a difference between the source and destination software versions, the higher likelihood there is for data integrity to be lost during migration. The team who maintains the import functionality documented that the importers work when source and destination are [no more than 2 minor releases](https://docs.gitlab.com/ee/user/project/settings/import_export.html#130) apart from each other. For this reason we include upgrade services to help customers get their source instance to be matching or no less than 2 minor versions from the destination software version. Only in extreme circumstances will we consider exceptions to this guidance. 

## Other Resources
- See the publicly available [Migration Toolkit](https://gitlab.com/gitlab-org/professional-services-automation/delivery-kits/migration-template) to help understand the steps taken during delivery of migration services. 
- The [Customer folder](https://gitlab.com/gitlab-org/professional-services-automation/delivery-kits/migration-template/-/tree/master/customer) of the migration template project contains useful documentation to help a customer prepare for their migration.
- The [Migrating from Self-Managed to SaaS](/handbook/customer-success/professional-services-engineering/engagement-mgmt/scoping-information/migrations/SM-to-SaaS/) handbook page has details specific to migrating to gitlab.com. 

