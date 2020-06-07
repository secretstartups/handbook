---
layout: handbook-page-toc
title: "OKRs"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

GitLab uses **Objectives and Key Results** (OKRs) as *[quarterly goals](/company/okrs/) to execute our strategy to make sure [said] goals are clearly defined and aligned throughout the organization*. 

At Infrastructure, we have admittedly been lagging behind in terms of properly and, one might say, genuinely, adopting and using OKRs. Over the past few months we have focused on stabilizing GitLab.com's availability and we have approached planning in a very **tactical fashion**, essentially duct-taping our way through it. We treated OKRs as a set of guidelines rather than proper objectives, almost bordering on *homework* to be completed before the beginning of a quarter, a strategy that not only is not sustainable, it is, in fact, **not a strategy at all**.

GitLab.com's availability [has arguably improved](/blog/2018/10/11/gitlab-com-stability-post-gcp-migration/). Much work remains to be done, even as the chaos has subsided and has come under control. But we have found a disconnect between opposite ends of the department: as the team has grown, it has become harder to sustain a tactical approach. Availability continues to be our top priority, but we must start to plan and execute more **strategically**. In order to do so, we must deeply integrate OKRs in our workflows so we can produce timely, relevant data to track our progress towards well-defined objectives. As John Doerr so eloquently puts it, *ideas are easy; execution is everything*.

## OKR Primer

OKRs stand for **Objectives** and **Key Results**. Quoting John Doerr from [*Measure What Matters*](https://www.whatmatters.com/):

* An **Objective** is **what** is to be achieved. 
  * Objectives are significant, concrete, action-oriented and, ideally, inspirational.
* A **Key Result** benchmarks and monitors **how** we achieve the objective. 
  * Key Results are specific, time-bound, aggressive yet realistic, and measureable and verifiable.

OKRs are conceptually simple, almost deceivingly so, and thus are easy to take for granted.  They're a powerful framework to manage our execution towards achieving our objectives, but to be truly effective, we must fully integrate OKRs into the organization end to end, particularly in terms of status checkpoints (Staff and Staff meetings, 1:1s, etc) and workload management tools (milestones and issues). Additional guidelines are provided in the [OKR section](/company/okrs/).

This blueprint charts the path to perform said integration in Infrastructure.

## Infra OKRs

Infrastructure's productivity bandwidth is spread across three different but related areas:

* **Availability**: we foster and protect GitLab.com's availability
* **Product**: we support the Product and Engineering organizations in the introduction of new features
* **Infrastructure**: we optimize our own processes and tooling to safely increase our change velocity 

Each team in Infrastructure has one objective and three KRs in support of said objective. These KRs are aligned with the three aforementioned areas.

### Objectives

The overall Infrastructure **objective** is to make all user-visible services (particularly GitLab.com) ready for mission-critical workloads. Each team's objective support our this overall objective, as follows:

* **SAE**: minimize user-visible services' MTTR
* **SRE** maximize user-visible services' MTBF
* **Delivery**: streamline GitLab deployments on GitLab.com and self-managed releases

Additionally, **AN** has his own objective: improve observable availability for GitLab.com, which directly supports all three Infrastructure teams.

#### Key Results

Each team produces three KRs, which, as outlined above, must be measurable and verifiable. KR's are aligned with availability, product and infrastructure areas. The percentages of productivity bandwidth for the KRs is not necessarily distributed equally.

## Implementation

We will keep track of OKRs using GitLab issues, properly tagged so queries can quickly gather the necessary data and duplication of data can be avoided.

#### Objectives

* SAE and SRE teams' (as well as AN's) objectives will be created as issues in the `infrastructure` tracker.
* The Delivery team will have its objective created as an issue in the `frameworks` tracker. 

OKR objectives are tagged with `okr:o`, `team:{team}` and `yyyy-qn` labels and are assigned to each team's manager and the Director of Infrastructure. The description of the issue contains the objective definition.

#### Key Results

Each team codifies key results as issues in their respective issue trackers, tagged with  `okr:kr` and `yyyy-qn` labels. The KR issues must be linked to the objective they support. These  issues are assigned to each team's manager and to the Director of Infrastructure.

The description of the issue will use GitLab's KR definition format. Each KR issue is linked to its corresponding objective.

#### Milestones and Issues

We are moving towards parallel, themed milestones. Milestones and issues within said milestones have to be in supports of OKRs. Link milestones and issues with their corresponding KRs.

## WorkFlow

### Planning

A week before VPE starts the quarterly OKR process, Infrastructure starts internal discussions about our objectives and OKRs for each team within the department. This is our preparation work in advance of the actual Engineering-wide organization OKR period (and thus, cannot be considered finalized until said period ends).

The Director of Infrastructure will set the overall objective for the department and each team. Team members will discuss and bring forward 3 KRs per objective up for discussion.

When OKRs are set, the Director of Infrastructure will open issues for each objective and KR. These issues are intended to serve as anchors to associate team issues with specific O+KRs.

The Infrastructure OKRs will also be added to the VPE's OKR specification.

### Tracking

Every week:

* Before the mStaff meeting, Infrastructure managers update KRs in the description of the corresponding issue. Comments can be used to keep track of discussion items for the given KR.
* The Director of Infrastructure starts the Infrastructure mStaff meeting by reviewing OKRs. 

* Infrastructure Managers discuss OKRs with their respective teams at Staff meetings
* OKRs are also discussed during 1:1s, as appropriate.

