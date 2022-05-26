---
layout: markdown_page
title: "Next Prioritization"
description: "Transition R&D teams into a steady priorization state driven by backlog data, SLO guidelines & healthy prioritization ratios"
canonical_path: "/company/team/structure/working-groups/maint-first/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property        | Value      |
|-----------------|------------|
| Date Created    | 2022-04-13 |
| Target End Date | 2022-06-30 |
| Slack           | [#wg_next-prioritization](https://gitlab.slack.com/archives/C03AWM7780G) |
| Google Doc      | [Working Group Agenda](https://docs.google.com/document/d/1wog8bR7jg6SECefx9BGqIa07sFm_sXJPvelVAganYmc/edit#heading=h.pmtw3ocv2aty)  |
| Task Board      | [Issue board](https://gitlab.com/groups/gitlab-com/-/boards/4199535?label_name[]=wg-next-prioritization) |
| Epic            | [Link](https://gitlab.com/groups/gitlab-com/-/epics/1799) |

## Business Goals of the cross-functional prioritization process

The engineering allocation process often addresses maintenance work retroactively rather than proactively.  This leads to unpredictability and puts us at a higher risk of customer-facing incidents.

As a result of this, it is critical that we create a healthier balance of work by type (features, maintenance items, bugs) delivered across R&D, improve transparency for R&D and GTM stakeholders, and be prepared to respond quickly to changing needs.

In order to do so, we will transition R&D teams quickly to a new prioritization model driven by backlog types, automated SLO guidelines, and balanced prioritization ratios.  We should expect maintenance to be high in this new model until we reach steady-state, as all teams work to complete remaining engineering allocations while they also complete their burn-down of their current reliability and security debt backlog.

Benefits include:

* In order to have a healthier balance of work by type (features, maintenance items, bugs), we will set goals on these ratios and track on a per team and per sub-department basis
* In order to improve transparency for stakeholders, we will publish dashboards where the trends and details can be tracked over time
* In order to respond more quickly to changing needs, we will use this process to better stay ahead of maintenance work rather using the `engineering allocation` process which often addresses maintenance work retroactively rather than proactively.

Prioritization DRIs:

All prioritization will be done via quad planning (collaboration between product, development, UX, quality) with a DRI to be responsible for the decisions based on each work type:

* Feature - Product manager
* Maintenance - Development manager
* Bug - Quality manager (by bug severity)


More details in these [slides](https://docs.google.com/presentation/d/1TDswR4h-Zo-Fdq3yVtk-q-uJrKe_03iF9jB1XQWqQb4/edit#slide=id.geebc38ecb3_0_261).

### Exit criteria

* All groups have dashboards that they use to analyze merged MR ratio of features, maintenance, bugs and undefined.
* All groups are reviewing the dashboards and discussing it periodically (monthly?). They compare against the 60% feature, 30% maintenance, 10% bugs, and <=5% undefined. If not there, discuss why and what makes sense for the team. It is *not* an exit criteria that every team achieves those ratios.
* All sections review the dashboards at the section level (quarterly?).
* VP Eng, VP Prod, VP UX, VP Quality, and CTO review the dashboards at the company level (quarterly?).
* Starting with the 15.1 release at the earliest, 15.2 at the latest:
  * Product continues to prioritize feature issues.
  * Development transitions to being the DRI to prioritize maintenance issues.
  * Quality transitions to being the DRI for bugs.
  * Product, in consultation with UX, Development, and Quality is the DRI for milestone planning. 
* Automation exists to streamline the process.
* Handbook is updated to reflect the new process.
* Execute on mulit-modal communication plan.

### Implementation plan

| Task | Due date | Status | DRI | Issue link(s) |
| --- | --- | --- | --- | --- | 
| Poll and decide on new workgroup name | May 2 | Complete | Michael Oliver | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13274) |
| Company wide-announcement and schedule AMA sessions | May 4 | Complete | Wayne Haber | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13302) |
| Add dashboards to handbook pages for all stage groups | May 26 | Complete | Cheryl Li | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13294) |
| Add dashboards to handbook pages for all sub-departments | May 30 | In process | Cheryl Li | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13448) |
| Automate merge request type reminders  | May 30  | In process | Kyle Wiebers | [Issue](https://gitlab.com/gitlab-com/quality/engineering-productivity/-/issues/5) |
| Auto-schedule S1 Bugs | June 7 | In process | Tanya Pazitny | [Issue](https://gitlab.com/gitlab-com/quality/engineering-productivity/-/issues/6) |
| Handbook updates to describe new process and deprecate engineering allocation process | May 26 | Started | Valerie Karnes (UX), Tanya Pazitny (Quality), Matt Wilson (PM), Neil McCorrison (Development)| [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13340) |
| Setup monthly MR type reviews between engineering managers, sub-department leads, and engineering overall trends | June 2 | In process | Cheryl Li | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13212) | 
| Refine stakeholder dashboard views, bug & maintenance backlog types | May 19 | Complete | Lily Mai | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13321) | 
| Reduce undefined MR types to less than 5% | June 2 | In process | Cheryl Li | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13303) |
| 100% of teams migrated to new process | 6/15 | In process (5% : 2 out of ~39) | Wayne Haber | [Issue](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/13304) |
| Do a restrospective and close working group | 6/22 | Not started | Wayne Haber | TBD |


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
