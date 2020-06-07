---
layout: handbook-page-toc
title: "OKRs"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

[`infra/6025`](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6025)

## Overview

As mentioned in the [OKR Blueprint](https://about.gitlab.com/handbook/engineering/infrastructure/library/okrs/), GitLab uses **Objectives and Key Results** (OKRs) as *[quarterly goals](/company/okrs/) to execute our strategy to make sure [said] goals are clearly defined and aligned throughout the organization*. The blueprint outlined Infrastructure's approach to OKRs and their implementation within the team, including the planning and tracking workflow.

This documents builds on the blueprint and provides a design to implement OKRs using GitLab, which guides the development of a [proof-of-concept](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6048) tool, [`glokr`](https://gitlab.com/glopezfernandez/glokr) to make said implementation a reality. 

## Design

### Tracking OKRs with Epics

GitLab has three basic units of tracking: **[issues](https://docs.gitlab.com/ee/user/project/issues/)**, **[milestones](https://docs.gitlab.com/ee/user/project/milestones/)**, and **[epics](https://docs.gitlab.com/ee/user/group/epics/)**:

* **Issues** track the evolution of a new idea or the process of solving a problem, and have attributes such assignee, opened and due dates, time tracking, and weight, among others. Issues, thus, are primarily used to track *work*.
* **Milestones** track issues and merge requests created to achieve a broader goal *in a certain period of time*. Infrastructure operates on biweekly milestones for each team, which specify the issues that receive focus during said period.
* **Epics** track groups of issues and child epics that share a theme across projects and milestones.

Of these three units of tracking, epics are closely aligedn with OKRs, which are concisely themed as they a centered around specific objectives and key results. Epics have start and end dates, and can contain other epics and issues that track the work that achieves an OKR. Thus, **our implementation will represent OKRs through epics**.

Each OKR objective has a number of associated key results (KRs). These too will be represented as epics. Both objective and key result epics will be tagged accordingly as `okr:o` and `okr:kr`, respectively. In addition, all OKR-related epics will be tagged with the appropriate fiscal quarter (`okrq:<fyq>`, where `fyq` represents the fiscal year quarter of the OKR) and the team (`team:<team>`). Key result epics are therefore child epics of the Objective epic.

![](img/OKRepic-v1.1.1.png)

### Attributes

The following sections outline attributes related to objectives and key results, and their corresponding mapping to epic attributes, when available; otherwise, the source of the data is specified (for instance. from labels).

#### Objectives

| OKR Attribute | Epic Attribute | Description                                                  |
| ------------- | -------------- | ------------------------------------------------------------ |
| `Objective`   | `Title`        | A concise statement that describes **what** it is to be achieved. |
| `Description` | `Description`  | A description thaty expands the goal.                        |
| `Period`      | Label: `okrq:` | The period of time in which the OKR is active.               |
| `StartDate`   | `StartDate`    | The start date of the OKR period                             |
| `End Date`    | `End Date`     | The end date of the OKR period                               |
| `Labels`      | `Labels`       | `okr:o`, `okrq:<fyq>`, `team:<team>`                         |
| `KRs`         | Child Epics    | The OKR's KRs (not available through the API; see *Limitations*) |
| `OKRs`        | Child Epics    | The OKR's child OKRs (not available through the API; see *Limitations*) |
| `Team`        | Label: `team:` | Derived from label `team:<team>`                             |
| `Manager`     | N/A            | Derived from Configuration (via team)                        |
| `ParentOKR`   | Parent Epic    | The OKR's parent OKR (not available through the API; see *Limitations*) |

Currently, the model does not contemplate having issues associated with an Objective.

#### Key Results

| KR Attribute  | Epic Attribute  | Description                                                  |
| ------------- | --------------- | ------------------------------------------------------------ |
| `Key Result`  | `Title`         | A concise, measurable statement **how** the objective is to be achieved . |
| `Category`    | Label: `okr.c:` | One of `availability`, `product`, `introspective`            |
| `Description` | `Description`   | A description thaty expands the goal.                        |
| `Period`      | Label: `okr.q:` | The period of time in which the KR is active.                |
| `StartDate`   | `StartDate`     | The start date of the OKR period                             |
| `End Date`    | `End Date`      | The end date of the OKR period                               |
| `Labels`      | `Labels`        | `okr:kr`, `quarter:<fyq>`, `team:<team>`                     |
| `Epics`       | Child Epics     | The KR's Epics (not available through the API; see *Limitations*) |
| `Team`        | Label: `team:`  | Derived from label `team:<team>`                             |
| `Manager`     | N/A             | Derived from configuration (via team)                        |
| `ParentOKR`   | Parent Epic     | The KR's parent Objective (not available through the API; see *Limitations*) |
| `Score`       | N/A             | Calculated from issue weights (issues closed weights vs total) |

#### Epics

Epics track groups of issues and child epics that share a theme across projects and milestones.

 

| Epic Attribute  | Description                                                  |
| --------------- | ------------------------------------------------------------ |
| `Title`         | A concisetitle for the epic.                                 |
| Label: `okr.c:` | One of `availability`, `product`, `introspective`            |
| `Description`   | A description thaty expands the goal.                        |
| Label: `okr.q:` | The period of time in which the KR is active.                |
| `StartDate`     | The start date of the OKR period                             |
| `End Date`      | The end date of the OKR period                               |
| `Labels`        | `okr:kr.e`, `okr.c:<cat>`, `okr.q:<fyq>`, `team:<team>`      |
| Label: `team:`  | Derived from label `team:<team>`                             |
| Parent Epic     | The epic's parent KR (not available through the API; see *Limitations*) |

### Links

GitLab's API does not yet support epic-to-epic links. We must rely on label conventions to establish links by convention. In this first iteration, these will limit us to 1 layer of epics. We could use some labels to point to specific epics, but that would cause an unnnecessary spread of labels. Additionally, we considered using a specific format in the description, but this will be error prone.

#### Objectives to Key Results

| Labels   | Objective                 | Key Result                |
| -------- | ------------------------- | ------------------------- |
| Unshared | `okr:o`                   | `okr.kr`                  |
| Linking  | `okr.q`,  `okr.c`, `team` | `okr.q`,  `okr.c`, `team` |

#### Objectives to Child Objectives

| Labels   | Objective (Parent)         | Objective (Child)          |
| -------- | -------------------------- | -------------------------- |
| Unshared | `team:<parent>`            | `team:<child>`             |
| Linking  | `okr:o`, `okr.q`,  `okr.c` | `okr:o`, `okr.q`,  `okr.c` |

#### Key Results to Epics

| Labels   | Key Result                | Epic                      |
| -------- | ------------------------- | ------------------------- |
| Unshared | `okr:kr`                  | `okr:kr.e`                |
| Linking  | `okr.q`,  `okr.c`, `team` | `okr.q`,  `okr.c`, `team` |

### Approach

The approach we are taking is to consume all epics matching a specific set of label and build a runtime OKR tree.

### Implementation Considerations

#### General

We have implemented `glokr` in Go for expediency. Additionally, `glokr` uses a forked version of the [`go-gitlab`](https://github.com/xanzy/go-gitlab) package, which was extended to support epics. As such, `glokr`'s library portion mimics `go-gitlab`'s organization, which requires the duplication of some functionality from `go-gitlab`.

#### Limitations

The current implementation has the following limitations.

##### Epics API does not Support Epic Links

Child epics were introduced <WHEN> in the GitLab Web UI, but the API does not yet support this functionality. Thus, we are relying on label conventions and manual bookeeping to provide epic linking. As soon as the API supports this functionality, we will be able to remove said conventions and manual bookeeping. Additionally, some of the fields could be derived through link relationships (for instance, the)

##### Groups and Teams

In the context of this design, **groups** are [GitLab groups](https://docs.gitlab.com/ee/user/group/) and **teams** are company organizational units, which do not necessarily correlate cleanly. As epics are closely related to GitLab groups, groups serve primarily as a container to hold epics.

##### Cross-Group Epics?

Some of the work scoped in an OKR may require multiple groups, but epic links cannot cross groups.

#### GitLab.com and Self-managed

Whenever the functionality is available in GitLab, self-managed customers would be able to benefit from it.

### Alternatives

The original plan to implement OKRs entailed the use of issues, issue-links and labels to hold objectives and key results. Epics are a better fit, provide time-boxing and theme, and avoid pollution in the issue trackers.






