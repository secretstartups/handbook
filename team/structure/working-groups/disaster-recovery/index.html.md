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

| Property        | Value            |
|-----------------|------------------|
| Date Created    | November 11, 2020 |
| End Date        | TBD              |
| Slack           | [#wg_disaster-recovery](https://gitlab.slack.com/archives/C01D6Q0DHAL) (only accessible from within the company) |
| Google Doc      | [Working Group Agenda](https://docs.google.com/document/d/1FOvwdwV7ncxTurctPFYYRSNLL1qFqCkSifdY_MiL5DY/edit) (only accessible from within the company) |
| Issue Board     | [Working Group Issue Board](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/boards/2230578?label_name[]=wg-disaster-recovery)  |
| Epic            | [Link](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/371) |

### Charter

This working group will determine what is needed to introduce a disaster recovery mechanism for GitLab.com, and what effort is necessary to leverage GitLab Geo as a mechanism for building reliable and predictable disaster recovery at the largest scale.

### Scope and Definitions

In the context of this working group:

1. **Recovery Point Objective (RPO)** : targeted duration of time in which data might be lost due to a major incident.
1. **Recovery Time Objective (RTO)** : targeted duration of time and service level within which a business process must be restored
after a disaster to avoid unacceptable consequences of a break in business continuity.

This working group is working towards [the proposed targets for both RPO and RTO](/handbook/engineering/infrastructure/product-management/proposals/disaster-recovery/#proposal).

### Sequence Order Of Deliverables

Planned:

1. Set up a multi-node Geo site on staging for the next iterations of failover tests.
1. Define a roadmap containing identified gaps and what is needed to provide the necessary failover functionality for GitLab.com production scale.
1. Regularly plan and execute failover tests on the staging secondary Geo site.
1. Demonstrate ability to execute a successful full failover of Staging.
1. A design of how GitLab Geo would be used in production in the form of a blueprint and readiness review.
1. Ensure that the cost is kept in check with the proposed design.
1. Decide on go/no-go for production rollout based on the proposed design.
1. Create and update [a single handbook page](/handbook/engineering/infrastructure/production/architecture/disaster-recovery.html), and deprecate resources in other locations.

Completed:

1. **2020-11-30** Plan and execute a test of a staging failover leveraging GitLab Geo by 2020-11-30 with minimal disruption to the existing deployment and testing processes.
1. **2021-01-13** Execute a follow up test of a staging failover, automating the testing and tooling processes
1. Generated a proposal and received approval for building out [a staging secondary site](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/12088#note_462334229)
1. [Evaluated the cost impact and received approval for a secondary site for production starting September 2021](https://gitlab.com/gitlab-com/gl-infra/mstaff/-/issues/34).
1. [Defined the DR flow on GitLab.com and the need to find a balanced solution to ensure a fully operational site after failover](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/12642)

## Roles and Responsibilities

| Working Group Role                       | Person                           | Title                                                           |
|------------------------------------------|----------------------------------|-----------------------------------------------------------------|
| Executive Stakeholder                    | Steve Loyd                       | VP of Infrastructure                                            |
| Facilitator/DRI                          | Brent Newton                     | Director of Infrastructure, Reliability                         |
| Functional Lead                          | Andrew Thomas                    | Principal Product Manager, Enablement                           |
| Functional Lead                          | Fabian Zimmer                    | Senior Product Manager, Geo                                     |
| Member                                   | Chun Du                          | Director of Engineering, Enablement                             |
| Member                                   | Davis Townsend                   | Data Analyst, Infrastructure                                    |
| Member                                   | Nick Nguyen                      | Backend Engineering Manager, Geo                                |
| Member                                   | Nick Westbury                    | Senior Software Engineer in Test, Geo                           |

## Related Links

- [Disaster Recovery at GitLab](https://gitlab.com/gitlab-com/gl-infra/readiness/-/blob/master/library/disaster-recovery/index.md)
- [GitLab.com Disaster Recovery Proposal](/handbook/engineering/infrastructure/product-management/proposals/disaster-recovery/index.html)
