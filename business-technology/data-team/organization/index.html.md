---
layout: handbook-page-toc
title: "Data Team Organization"
description: "GitLab Data Team Organization"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---

## Data Team Organization

The Data Team is organized into centers of technical and subject matter excellence, complemented by __Business-Focused__ and __Business-Involved__ teams responsible for delivering data solutions that we call [**Fusion Teams**](/handbook/business-technology/data-team/#data-fusion-teams). Complementing the Data Fusion Teams by providing a high-performance compute and storage layer, in addition to data sources, pipelines, and analytics tooling is the [Data Platform Team](https://about.gitlab.com/handbook/business-technology/data-team/#the-data-platform-team).

```mermaid
classDiagram
   GTM <|-- Platform
        GTM : + Business Partner
        GTM : + Function Analyst
        GTM : + Data Analyst
        GTM : + Analytics Engineer
    R_and_D <|-- Platform
        R_and_D : + Business Partner
        R_and_D : + Function Analyst
        R_and_D : + Data Analyst
        R_and_D : + Analytics Engineer
    G_and_A <|-- Platform
        G_and_A : + Business Partner
        G_and_A : + Function Analyst
        G_and_A : + Data Analyst
        G_and_A : + Analytics Engineer
    Platform : +Analytics Engineer
    Platform : +Data Engineer
  ```

### Fusion Team Assignments

| **GTM** | **R&D** | **G&A** |
| ----- | ----- | ----- |
| `@iweeks` _Lead/DRI_ | `@mlaanen` _Lead/DRI_  | `@iweeks` _DRI_                 | 
| `@ken_aguilar`       | `@snalamaru`           | `@pempey` _Lead_                |
| `@jeanpeguero`       | `@chrissharp`          | `@jjstark` Data Platform Team [Stable Counterpart](https://about.gitlab.com/handbook/leadership/#stable-counterparts)  |
| `@michellecooper`    | `@rbacovic` Data Platform Team [Stable Counterpart](https://about.gitlab.com/handbook/leadership/#stable-counterparts)  |                                 |
| `@paul_armstrong` Data Platform Team [Stable Counterpart](https://about.gitlab.com/handbook/leadership/#stable-counterparts) | | |  

#### Data Platform Team Stable Counterpart

Following the GitLab [Stable Counterpart](https://about.gitlab.com/handbook/leadership/#stable-counterparts) principles, every **Fusion Team** have a **Data Platform Team** Stable Counterpart assigned. The Data Platform Stable Counterpart divides his time, work and priorities between the Data Platform Team and Fusion Team (general an average of 50% each). The Stable Counterpart is aware of the direction and priorities of the Fusion Team and when needed brought into discussion with the Data Platform Team. I.e. when there is a bigger demand than the Stable Counterpart can handle in the assigned availability or architectural direction needs to change. The Stable Counterpart recognize, flags and address this with the applicable stakeholders (in general the Lead/DRI of the Data Platform Team and the Fusion Team). 
						
## How Data Fusion Teams Work

Critical to successful Data Fusion Teams are the following elements:

1. Regular and transparent Engagement with Business Partners and Data Champions includes
1. Bi-weekly Issue/Status updates
1. Monthly Priority Alignment
1. Quarterly OKR review
1. Every 6 months a CSAT survey to provide feedback to the Data Fusion Team towards the goal of continuous improvement

We encourage our stakeholders to follow along with our issue boards to understand the scope of work:

1. [GTM](https://gitlab.com/gitlab-data/analytics/-/boards/1912663?&label_name[]=ft%3Al2c)
2. [Product](https://gitlab.com/groups/gitlab-data/-/boards/1912130?label_name[]=ft%3Ar2a)
3. [G&A](https://gitlab.com/groups/gitlab-data/-/boards/1435002?&label_name[]=People) 

<!-- need to update boards potentially based on new label names -->

### Visibility

Beyond the fore-mentioned engagement, we also have Monthly Release Communication and demo sessions to help our stakeholders understand what we have developed as a Data Team and how it can be utilized.

**Monthly Release Communications**
<!-- (need to add issues with monthly release information or slide deck from OKRs -->
`Coming Soon`

**Demo Sessions**

Data Team Demos are available in [our YouTube Channel](https://www.youtube.com/playlist?list=PL05JrBw4t0KrRVTZY33WEHv8SjlA_-keI). Every GitLab Team Member is invited to attend our [weekly Data Team Demo session](https://calendar.google.com/event?action=TEMPLATE&tmeid=Z2Zibm5rbWZvamptajYwOGs4dWI2ODk0c2tfMjAyMTAzMDRUMTYwMDAwWiBnaXRsYWIuY29tX2Q3ZGw0NTdmcnI4cDU4cG4zazYzZWJ1bzhvQGc&tmsrc=gitlab.com_d7dl457frr8p58pn3k63ebuo8o%40group.calendar.google.com&scp=ALL).

### Data Team Roles:

<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://about.gitlab.com/job-families/finance/data-analyst/" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Data Analyst</a>
  <a href="https://about.gitlab.com/job-families/finance/data-engineer/" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Data Engineer</a>
  <a href="https://about.gitlab.com/job-families/finance/manager-data" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Manager</a>
  <a href="https://about.gitlab.com/job-families/finance/dir-data-and-analytics" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Director of Data & Analytics</a>
</div>
