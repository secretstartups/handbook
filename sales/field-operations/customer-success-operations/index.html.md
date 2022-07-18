---
layout: handbook-page-toc
title: "Customer Success Operations"
description: "The Customer Success Operations team's handbook page. This covers our mission, strategies, responsibilities, and processes."
---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

## Mission

Customer Success Operations cross-functionally aligns GitLab for a superb customer experience through creating trust in data, clarity in effective processes, and predictability in outcomes.

## Strategy

Develop and operationalize Customer strategies leveraging analytics and insights for key expansion and renewal initiatives, resulting in increased net ARR.

1. Operationalize Product Usage Data
1. Expand Customer Programs
1. Develop Renewal Operations
1. Enhance Gainsight Buildout


## What we do

Customer Success Operations creates and updates existing processes for the Customer Success organization. CS Operations oversees:

- Systems implementation and maintenance
- Operational reporting
- Systems enablement
- Product analytics and renewal strategies
- Fiscal Year planning and strategy
- Operationalizing Customer Success Journeys

The CS Ops team also provides support for customer programs, renewals, and Gainsight.

<div class="flex-row" markdown="0" style="height:80px">
    <a href="/handbook/sales/field-operations/customer-success-operations/cs-ops-programs/" class="btn btn-purple-inv" style="width:20%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Customer Success Programs</a>
    <a href="/handbook/sales/field-operations/customer-success-operations/cs-ops-renewals/" class="btn btn-purple-inv" style="width:20%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Customer Success Renewals</a>
    <a href="/handbook/sales/field-operations/customer-success-operations/gainsight/" class="btn btn-purple-inv" style="width:20%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Gainsight Management<br> and Support</a>
</div>
<br>

## Who we work with

Customer Success Operations provides support, content, and data analysis for all Customer Success teams.

## CS Ops Request Process

![CS Ops Issue Flowchart](https://www.lucidchart.com/publicSegments/view/42d94a0a-3a9c-4ffd-b483-51bd9009385f/image.jpeg "CS Ops Issue Flowchart")

## CS Ops Board, Groups, Projects, and Labels

### CS Operations Board

The CS Ops team uses issues and issue boards to track our projects and tasks. If you need help with a project, please open an issue and add the ~CSOps label anywhere within the GitLab repo.

CS Operations uses a [global issue board](https://gitlab.com/groups/gitlab-com/-/boards/3156857?label_name[]=CSOps) to capture and track issues in any group or sub-group in the repo.

### Groups

- Use the `gitlab.com` group for epics that may include issues within and outside the Sales Team group.
- Use the GitLab Sales Team group for epics that may include issues within and outside the Field Operations group.

### Projects

Create issues in the [CS Operations project](https://gitlab.com/gitlab-com/sales-team/field-operations/customer-success-operations).

### Labels

Labels to use when creating new issues or MRs for CS Ops:

**Team Labels**
- **CSOps** - Use to track and manage all CS Operations-related issues and MRs.
- **CS Programs** - For the Digital Programs team to track and manage content requests, improvements, and other means of digital customer marketing.
- **CS product usage data** - Issues related to Customer Success product usage data.
- **RenewalOps** - Label to designate issues for the Renewal Ops team to improve our customer renewal process and experience.
- **CS Ops Technical Writing** - Assigned to the CS Ops technical writers for review or creation of copy.

**Scoped Labels** - used for tracking SDLC progress
- **CSOps::Need_More_Info** - Requires additional information from the requester, or lacks information to complete the request.
- **CSOps::Ready_for_Assignment** - Ready to be assigned and prioritized by CS Ops.
- **CSOps::In_Process** - Actively being worked on in the current week or milestone.
- **CSOps::Blocked** - Currently blocked by an internal or external prerequisite.
- **CSOps::Ready_to_Deploy** - The issue is ready for deployment.
- **CSOps::Completed** - The CS Ops team has completed their work.
- **CSOps::Transferred** - Transferred to another team for review and/or completion.
- **CSOps::Backlog** - Not currently being evaluated or worked on.
- **CSOps::bug** - A bug issue to be addressed by CS Ops.

**Team Requestor Labels** - for tracking where the request(s) came from
- **CSOps - TAM** - Request originating from, or to benefit the TAM team.
- **CSOps - PS** - Request originating from, or to benefit the PS team.
- **CSOps - SA** - Request originating from, or to benefit the SA team.
- **CSOps - Ops** - Request to benefit the CSOps team.

## Peer Review
The peer review process (currently for issues related to Gainsight) allows CS Ops team members to have another member of the team review their work.

The issue owner is responsible for making sure the issue is completed in timely manner, including communicating to the peer reviewer when the issue needs to be completed. The peer reviewer is responsible for completing the review in the timeframe given by the issue owner.

- Issues **MUST** be peer reviewed if it is a change, addition, or removal in a rule or data object (e.g. creating a new rule or connector job, removing fields from an object, combining multiple rules into one)
- For changes to reports or dashboards, strongly consider a peer review.

Feel free to ask for a peer review for other any updates if you feel it would be helpful to have a second opinion.

To start the peer review process:
1. Provide a Summary of the work you have completed in the **Resolution** section on the GitLab issue
2. Change the issue status to `CS Ops::Ready to Deploy`
3. Tag your manager and comment on the issue that it is ready for peer review
4. Manager will assign the peer reviewer to the issue. The issue owner will remain an assignee as they are ultimately responsible for the issue completion.
