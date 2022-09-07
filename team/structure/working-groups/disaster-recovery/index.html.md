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

### Charter

The Disaster Recovery Working Group will determine the work needed to [improve the disaster recovery mechanism for GitLab SaaS Products](https://app.ally.io/objectives/2228872?skipQuickView=true), and the effort is necessary to build a reliable and predictable disaster recovery at the largest scale, leveraging existing tools.

### Scope and Definitions

In the context of this working group:

1. **Recovery Point Objective (RPO)**: target duration of time in which data might be lost due to a major incident.
1. **Recovery Time Objective (RTO)**: target duration of time and service level within which a business process must be restored after a disaster to avoid unacceptable consequences of a break in business continuity.

This working group is working towards [the proposed targets for both RPO and RTO](/handbook/engineering/infrastructure/product-management/proposals/disaster-recovery/#proposal).

### Sequence Order Of Deliverables

Planned:

1. Create and update [a single handbook page](/handbook/engineering/infrastructure/production/architecture/disaster-recovery.html), and deprecate resources in other locations.
1. [Define and clarify the FY24 recovery goals](https://app.ally.io/objectives/2228900?time_period_id=155987)
1. [Complete an iteration of DR testing using existing capabilities](https://app.ally.io/objectives/2235994?time_period_id=155987) (Epic: [gitlab.com&1900](https://gitlab.com/groups/gitlab-com/-/epics/1900)).
1. Define the strategy to deliver a short-term DR solution for GitLab.com and [incorporate work into the Reliability Cross-Functional Initiative](https://app.ally.io/objectives/2228902?time_period_id=155987)
1. Define a medium to long term strategy for DR capabilities for GitLab Dedicated and Pods via Geo.

## Roles and Responsibilities

| Working Group Role                       | Person                           | Title                                                           |
|------------------------------------------|----------------------------------|-----------------------------------------------------------------|
| Executive Stakeholder                    | Steve Loyd                       | VP of Infrastructure                                                  |
| Facilitator/DRI                          | Gerardo Lopez-Fernandez          | Engineering Fellow, Infrastructure                              |
| Functional Lead                          | Fabian Zimmer                    | Group Product Manager, Enablement                               |
| Member                                   | Chun Du                          | Director of Engineering, Enablement                             |
| Development DRI                          | Juan Silva                       | Fullstack Engineering Manager, Geo                              |
| Product Management DRI                   | Sampath Ranasinghe               | Senior Product Manager, Geo                                     |

## Related Links

- [Disaster Recovery at GitLab](https://gitlab.com/gitlab-com/gl-infra/readiness/-/blob/master/library/disaster-recovery/index.md)
- [GitLab.com Disaster Recovery Proposal](/handbook/engineering/infrastructure/product-management/proposals/disaster-recovery/index.html)
- [Q3 OKR - Improve SaaS Product Disaster Recovery](https://app.ally.io/objectives/2228872?skipQuickView=true)
- [DR presentation (internal)](https://docs.google.com/presentation/d/1-8KxO31IvOb7DYT3N0j8Add-3A0FZquIYQ2vjmLLU2s/edit#slide=id.g1319217f3a3_0_0)
