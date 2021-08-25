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

The Data Team is organized into centers of technical and subject matter excellence, complemented by __Business-Focused__ and __Business-Involved__ teams responsible for delivering data solutions that we call [**Fusion Teams**](/handbook/business-technology/data-team/#data-fusion-teams). Complementing the Data Fusion Teams by providing a high-performance compute and storage layer, in addition to data sources, pipelines, and analytics tooling is the [Data Platform & Engineering Team](https://about.gitlab.com/handbook/business-technology/data-team/#the-data-platform--engineering-team).

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

Data Fusion Teams are described in our 

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


### Fusion Team Assignments

| **GTM** | **R&D** | **G&A** |
| ----- | ----- | ----- |
| `@iweeks` _Lead/DRI_ | `@mlaanen` _Lead/DRI_  | `@rparker2` (Acting) _Lead/DRI_ | 
| `@ken_aguilar` |  `@snalamaru` |  |
| `@jeanpeguero` | `@mpeychet` |  |
| `@michellecooper` | `@chrissharp` | |
| `@paul_armstrong` _DE [Stable Counterpart](https://about.gitlab.com/handbook/leadership/#stable-counterparts)_| `@rbacovic` _DE [Stable Counterpart](https://about.gitlab.com/handbook/leadership/#stable-counterparts)_| |  
| | | |
						

### Visibility

Beyond the fore-mentioned engagement, we also have Monthly Release Communication and demo sessions to help our stakeholders understand what we have developed as a Data Team and how it can be utilized.

**Monthly Release Communications**
<!-- (need to add issues with monthly release information or slide deck from OKRs -->
`Coming Soon`

**Demo Sessions**

Data Team Demos are available in [our YouTube Channel](https://www.youtube.com/playlist?list=PL05JrBw4t0KrRVTZY33WEHv8SjlA_-keI). Every GitLab Team Member is invited to attend our [weekly Data Team Demo session](https://calendar.google.com/event?action=TEMPLATE&tmeid=Z2Zibm5rbWZvamptajYwOGs4dWI2ODk0c2tfMjAyMTAzMDRUMTYwMDAwWiBnaXRsYWIuY29tX2Q3ZGw0NTdmcnI4cDU4cG4zazYzZWJ1bzhvQGc&tmsrc=gitlab.com_d7dl457frr8p58pn3k63ebuo8o%40group.calendar.google.com&scp=ALL).

## Data Roles and Career Development

### [Data Engineering](https://about.gitlab.com/job-families/finance/data-engineer)

```mermaid
  graph LR;

  subgraph Based on Merit &amp; Company Need
    supe:de(Data Engineer)-->supe:sde(Senior Data Engineer);
    supe:sde(Senior Data Engineer)-->supe:fde(Staff Data Engineer);
    supe:fde(Staff Data Engineer)-->supe:pde(Principal Data Engineer);
  end

  click supe:de "/job-families/finance/data-engineer#data-engineer";
  click supe:sde "/job-families/finance/data-engineer#senior-data-engineer";
  click supe:fde "/job-families/finance/data-management#staff-data-engineer";
  click supe:pde "/job-families/finance/data-engineer#principal-data-engineer";
```

### [Data Analyst](https://about.gitlab.com/job-families/finance/data-analyst)
### [Data Scientist](https://about.gitlab.com/job-families/finance/data-scientist)
### [Analytics Engineer](https://about.gitlab.com/job-families/finance/analytics-engineer)
### [Data Management](https://about.gitlab.com/job-families/finance/manager-data)








