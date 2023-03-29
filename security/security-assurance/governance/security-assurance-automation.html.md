---
layout: handbook-page-toc
title: "Security Assurance Automation"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}
 
- TOC
{:toc .hidden-md .hidden-lg}

## A dedicated resource

The Security Assurance department is continuously growing both in terms of personnel and breadth of the program. As we continue to scale, self-operating automated processes will become a critical catalyst to driving mission success.

Security Assurance Automation Engineers are a critical dedicated resource that enable the Security Assurance department through the development, implementation, and maintenance of automated processes and controls.

## How does Security Assurance Automation operate?

### Intake process

Security Governance maintains an internal [Security Assurance Automation project](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-assurance-automation) that is dedicated to the intake of Security Assurance related automation requests. As these requests are received, Security Assurance Automation Engineers triage and prioritize the requests. Once requests have been prioritized, an Epic is opened at the GitLab Security Department sub-group level. All work related to the automation request is tracked in its associated Epic.

<div class="flex-row" markdown="0" style="height:80px">
    <a href="https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-assurance-automation/-/issues/new?issuable_template=new_automation_issue" class="btn btn-purple-inv" style="width:100%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Open a Security Assurance Automation Request</a>
</div>

#### Why do you use Epics at the GitLab Security Department sub-group level?

This process allows all automation engineers across the Security Division to maintain visibility of all in-flight automation work. The use of Epics and the increased visibility also streamlines the process of requesting resources from our [Security Automation](/handbook/security/security-engineering/automation/) team if necessary.

#### SLAs

The Security Assurance team uses scoped labels to identify the priority and indicate the resolution time of automation requests.


* Priority Label - Security Assurance Automation (SAA) followed by the associated priority number.
* Color - The color of the label.
* Description - Criteria the issue must fit to be assigned the label.
* Provide Solution - The time it will take to update the issue and provide a solution to the automation request. 


| Priority | Color | Description | Provide Solution |
| -------- | ---------- | --------- | --- |
| `~"SAA::1"` | Red | These issues have a direct, immediate impact on business continuity AND are critical for compliance engagements. These are “drop everything so the team can do work” types of requests.                 | 1 Business Day |
| `~"SAA::2"` | Orange   | These issues have an effect on business continuity or are critical for compliance engagements. | 3 Business Days |
| `~"SAA::3"` | Yellow | These issues are day to day automations that are not critical but greatly reduce time for manual tasks by the team. The bulk of automation issues will live here.                                  | 4 Business Days |
| `~"SAA::4"` | Blue    | These issues are automation ideas that may not have a clear path forward or need additional resources to accomplish.                                          | 7 Business Days |

### Output

Once a Security Assurance related automation request is prioritized, Security Assurance Automation Engineers meet with the appropriate stakeholders to identify requirements and expectations. This information gathering process is critical to supporting development and to ensure the final output meets or exceeds initial expectations.

### What does Security Assurance Automation own?

The Security Assurance Automation team is continuously engineering new automated solutions to manual processes. Below are a few projects that the team maintains.

### Feedback Bot
[The Feedback Bot](https://gitlab.com/gitlab-com/gl-security/security-assurance/feedback-bot) - A bot that enables team members to send private feedback to other team members through Slack.

### Escalation Engine
[The Escalation engine](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/escalator) - An engine that allows users to take automated actions on issues based on a predetermined set of criteria. The engine runs in a scheduled CI pipeline.

### Dashboarding
[Sisense Dashboarding](https://app.periscopedata.com/app/gitlab/1092210/ZenGRC_Observations) - Custom dashboards using our analytic tool that integrates with data sources across GitLab.

[Insight Dashboarding](https://docs.gitlab.com/ee/user/group/insights/index.html#configure-your-insights) - Custom issue analytic dashboards native to GitLab.


### Maintenance

Routine and break-fix maintenance of automated controls and processes is performed by Security Assurance Automation Engineers for automation related to the department. Pro-active requests for maintenance can submitted through the [Security Assurance Automation project](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-assurance-automation/-/issues/new?issuable_template=new_automation_issue).

### Compliance control monitoring and evidence gathering automation
Conversion of manual compliance control monitoring and evidence gathering processes to partially or fully automated processes. This will save time and reduce the opportunity for human error or oversight as our control framework expands.


