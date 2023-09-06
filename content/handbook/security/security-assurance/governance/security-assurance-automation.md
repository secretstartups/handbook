---
title: "Security Assurance Automation"
---

## A dedicated resource

The Security Assurance department is continuously growing both in terms of personnel and breadth of the program. As we continue to scale, self-operating automated processes will become a critical catalyst to driving mission success.

Security Assurance Automation Engineers are a critical dedicated resource that enable the Security Assurance department through the development, implementation, and maintenance of automated processes and controls.

## How does Security Assurance Automation operate?

### Intake process

Security Governance maintains an internal [Security Assurance Automation project](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-assurance-automation) that is dedicated to the intake of Security Assurance related automation requests. As these requests are received, Security Assurance Automation Engineers triage and prioritize the requests. Once requests have been prioritized, an Epic is opened at the GitLab Security Department sub-group level. All work related to the automation request is tracked in its associated Epic.

<a href="https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-assurance-automation/-/issues/new?issuable_template=new_automation_issue" class="btn bg-primary text-white btn-lg">Open a Security Assurance Automation Request</a>

#### Why do you use Epics at the GitLab Security Department sub-group level?

This process allows all automation engineers across the Security Division to maintain visibility of all in-flight automation work. The use of Epics and the increased visibility also streamlines the process of requesting resources from our [Security Automation]({{< ref "../../security-engineering/automation" >}}) team if necessary.

### SLAs

The Security Assurance team uses scoped labels to identify the priority and indicate the resolution time of automation requests.

- Priority Label - Security Assurance Automation (SAA) followed by the associated priority number.
- Color - The color of the label.
- Description - Criteria the issue must fit to be assigned the label.
- Provide Solution - The time it will take to update the issue and provide a solution to the automation request.


| Priority | Color | Description | Provide Solution |
| -------- | ---------- | --------- | --- |
| `~"SAA::1"` | Red | These issues have a direct, immediate impact on business continuity AND are critical for compliance engagements. These are “drop everything so the team can do work” types of requests.                 | 1 Business Day |
| `~"SAA::2"` | Orange   | These issues have an effect on business continuity or are critical for compliance engagements. | 3 Business Days |
| `~"SAA::3"` | Yellow | These issues are day to day automations that are not critical but greatly reduce time for manual tasks by the team. The bulk of automation issues will live here.                                  | 4 Business Days |
| `~"SAA::4"` | Blue    | These issues are automation ideas that may not have a clear path forward or need additional resources to accomplish.                                          | 7 Business Days |

### What does Security Assurance Automation own?

The Security Assurance Automation team is continuously engineering new automated solutions to manual processes. Below are a few projects that the team maintains.

#### Feedback Bot

[The Feedback Bot](https://gitlab.com/gitlab-com/gl-security/security-assurance/feedback-bot) - A bot that enables team members to send private feedback to other team members through Slack.

#### Escalation Engine

[The Escalation engine](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/escalator) - An engine that allows users to take automated actions on issues based on a predetermined set of criteria. The engine runs in a scheduled CI pipeline.

#### Dashboarding

[Sisense Dashboarding](https://app.periscopedata.com/app/gitlab/1092210/ZenGRC_Observations) - Custom dashboards using our analytic tool that integrates with data sources across GitLab.

[Insight Dashboarding](https://docs.gitlab.com/ee/user/group/insights/index.html#configure-your-insights) - Custom issue analytic dashboards native to GitLab.

#### Compliance control monitoring and evidence gathering automation

Conversion of manual compliance control monitoring and evidence gathering processes to partially or fully automated processes. This will save time and reduce the opportunity for human error or oversight as our control framework expands.

## Security Assurance Automation SDLC

### Planning

The planning stage occurs during 1:1s, weekly sprint planning meetings, and Slack conversations. During this stage, we gather the following information:

- Who is requesting the automation project?
- What are they requesting?
- Why are they requesting this project?
    - What efficiencies will be gained?
    - How much time will be saved per team member, per week?
- When is this project expected to be completed by?
- How is the automation expected to function?

As a result of the planning stage, we determine the feasibility of a particular project. Accepted projects are promoted to Epics.

### Analysis

During the analysis stage, we continue to gather details to support accepted projects. Projects are broken down into individual components to support an agile approach to development. Those individual components are represented as child issues under the project Epic.

Each child issue is assigned a weight. The total weight of the Epic allows us to gauge the level of effort required to accomplish a particular project.

| Weight | Level of Effort |
| -------- | ---------- |
| 1 | Minimal effort |
| 2 | Moderate effort |
| 3 | High effort |

### Design

During the design stage, we aim to accomplish the following:

- Produce a design for the minimum viable product (MVP) solution that will satisfy the automation project's requirements.
- Design components that are modular
- Design components that can be reused to accelerate future development projects

### Development and Testing

During the this stage, code is written to satisfy the requirements of a particular project. Development is accomplished in an iterative manner through many small changes. Project stakeholders may be consulted to ensure continued alignment with project expectations as code is being written.

Security Assurance Automation Engineers run tests on their code to identify bugs, vulnerabilities, and usability conflicts.

### Implementation

During this stage, code is moved from the Sec Auto Dev pipeline into the Sec Auto Live pipeline. If an automation request requires web hosting or a server, the automation will live in the Sec Auto Live private GCP instance.

Once the code is ready for final review, a team member from Security Assurance or Security Automation will review the code and merge the branch. The project is moved to a "Done" state when the solution is operating in an automated private pipeline.

### Maintenance

Routine and break-fix maintenance of automated controls and processes is performed by Security Assurance Automation Engineers for automation related to the sub-department. Pro-active requests for maintenance can submitted through the [Security Assurance Automation project](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-assurance-automation/-/issues/new?issuable_template=new_automation_issue).

Maintenance tasks will be tracked via GitLab Issues similar to all other automation tasks.
