---
layout: handbook-page-toc
title: "Working with Business Technology"
description: "Business Technology"
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

## What you can reach out to us about?

##### Tech Stack

The GitLab [Tech Stack](/handbook/business-technology/tech-stack-applications/) is the approved list of applications.
It lists additional information such as the Business Purpose, Who should have access, Contact/Admin, Data Classification, Okta information, and SOX Compliance information.

##### Making global changes

To make changes to global configurations or settings for any Business Technology applications in the Tech Stack, please follow the [Business Technology change management process](/handbook/business-technology/change-management/).

## Projects

Business Technology projects follow the following structure of stages.

**Stage 0 - Assessment `BT Stage:: 0-Assessment`**

This stage is essentially a backlog of proposals which are subject to review.
For example:  New or replacement technology or changes to processes.

- Identify business problem
- Identify value proposition
- Identify dependencies and risks
- Identify executive sponsor
- Identify the resources available for the project
- Evaluate how the project fits into the roadmap
- Proposed timeline

**Stage 1 - Discovery `BT Stage:: 1-Discovery`**

This stage is for approved projects and identifying the teams and resources dedicated to the project.

- Identify budget
- Create request for proposal
- Consult Security and Procurement Teams
- Identify or create requirements or user stories
- Identify project team
- Identify stakeholders
- Identify technical team
- Identify potential solutions and/or potential vendors

**Stage 2 - Planning `BT Stage:: 2-Planning`**

In this phase, the project plan is finalized, the scope is identified, and signoff of all business teams is required before moving into implementation.

- gather requirements and user stories
- define what is in and out of scope
- project plan signoff

**Stage 3 - Action `BT Stage:: 3-Action`**

This stage will be for projects with established plans for building and testing.

- technical team and Business Systems Analyst (BSA) team designs solution
- technical team builds/implements
- user acceptance testing in stage/sandbox when possible
- training as necessary
- technical team and BSA teams create documentation

**Stage 4 - Strike `BTG Stage:: 4-Strike`**

This stage will be for projects in which all proposed changes have been implemented and the project is wrapped up.

## Labels

| Label                         | Description                                                                                     |      project/group     |  type  |
| :---------------------------- | :---------------------------------------------------------------------------------------------- | :--------------------: | :----: |
| BusinessTechnology                   | Business Technology is actively involved                                                                        | gitlab-com, gitlab-org |    - |
| BT-FYI                       | No direct action needed from Business Technology, but awareness for potential support/questions              | gitlab-com, gitlab-org |    - |
| BSA                           | business systems analyst work                                                                   | gitlab-com, gitlab-org |    - |
| BSS                           | business systems specialist work                                                                | gitlab-com, gitlab-org |    - |
| BT-Features Wanted           | feature requests                                                                                |       gitlab-org       |    - |
| IT-Help                       | IT-Help work                                                                                    | gitlab-com, gitlab-org |    - |
| IT-Ops                        | IT-Ops work                                                                                     | gitlab-com, gitlab-org |    - |
| IT:: to do, IT::done          | indicates if IT needs to do work                                                                |       gitlab-com       | scoped |
| waiting on license            | cannot complete AR without new license order                                                    |       gitlab-com       |    - |
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
| BT-Process                   | Change or addition to process/operations                                                        | gitlab-com, gitlab-org |    - |
| blocker                       | This blocks other work                                                                          | gitlab-com, gitlab-org |    - |
| laptop-request                | laptop request                                                                                  | gitlab-com, gitlab-org |    - |

## Issues

### Issue Weights

Issue weight is an estimate of how much time is required to complete the tasks in the issue. The idea is to go over the problem statement raised in the issue with the team that will be working on it and put it into one of 5 buckets: XS, S, M, L, XL as a way to group the unit of work.

**Process**

- When an issue is opened for the Enterprise App team with the appropriate [labels](/handbook/business-technology/how-we-work/#labels), a team member must be assigned.
- The assignee works with all parties involved in the issue to recommend a weight.
- After the issue is closed, the assignee who helped coordinate the work can update the weight to reflect the actual effort if different from the original weight.
    They should provide a reason and mention it in the Enterprise Applications Sync or in the [Enterprise Applications wiki](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/enterprise-applications-sync/-/wikis/Enterprise-Applications-weekly-sync) to help us improve our weighting accuracy going forward.

**Guidelines**

| Size/Weight | Description | Estimate work range  |
| ----------- | ----------- | ----------- | 
| XS:1        | A task.<br><br> **Example:** <br>- Documentation update. | <4 hours |
| S:2         | The problem statement has been determined and a solution identified. No need for (extra) discussion with other teams or people.<br><br> **Examples are:** <br>- A problem that has been discussed but needs an issue to track the development and outcome.<br>- Regular bugs to be addressed by the Integrations engineers where some investigation has already taken | 4 hours / half a day |
| M:3         | The problem statement has been defined with understood requirements. A solution is yet to be identified and coordination with other teams or people may be required.<br><br>Bugs that are not fully understood and may not yet have a suggested solution. Extra investigation is required but the expectation is that once a solution is identified, it should be relatively easy to implement.<br><br> **Examples are:** <br>- A deliverable from an ongoing project that will involve different teams and coordination from a BSA (Business Systems Analyst) to help find and implement a solution.<br>- Most system bugs or performance issues. | 8 hours / 1 day      |
| L:5         | The problem statement has been defined but a solution will require extra investigation in order to be identified and implemented. Surprises are expected, different teams will have to be involved and a BSA (Business Systems Analyst) assistance is needed.<br><br>Bugs that are very poorly understood and will not have a suggested solution. Significant investigation will be required and once the problem is found, a solution may not be straightforward.<br><br> **Examples are:** <br>- A deliverable from an ongoing project that will involve different teams and coordination from a BSA (Business Systems Analyst) to help find and implement a solution.<br> Bugs or system workflows that negatively impact the work of other people. | 12 hours / 1.5 days  |
| XL:8        | The problem statement has been defined but is a significant change that has dependencies and the requirements are probably not fully understood or known. It's unlikely we would resolve this in just one issue and the preference would be to further clarify requirements and/or break into smaller issues. <br><br> **Example:** <br>- A new system or module implementation. | 16 hours / 2 days   |

## Features Wanted

In the spirit of using our own platform, we label features we request or support with the label `BT-Feature Wanted`.<br>
[Check out](https://gitlab.com/groups/gitlab-org/-/boards/1355408) our issue board with this label.

## Tools
### Rolly
Rolly is a program status rollup automation tool.

See [Rolly](rolly)
