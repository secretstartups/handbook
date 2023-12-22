---
aliases: /handbook/engineering/infrastructure/team/reliability/practices.html
title: "Reliability:Practices Team"
---

## Mission

The Practices team is a subgroup of the [Reliability Team](/handbook/engineering/infrastructure/team/reliability/).

Our mission is to ensure the reliability, performance, and availability of GitLab.com by partnering with [Stage Groups](/handbook/product/categories/) to ensure that features and services are designed and implemented with reliability in mind. The team collaborates with Stage groups to build, maintain, and improve services and ensure the services' [SLO](/handbook/engineering/error-budgets/error-budget-by-stage-group-example.html#sli-slo-sla) is met as per GitLab.com's [availability](/handbook/engineering/infrastructure/performance-indicators/#gitlabcom-availability)
and [performance](/handbook/engineering/infrastructure/performance-indicators/#gitlab-com-performance) goals.

## Team Members

The following people are members of the Reliability:Practices team

{{< team-by-manager-slug manager="kwanyangu" team="Site Reliability" >}}

## Ownership

Currently, Practices team supports Infrastructure Reliability related to the below services;

{{< reliability-practices-ownership >}}

## Useful Links

<table>
    <tr>
        <th>Workflow</th>
        <td>
            <a href="/handbook/engineering/infrastructure/team/reliability/issues#labels"><i class="fa fa-book"></i> Issue Labels</a><br>
            <a href="https://gitlab.com/groups/gitlab-com/gl-infra/-/issues/?sort=created_date&state=opened&label_name%5B%5D=team%3A%3APractices&first_page_size=100"><i class="fa-brands fa-gitlab"></i>  Weekly Issue Triage</a>
        </td>
    </tr>
    <tr>
        <th>Backlog</th>
        <td>
            <a href="https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/4696185"><i class="fa-brands fa-gitlab"></i> Current Milestone</a><br>
            <a href="https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/4696185"><i class="fa-brands fa-gitlab"></i> Service Backlog</a><br>
            <a href="https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/5396531"><i class="fa-brands fa-gitlab"></i> Priority Board</a>
        </td>
    </tr>
    <tr>
        <th>Reaching us</th>
        <td>
            <a href="https://gitlab.slack.com/archives/C04M6HVAY49"><code><i class="fa-brands fa-slack"></i> #g_infra_practices</code></a><br>
            <a href="https://gitlab.slack.com/archives/C03QC5KNW5N"><code><i class="fa-brands fa-slack"></i> #reliability-lounge</code></a><br>
            <code><i class="fa-brands fa-gitlab"></i> @gitlab-org/reliability/practices</code>
        </td>
    </tr>
    <tr>
        <th>Weekly Agenda</th>
        <td>
            <a href="https://docs.google.com/document/d/1jKcIw0fRkcAN-vXQuvD0OUJpoxchjVOTqMYdGzeW87I/edit#heading=h.6lawfomkdqum"><i class="fa-brands fa-google-drive"></i> Weekly alternative APAC/EMEA and EMEA/AMER</a>
        </td>
    </tr>
    <tr>
        <th>Achievements</th>
        <td>
            <a href="https://gitlab.com/gitlab-com/gl-infra/reliability/-/issues/17301"><i class="fa-brands fa-gitlab"></i> FY24 - Q1</a>
        </td>
    </tr>
</table>

## Scope of Work

Requests not in the scope below should refer to Reliability team's defined [General Workflow](/handbook/engineering/infrastructure/team/reliability/#how-we-work--general-workflow) for prioritization and assignment.

- Stage groups' Infrastructure setup and/or migration work.
- [Feature Change Lock](/handbook/engineering/#feature-change-locks) (FCL) related work requiring to pair with the Reliability team
- Reliability improvements driven by [Error budget spend](/handbook/engineering/error-budgets/#error-budget-improvements) and requiring pairing between stage groups and reliability team
- Enabling ownership or self-service for stage groups on specific components, e.g empowering a stage group to understand their monitoring or managing access for troubleshooting
- Support Service related incidents on Incident RCAs, SLI/SLO iteration, Corrective Actions
- Develop standards, best practices and technical documentation for reliabile services
- Technical knowledge sharing and documentation through runbooks, design documents etc
- Work with stage groups to increase service maturity as per the defined [Service Maturity Model](/handbook/engineering/infrastructure/service-maturity-model/)
- Examples:
   - [CustomerDot migration from Azure to GCP](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/626)
   - [Gitaly Cgroups](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/344)
   - [CI Decomposition](https://gitlab.com/groups/gitlab-org/-/epics/6160)

### Caveats
The Practices team is not there to reduce the stage team's backlog but to collaborate and support reliability efforts and infrastructure best practices.

The above scope of work might imply some overlap with other teams' functions such as:

- Capacity planning owned by [Scalability team](/handbook/engineering/infrastructure/team/scalability/)
- Observability and Monitoring owned by Reliability:Observability
- Incident Management owned by overall Reliability team. Currently, in cases of overlaps and doubts, follow the [General Workflow](/handbook/engineering/infrastructure/team/reliability/#how-we-work--general-workflow) or check-in with the respective Reliability, Engineering manager.

## OKRs

We use quarterly [Objectives and Key Results](/handbook/company/okrs/) to plan and measure our Key Performance Indicators (KPIs).

## Performance indicators

We measure the value we contribute by using [performance indicator metrics](/handbook/engineering/infrastructure/performance-indicators/#key-performance-indicators).

In addition to the Infrastructure Department's KPIs for [availability](/handbook/engineering/infrastructure/performance-indicators/#gitlabcom-availability)
and [performance](/handbook/engineering/infrastructure/performance-indicators/#gitlab-com-performance) of GitLab.com, the Practices team tracks the following;

- Service's Pager load
- Improvements of service SLOs
- Introduction of better SLIs for services to define customer happiness
- Improve the [Service Maturity level](/handbook/engineering/infrastructure/service-maturity-model/).

The Practices team does not necessarily own the above KPIs and metrics but rather facilitate and support them to ensure reliable services and components.

## Technical skills

- The technical skill required for Practices team is as defined in our [Engineering Infrastructure roles](/job-families/engineering/infrastructure/) for [Site Reliability Engineer](/job-families/engineering/infrastructure/site-reliability-engineer/)
- Able to contribute upstream to the respective product/stage group.
- Strong knowledge of SLI/SLO in general and how they work at GitLab.

## Dashboards and common links

### Project work VS Operations Work

We strive for a 50% split between project work and operations work.
Having more than 50% operations work is an indicator that the service/team is not in a healthy state and is something that needs to be addressed.
More detail on this can be found in <https://sre.google/workbook/part-II-practices/>

#### All Services

{{< sisense dashboard="1019503" chart="16312060" >}}

#### Service::Gitaly

{{< sisense dashboard="1019503" chart="16312588" >}}

#### Service::Praefect

{{< sisense dashboard="1019503" chart="16312580" >}}

#### Service::CI Runners

{{< sisense dashboard="1019503" chart="16312586" >}}

#### Service::CustomersDot

{{< sisense dashboard="1019503" chart="16312590" >}}

## Resources

### Weekly Sync Agenda Template

```text
Date:

Participants:

1. New Items
   1. ...
2. Standing Items
   1. Incidents and Corrective Actions
   2. Observability Adjustments
   3. Long Term Work
   4. Ideas for Improvements
     1. Automation
     2. Self-Service
```

### Suggested Reporting Template for DRIs

- What happened last week:
  - Provide 1-2 sentences summarizing work completed.  Include relevant links as needed.
- What's happening this week?
  - Provide 1-2 sentences summarizing work completed.  Include relevant links as needed.
  - Mention counterpart absences if applicable.
- Things to be aware of
  - If members are pulled in to incidents or other unrelated work.
  - Service problems or work that could impact other services
  - Link discussions regarding the future of the service here.

## Best practices

### Pairing with Stage Group

It is encouraged to perform pairings between the Practices team members and their assigned Stage Group team. This provides multiple immediate benefits:

- It allows to easily spread knowledge that can be of immediate benefit.
- It helps build a stronger relationship.
- It allows to easily identify and discuss opportunities for improvement in the
product.

Both the Practices team member and their assigned Stage Group team members are encouraged to reach out to the respective counterpart to ask whether they have room to work on a specific issue together.
Any identified improvements should be documented by creating issues or creating merge requests.

### Stage Group Weekly meetings

Members of the Practices team are encouraged to identify and attend one or more of their Stage Group's Weekly meetings:

- Share early feedback between the teams.
- Identify potential areas of collaboration where both teams can benefit from each other's knowledge.
- Ask and answer questions synchronously and efficiently in a meeting's setting.
- Stay up to date with the challenges, upcoming due dates and deliverables of the Stage Group.

### Issue boards and projects

Issues for Practices team can be found in the following projects:

### Recurring meetings

| Meeting | Purpose |
| :-------- | :---- |
| Biweekly sync (rotate EMEA/APAC/AMER) | Share news and information and provide an opportunity for people on the team to escalate concerns. |
| Retrospective (weekly) | Discuss what went well, not so well and opportunities for improvements. |
| Roadmap (monthly) | Discuss the vision and roadmap check-in |

### Standups

#### Async Daily Standups

The purpose of the daily standup is to allow team members to have visibility into what everyone else is doing,
provide an avenue for asking and offering help.
We use [geekbot](https://geekbot.com/) integrated with Slack.

#### Async Issue Updates

The purpose of daily updates is to inspect progress and adapt upcoming planned work as necessary.
In an all-remote culture, we keep the updates asynchronous and put them directly in the issues.

The async daily update communicates the progress and confidence using an issue comment.
A daily update may be skipped if there was no progress.

#### Epic weekly updates

A weekly async update should be added to epics related to quarter goals and to epics actively being worked on as per the format in [Project Epic template](/handbook/engineering/infrastructure/team/reliability/projects.html#project-epic-template)
The update should provide an overview of the progress across the work in progress. Consider adding an update if epic is blocked, if there are competing priorities, and even when not in progress.

### Roadmap

- Team's roadmap goes here

### Demos

- Demos go here
