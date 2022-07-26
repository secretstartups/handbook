---
layout: markdown_page
title: "Next Prioritization"
description: "Transition R&D teams into a steady priorization state driven by backlog data, SLO guidelines & healthy prioritization ratios"
canonical_path: "/company/team/structure/working-groups/next-prioritization/"
---

## On this page

{:.no_toc}

- TOC
{:toc}

## Attributes

| Property        | Value      |
|-----------------|------------|
| Date Created    | 2022-04-13 |
| Target End Date | 2022-08-18 |
| Slack           | [#wg_next-prioritization](https://gitlab.slack.com/archives/C03AWM7780G) |
| Google Doc      | [Working Group Agenda](https://docs.google.com/document/d/1wog8bR7jg6SECefx9BGqIa07sFm_sXJPvelVAganYmc/edit#heading=h.pmtw3ocv2aty)  |
| Board for non per-group adoption issues    | [Issue board](https://gitlab.com/groups/gitlab-com/-/boards/4199535?not[label_name][]=wg-next-prioritization-adoption&label_name[]=wg-next-prioritization) |
| Issue list for per-group adoption issues    | [Issue list](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/?label_name%5B%5D=wg-next-prioritization-adoption) |
| Open merge requests for the working group | [MR list](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?label_name%5B%5D=wg-next-prioritization) |
| Epic            | [Link](https://gitlab.com/groups/gitlab-com/-/epics/1799) |

### Exit criteria

- All groups have dashboards that they use to analyze merged MR ratio of features, maintenance, bugs and undefined.
- All groups are reviewing the dashboards and discussing it periodically (monthly).
- Development engineering managers are providing their maintenance priorities to PM
- Quality leads are providing their bug priorities to PM
- PM is consulting with the quad (development EM, quality lead, UX lead) to determine which issues which will be planned for which milestone
- VP Eng, VP Prod, VP UX, VP Quality, and CTO review the dashboards at the company level (quarterly).
- Automation exists to streamline the process.
- Handbook is updated to reflect the new process.
- Execute on mulit-modal communication plan.

### Implementation plan

| Task | Due date | Status | DRI | Issue link(s) |
| --- | --- | --- | --- | --- |
| Poll and decide on new workgroup name | 2022-05-02 | Complete | Michael Oliver | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13274) |
| Company wide-announcement and schedule AMA sessions | 2022-05-04 | Complete | Wayne Haber | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13302) |
| Add dashboards to handbook pages for all stage groups | 2022-05-26 | Complete | Cheryl Li | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13294) |
| Add dashboards to handbook pages for all sub-departments | 2022-05-30 | Complete | Cheryl Li | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13448) |
| Automate merge request type reminders  | 2022-06-03 | Complete | Kyle Wiebers | [Issue](https://gitlab.com/gitlab-com/quality/engineering-productivity/-/issues/5) |
| Handbook updates to describe new process and deprecate engineering allocation process | 2022-06-06 | Complete | Valerie Karnes (UX), Tanya Pazitny (Quality), Matt Wilson (PM), Neil McCorrison (Development)| [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13340) |
| Setup monthly MR type reviews between engineering managers, sub-department leads, and engineering overall trends | 2022-06-02 | Complete | Cheryl Li | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13212) |
| Refine stakeholder dashboard views, bug & maintenance backlog types | 2022-05-19 | Complete | Lily Mai | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13321) |
| Reduce undefined MR types to less than 5% | 2022-07-01 | Complete | Cheryl Li | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13303) |
| Auto-schedule S1 Bugs | 2022-07-13 | Complete | Tanya Pazitny | [Issue](https://gitlab.com/gitlab-com/quality/engineering-productivity/-/issues/6) |
| 100% of teams using the new processes | 2022-07-04 |97% as of 2022-07-14 | Wayne Haber | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13304) |
| Create a view of milestone planning issues | 2022-07-14 | Complete | Lily Mai | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13585) |
| First review of milestone plan by CTO and VP of Product | 2022-07-15 | Planned | Eric Johnson and David DeSanto | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13631) |
| Do a restrospective and start incorporating feedback for the next iteration | 2022-07-18 | Collecting feedback | Working group functional leads| [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13694) |


### Roles and Responsibilities

| Working Group Role    | Person                                               | Title                                                      |
|-----------------------|------------------------------------------------------|------------------------------------------------------------|
| Executive Sponsor     | Eric Johnson                                         | CTO                                                        |
| Facilitator           | Wayne Haber                                          | Director of Engineering                                    |
| Functional Lead       | Christopher Lefelhocz                                | VP of Development                                          |
| Functional Lead       | Valerie Karnes                                       | Director of Product Design |
| Functional Lead       | Mek Stittri                                          | VP of Quality |
| Functional Lead       | David DeSanto                                        | VP of Product Management |
| Functional Lead       | Justin Farris                                        | Senior Director of Product Management |
| Functional Lead       | Farnoosh Seifoddini                                  | Head of Product Operations |
| Member                | Lily Mai                                             | Staff Engineering Analyst |
| Member                | Tanya Pazitny                                        | Director of Quality Engineering |
| Member                | Kyle Wiebers                                         | Engineering Manager, Engineering Productivity |
| Member                | John Hope                                            | Engineering Manager, Plan:Product Planning & Certify |
| Member                | Matt Wilson                                          | Senior Product Manager, Secure |
| Member                | Neil McCorrison                                      | Frontend Engineering Manager, Secure |
| Member                | Donald Cook                                          | Engineering Manager, Plan:Project Management |
| Member                | Cheryl Li                                            | Senior Engineering Manager, Verify |


# Cross-functional prioritization process

The process is [documented](/handbook/engineering/cross-functional-prioritization/) in the handbook.

# Multi-modal communication

* Add the `wg-next-prioritization` label to all issues and merge requests so they can be tracked
* Tag (at minimum) all potentially interested working group functional leads and when there is impact to product `gl-product-leadership` in all merge requests to solicit feedback.
* Wait two business days for feedback before merging.
* Announce all merge requests in the working group slack channel and/or in the standup meeting for working group awareness.
* Announce all big changes and status updates in the `#product` `#vp-development` `#ux-leaders` `#quality-leaders` `#eng-managers` slack channels, and in the weekly engineering work in review document.
* Summarize changes for these groups (sourced using the label search) every ~two weeks.





