---
layout: handbook-page-toc
title: "Integrations SDLC Process"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Integrations - SDLC Process

### SDLC
The work lifecycle starts when BSAs create epics/issues in Intake Project and tag integration team for the implementation. 
Once integration team is onboarded depending upon the size of the project (Small, Medium, large) it traverses through the [project workflow](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/integrations-work/-/issues/289) and goes live.

Within the integration we use combinations of milestones, boards, epics, issues and labels to manage and plan the work.

#### SDLC stage - 1
During the Design phase of the project, the epic in [Integrations group](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations) or user stories are created in the [Integration Project](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/integrations-work). It describes the unit of work and its acceptance criteria. The epic is then sub divided into issues. These issues are then added to the [BT Integrations Planning board](https://gitlab.com/groups/gitlab-com/-/boards/3224617) via label `BT Integration Backlog`. Good practice is to use additional labels to define the priority like BT Priority 1, 2, 3 and the nature of work like Field Marketing, Finance Systems or Bug. The board comes in handy while planning for milestones (each of 1 month long) where we know what is to be planned in the current milestone and what goes in the next one as per their priority.

#### SDLC stage - 2
During the build phase, when we plann for the upcmoning milestone, issues are transfered from Backlog board to Kanban board by assiging the label `BT Integration Kanban`. This is the board which holds all the in-progress work and therefore all the issues in the current miletsone must have this label.

#### SDLC stage - 3
When the issues are complete, they are either closed or marked with label `BT-Ready For Review`. At this stage, the code is merged in master branch and is ready for pear review.

#### SDLC Flowchart

    A[Intake project Epic] -->|After discovery session| B(Epic created in Integration Project)
    B --> C(epic broken down into sub epics and issues)
    C --> |labels - BT Integrations Backlog, BT Priority 1,2,3|D(issues added to Planning board - work in planning)
    D --> |labels - BT Integrations Kanban, BT Priority 1,2,3, BT-To Do OR in progress|E(Issues added to Kanban Board - work in progress)
    E --> |labels - BT done OR BT Ready for Review|F(issue completion)

#### SDLC Artifacts

##### Labels

| Label                         | Description                                                                                     |      project/group     |  type  |
| :---------------------------- | :---------------------------------------------------------------------------------------------- | :--------------------: | :----: |
| BusinessTechnology                   | Business Technology is actively involved                                                                        | gitlab-com, gitlab-org |    - |
| BT Integration Backlog                       | Add issues to the Planning board              | gitlab-com, gitlab-org |    - |
| BT Integration Kanban                            | Add issues to the In progress board work                                                                   | gitlab-com, gitlab-org |    - |
| BT-Status::1-Needs Review    | This has not been looked at.                                                                    | gitlab-com, gitlab-org | scoped |
| BT-Status::2-Backlog         | This work is in the backlog and will be pulled forward when expedient                           | gitlab-com, gitlab-org | scoped |
| BT-Status::3-Working         | This work is in progress.                                                                       | gitlab-com, gitlab-org | scoped |
| BT-Status::4-Change          | This needs a change in order to be approved or merged                                           | gitlab-com, gitlab-org | scoped |
| BT-Status::5-Needs Info      | This needs information from requestor to move forward                                           | gitlab-com, gitlab-org | scoped |
| BT-Status::6-On Hold         | This is on hold for a longer period of time                                                     | gitlab-com, gitlab-org | scoped |
| BT-Status::7-Ready to Deploy | This is ready to be merged or the work executed                                                 | gitlab-com, gitlab-org |    - |
| BT-Status::8-Denied          | This work is considered incomplete and won't be worked on or will not be worked on at this time | gitlab-com, gitlab-org | scoped |
| BT-Priority::1               | Critical                                                                                        | gitlab-com, gitlab-org | scoped |
| BT-Priority::2               | Important not urgent                                                                            | gitlab-com, gitlab-org | scoped |
| BT-Priority::3               | No rush to do, but please do it.                                                                | gitlab-com, gitlab-org | scoped |
| BT-To Do                   | This is for work that's not started yet                                                        | gitlab-com, gitlab-org |    - |
| BT-Blocked                       | This blocks other work                                                                          | gitlab-com, gitlab-org |    - |
| BT-To In progress                | This is for work that's in progress stage request                                                                                  | gitlab-com, gitlab-org |    - |
| BT-Done               | This is for work completed by the assignee request                                                                                  | gitlab-com, gitlab-org |    - |
| Bug               | This is for issues raised in the delivered work request                                                                                  | gitlab-com, gitlab-org |    - |


#### Issue Weights

Issue weight is an estimate of how much time is required to complete the tasks in the issue. The idea is to go over the problem statement raised in the issue with the team that will be working on it and put it into one of 5 buckets: XS, S, M, L, XL as a way to group the unit of work.

**Process**

- When an issue is opened for the Enterprise App team with the appropriate [labels](/handbook/business-technology/how-we-work/#labels), a team member must be assigned.
- The assignee works with all parties involved in the issue to recommend a weight.
- After the issue is closed, the assignee who helped coordinating the the work can update the weight to reflect the actual effort if different from the original weight.
    They should provide a reason and mention it in the Enterprise Applications Sync or in the [Enterprise Applications wiki](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/enterprise-applications-sync/-/wikis/Enterprise-Applications-weekly-sync) to help us improve our weighting accuracy going forward.

**Guidelines**

| Size/Weight | Description | Estimate work range  |
| ----------- | ----------- | ----------- | 
| XS:1        | A task.<br><br> **Example:** <br>- Documentation update. | <4 hours |
| S:2         | The problem statement has been determined and a solution identified. No need for (extra) discussion with other teams or people.<br><br> **Examples are:** <br>- A problem that has been discussed but needs an issue to track the development and outcome.<br>- Regular bugs to be addressed by the Integrations engineers where some investigation has already taken | 4 hours / half a day |
| M:3         | The problem statement has been defined with understood requirements. A solution is yet to be identified and coordination with other teams or people may be required.<br><br>Bugs that are not fully understood and may not yet have a suggested solution. Extra investigation is required but the expectation is that once a solution is identified, it should be relatively easy to implement.<br><br> **Examples are:** <br>- A deliverable from an ongoing project that will involve different teams and coordination from a BSA (Business Systems Analyst) to help find and implement a solution.<br>- Most system bugs or performance issues. | 8 hours / 1 day      |
| L:5         | The problem statement has been defined but a solution will require extra investigation in order to be identified and implemented. Surprises are expected, different teams will have to be involved and a BSA (Business Systems Analyst) assistance is needed.<br><br>Bugs that are very poorly understood and will not have a suggested solution. Significant investigation will be required and once the problem is found, a solution may not be straightforward.<br><br> **Examples are:** <br>- A deliverable from an ongoing project that will involve different teams and coordination from a BSA (Business Systems Analyst) to help find and implement a solution.<br> Bugs or system workflows that negatively impact the work of other people. | 12 hours / 1.5 days  |
| XL:8        | The problem statement has been defined but is a significant change that has dependencies and the requirements are probably not fully understood or known. It's unlikely we would resolve this in just one issue and the preference would be to further clarify requirements and/or break into smaller issues. <br><br> **Example:** <br>- A new system or module implementation. | 16 hours / 2 days   |
