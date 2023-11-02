---
layout: handbook-page-toc
title: "Integrations - How we work"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Integrations - How we work

### SDLC

<p style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; color: #380D75; margin-left: 25px; margin-right: 25px;">
    <a href="#1-the-funnel" style="display: flex; flex-direction: column; align-items: center; justify-content: center; color: #380D75; text-decoration: none;">
        <i class="fas fa-filter fa-fw" style="font-size: 5em;"/>
        <span style="font-size: 3rem">Funnel</span>
    </a>
    <i class="fas fa-long-arrow-alt-right fa-fw" style="font-size: 3em"/>
    <a href="#2-project-planning" style="display: flex; flex-direction: column; align-items: center; justify-content: center; color: #380D75; text-decoration: none;">
        <i class="fas fa-pencil-ruler fa-fw" style="font-size: 5em;"/>
        <span style="font-size: 3rem">Plan</span>
    </a>
    <i class="fas fa-long-arrow-alt-right fa-fw" style="font-size: 3em"/>
    <a href="#3-milestone-process" style="display: flex; flex-direction: column; align-items: center; justify-content: center; color: #380D75; text-decoration: none;">
        <i class="fas fa-sync fa-fw" style="font-size: 5em;"/>
        <span style="font-size: 3rem">Build</span>
    </a>
    <i class="fas fa-long-arrow-alt-right fa-fw" style="font-size: 3em"/>
    <a href="#4-maintenance--ops" style="display: flex; flex-direction: column; align-items: center; justify-content: center; color: #380D75; text-decoration: none;">
        <i class="fas fa-chart-bar fa-fw" style="font-size: 5em;"/>
        <span style="font-size: 3rem">Support</span>
    </a>
</p>

#### 1. The Funnel
In order for the integrations team to have consistent planned work available to bring into milestones, we strive to have a healthy funnel of incoming work. We do this in a few ways:

1. By reaching out to our business partners to gain an understanding of their upcoming roadmaps and how integrations and automations work will fit into that. This is the genesis of a lot of our larger programs of work.
1. Teams reach out to us for assistance with ad-hoc work that comes up in the day-to-day.
1. We schedule work ourselves which will improve the integrations landscape and allow us to work more efficiently and effectively with the business to achieve results.
1. We schedule work that will achieve certain compliance, security, maintainability, and auditability goals for the business.

#### 2. Project Planning
Prior to scheduling an engineering task into a milestone, we need to have a good understanding of the problem, the ask, and well-defined requirements. This assists us to design a solution that meets your core business needs and does that in a reliable way. This also has a secondary benefit which is that we can properly automate the testing of integrations so that they are easy for us to support and maintain. This allows our team to stay lean and flexible so that we aren't bogged down in support activities.

We may ask you for any of the following documentation, designs, and information to help us plan your project:

1. An intake issue/epic
1. Project metadata (DRI, team, dates, etc.)
1. Work breakdown plan
1. User stories
1. Design Diagrams
1. Acceptance Criteria
1. Function & Non-function requirements
1. Test plan
1. Your UAT plan
1. Gantt chart showing dependencies between the ask and other team/s activities
1. Project kick-off meeting

**Note:** We don't always have spare Project Management or BSA resources to devote to your project so we may ask for you to assist us in owning in these activities.

#### 3. Milestone Process
We run 1 month long milestones (sprints) which start on the first Tuesday of the month. Our milestone calendar follows a repeating pattern of predictably scheduled rituals:

* Milestone planning session(s) in the week leading up to a new milestone
* Milestone kickoff
* Async Standups & Ad-hoc sync meetups
* Milestone retrospective at the end of the milestone

##### Calendar

|Ritual|Week before milestone|Week 1|Week 2|Week 3|Week 4|
|------|---------------------|------|------|------|------|
| Planning | X (multiple sessions) |  |  |  |  |
| Kickoff | | X (first day) |  |  |  |
| Retrospective | | | | | X (last day) |

#### 4. Maintenance & Ops
For integrations we have built we have logs, monitoring and alerts which automatically trigger when an issue arises in an integration or automation. We track bugs and incidents in our [Integrations Work Tracker](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/integrations-work/-/issues){:target="_blank"} and on our [Milestone Board](https://gitlab.com/groups/gitlab-com/-/boards/2031131){:target="_blank"}.

If you need to report a bug or incident to us, please do so using the bug report template [listed below](#create-an-issue).

For maintenance and enhancement of existing integrations please submit an issue using the correct [template below](#create-an-issue).

To learn about our processes please visit the [sdlc](./sdlc) page

### How to engage us

#### Create an issue
Pick one of the below to be directed to the correct issue template

1. [New Project](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/integrations-work/-/issues/new?issuable_template=Default){:target="_blank"}
1. [Enhancement Request](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/integrations-work/-/issues/new?issuable_template=Default){:target="_blank"}
1. [Bug Report](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/integrations-work/-/issues/new?issuable_template=Bug){:target="_blank"}

#### Project sizing
Once you have reached out to us, we will help you in determining the size of your project, and subsequently the types of planning assets and activities that we'll require to help things run smoothly and make your project a success.

| Project Size  | Examples   | Checklist |
| ------------- | --------   | --------- |
| Small (S)     | - Switch to sending preferred names to existing EdCast integration via the API | TBD |
| Medium (M)    | - Navex Global integration (upload daily list of users to FTP server) | TBD |
| Large (L)     | - Zuora to NetSuite Integration | TBD |
| Extra Large (XL) | - Switch out a core system and rebuild all integrations | - Break this project down into size L or smaller projects |
