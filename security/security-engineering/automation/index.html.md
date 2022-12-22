---
layout: handbook-page-toc
title: "Security Automation"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Mission
By leveraging diverse technologies and an automation first approach, the Security Automation Team strives towards improving efficiency, effectiveness, and accuracy within GitLab's Information Security program with a focus on cost savings.

## Focus
Build security tooling and automation for internal use that enable the Security Department to operate at high speed and wide scale. Additionally, Security Automation will assist other security specialty teams with automation efforts they are leading and developing through the assessment of automation tools and technologies as needed.

## Goals

### Baseline
- Deliver small to medium-sized solutions that automate or speed up security-relevant efforts with a quick design and implementation turn around.
- Differentiate ourselves through our ability to understand complex systems and infrastructures.
- Execute within the DevOps and DevSecOps model whenever possible with emphasis in delivery but without disregarding maintainability and best practices.

### Stretch

- Deliver modular systems based on decoupled and autonomous architectural principles.
- Continuously consolidate and collectively improve SecAuto's products, infrastructure and technology stack.
- When viable and possible, we hand-off functioning proof-of-concepts to other teams to consider as product features.

## Team Members

The Security Automation team is part of the Security Engineering sub-department. [See GitLab's organizational chart and meet our team members](https://comp-calculator.gitlab.net/org_chart).

## [Team Calendar](https://calendar.google.com/calendar/u/1?cid=Y19vdXFmMjNhYmc3MnRqMjM1b2Q2ODhqc2ZvZ0Bncm91cC5jYWxlbmRhci5nb29nbGUuY29t)

## Engaging the Security Automation Team

If you have a need or idea for security-relevant projects at GitLab that require automation, please add the `secauto|workflow::new` label directly to your issue as detailed in the `Labels` section. You can also create an issue by clicking [here](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/automation/-/issues/new?issuable_template=new_issue). On the other hand, to bring an issue or artifact to our attention without expectation of a deliverable, please add the `secauto|interest` label to it. We review and prioritize issues with those labels during our [Weekly Meeting](#weekly-meeting), which anyone can attend. In case you want to engage us directly, please reach out on the `#security-automation` Slack channel. As usual, you can also tag the SecAuto team within GitLab by using `@gitlab-com/gl-security/engineering-and-research/automation-team`

## Project Management and Workflow

The SecAuto team continually works on improving the way in which we work and deliver value to the company. This section describes our workflow and how we currently use GitLab to manage our team and projects.

Our workflow is a simplified version of [GitLab's Engineering Workflow](https://about.gitlab.com/handbook/engineering/workflow/). Although, we might increasingly adopt conventions and approaches discussed there, our process will most likely perpetually deviate with bias towards simplicity.

### Overview

The best way to get an overview of what the SecAuto team is working on at any time is to use our epics list and issue boards.

Our [OKR Epics List](https://gitlab.com/groups/gitlab-com/gl-security/-/epics?scope=all&utf8=✓&state=opened&label_name%5B%5D=Security%20Management%3A%3ASecurity%20Automation%20Team) tracks all of our outstanding team OKRs as per [Development's Approach to OKRs](https://about.gitlab.com/company/okrs/#example-developments-approach-to-okrs).

SecAuto's OKRs are team-centric and tackled as a team effort, only issues are assigned directly to DRIs. For all epics tracking SecAuto work and OKRs, we follow the `FY##Q# OKR - NAME => 0%`. Finally, OKR-epics must be labeled `FY2*`, `OKR` and `Security Management::Security Automation Team` and be ideally created at the [gl-security](https://gitlab.com/groups/gitlab-com/gl-security/-/epics) level. This must be the case, since Security Leadership relies on the epics listing at that level to follow OKR progress. Although epics do bubble up the hierarchy and they would be visible under https://gitlab.com/groups/gitlab-com/gl-security/-/epics/, linking issues further up an epic's hierarchy is not possible, which can problematic for cross-functional efforts in which SecAuto is often involved.

SecAuto's KRs are also mostly team-centric and to be tackled as a team effort. For all epics or issues tracking SecAuto's KRs we follow the `FY##Q# KR - NAME => 0%`. KR-epics and issues must be labeled `FY2#`, `Security Management::Security Automation Team` and idealy be created in [SecAuto's Main Group Hierarchy](https://gitlab.com/groups/gitlab-com/gl-security/engineering-and-research/automation-team/-/epics).

We have three issue boards: the [Intake Board](https://gitlab.com/groups/gitlab-com/-/boards/2098239) to keep track of progress on issues, the [Management Board](https://gitlab.com/groups/gitlab-com/-/boards/1930519) which gives the team an overview of our OKRs as well as matters exclusive to the team's management and the [In-Progress Board](https://gitlab.com/groups/gitlab-com/-/boards/2097988) which tracks what the team is working on during any given (#milestones).

All `secauto|*` labels currently being used by the SecAuto team can be found [in the issue label listing for gitlab-com](https://gitlab.com/groups/gitlab-com/-/labels?utf8=%E2%9C%93&subscribed=&search=secauto).

### Namespaces and where Work Happens

SecAuto has a [Main Group Hierarchy](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/) containing most of our projects and a [Main Tracker](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/automation/-/issues/). However, we also act as maintainers or owners in other namespaces, please refer to the project list section below.

#### What Goes in the Main SecAuto Tracker?

Any issues and associated work concerning the SecAuto team that cannot be clearly assigned to a single, existing SecAuto product and its associated repository.

#### What Goes in A Project's Tracker?

Issues that are exclusive to a single product or project and for which a repository already exists, these shall be labeled with the appropriate `secauto|` labels (workflow, task, priority and customer). If a repository doesn't exist but the issue to be created is relevant only to a single project, component or product, the creator should consider setting up a repository.

### Intake Process

Most of the work SecAuto does is externally initiated. Opportunities for contributing originate from the day-to-day operations of teams in the Security Department and accross GitLab. These opportunities usually arise in Slack conversations, as issues in the GitLab groups `gitlab-org` and `gitlab-com`, etc. SecAuto's processes rely heavily on labels, they inform both customers and the team about the status of issues and other artifacts as detailed in the `Labels` section.

SecAuto's intake process is simple, as detailed in the  `Labels` and `Workflow` sections:

> Once SecAuto creates a task or is made aware of one relevant to the team, the team must assign the label `secauto|workflow::new`.
> All tasks labeled `secauto|workflow::new` are considered part of the SecAuto backlog and must be triaged.

After this has happened, the team will triage the issue, as is done with any issue labeled `secauto|workflow::new`.

Alternatively, the SecAuto team can be made aware of an issue where their indirect contribution or involvement may be desired by applying the `secauto|interest` label on an artifact.

> `secauto|interest` can be used to mark issues and other artifacts across the company's namespaces that might be of interest to secauto. An issue detailing new guidelines and expectations regarding cost management in GCP environments would be one such example.

### Task Division and Promotion to Epic

Tasks that are considered too large for a single iteration will be upgraded to epics in our [OKR Epics List](https://gitlab.com/groups/gitlab-com/gl-security/-/epics?scope=all&utf8=✓&state=opened&label_name%5B%5D=Security%20Management%3A%3ASecurity%20Automation%20Team) or our [KR Epics List](https://gitlab.com/groups/gitlab-com/gl-security/engineering-and-research/automation-team/-/epics). From there, additional sub-tasks will be created to define iterative and more manageable work packages in an attempt to better iterate on the epic.


### Ownership of Label Management

Everyone in the team is responsible for maintaining consistency in workflow and labeling. We're a small team and the more organized we are the better we'll be able to collaborate and communicate our results. New issues in the [Main SecAuto tracker](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/automation/-/issues/) will be collectively reviewed and labeled before or during the weekly SecAuto meeting. New issues in project-specific trackers will be reviewed and properly labeled by each project's DRI(s) upon creation, at a minimum they should label them `secauto|workflow::new` as they exist outside of the [Main SecAuto hierarchy](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team) and would otherwise not be visible to the week's triager.

### Labels not Related to Deliverables

`secauto|task::management` is meant for all issues and conversations related to the strategic, tactical and managerial aspects affecting the Security Automation team and its projects.

`secauto|interest` can be used to mark issues and other artifacts across the company's namespaces that might be of interest to SecAuto. An issue detailing new guidelines and expectations regarding cost management in GCP environments would be one such example.

### Task Stages

Tasks, issues and other artifacts on which SecAuto is expected to deliver can be in the `new`, `ready`, `in-progress`, `awaiting-customer-feedback`, `blocked`, `cancelled` or `done` stages.

Once SecAuto or another team creates a task for the team to triage, the label `secauto|workflow::new` must be applied to it. All tasks labeled `secauto|workflow::new` are considered part of the SecAuto backlog and must be triaged.

### Task Triaging

The next step is for tasks to be triaged and thus be labeled `secauto|workflow::ready` so they can be worked on by the team. A task will only be labeled `secauto|workflow::ready` once the following holds:

- The task's definition of done is clear and detailed enough as to be considered well-defined.
- The task has at least one `secauto|customer` label identifiying the customer(s) benefiting from the deliverables.
- The task has a `secauto|priority` label
- The task has a `secauto|task` label

Once a task is labeled `secauto|workflow::ready`, work on it can begin. After work has begun, it will be labeled `secauto|workflow::in-progress` and once it's concluded `secauto|workflow::done`.

Such is the ideal, more common path for a task to take.

The `secauto|workflow::awaiting-customer-feedback`, `secauto|workflow::blocked` and `secauto|workflow::cancelled` labels can be applied at any time in the life-cycle of a task and are mostly used to track how often we are blocked, how many times we triage, prioritize and work on something only for us or our customers to halt the task, etc.

### Task Customers

Every task must have at least one `secauto|customer*` label, these labels signal what teams are requesting and will benefit from the delivery on a given task. Furthermore, it can be assumed that the author of the issue, the members of their team participating in the issue, and if needed their manager, can act as stable counterparts during the time period the SecAuto team works on said task.

If there are multiple customer teams, each team should have at least one stable counterpart explicitly listed on the issue.

### Task Types

All work performed by SecAuto falls within the following areas:

1. `secauto|task::management` relates to managerial activities affecting the SecAuto team
1. `secauto|task::incident` reactively mitigates a critical malfunction on product by SecAuto
1. `secauto|task::bug`  reactively addresses a non-critical, undesired condition in a product by SecAuto
1. `secauto|task::improvement` proactively delivers a non-critical related to a product by SecAuto
1. `secauto|task::maintenance` proactively delivers an operative related to a product by SecAuto
1. `secauto|task::infrastructure` proactively delivers value related to a non-product, non-user-facing infrastructure component used by SecAuto, this includes scripts for cleanup, GCP infrastructure.
1. `secauto|task::analysis` delivers information after performing evaluations, analyses, investigations, brainstorming and the like.
1. `secauto|task::documentation` formalizes and documents the results of other task types whenever this is required.

Infrastructure, maintenance and improvement labels exist since the nature of the work is different. As SecAuto, we work with more than features, in our day-to-day we act as developers, architects, consultants, at times even SREs. These labels help capture the nature of that work for strategic and tactical purposes such as metrics gathering.

### Task Prioritization

`secauto|priority::low` `secauto|priority::moderate` and `secauto|priority::high` are our priority markers. We use this to determine what needs to be done and when.

We assign priority labels based on a simplified version of the [RICE framework](https://about.gitlab.com/handbook/product/product-processes/#using-the-rice-framework) in use by the Engineering Department and define Impact and Effort as follows:

| Impact   | Definition                                                                                             |
| -------- | ------------------------------------------------------------------------------------------------------ |
| Low      | a deliverable will somewhat improve the ability of the customer to act efficiently and effectively     |
| Moderate | a deliverable will improve the ability of the customer to act efficiently and effectively              |
| High     | a deliverable will considerably improve the ability of the customer to act efficiently and effectively |

| Effort   | Definition                                                                    |
| -------- | ----------------------------------------------------------------------------- |
| Low      | producing a deliverable will take one SecAuto team member less than a week    |
| Moderate | producing a deliverable  will take one SecAuto team member less than a month  |
| High     | producing a deliverable will take one SecAuto team member less than a quarter |

Taking this into consideration, we calculate priority as follows:

| Impact   | Effort   | Label                         |
| -------- | -------- | ----------------------------- |
| High     | High     | `secauto\|priority::moderate` |
| Moderate | High     | `secauto\|priority::low`      |
| Low      | High     | `secauto\|priority::low`      |
| High     | Moderate | `secauto\|priority::high`     |
| Moderate | Moderate | `secauto\|priority::moderate` |
| Low      | Moderate | `secauto\|priority::low`      |
| High     | Low      | `secauto\|priority::high`     |
| Moderate | Low      | `secauto\|priority::high`     |
| Low      | Low      | `secauto\|priority::low`      |

These priority calculations assume a good understading of the customers needs, also known as confidence. In cases where a task is not clearly defined or its purpose unclear, a `secauto|task::investigation` issue should be created instead.

### Review

Tasks labeled `secauto|needsReviewManager` or `secauto|needsReviewTeam` must be looked at by the respective party mentioned in the label in order for work to proceed. For example, the creation of a new, expensive GCP environment should be labeled `secauto|needsReviewManager` anytime a manager's input is needed. Furthermore, work potentially leading to down-time on a product used by a SecAuto customer should be labeled `secauto|needsReviewCustomer`. Finally, for non-code-managed changes where approval cannot happen in an MR or where peer-review is desired, `secauto|needsReviewTeam` should be used.

### Weekly Meeting

[The SecAuto team's weekly meeting](https://calendar.google.com/calendar/u/0/r/eventedit/M2NyNmNsazJkNGRydHJmMmc2Y3Y3dm1hbzAganNhbGF6YXJAZ2l0bGFiLmNvbQ) is a 50-minute meeting that can also be found on the Security Department Team Meetings calendar.

 * Synchronous Customer Reviews (10 minutes) - If necessary, discuss issues ready for intake, blocked or that require synchronous customer review directly.
 * Show and Tell (10 minutes) - Share interesting work results with the team at large.
 * Last Week’s Tasks Review (5 minutes) - If necessary, update the team on action items that resulted from the past meeting.
 * Issue Refinement (20 minutes) - Refinement of issues as per our [weekly refinement process](#weekly-refinement).
 * Agenda Topics (10 minutes) - Discuss any internally added items to [our agenda](https://docs.google.com/document/d/1YOtmU2XpuxcVkfjXghBfZMyRhxu1GGDlohrjuONy0VA/edit)

#### Weekly Refinement

This process relies on a rotating role of "SecAuto triager" to ensure that issues that do not correspond to project with an existing DRI are triaged asynchronously (see below).


#### Prior to the Meeting

Completing the following asynchronous tasks prior to the meeting will keep the synchronous meeting on schedule:

* All team members are responsible for labeling and starting refinement of issues they come across that are not `secauto|workflow::ready` yet.
* The triager and DRIs for each SecAuto project must do the follwoing for any `secauto|workflow::new` issues they come accross (the triager, mainly those in the [Main SecAuto Tracker](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/automation/-/issues/), and DRIs, those relevant to the respective projects in which they are involved):
  * Assign `secauto|customer` labels identifying the customers requesting the deliverables.
  * Assign the task an initial `secauto|priority` label
  * Assign the task a `secauto|task` type label

* The SecAuto triager, as DRI but also with distributed assistance by the team, is responsible for making the following determination on priority for new issues:
  * If an issue seems like it needs to be addressed immediately or within the next iteration, they will label it `secauto|priority::high`. If so, they are expected to engage the most-likely DRI or raise with the team to find a DRI that will work on the task. This should be done immediately or, the latest, at the upcoming SecAuto Team Meeting. For other issues, these will remain in the `secauto|workflow::new` stage as a backlog items. The triager should note this in a comment to provide feedback for the requester on expected time frames.
  * For issues labeled `secauto|workflow::new` and `secauto|priority::high`, the Triager should make an initial attempt at scoping the work for an iteration. They or the DRI should, if this can be done without the teams consideration, break down the task in smaller issues prior to the meeting that can be scheduled and assigned for delivery during the next and following weeks.

* For issues labeled `secauto|interest`, the SecAuto Triager should skim such issues. They then, if relevant, raise these with the team during refinement part of the weekly meeting or list them as interesting reading in the meeting document. Once reviewed, the `secauto|interest` queue should be emptied after the meeting.

#### During the refinement portion of the Meeting

The "SecAuto triager" is responsible for facilitating the refinement portion of the meeting:

* Based on the [Management Board](https://gitlab.com/groups/gitlab-com/-/boards/1930519), review tasks that might be stalling, are labeled `secauto|workflow:blocked` as well as raise blockers and review requests for any unfinished work.
* Determine who will be the SecAuto triager for the next week (the current rotation is at the top of the agenda document).
* Based on the [Intake Board](https://gitlab.com/groups/gitlab-com/-/boards/2098239), review `secauto|priority::high` tasks that are still marked `secauto|workflow::ready` and sort them with the most pressing at the top of the queue.
* Based on the [Intake Board](https://gitlab.com/groups/gitlab-com/-/boards/2098239), make sure `secauto|workflow:new` issues with high, moderate and low priority, in that order, are discussed and assigned to team members for them to [triage them](#task-triaging) and bring them to a `secauto|workflow:ready` state.
* Based on the [In-Progress Board](https://gitlab.com/groups/gitlab-com/-/boards/2097988), make sure progress as well as potential road-blocks and delays are discussed.
* If using a tracking milestone, OKR-epic or the like, make sure issues discussed and assigned are linked to them.
* Ask the team if there are any additional issues they want to review or discuss.
* Cycle the milestone by leveraging the [Management-Tasks Repo](https://gitlab.com/gitlab-private/gl-security/engineering-and-research/automation-team/management-tasks/-/blob/master/README.md).
* Based on the [In-Progress Board](https://gitlab.com/groups/gitlab-com/-/boards/2097988), close issues labeled `secauto|workflow:done`, determine which of the outstanding issues will be carried-over to the next milestone or dropped from it and move them accordingly.
* On the [In-Progress Board](https://gitlab.com/groups/gitlab-com/-/boards/2097988), remove the list associated with the previous milestone.

## Security Automation SDLC

The nature of our workflow is iterative and incremental as planning, analysis, design, implementation, deployment and maintenance happen repeatedly and progress is tracked over time.

### Planning

This is an informal stage that usually happens in 1:1s, team meetings or over Slack.
We strive towards making this process productive by focusing on four key aspects:
* What task we want to do
* Why we want to do the task (relevance)
* How to approach the task and the effort required
* When we should deliver on the task

### Analysis

We expect most, if not all, new deliverables related to a new product by SecAuto to start with a `secauto|task::analysis` task.
These issues can then be closed or promoted to an epic or have other tasks branch out from them.
It is important to ensure that intake issues are sized and scoped properly to avoid having a scenario where an issue stays open stagnant for a long time or eventually stagnates. This helps offer value, prevent over-engineering and make it easier to review and provide feedback.

### Design

These are the main tenets of design that we consider to be best practices:

- Avoid analysis paralysis, converge quickly on an MVD (Minimum Viable Deliverable) and start iterating as fast as possible.
- Minimize operational overhead by relying as much as possible on managed infrastructure components and execution contexts.
- Components should be designed and implemented to be modular, autonomous and decoupled.
- Try, whenever possible, to balance rapid delivery and reusability, with bias towards the latter but careful not to over-engineer.

### Implementation

In order to ensure overall efficiency and effectiveness in creation and building of any SecAuto project, it is necessary to have a well-defined process that illustrates and provides guidelines on how to get from ideation to implementation the quickest.

#### Project Management

As part of our collective project management process it's important to continuously steer the team's efforts, thereby increasing our chances of attaining a timely, high-quality delivery. Continuous collaboration and iteration is hence encouraged amongst stakeholders so as to ensure that customer expectations are met.

A good project management process also allows the SecAuto team to have a strong change control system where documentation (through MRs, issues, 1:1s and meetings) on changes to a project is updated and approved accordingly while keeping stakeholders informed.

#### Milestones

We use milestones to organize and track our work, SecAuto's main milestones can be found [here](https://gitlab.com/groups/gitlab-com/-/milestones?utf8=%E2%9C%93&search_title=secauto&state=opened&sort=). We cycle the milestone after its end by leveraging the [Management-Tasks Repo](https://gitlab.com/gitlab-private/gl-security/engineering-and-research/automation-team/management-tasks/-/blob/master/README.md).

#### Scaffold

We've come to understand that a roughly shared structure across the different SecAuto projects is a net positive and allows for efforts to cross-pollinate, and reduces the effort required for team members to get started or involved. Having a scaffold also guarantees compliance to architectural and procedural requirements for developing tools. Thus, strive to include the following items within a project:
- `.gitlab-ci.yml`
- `.gitignore`
- a package management approach such as, in the case of Python, pipenv or venv via `Pipfile` and `requirements.txt`
- separate `build` and `src` directories
- `CODEOWNERS` (by default the SecAuto team)
- `README.md`
- `/docs` directory
- architecture diagram ([Mermaid diagrams](https://docs.gitlab.com/ee/user/markdown.html#mermaid))
- enabled [GitLab Secure features](https://docs.gitlab.com/ee/user/application_security/) such as
Dependency Scanning, License Scanning, Static Application Security Testing (SAST), and Secret Detection

Feel free to clone this [basic project scaffold template](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/scaffold-project) to get you started on building out a SecAuto project.

#### Repository Management

For any given project it is essential to standardise its git and branch management workflow.
In the initial stages of an MVP, when there is a single developer working on the project and not much is in production, it's fine to commit and deploy from master.
However, as soon as a project has it's first production release or the project team grows to more than 1, the team should transition to branch and MR-based or stable-master workflows and protect master, only allowing deployment from said branch.

For projects that will be versioned, we will create a release tag or branch when the project is to be deployed to production.

### Deployment

We should strive towards ease of deployment, portability and reproducibility regardless of environment by adhering to these guidelines:

- Having separate master, development and feature branches allows to have MR reviews and approval of changes
- Changes to production environments should be discussed in independent issues, followed-up and carried out in that manner
- If possible, deployment should only happen using CI/CD pipelines from master to centralize deployment effort and enable collaboration (linting, dry-runs, etc)
- Special care should be given to proper secret management and component isolation (GKMS, etc)
- Leverage serverless and containerized components and architectures as much as possible in order to minimize operational overhead (GCF, Kubernetes, etc).

#### General Best Practices

- When providing webhooks, an email address for alerts or any other sort of endpoint or identifier for reports and logins, always pick one the whole team has access to
- Using personal admin access and service accounts for prototyping is fine, however, use only SecAuto service and administrative accounts in productive infrastructure
- If possible, use a deployment checklist that allows for planning, consistency and reproducibility, and make it available to other team members.

### Maintenance

- For each and every task (bugs and outages included) related to existing products, the creation of issues should not be forgotten.
- It's important to have proper documentation, including bugs and incidents, in order to track effort and create a historical context that can be referenced at a later time. [Example](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/delke/-/issues/207)
- Changes to production environments should be discussed in independent issues, followed-up and carried out in that manner.


#### Directly Responsible Individual(s)

- Despite the fact that some members are more familiar with some efforts, the SecAuto team collectively owns all its efforts. Familiarity with all projects throughout the team is encouraged.
- Additionally, the DRI of a given project should be able to articulate the objectives, check progress and give and receive feedback.
- Our [intake process](https://about.gitlab.com/handbook/security/security-engineering/automation/#intake-process) and [communication channels](https://about.gitlab.com/handbook/security/security-engineering/automation/#engaging-the-security-automation-team) should enable stakeholders to get in touch quickly and route requests and questions effectively.

### Documentation

Documentation for projects will depend on their eventual use and ownership. If a team other than SecAuto is going to own the project after it's released, more documentation is usually encouraged.

If the project is going to be internal to SecAuto, a more iterative approach to documentation will suffice.

In general, the following documentation should be provided in either case:

* Idea and Problem Statement - Basic overview of the project and what problems it solves
* Configuration - How to build and deploy
* Architecure and design diagrams (depending on project complexity):
 * Context diagram (details what systems, users, and "agents" it interacts with)
 * Software architecture for the following contexts:
  * Code-time (modules)
  * Runtime
  * Deployment
 * System diagram
 * Data design
 * Data flow and Sequence diagrams (between systems)

#### Hand-Off Process


## Security Automation Resources

### SecAuto's Environment

GitLab CI and Kubernetes/Knative are the most common environments for running our automation, with Python and Go being the preferred languages.

#### SecAuto Infrastructure and Tooling

As a smaller development team without dedicated SREs, we are relying on [Google Kubernetes Engine](https://cloud.google.com/kubernetes-engine/docs/concepts/kubernetes-engine-overview) for managed Kubernetes clusters, and [Cloud Monitoring](https://cloud.google.com/monitoring/docs) for logging, metrics and alerting.

We use [Terraform](https://www.terraform.io/) to configure GCP resources automatically and consistently, see the [SecAuto Terraform Configuration](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/terraform) project for more information:

- [README.md](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/terraform/-/blob/main/README.md): Basic cluster installation
- [UPGRADING.md](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/terraform/-/blob/main/UPGRADING.md): Upgrading GKE, Istio and Knative
- [MONITORING.md](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/terraform/-/blob/main/MONITORING.md): Cloud Monitoring and custom metrics

Kubernetes/Knative services are built as Docker images by GitLab CI (naturally) in their code project. Deployment to GKE clusters is performed by separate deployment projects containing the service configuration. Monitoring and alerting is configured using Terraform.

Template projects:

- [example-service-python Code Project](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/example-service-python)
- [example-service-python Deployment Project](https://gitlab.com/gitlab-private/gl-security/engineering-and-research/automation-team/kubernetes/secauto/example-service-python)

#### GitLab.com

- [SecAuto Issue Tracker](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/automation/-/issues)
- [SecAuto Code Projects](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team)
- [SecAuto Deployment Projects](https://gitlab.com/gitlab-private/gl-security/engineering-and-research/automation-team)
- [SecAuto Runbooks](https://gitlab.com/gitlab-com/gl-security/runbooks/-/tree/master/automation)

## Literature

### Guiding Principles

### Tech Notes


## Projects

| Project                                                                                                               |
| --------------------------------------------------------------------------------------------------------------------- |
| [Security Pager](https://gitlab.com/gitlab-com/security-tools/security-pager)                                         |
| [HackerOne-GitLab Integration](https://gitlab.com/gitlab-com/security-tools/h1-gitlab)                                |
| [Google Workspace Group Members Reporter](https://gitlab.com/gitlab-com/security-tools/report-gsuite-group-members/-/pipelines) |
| [Suricata Runner Metrics](https://gitlab.com/gitlab-org/gitlab-runner/-/merge_requests/1545)                          |
| [DELKE](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/delke)                                     |
