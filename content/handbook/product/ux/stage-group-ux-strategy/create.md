---
title: Create UX Team
description: "The Create design team's goal is to facilitate DevSecOps processes across the entire software delivery workflow"
---

## Overview

[Create Stage Vision](https://about.gitlab.com/direction/create/)

The Create stage helps teams accelerate software delivery and reduce cycle times by improving efficiency and collaboration. Essential to software delivery is the process of **creating** each improvement. The Create stage delights engineers, designers, and product managers with tools to design, develop, and review these improvements efficiently.

## Structure

<!--Briefly the team and the stage:groups they report to -->

- [Julia Miocene](/handbook/company/team/#jmiocene): Editor
- [Alex Fracazo](/handbook/company/team/#afracazo): Code Review Workflow - Automation & Integration
- [Matt Nearents](/handbook/company/team/#mnearents): Code Review Workflow - Collaboration
- [Michael Le](/handbook/company/team/#mle): Source Code
- [Amy Qualls](/handbook/company/team/#aqualls): Tech writing, Code Review, Editor Extensions
- [Marcin Sędłak-Jakubowski](/handbook/company/team/#msedlakjakubowski): Tech writing, Source Code
- [Ashraf Khamis](/handbook/company/team/#ashrafkhamis): Tech writing, Editor
- [Ben Leduc-Mills](/handbook/company/team/#leducmills): UX Research
- [Andy Volpe](/handbook/company/team/#andyvolpe): Product Design Manager

<!-- Summarize what each group is currently focused on

## {Group}

[Group direction page}(link)

### Strategic priorities

{Priority Category} | {Link}

**Objective**: {Summarize the objective from the user benefit point of view}

-->

### IDE

[Group direction page](https://about.gitlab.com/direction/create/ide/)

Developers often face the obstacle of setting up their local development environment, which can be time-consuming and demotivating. GitLab's Remote Development aims to eliminate this responsibility by providing ephemeral, cloud-based workspaces configured in a single file stored in a repository. This allows for easy provisioning of new environments with a single click, connecting securely from the GitLab Web IDE or desktop editor. Monitoring tools and dashboards are available to manage running and suspended environments, freeing up valuable development time and streamlining onboarding for new developers.

#### Strategic priorities

| Theme | Objective |
| --- | --- |
| [**Remote Development**](https://gitlab.com/groups/gitlab-org/-/epics/9881) | Streamline development by eliminating the need for users to configure and maintain their local environment. |
|  [**WebIDE**](https://gitlab.com/groups/gitlab-org/-/epics/7683) | Make it simple for all users to contribute changes to any repository and bring editing capabilities into the context of their current task. |

Teams working closely with Editor:

- [Configure](/handbook/product/categories/#configure-stage)
- [Secure](/handbook/product/categories/#secure-stage)

### Code Review Workflow

[Group direction Page](https://about.gitlab.com/direction/create/code_review_workflow/)

Code Review is an essential activity of software development. It ensures that contributions to a project maintain and improve code quality and security and is an avenue of mentorship and feedback for engineers. It can also be one of the most time-consuming activities in the software development process.

**GitLab's guiding principle for Code Review is:** Reviewing code is an activity that ultimately improves the resulting product by improving the quality of the code while optimizing for the speed at which that code is delivered.

#### Strategic priorities

| Theme | Objective | DRI |
| --- | --- | --- |
| [**MR Restructure**](https://gitlab.com/groups/gitlab-org/-/epics/5038) | Enhance the code review experience for Authors and Reviewers by reorganizing relevant information critical to the review process. | Matt Nearents, Pedro Moreira de Silva |
| [**Review Rounds**](https://gitlab.com/groups/gitlab-org/-/epics/9577) | Increase collaboration and efficiency during code review by providing users with a structured approach to requesting reviews and providing feedback during a review. | Alex Fracazo |

#### Separation of duties

##### Code Review Workflow: **Automation & Integration**

DRI: **Alex Fracazo**

The code review experience in GitLab involves automation, integration, and security to ensure that code changes are thoroughly tested, reviewed, and secure before they are merged.

- **Automation** involves continuous integration, review apps, code quality, and notifications to streamline the code review process.
- **Integration** allows teams to connect different tools and services to GitLab for a seamless experience, including security features such as static and dynamic application security testing, container scanning, security approvals, and access control, helping ensure that code changes are secure and meet industry standards.

Teams working closely with Code Review: Automation & Integration

- [Configure](/handbook/product/categories/#configure-stage)
- [Govern](/handbook/product/categories/#govern-stage)
- [Package](/handbook/product/categories/#package-stage)
- [Release](/handbook/product/categories/#release-stage)
- [Secure](/handbook/product/categories/#secure-stage)
- [Verify](/handbook/product/categories/#verify-stage)

##### Code Review Workflow: **Collaboration**

DRI: **Matt Nearents**

**Collaboration** is an essential aspect of the code review experience. This area includes comments and discussions, mentions and notifications, code review approvals, assignees and reviewers, and merge requests checklists. These features enable team members to work together effectively during the code review process, share feedback and suggestions, and ensure that everyone is aligned and nothing is missed.

Teams working closely with Code Review: Collaboration

- [Manage](/handbook/product/categories/#manage-stage)
- [Plan](/handbook/product/categories/#plan-stage)

### Source code

[Group direction Page](https://about.gitlab.com/direction/create/source_code_management/)

Building great software depends on teams working well together. Teams can rarely be divided into areas of complete independence. As cross-functional security, compliance, and growth teams are formed or new services and libraries are created, effective coordination and collaboration are essential.

#### Strategic priorities

| Theme | Objective |
| --- | --- |
| [**Branch rules improvements**](https://gitlab.com/gitlab-org/gitlab/-/issues/358209) | Make it easier for users to understand the impacts of new and existing branch rules. |

Teams working closely with Source code:

- [Govern](/handbook/product/categories/#govern-stage)
- [Manage](/handbook/product/categories/#manage-stage)
- [Secure](/handbook/product/categories/#secure-stage)

### Tech writing

Tech writers in Create are very busy due to multiple factors. However, it is still important to collaborate with them and solicit their feedback on UI text. We ask you to follow these guidelines to make sure our teams are operating as efficiently as possible:

1. **UI Text to be reviewed should be in a comment**. Mocks are useful for showing context and are encouraged, but we also ask that you paste your text into a comment and `@mention` the assigned tech writer. This way, they can copy the text of the message rather than have to rewrite it.
1. **Communicate the intent of your UI text** when asking for feedback from Tech Writing. By answering these questions, you will avoid any potential back and forth in the issue:
    - What is the task the user is trying to achieve when they encounter this messaging?
    - What is the problem you are trying to solve with this messaging?
