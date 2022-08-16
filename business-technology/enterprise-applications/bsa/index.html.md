---
layout: handbook-page-toc
title: "Business Systems Analysts"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Welcome to the BSA Handbook!

We are on a mission to **improve the efficiency of GitLab by designing and implementing scalable Business Solutions.**
{: .alert .alert-gitlab-orange}

## Who Are We?
We are a global team of five, focused on designing, delivering, and maintaining high quality business systems solutions. To learn more about our individual job functions, visit the [BSA families page](https://about.gitlab.com/job-families/finance/business-system-analyst/). To meet the team, check out our intro video below!

**Barbara Roncato - Senior Business Systems Analyst**  
GitLab handle: [@broncato](https://gitlab.com/broncato)  
Slack handle: `@barbara`   
Location and Timezone: Portugal, WEST/GMT+1  
Linkedin Profile: [/roncatobarbara](https://www.linkedin.com/in/roncatobarbara/)

**Kayoko Cooper - Business Systems Analyst**  
GitLab handle: [@kayokocooper](https://gitlab.com/kayokocooper)  
Slack handle: `@kayokocooper` <br>
Location and Timezone: USA, EDT/EST  
Linkedin Profile: [/kayoko-cooper-a1063522](https://www.linkedin.com/in/kayoko-cooper-a1063522/)

**Mark Quitevis - Senior Business Systems Analyst**  
GitLab handle: [@mquitevis](https://gitlab.com/mquitevis)  
Slack handle: `@Mark Quitevis`   
Location and Timezone: USA, CDT/CST  
Linkedin Profile: [/mark-quitevis-b314b968](https://www.linkedin.com/in/mark-quitevis-b314b968/)

**Santhosh Baranidharan - Senior Business Systems Analyst**  
GitLab handle: [@sbaranidharan](https://gitlab.com/sbaranidharan)  
Slack handle: `@Santhosh`    
Location and Timezone: Netherlands, CET/GMT+2  
Linkedin Profile: [/santhosh-b-28711613a/](https://www.linkedin.com/in/santhosh-b-28711613a/)

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/3oXjv5Fsg84" frameborder="0" allowfullscreen="true"> </iframe>
</figure>


## What Do We Do?
Being business process first, we focus on requirements, use cases and process flows in order to help implement new systems, enhance existing processes or deliver fixes. On a project, our role includes requirements documentation, business process mapping, gap analysis, project scoping, timeline planning, and scheduling.
We also manage relationships by working closely with cross-functional business and vendor teams to implement new enterprise applications that are coming on board. In doing so, we follow a process that ensures we keep multiple groups aligned as we iterate to get the systems up quickly and efficiently.

### System Implementations
We often assist on the roll-out of new applications and systems. This involves vendor evaluations, current state documentation. A few systems we have recently implemented are:
* Coupa
* DocuSign
* Zuora Revenue

### Business Process Enhancements
We partner closely with business stakeholders to help them improve existing business processes or help to design new ones. This involves identifying points of failure, inefficiencies and manual work in our stakeholder's activities that could be improved through automation or other tools. We also intake change requests from stakeholders that require smaller systems improvements.

### Bug Fixes
We have high level views of the enterprise application ecosystem and can help troubleshoot where a business process has broken down or a system flow is not working as expected.

## How Can You Contact Us?
**Slack Channel:** `#enterprise-apps`    
**Slack Tag:** `@bsa`   
**GitLab:** You can also tag the Business Systems Analysts Team in GitLab using `@gitlab-com/business-technology/enterprise-apps/bsa`

## How We Work
EntApps works to ensure GitLab’s Order-to-Cash (OTC) lifecycle is as efficient as possible, supporting our internal business teams and applications involved throughout the OTC process. This includes working with teams such as Sales, Sales Ops, Billing, Procurement and Finance to understand and build solutions for their business problems. To do this, we partner with other technical teams and application owners within the OTC process, such as Engineering and Sales Systems. 

EntApps works to resolve business issues using a 5 stage process: Define, Design, Build, Test, and Deploy.  More information about the 5 stages can be found in the Phase Exit Criteria section.

### Intake
The first step to engage the Business Systems Analysts is opening an [intake issue](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/intake/-/issues/new?issue%5Bmilestone_id%5D=#) using the “Request” template under the [Enterprise Application Group](https://gitlab.com/gitlab-com/business-technology/enterprise-apps) | [Intake Project](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/intake/-/issues).

On a weekly basis, the Enterprise Applications Business Systems Analyst (BSA) will review all [open Intake Issues](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/intake/-/boards/2798638?scope=all&label_name[]=EntApps%20Intake&not[label_name][]=BSA&not[label_name][]=BT%20Finance%20Systems) and assign them to a specific BSA to perform Discovery duties. Additional information will be requested in the Issue.

#### Intake Exit Criteria (for BSAs)

- Current State Process Flow/User Stories
   - Impacted Process documented
   - Impacted Teams documented
- Questionnaire Completed
   - Size 
   - Goal 
   - Measure 
   - Stakeholders
- Initial Prioritization

Depending on the complexity and urgency of the request, the BSA will either track work and provide updates directly in the Issue or create a project Epic to properly manage more-intricate requests.

### Project Epics
The Enterprise Application BSA team is responsible for creating project Epics and ensuring that they are regularly updated at each stage of the project. Projects consist of 6 Epics and a Change Management Issue. A single parent Epic is created with 5 children Epics that represent each phase of the project.

![projects](/handbook/business-technology/enterprise-applications/bsa/onboarding/project_stages.jpeg)

The templates that we use to structure our parent and children epics are documented in the [_EntApps Project Epics Templates_](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/intake/-/issues/394) issue. 

### Phase Exit Criteria
#### DEFINE
During Define, EntApps articulates the business problem and definition of done. This phase covers uses cases, technology impacted and requirements. The ultimate goal of Define is not to figure out everything but to document the process and what is impacted. Finally, before beginning the design, we request approval sign-off from key stakeholders to ensure business requirements are accurate and all-inclusive.

**Business Systems Analysts**
- Requirements documented and approved by stakeholders
   - Problem Statements
   - Use Cases
- Prioritization reevaluation and escalation
- Ideation (high-level solutions)
   - Socialization with stakeholders

**Technical**
- Ideation (high-level solution)

#### DESIGN
This phase creates the roadmap of how things will work in the future. Here the EntApps will work with the business to design a future state process and refine the requirements to build it. This phase should iron out all the details and questions from above. 

**Business Systems Analysts**
- Solution sign-off

**Technical**
- Solution Proof of concept (POC) in a development environment

#### BUILD
In the Build phase, EntApps collaborates with other stakeholders to develop solutions that meet the business requirements but also that are scalable and aligned with best-practices.

**Business Systems Analysts**
- Test Scripts documented
- Quality Assurance (QA) Testing

**Technical**
- Solution in a staging environment
- Solution detail documented
- Quality Assurance (QA) Testing

#### TEST
EntApps collaborates with other stakeholders to develop test scripts and facilitates the user acceptance testing process.

**Business Systems Analysts**
- User Acceptance Testing (UAT)
- Deployment plan documentation

**Technical**
- Deployment plan documentation

#### DEPLOY
EntApps owns developing a deployment plan and collaborating with other implementation teams to ensure completeness. This involves launch plans, user enablement, and go-live communications.

**Business Systems Analysts**
- Deployment announcement
- Handbooking

**Technical**
- Production configuration
- Handbooking

### Enterprise Applications OKRs

The Enterprise Applications team identifies 3-4 OKRs per quarter, focused on main implementations and enhancement of existing processes that will be beneficial to the entire company.

Our OKRs are documented and tracked in GitLab.com in the appropriated project epic. If an epic or issue is being used to track an OKR, the labels `~"BT-KR::Enterprise Application KR"` and the correct [BT FY OKR](https://gitlab.com/groups/gitlab-com/business-technology/-/labels?subscribed=&search=bt+fy2) need to be added.


### Rolly
[Rolly](/handbook/business-technology/how-we-work/rolly/) is a program status rollup automation tool and the BSAs use it to extract key status information from their current project epics and compile them into one issue [every week](https://gitlab.com/gitlab-com/business-technology/business-technology-ops/-/issues?scope=all&utf8=%E2%9C%93&state=all&label_name%5B%5D=EntApps-weekly-rollup). This issue is then used in different meetings to cover project statuses, what's in progress and what is blocked.

### Labels
Labels help us organize and tag our work so we can track and find the work items we’re interested in. The most common labels used by the BSAs are described below.

| Label | Description | Project/Group |
| ------ | ------ | ------ |
| ~"BSA" | Business Systems Analysts work | gitlab-com |
| ~"BT-Priority::1" | Critical | gitlab-com, gitlab-org |
| ~"BT-Priority::2" | Important not urgent | gitlab-com, gitlab-org |
| ~"BT-Priority::3" | No rush to do, but please do it | gitlab-com, gitlab-org |
| ~"BT Finance Systems" | For anything related to a Finance System (i.e. Zuora, Netsuite, Tipalti, Expensify, etc.). Catch all to ensure a Finance Systems Admin is aware and can triage as necessary. | gitlab-com, gitlab-org |
| ~"BT::Backlog" | Unless a due date is indicated or urgency specified, non-access related issues will go into the backlog and prioritized bi-weekly | gitlab-com |
| ~"BT::To Do" | Team will look at the issue within a week of submitting | gitlab-com |
| ~"BT::In Progress" | Team is currently actively working on scoping out and gathering requirements | gitlab-com |
| ~"BT::Done" | Business Technology team tasks completed. | gitlab-com |

For more information about Labels, check the [Labels](https://docs.gitlab.com/ee/user/project/labels.html#labels) page from our GitLab docs.
{: .alert .alert-info}

## Meetings

### Meeting Standards
The team follows GitLab meeting practices and standards.

- Every meeting has an agenda.
- Notes are added to the agenda inline with topics and questions.
- All agendas are stored in the BSA Meeting Notes [shared drive](https://drive.google.com/drive/folders/1maD_xGpiIgd_ZENN5pxj110S-xZ6hjjk).

### No-Meetings Fridays
While we can't promise we'll never have meetings on Fridays, the team has adopted [No Meetings Fridays](/handbook/communication/#no-meetings-fridays), and uses these days for focus work.

### Recurring Meetings

#### Lead-to-Cash BSAs
- The BSAs get together weekly to go through the projects that are being worked on accross the team. During this meeting we use [Rolly](https://gitlab.com/gitlab-com/business-technology/business-technology-ops/-/issues?scope=all&utf8=%E2%9C%93&state=all&label_name%5B%5D=EntApps-weekly-rollup) to cover every current project. 
   - Frequency: Weekly on Mondays at 10:30am PST
      > - The time of this meeting might change according to the BSA's calendars.
   - Participants: Business Systems Analysts only

#### Enterprise Applications Sync
- Every week the Enterprise Apps team has a dedicated hour to sync up. Hosted by the Senior Director of Enterprise Applications, the team discusses current activities (urgent and important) that impacts the whole team.
   - Frequency: Weekly
      > - The time of this meeting varies every week to accommodate the different timezones of the Enterprise Apps team members.
   - Participants: Enterprise Applications 

### Business Engagement
The purpose of engagement meetings is to focus on Roadmap Prioritization, Issues, Risks and Decisions. Engagement Meetings are strategic meetings to ensure that Enterprise Applications are aligned with their key business partners and they have clarity on our shared roadmap. Decisisons and timing are recorded in a shared Decision Log to ensure that there is clarity and decision are properly documentated (Prioritization).

**How we operate**:<br>
1. Meetings are lead by function leaders and have a bi-weekly or less frequent cadence.  
1. The Enterprise Applications slack channel (_#enterprise-apps_) is used to provide updates on the projects programs and meetings, publishing the recordings and decision logs.   
1. Rolly will be categorized by Business Partners so that they can see their impacting programs easily.

#### Finance Engagement Meeting
- Purpose: Align with Finance Business Partners on projects in flight and priortizie backlog. Get clear on what projects have dependencies and which are mutually exclusive. Log decisions and communicate them out. During this meeting we use [Rolly](https://gitlab.com/gitlab-com/business-technology/business-technology-ops/-/issues?scope=all&utf8=%E2%9C%93&state=all&label_name%5B%5D=EntApps-weekly-rollup) to cover project status, what's in progress and what is blocked. 
   - Frequency: Bi-weekly on Wednesdays at 8:30am PST
   - Participants: Enterprise Applications (host), Procurement, Revenue, Accounting, Billing

#### Fulfillment / Sales Systems Engagement Meeting
- Purpose: Technical and Delivery Alignment between Sale Systems, Fullfillment and Enterprise Applications. Roadmap and Delivery Date Focused. Backlog review, log decisions and communicate them out.
   - Frequency: Bi-weekly
   - Participants: Enterprise Applications (host), Sales Systems, Fulfillment

#### Sales Operations Engagement
- Purpose: Align with Sales Operations and Sales Systems on projects in flight and priortizie backlog. Get clear on what projects have dependencies and which are mutually exclusive. Log decisions and communicate them out.
   - Frequency: Bi-weekly
   - Participants: Enterprise Applications (host), Sales Operations, Sales Systems, Deal Desk, Fulfillment

#### People Engagement Meeting
- Purpose: Align with People Partners on projects in flight and priortizie backlog. Get clear on what projects have dependencies and which are mutually exclusive. Log decisions and communicate them out. 
   - Frequency: Bi-weekly
   - Participants: Enterprise Applications (host), People

#### Pro Serv / Sales Enablement Engagement
- Purpose: Align with Pro Serve on projects in flight and priortizie backlog. Get clear on what projects have dependencies and which are mutually exclusive. Log decisions and communicate them out. 
   - Frequency: Bi-weekly
   - Participants: Enterprise Applications (host), Professional Services

#### Security / Compliance Engagement
- Purpose: Align on shared programs between the Security teams and compliance. 
   - Frequency: Bi-weekly
   - Participants: Enterprise Applications (host), PSecurity

#### Channel Engagement Meeting
- Purpose: Align with the Channel Team  on projects in flight and priortizie backlog. Get clear on what projects have dependencies and which are mutually exclusive. Log decisions and communicate them out. 
   - Frequency: Monthly
   - Participants: Enterprise Applications (host), Channel Operations

#### Marketing Engagement Meeting
- Purpose: Align with the Marketing Teams on projects in flight and priortizie backlog. Get clear on what projects have dependencies and which are mutually exclusive. Log decisions and communicate them out. 
   - Frequency: Monthly
   - Participants: Enterprise Applications (host), Marketing

{::options parse_block_html="false" /}
