---
layout: markdown_page
title: "Disaster Recovery Working Group"
description: "The Disaster Recovery Working Group will determine what is needed to introduce a disaster recovery mechanism for GitLab.com."
canonical_path: "/company/team/structure/working-groups/disaster-recovery/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property       | Value                                                        |
| -------------- | ------------------------------------------------------------ |
| Date Restarted | August 1, 2022                                               |
| Date Created   | November 11, 2020                                            |
| End Date       | TBD                                                          |
| Slack          | [#wg_disaster-recovery](https://gitlab.slack.com/archives/C01D6Q0DHAL) (only accessible from within the company) |
| Google Doc     | [Working Group Agenda](https://docs.google.com/document/d/1dLgmLlvET5WyWF0CpX5JUxiyQKyDzctocs7unwLueY8) (only accessible from within the company) |
| Issue Board    | [Working Group Issue Board](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/boards/2230578?label_name[]=wg-disaster-recovery) |
| Epic           | [Link](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/371) |
| Overview & Status | See [Epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/371) |

### Charter

The Disaster Recovery Working Group will determine the work needed to [improve the disaster recovery mechanism for GitLab SaaS Products](https://app.ally.io/objectives/2228872?skipQuickView=true), and the effort is necessary to build a reliable and predictable disaster recovery at the largest scale, leveraging existing tools.

### Scope and Definitions

In the context of this working group:

1. **Recovery Point Objective (RPO)**: maximum duration of time in which data might be lost due to an incident.
1. **Recovery Time Objective (RTO)**: maximum duration of time that a service is unavailable due to an incident.

### Exit criteria

The exit criteria and target goals for the working group are defined in this internal only document: https://docs.google.com/document/d/1KYHv6c7FSOGzREqzvi8X4vCWkei0fuSPQJxbiw9NMnQ/edit#heading=h.jphyi4qgv8ip

### Sequence Order Of Deliverables and Exit Criteria

Planned:

1. Create and update [a single handbook page](https://internal.gitlab.com/handbook/engineering/gitlab-com-disaster-recovery), and deprecate resources in other locations. **DRI:** Fabian Zimmer
1. [Define and clarify the FY24 recovery goals](https://app.ally.io/objectives/2228900?time_period_id=155987) **DRI:** Steve Loyd
1. [Complete an assessment of zonal outage and identify next step iterations towards 4 hour recovery goal](https://app.ally.io/objectives/2235994?time_period_id=155987) (Epic: [gitlab.com&1900](https://gitlab.com/groups/gitlab-com/-/epics/1900)). **DRI:** John Jarvis
1. Define a medium to long term strategy for DR capabilities for GitLab Dedicated and Pods via Geo.  **DRI:** Sampath Ranasinghe 

## Roles and Responsibilities

| Working Group Role     | Person                  | Title                                          |
|------------------------|-------------------------|------------------------------------------------|
| Executive Stakeholder  | Jörg Heilig             | CTO                                            |
| Facilitator/DRI        | Andras Horvath          | Engineering Manager, Gitaly                    |
| Product Management DRI | Mark Wood               | Senior Product Manager, Gitaly                 |
| Member                 | Gerardo Lopez-Fernandez | Engineering Fellow, Infrastructure             |
| Member                 | Chun Du                 | Director of Engineering, Enablement            |
| Member                 | Juan Silva              | Fullstack Engineering Manager, Geo             |
| Member                 | Sampath Ranasinghe      | Senior Product Manager, Geo                    |
| Member                 | John Jarvis             | Staff SRE, Infrastructure                      |
| Member                 | Michele Bursi           | Engineering Manager, Delivery                  |
| Member                 | Sami Hiltunen           | Senior Backend Engineer, Gitaly                |
| Member                 | Joshua Lambert          | Director of Product Management, Enablement     |
| Member                 | Steve Azzopardi         | Staff SRE, Infrastructure.                     |
| Member                 | Fabian Zimmer           | Director of Product Management, SaaS Platforms |
| Member                 | Nick Westbury           | Senior Software Engineer in Test, Geo          |
| Member                 | Sean Carroll            | Engineering Manager, Source Code               |


## Related Links

- [Disaster Recovery at GitLab](https://gitlab.com/gitlab-com/gl-infra/readiness/-/blob/master/library/disaster-recovery/index.md)
- [Q1 OKR - Improve SaaS Disaster Recovery](https://gitlab.com/gitlab-com/gitlab-OKRs/-/work_items/122397485)
- [DR presentation (internal)](https://docs.google.com/presentation/d/1-8KxO31IvOb7DYT3N0j8Add-3A0FZquIYQ2vjmLLU2s/edit#slide=id.g1319217f3a3_0_0)
