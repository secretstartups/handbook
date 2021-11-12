---
layout: handbook-page-toc
title: "Professional Services EM Scoping - CI/CD Pipeline Migration"
description: "Describes the process for scoping pipeline migrations from other CI/CD systems to GitLab"

---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# General approaches for CI/CD "Migration"

1. **Flash Cut** - Migrate all data from legacy CI platform to GitLab including job definitions, job outputs and artifacts. _Note: This is typically harder to do as you will need to recreate history on the new system. Most customers are not intersted in the additional cost (development time to script/test, longer migration). Wherever possible, we should recommend **Net New**_. 
2. **Net New** - Update all pipelines job definitions to run on the customer GitLab instance using GitLab CI. All job history remains on the legacy system. All historical packages and containers are left on the legacy system and rebuilt on the new GitLab system.  

# Migrating from Artifactory to GitLab Registry

## Specific Approaches
1. **Flash Cut** - Migrate all data from Artifactory to GitLab registry including historically built packages and containers. _(Not reccommended)_
2. **Net New** - Update all pipelines to push to and pull from gitlab registry so that all newly built software packages are stored in GitLab in the build/package stage. Then in the deploy stage they are pulled from gitlab registry. Slowly migrate the dependencies that don't often change to gitlab registry. Graudally phase out Artifactory. _(Reccommended)_

## Scoping Questions - Artifactory Migration Opportunity

| Question | Answer | Sample Answer | Rationale for asking|
| ----- | ----- | ----- | ----- |
| What artifacts are stored in artifactory? | | built software binaries and docker containers. No dependent libraries - we go out to the internet for these | This will affect the decision on general approaches listed above |
| How many artifacts are stored in artifactory? | | 1,234 | Shows roughly how large the scope of a migration project will be. |
| How many artifactory servers do you have? | | 2 | This is a guage of complexity. The more artifactory services, the more complex. |
| How many software packages/images are pushed to artifactory per Month? |  | 2345 | This shows the customer is measuring this data to be used during the transition process. |
| How many software packages/images are pulled from artifactory per month? |  | 2345 | This shows the customer is measuring this data to be used during the transition process. |

# Migrating from Jenkins to GitLab CI

## Specific Approaches

1. **Flash Cut** - Migrate all data from Jenkins to Gitlab CI and update pipeline files at once. 
2. **Net New** - Update all pipeline job definitions to run on the customer GitLab instance using GitLab CI. All job history remains on the legacy system. All historical packages and containers are left on the legacy system and rebuilt on the new GitLab system. 

## Scoping Questions - Jenkins Migration Opportunity

| Question | Answer | Sample Answer | Rationale for asking|
| ----- | ----- | ----- | ----- |
| How many Jenkins Instances do you have? Please list them and answer the below questions for each instance.  | | 2 instances - US east and US West | We need to know this to understand the scope of migration  |
| Where are these instances located? | | AWS US East 1c, In our on-prem Sacramento data center | Thinking through connectivity between Jenkins servers and GitLab |
| Total number of jobs? | | 6,400 | This is a gauge of scale and an indicator of project duration |
| Total number of users? | | 900 | This is a gauge of scale and an indicator of project duration |
| Total number of repositories? | | 6,400 | This helps us understand cardinality (e.g. how many jobs are associated with each source code project). Its also an indicator of scale of an engagement. |
| How does Jenkins currently communicate with your SCM? | | A single service account is used for polling the SCM for changes. | If there is a shift in responsibility (from platform team to application team), this tells us whether we should discuss education services on how to configure the GitLab project. |
| What Jenkins plugins are you using most often? |  | We use the maven plugin extensively. Also some teams use Ant/Gradle plugins. Some usage of .NET SDK too.  | Knowing more about the plugins that support your workflow will help us understand how much time to spend on building workflow proposals to use an approach based on gitlab best practices. |
| Do you use the branch/source plugin to automate the creation of jenkins folders or jobs?  |  | We don't use the branch/source plugin for automatically creating jenkins jobs on repo creation | This automation is ususally somethign customers want to retain, so we will need special considerations for this kind of approach. |
| What type of job executors pick up your Jenkins jobs? | | We have a persistantly running fleet of virtual machines that are available to run jobs. | This helps us understand the level of effort to port your workflows to use gitlab best practices (leveraging containerized builds). |














