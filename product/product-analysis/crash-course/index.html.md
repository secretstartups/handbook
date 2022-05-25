---
layout: handbook-page-toc
title: Crash Course for Product Stage Resources
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Important Note

This page is In-Progress. Content for each Stage will be included by the end of Q2 2022. Follow along with [Epic #529](https://gitlab.com/groups/gitlab-data/-/epics/529). Contributions of any kind are more than welcome. Each Product Stage has its own Issue where comments are encouraged.  

## Objectives for this page

This page is intended to provide a crash course style overview of the most important Product Analytics related resources for each product Stage.
As a Product Analyst or other curious GitLab team member, it can be helpful to have a quick and easy reference for each product Stage to quickly understand high-level functionality, key objectives or a distilled product roadmap, and key data resources currently used under a specific Stage or Group within GitLab before jumping in to an analysis.

If this page serves it's purpose, Product Analysts should be able to visit this handbook page before working with a Stage or Group to obtain helpful contextual information without needing to do a scavenger hunt search across dozens of handbook pages to find relevant information. 

## Helpful places to start

* [Internal handbook performance indicators](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/) - This internal handbook page is a great place to understand the PIs for each Stage / Group to understand what results each team is trying to acheive.

* [Sisense Usage Insights](https://app.periscopedata.com/app/gitlab/1013112/Sisense-Usage-Insights) is a Dashboard that provides a high level analysis of most commonly used Sisesnse Dashboards, Data Sources, and Snippets.

* [Product categories handbook page](/handbook/product/categories/) contains a huge amount of helpful information and defines sections, stages, groups, and categories.

* Need to quickly learn how a certain Stage/Group feature works? [GitLab Docs](https://docs.gitlab.com/)

* [Metrics dictionary](https://metrics.gitlab.com/) contains metrics and events collected in Service Ping and Snowplow. For more information visit the dedicated [Product Intelligence Guide](/handbook/product/product-intelligence-guide/#metrics-dictionary).

* [Features by Group handbook page](/handbook/product/categories/features/#planproject-management-group) contains a tabular breakdown of features included in each Stage Group by Core, Premium or Ultimate categories. 

* [Centralized SMAU/GMAU Dashboard](https://app.periscopedata.com/app/gitlab/758607/Centralized-SMAU-GMAU-Dashboard) contains CMAU, SMAU, and GMAU charts for each section, stage, and group.

## Learn about analytics relevant product stage topics grouped by Section

Why are these groupings called 'Stages'? At GitLab, we build a product that supports every **stage** of the DevOps Lifecycle.

### Dev Section

#### Manage Stage
This Stage helps teams manage their software delivery lifecycle with metrics and value stream insight in order to streamline and increase their delivery velocity. Insights, authentication, audits, compliance, user management, group & sub-group management, and project management.

<details markdown="1"><summary>Click to expand</summary>


**Top dashboards referenced by this team**

* [Centralized SMAU/GMAU](https://app.periscopedata.com/app/gitlab/758607/Centralized-SMAU-GMAU-Dashboard)  Overall SMAU/GMAU dashboard primarily utilized by the Import Group

* [Manage Stage Sisense Topics Page](https://app.periscopedata.com/app/gitlab/topic/Manage-Stage/ab937816bcd24c9291ceb7b6c5e30c49)  Overall Manage stage pinned dashboards for easy access

* [Manage : Compliance](https://app.periscopedata.com/app/gitlab/663045/Manage:-Compliance-Dashboard)  Dashboard frequently used by the Compliance Group

* [Manage : Optimize Feature Usage](https://app.periscopedata.com/app/gitlab/779829/Manage:Optimize-Feature-Usage)  Dashboard frequently used by the Optimize Group


**Important data documentation**

``` sql

SELECT * 
FROM table
WHERE field = stage_name
;
```

**Helpful video resources**

[Manage:Optimize YouTube Channel](https://www.youtube.com/playlist?list=PL05JrBw4t0KopcuINFaWBEHYlaDnbDxpl)

Team meetings, AMAs, etc. for the Manage:Optimize Group

[Manage:Access YouTube Channel](https://www.youtube.com/playlist?list=PL05JrBw4t0Kot4GcDlWPsZOM8YgncnPUi)

Team meetings, AMAs, etc. for the Manage:Access Group

[Manage:Workspace YouTube Channel](https://www.youtube.com/playlist?list=PL05JrBw4t0Kq-9cR2cz4uxUIfVYtB4Gq8)

Team meetings, AMAs, etc. for the Manage:Workspace Group

**Product direction**

[Problems to Solve from Product Direction Page](https://about.gitlab.com/direction/manage/#problems-to-solve)

The Problems to Solve section of Manage's Product Direction Page is the most condensed documentation to understand Manage's big picture focus quickly.

**Performance indicators**

[Metrics from Product Direction Page](https://about.gitlab.com/direction/manage/#metrics)

This link breaks down the performance indicators for each Manage Group clearly and links out to the Internal Handbook PI page. 

**Key handbook pages**

[Manage Direction Page](https://about.gitlab.com/direction/manage/)

[Main Manage Stage Page](https://about.gitlab.com/handbook/engineering/development/dev/manage/)

**Slack channels**

**#s_manage**

**Team members**

[Handbook page to find Manage team members to collaborate with](/handbook/product/categories/#manage-stage)

</details>

#### Plan Stage
Enable teams to effectively plan and execute work in a single application. This stage enables portfolio planning and management through epics, groups (programs), milestones, etc. to organize and track progress

<details markdown="1"><summary>Click to expand</summary>

**Top dashboards referenced by this team**

* [Plan xMAU (monthly)](https://app.periscopedata.com/app/gitlab/775807/Plan-xMAU-(monthly))  Overall Plan Stage xMAU dashboard

* [Centralized SMAU/GMAU](https://app.periscopedata.com/app/gitlab/758607/Centralized-SMAU-GMAU-Dashboard)  Most Group PMs on Plan utilize the Centralized SMAU/GMAU dashboard

* [Plan stage .com events](https://app.periscopedata.com/app/gitlab/654183/Plan-stage-.com-events)  Analyses dealing with Snowplow events tables

* [Say Do Ratios](https://app.periscopedata.com/app/gitlab/658030/Say-Do-Ratios)  Primarily engineering analytics utilized for Plan Stage decision making

* [Plan stage capacity planning](https://app.periscopedata.com/app/gitlab/587512/Plan-stage-capacity-planning)  Primarily engineering analytics utilized for Plan Stage decision making

**Important data documentation**

``` sql

SELECT * 
FROM table
WHERE field = stage_name
;
```

**Helpful video resources**

[Plan Stage YouTube playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KoceqcTneOVmAzhEp6NinY0)

**What the Plan Stage team is working on**

[Link to 1 Year Plan](https://about.gitlab.com/direction/plan/#1-year-plan)

A great handbook page to skim to understand the roadmap and focus for Plan

**Performance indicators**

[Link to performance indicators](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/dev-section/)

Resource to understand the Performance Indicators for the Dev Section - Page can be searched by Stage and Group

**Key handbook pages**

[Main Plan page](https://about.gitlab.com/handbook/product/categories/plan/)

[Plan direction page](https://about.gitlab.com/direction/plan/)


**Slack channels**

**#s_plan**

**Team members**

[Handbook page to find Plan team members to collaborate with](/handbook/product/categories/#plan-stage)

</details>

#### Create Stage
Create provides tools that support the beginning of the DevOps Life Cycle. Source Code management, Code Review, Wiki, Web IDE, etc.

[Start on the GitLab website page](https://about.gitlab.com/features/?stage=create) dedicated to Create to get an understanding of features included in this Stage. 

<details markdown="1"><summary>Click to expand</summary>

**Top dashboards referenced by this team**

* [Create - Code Review Topics page](https://app.periscopedata.com/app/gitlab/topic/Create---Code-Review/abb4786159ef4aa7abad4da4c21b0871)  Create : Code Review group specific pinned dashboards for easy access

* [Code Review MAU Metrics](https://app.periscopedata.com/app/gitlab/786738/Code-Review-MAU-Metrics)  Used frequently by Create : Code Review Group

* [Editor Extension Category MAU Metrics](https://app.periscopedata.com/app/gitlab/825329/Editor-Extension-Category-MAU-Metrics)  Used frequently by Create : Code Review Group

* [Performance indicators internal handbook page](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/dev-section/)  The Create : Gitaly Group primarily uses the Performance Indicators Internal Handbook Page to guide decisions

* [Handbook page containing engineering analytics dashboards](https://about.gitlab.com/handbook/engineering/development/dev/create/engineering-managers/dashboards/)  Used by Create Stage Engineering Managers

**Important data documentation**

``` sql

SELECT * 
FROM table
WHERE field = stage_name
;
```

**Helpful video resources**

Must be logged into GitLab Unfiltered account

[Create Stage YouTube playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KrJEKqwt57ljmbkOuVwaR0d)

[Create Stage UX YouTube playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KrUvA91eFQedd6zrvH0_kGY)

**Product roadmap link**

[Link to product direction / vision](/handbook/engineering/development/dev/create/#vision)

Resource to understand the goals for this team

**Performance indicators**

[Link to performance indicators](https://internal-handbook.gitlab.io/handbook/company/performance-indicators/product/dev-section/)

Resource to understand the Performance Indicators for the Dev Section - Page can be searched by Stage and Group

**Key handbook pages**

[Primary Create Stage handbook page](/handbook/engineering/development/dev/create/)

Contains helpful information about how Create operates and current team members

**Slack channels**

**#s_create** 

**#s_create_pm**

**Team members**

[Handbook page to find Create team members to collaborate with](/handbook/product/categories/#create-stage)

</details>

### Ops Section

#### Verify Stage
Short description of Verify Stage

<details markdown="1"><summary>Click to expand</summary>

**Top dashboards referenced by this team**

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used


**Important data documentation**

``` sql

SELECT * 
FROM table
WHERE field = stage_name
;
```

**Helpful video resources**

[Link to user research or demos]()
Group specification if applicable, brief description of youtube channel linked or specific singular video resource

**Product roadmap link**

[Link to product roadmap]()
Resource to understand the long-term goals for this team

**Performance indicators**

[Link to OKRs handbook page]()
Resource to understand the current OKRs for this team

**Key handbook pages**

[Link to helpful handbook page]()
Describe why this handbook page is helpful for product analysts

**Slack channels**

**#slack-channel**
Description

**Team members**

[Handbook page to find Verify team members to collaborate with](/handbook/product/categories/#verify-stage)

</details>

#### Package Stage
The Package team works on the package and container registries.

<details markdown="1"><summary>Click to expand</summary>

**Top dashboards referenced by this team**

* [Package GitLab.com Stage Activity](https://app.periscopedata.com/app/gitlab/527857/Package-GitLab.com-Stage-Activity-Dashboard)

Primarily time series analyses for Package features on GitLab.com

* [Package: User Adoption and Growth](https://app.periscopedata.com/app/gitlab/805350/Package:-User-Adoption-and-Growth)

Primarily time series analyses including both SaaS and SM usage of Package features

* [Package customer adoption](https://app.periscopedata.com/app/gitlab/877343/Package-customer-adoption)

Customer specific data tables regarding specific Package feature usage

* [Package: Costs](https://app.periscopedata.com/app/gitlab/1011032/Package:-Costs)

WIP dashboard analyzing GCP costs associated with general 'registry' costs. There are outstanding questions about GCP tables that may impact these analyses in the future.

**Important data documentation**

``` sql

SELECT * 
FROM table
;
```


**Helpful video resources**

[User Interviews YouTube Channel](https://www.youtube.com/playlist?list=PL05JrBw4t0KpxCv3B5S-6LFCpBB6NCnga)

General and feature specific user interviews for the Package team

[Demos and Speedruns](/handbook/engineering/development/ops/package/#demos--speedruns)

Package Handbook section with feature and roadmap demos

**Product roadmap link**

[Link to product roadmap](/handbook/engineering/development/ops/package/#roadmap)

Resource to understand the long-term goals for this team

**OKRs**

[Link to OKRs handbook page](/handbook/engineering/development/ops/package/#okrs)

Resource to understand the current OKRs for this team

**Key documentation**

[Main Package Team Handbook Page](/handbook/engineering/development/ops/package)

It can be helpful to search for specific topics on the Package team's main page

[GitLab Docs Package Page](https://docs.gitlab.com/ee/administration/packages/)

GitLab Docs are awesome!

**Slack channels**

**#s_package** 

**Team members**

[Handbook page to find Package team members to collaborate with](/handbook/product/categories/#package-stage)

[List of Package team members and their stable counterparts to contact if needed](/handbook/engineering/development/ops/package/#team-members)

</details>

#### Release Stage
Short description of Release Stage

<details markdown="1"><summary>Click to expand</summary>

**Top dashboards referenced by this team**

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used


**Important data documentation**

``` sql

SELECT * 
FROM table
WHERE field = stage_name
;
```

**Helpful video resources**

[Link to user research or demos]()
Group specification if applicable, brief description of youtube channel linked or specific singular video resource

**Product roadmap link**

[Link to product roadmap]()
Resource to understand the long-term goals for this team

**Performance indicators**

[Link to OKRs handbook page]()
Resource to understand the current OKRs for this team

**Key handbook pages**

[Link to helpful handbook page]()
Describe why this handbook page is helpful for product analysts

**Slack channels**

**#slack-channel**
Description

**Team members**

[Handbook page to find Create team members to collaborate with](/handbook/product/categories/#configure-stage)


</details>

#### Monitor Stage
Short description of Monitor Stage

<details markdown="1"><summary>Click to expand</summary>

**Top dashboards referenced by this team**

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used


**Important data documentation**

``` sql

SELECT * 
FROM table
WHERE field = stage_name
;
```

**Helpful video resources**

[Link to user research or demos]()
Group specification if applicable, brief description of youtube channel linked or specific singular video resource

**Product roadmap link**

[Link to product roadmap]()
Resource to understand the long-term goals for this team

**Performance indicators**

[Link to OKRs handbook page]()
Resource to understand the current OKRs for this team

**Key handbook pages**

[Link to helpful handbook page]()
Describe why this handbook page is helpful for product analysts

**Slack channels**

**#slack-channel**
Description

**Team members**

[Handbook page to find Monitor team members to collaborate with](/handbook/product/categories/#monitor-stage)

</details>

### Sec Section


#### Secure Stage
Short description of Secure Stage

<details markdown="1"><summary>Click to expand</summary>

**Top dashboards referenced by this team**

* [Dynamic Analysis Metrics](https://app.periscopedata.com/app/gitlab/703762/WIP:-Dynamic-Analysis-metrics)

PIs and metrics for the Secure:Dynamic Analysis Group

* [Link to a dashboard]()

Group specification if applicable, brief description of dashboard and how it's used

* [Link to a dashboard]()

Group specification if applicable, brief description of dashboard and how it's used

**Important data documentation**

``` sql

SELECT * 
FROM table
WHERE field = stage_name
;
```

**Helpful video resources**

[Link to user research or demos]()
Group specification if applicable, brief description of youtube channel linked or specific singular video resource

**Product roadmap link**

[Link to product roadmap]()
Resource to understand the long-term goals for this team

**Performance indicators**

[Link to OKRs handbook page]()
Resource to understand the current OKRs for this team

**Key handbook pages**

[Link to helpful handbook page]()
Describe why this handbook page is helpful for product analysts

**Slack channels**

**#slack-channel**
Description

**Team members**

[Handbook page to find Secure team members to collaborate with](/handbook/product/categories/#secure-stage)

</details>


#### Protect Stage
Short description of Protect Stage

<details markdown="1"><summary>Click to expand</summary>

**Top dashboards referenced by this team**

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used


**Important data documentation**

``` sql

SELECT * 
FROM table
WHERE field = stage_name
;
```

**Helpful video resources**

[Link to user research or demos]()
Group specification if applicable, brief description of youtube channel linked or specific singular video resource

**Product roadmap link**

[Link to product roadmap]()
Resource to understand the long-term goals for this team

**Performance indicators**

[Link to OKRs handbook page]()
Resource to understand the current OKRs for this team

**Key handbook pages**

[Link to helpful handbook page]()
Describe why this handbook page is helpful for product analysts

**Slack channels**

**#slack-channel**
Description

**Team members**

[Handbook page to find Protect team members to collaborate with](/handbook/product/categories/#protect-stage)

</details>

### Enablement Section


#### Enablement Stage
Short description of Enablement Stage

<details markdown="1"><summary>Click to expand</summary>

**Top dashboards referenced by this team**

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used

* [Link to a dashboard]() Group specification if applicable, brief description of dashboard and how it's used


**Important data documentation**

``` sql

SELECT * 
FROM table
WHERE field = stage_name
;
```

**Helpful video resources**

[Link to user research or demos]()
Group specification if applicable, brief description of youtube channel linked or specific singular video resource

**Product roadmap link**

[Link to product roadmap]()
Resource to understand the long-term goals for this team

**Performance indicators**

[Link to OKRs handbook page]()
Resource to understand the current OKRs for this team

**Key handbook pages**

[Link to helpful handbook page]()
Describe why this handbook page is helpful for product analysts

**Slack channels**

**#slack-channel**
Description

**Team members**

[Handbook page to find Secure team members to collaborate with](/handbook/product/categories/#secure-stage)

</details>

