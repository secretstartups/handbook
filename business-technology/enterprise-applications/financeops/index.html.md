---
layout: handbook-page-toc
title: "Finance Systems"
description: "Finance Systems Operations"
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## <i class="fas fa-book" id="biz-tech-icons"></i> Finance Systems Charter
The **Finance Systems Administrator Team** implements and supports specialized applications for the finance team within GitLab.

## <i class="fas fa-users" id="biz-tech-icons"></i> Meet the team

- [Alex Westbrook](https://about.gitlab.com/company/team/#awestbrook) - Manager, Finance Systems Administrators (Allottabit about all the finance systems), *Certified Zuora Administrator*
- [Wendy Lam](https://about.gitlab.com/company/team/#wlam) - Finance Systems Administrator (P2P and Record to Report Expert)
- [Jessica Salcido](https://about.gitlab.com/company/team/#jesssalcido) - Finance Systems Administrator (Q2C Expert)
- [Cristine Marquardt](https://about.gitlab.com/company/team/#csotomango) - Finance Systems Administrator (Service Desk Guru), *Certified Zuora Administrator*
- [Brian Wong](https://about.gitlab.com/company/team/#brianmwong) - Finance Systems Administrator, *Certified Zuora Administrator*


## <i class="fas fa-tasks" id="biz-tech-icons"></i> How We Work

- **All work starts with an [Intake issue](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/financeops/finance-systems/-/issues/new?issue%5Bmilestone_id%5D=) (Labels: `~BT Finance Systems` and `~EntApps Intake`).**
- Once submitted, the issue will go to our [triage board](https://gitlab.com/groups/gitlab-com/-/boards/2814841?label_name[]=BT%20Finance%20Systems&label_name[]=EntApps%20Intake). This board is monitored daily. Before it is dispatched the request is reviewed to ensure there is enough details provided, once all information has been gathered, depending on the nature of the issue, it is assigned either the `~FinSys::Service Desk`, `~FinSys::Projects` or `~Finsys::Collaboration` label.

### Service Desk

- [Service Desk Board](https://gitlab.com/groups/gitlab-com/-/boards/2802782?scope=all&label_name[]=FinSys%3A%3AService%20Desk) Labels: `~FinSys::Service Desk`
- Our Service Desk takes care of:
    - User Access to the Finance Systems we manage. By way of Access Requests, Offboarding and Mobility Issues.
    - System questions and assistance.
    - Troubleshooting
    - Reporting assistance
    - etc.
- Issues will be assigned a priority:
    - `~BT-Priority::1`
    - `~BT-Priority::2`
    - `~BT-Priority::3`
- Issues will also be assigned to an admin who will ensure issue is resolved and proper protocol is followed depending on the request
    - This could be Change Management, Incident Management and/or Problem Management.
- Issues are either:
    - **Open:** Pending Priority and Admin assignment. Expect it to progress into In Progress within 72 hours of submitting the issue.
    - **`~BT::InProgress`:** Priority and Admin has been assigned and it’s actively being worked on.
    - **Closed or BT::Done External:** Request has been fulfilled entirely or next steps have been agreed to. Sometimes an issue cannot be closed by the FinSys team because there are tasks/requests for other teams (i.e. Access Requests), so in those cases we’ll mark it with BT::Done External which indicates all work for the FinSys team has been completed.

### Projects

- Projects span in scope (could be as small as a new workflow to a new system implementation), but every project will always have an Epic.
    - Epic will include all details related to the project.
        - Title: `BACKLOG:_______`
        - Team
            - Project Manager
        - Due Date
        - Scope
        - Objective
        - Etc.
    - [Template](https://gitlab.com/groups/gitlab-com/business-technology/enterprise-apps/-/epics/245)
- WIP: [Projects Backlog Board](https://gitlab.com/groups/gitlab-com/-/boards/2814889?label_name[]=EntApps%3A%3ABacklog&label_name[]=BT%3A%3ABacklog); Labels: `~BT Finance Systems` and `~BT::Backlog`
    - Projects can directly be submitted/requested through an epic here.
    - FinSys team meets on ___________ cadence to do backlog grooming and planning.
    - Through this exercise, ost projects will have a BSA and/or Project Manager to lead it.
- [In Flight Projects Board](https://gitlab.com/groups/gitlab-com/-/boards/2834898?label_name[]=BT%20Finance%20Systems&label_name[]=FinSys%3A%3AProjects); Labels: `~BT Finance Systems` and `~FinSys::Projects`
    - Update project title with prefix `PROJ:`
    - This is where you can see the open tasks related to a project and the stage they’re in.

### Collaboration

- To facilitate [asynchronous communication](https://about.gitlab.com/company/culture/all-remote/asynchronous/) use GitLab issues.
    - When using GitLab issues, use one of the following labels:
        - `~FinSys::Collaboration` in Gitlab.com
        - `~Enterprise Applications` in Gitlab.org

## <i class="far fa-paper-plane" id="biz-tech-icons"></i> Systems We Own

| System            | Function                         |
|-------------------|----------------------------------|
| Adaptive Insights | Financial Planning and Budgeting |
| Avalara           | Tax Engine                       |
| Coupa             | Procurement and AP               |
| Docusign          | Signatures                       |
| Expensify         | Expense Management               |
| Netsuite          | ERP                              |
| Stripe            | Payment Processor                |
| Tipalti           | AP                               |
| TripActions       | Travel Booking                   |
| Workiva           | Reporting                        |
| Zuora Billing     | Billing                          |
| Zuora Revenue     | Revenue Recognition              |
