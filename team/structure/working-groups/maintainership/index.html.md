---
layout: markdown_page
title: "Maintainership"
description: "Improve the Development Department Maintainership to be sustainable for the next 5 years"
canonical_path: "/company/team/structure/working-groups/maintainership/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property        | Value      |
|-----------------|------------|
| Date Created    | 2022-04-19 |
| Target End Date | 2022-07-29 |
| Slack           | [#wg_maintainership](https://gitlab.slack.com/archives/C03CGL9DDL4) |
| Google Doc      | [Working Group Agenda](https://docs.google.com/document/d/1RuWhO2q7rsgSKrnSCf2xsOrp56SXBHe_z5XKDls5px8/edit#heading=h.epyavtxljcb2)  |
| Task Board      | [Issue board](https://gitlab.com/groups/gitlab-com/-/boards/4208478?label_name[]=WorkingGroup%3A%3AMaintainership) |
| Epic            | [Link](https://gitlab.com/groups/gitlab-com/-/epics/1808) |

## Business Goal

We have seen overall inconsistent results with maintainership in the last quarter. Examples: A subset of maintainers are taking the burden of reviews which can lead to serious problems in job satisfaction issues and burnout. We are growing (both in headcount as well as community contributions), but the number of maintainers has stabilized. The number of repos which need maintainer support is increasing while coverage of them has decreased. We want transparency that seniors who are maintainers are having a positive impact in the multiple areas listed here, which leads to more career opportunities for them than it does non-maintainers. 

Our objective is to change our processes and culture to have an organization which we know can sustain maintainership for the next 5 years that meets the demand of both the company and the open core project. This includes, but is not limited to:
* Increasing current maintainers and having a forecasting to know we will increase in the future.
* Availability measures which demonstrate maintainers are able to meet demands of code reviews
* Load balancing measures to distribute MR reviews evenly among maintainers
* Improvements in code review features and CI/tooling to support the maintainers and reduce work needed for reviews
* Coverage/monitoring measures to know when a part of the code base is adequately supported or needs help
* Improvements in onboarding maintainers at our new scale
* Have some fun

## Tracking Progress

Progress will be tracked on the Working Group [issue board](https://gitlab.com/groups/gitlab-com/-/boards/4208478?label_name[]=WorkingGroup%3A%3AMaintainership) using the following labels:

- ~"workflow::In dev" 
   - The issue is currently in progress and actively being worked on
- ~"workflow::In review" 
   - The issue is currently being reviewed by broader Engineering Team
- ~"workflow::blocked" 
   - The issue is blocked by another issue.  Please refer to the blocking issue.
- ~"workflow::production" 
   - The issue has been completed and should be closed.

### Exit Criteria (0% completed)


| #  | Start Date | Completed Date | DRI        | Criteria |
| -- | ------     | ------         | ------     | ------   |
| 1  |  2022-06-01       | TBD            | @nhxnguyen | [Create an implementation plan to remedy gaps in Maintainership coverage](https://gitlab.com/groups/gitlab-com/-/epics/1817)| 
| 2  |  2022-04-26       | TBD            | @mwoolf | [Develop metrics to provide more transparency into the health of the Maintainership program](https://gitlab.com/groups/gitlab-com/-/epics/1816) |
| 3  |  TBD       | TBD            | @robotmay_gitlab | [Update expected behaviors and responsibilities for Engineers and Maintainers](https://gitlab.com/groups/gitlab-com/-/epics/1815) |
| 4  |  TBD       | TBD            | @alexives | [Improve the Trainee Maintainer process to make the process more efficient](https://gitlab.com/groups/gitlab-com/-/epics/1814) |
| 5  |  2022-06-01       | TBD            | @sabrams | [Develop and implement a communication plan for Maintainership changes](https://gitlab.com/groups/gitlab-com/-/epics/1813) |

### Data and dashboards
- [Reviewer/Maintainer availability and capacity](https://app.periscopedata.com/app/gitlab/1028635/Reviewer-Maintainer-Availability-and-Capacity) - Shows the maintainer/reviewer availability rate over time and incoming/forecasted review requests
- [Maintainer WG dashboard](https://app.periscopedata.com/app/gitlab/1020829/Maintainer-WG) - A sandbox dashboard for metrics related to the working group
- [Maintainers and Trainees](/handbook/engineering/development/performance-indicators/#maintainers-and-trainees)
- [Maintainers per MR](/handbook/engineering/development/performance-indicators/#maintainers-per-mr)

### Roles and Responsibilities

| Working Group Role    | Person                                               | Title                                                      |
|-----------------------|------------------------------------------------------|------------------------------------------------------------|
| Executive Sponsor     					| Christopher Lefelhocz                  | VP of Development    |                                     
| Facilitator           					| Michelle Gill                          | Senior Engineering Manager, Manage   |                              
| Functional Lead (Enablement)      		| Alex Ives                              | Engineering Manager, Database     |                            
| Functional Lead (Fulfillment)      		| Jerome Ng                              | Senior Manager of Fulfillment |
| Functional Lead (Ops)      				| Sam Goldstein                          | Director of Ops |
| Functional Lead (Dev)      				| Max Woolf                              | Senior Backend Engineer, Manage:Compliance |
| Functional Lead (Sec, ModelOps, Growth)   | Thomas Woodham                         | Sr. Engineering Manager, Secure Analyzers | 
| Functional Lead (Maintainer - Frontend)         | Natalia Tepluhina | Staff Frontend Engineer |
| Functional Lead (Non-Maintainer - Backend)      | Manoj M J | Senior Backend Engineer |
| Functional Lead (Trainee - Registry DB)		  | Steve Abrams | Intermediate Backend Engineer |
| Functional Lead (Maintainer - Workhorse, Shell) | Robert May | Senior Backend Engineer |
| Functional Lead (Maintainer - Frontend)         | Ezekiel Kigbo | Senior Frontend Engineer |
| Functional Lead (Maintainer - Omnibus)          | Balasankar C       | Senior Backend Engineer |
| Functional Lead (Maintainer - CNG, Operator)    | Mitchell Nielsen | Senior Backend Engineer |
| Member            | Sean McGivern       		 | Staff Backend    |
| Member            | Allen Cook    			 | Senior Backend   |
| Member            | Terri Chu        			 | Senior Backend   |
| Member            | Doug Stull      	   		 | Staff Fullstack  |
| Member            | Enrique Alcántara      	 | Senior Frontend  |
| Member            | Pavel Shutsin        		 | Senior Backend   |
| Member            | Sincheol Kim    			 | Senior Backend   |
| Member            | Michał Zając       		 | Senior Backend   |
| Member            | Douglas Barbosa Alexandre  | Staff Backend    |
| Member 		     | Paul Gascou-Vaillancourt   | Senior Frontend,   |
| Member            | Dennis Tang 				 | Engineering Manager, Manage:Compliance |
| Member            | Nick Nguyen 				 | Senior Engineering Manager, Datastores |
| Member            | Kyle Wiebers 				 | Engineering Manager, Engineering Productivity | 
| Member            | Darva Satcher 		     | Senior Engineering Manager, Create / Ecosystem Stage |
| Member            | Jiaan Louw 				 | Senior Frontend Engineer, Manage:Compliance |
| Member            | Chad Woolley            | Senior Backend Engineer, Create::Editor |

## Communicating changes

### Labels

We have two sets of labels to help facilitate communications:

**Type of changes and their impact**

Use these labels to identify the type of change being made:

- `~"Maintainership WG::process change"` - This update changes an existing process or workflow
- `~"Maintainership WG::new process"` - This update introduces a new process or workflow
- `~"Maintainership WG::responsibility change"` - This update changes or introduces a responsibility
- `~"Maintainership WG::other change"` - This is an update that may warrant an announcement but does not fit in the above categories

**Communication status**

Use these labels to identify if a change is ready to be communicated or if it has been communicated:

- `~"Maintainership WG Comms::ToDo"` - This update is ready to be communicated
- `~"Maintainership WG Comms::Needs Support"` - This update needs something additional to support it when it is announced. This could be things like handbook updates, an FAQ, or an AMA.
- `~"Maintainership WG Comms::Done"` - This update has been communicated
