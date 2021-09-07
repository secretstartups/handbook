---
layout: markdown_page
title: "Multi-Large Working Group"
description: "The charter of this working group is to improve the operational efficiency of running multiple, large, independent GitLab sites without needing linear growth on staffing."
canonical_path: "/company/team/structure/working-groups/multi-large/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property        | Value           |
|-----------------|-----------------|
| Date Created    | June 22, 2020 |
| End Date | TBD |
| Slack           | [#wg_multi-large](https://gitlab.slack.com/archives/C016JU3CZKJ) (only accessible from within the company) |
| Google Doc      | [Working Group Agenda](https://docs.google.com/document/d/1dbJZNAiTVvwJ9ICu10FpxP9AaAVDXDVkATmpzSONztE/edit#) (only accessible from within the company) |
| Issue Board     | TBD             |

### Charter

The charter of this working group is to improve the operational efficiency of running multiple, large, independent GitLab sites without needing linear growth on staffing.

### Scope and Definitions 

In this context,

*  **GitLab sites** means GitLab instances under a GitLab domain managed by GitLab (i.e, not operated on behalf of customers)
   *  Automation developed should be applicable and usable to self-managed installations in the future
   *  The scope excludes customer instances to focus on the problem of running multiple large sites fully under our control, where we are the ultimate DRIs for what policies and solutions we adopt as a company to apply to those instances.
*  **Multiple** means up to 10 primary instances
* **large** means instances that start at the [1K users Reference Architecture](https://docs.gitlab.com/ee/administration/reference_architectures/1k_users.html) and can scale beyond the [50K users Reference Architecture](https://docs.gitlab.com/ee/administration/reference_architectures/50k_users.html) to **a million active users**
* **independent** means they're fully isolated from each other, they don't have a common virtual operations centre

An example of this type of instance would include GitLab.eu. The working group may possibly consider GitLab Federal, although this has to be an explicit decision, as operating federal entails clearances and such.

#### Sequence Order Of Deliverables

The following list outlines the order of deliverables per Multi-large Working Group Agenda on [2020-07-13](https://docs.google.com/document/d/1dbJZNAiTVvwJ9ICu10FpxP9AaAVDXDVkATmpzSONztE/edit#bookmark=id.dej0jql4zr9f), and then further refined on [2021-02-01](https://docs.google.com/document/d/1dbJZNAiTVvwJ9ICu10FpxP9AaAVDXDVkATmpzSONztE/edit?ts=60183e13#bookmark=id.ncj5do925oqy). The goal of this list is to define deliverables for the Working Group such that its charter can be finite.

##### Deprecate NFS

1. Make Web/API work without NFS ([issue tracker](https://gitlab.com/groups/gitlab-org/-/epics/1316#note_377457528))
1. Make CI/CD live traces work without NFS ([issue tracker](https://gitlab.com/groups/gitlab-org/-/epics/3791))
1. Make Pages work without NFS (Scalability: [https://gitlab.com/groups/gitlab-org/-/epics/3980](https://gitlab.com/groups/gitlab-org/-/epics/3980))

##### Helm Charts

1. Move Web/API nodes of .com to Helm charts ([issue tracker](https://gitlab.com/groups/gitlab-org/-/epics/5327))
1. Move Pages nodes of .com to Helm Charts ([issue tracker](https://gitlab.com/groups/gitlab-org/-/epics/5326))

##### Stateful Nodes

1. Gitaly to K8s
1. Redis to K8s

Note that not all stateful nodes are scoped here, notably PostgreSQL, and this is intentional. 

### Horizontal Scaling Across Multiple Instances

For clarification, this working group is focused on horizontal scaling across multiple GitLab sites. Single-site scaling (e.g., GitLab.com) is already covered under the charter of the [Scalability Team](https://about.gitlab.com/handbook/engineering/infrastructure/team/scalability/).

## Roles and Responsibilities

| Working Group Role                       | Person                          | Title                                    |
|------------------------------------------|---------------------------------|------------------------------------------|
| Executive Stakeholder                    | Steve Loyd  | VP of Infrastructure |
| Facilitators                              | Chun Du , Amy Phillips  | Director of Engineering, Enablement and Engineering Manager, Delivery             |
| Functional Lead                          | Nailia Iskhakova                | Software Engineer in Test, Database      |
| Functional Lead                          | Andrew Thomas                    | Principal Product Manager, Enablement  |
| Functional Lead                          | Gerardo "Gerir" Lopez-Fernandez | Engineering Fellow, Infrastructure       |
| Member                                   | Chun Du                         | Director of Engineering, Enablement      |
| Member                                   | Steven Wilson                   | Manager, Distribution                    |
| Member                                   | Jason Plum                      | Staff Engineer, Distribution             |
| Member                                   | Tanya Pazitny                   | Quality Engineering Manager, Enablement  |
| Member                                   | Mek Stittri                     | Director of Quality Engineering          |
| Member | Marin Jankovski | Sr Engineering Manager, Infrastructure, Delivery & Scalability |
| Member | Brent Newton | Director, Infrastructure, Reliability Engineering |
| Member | Dilan Orrino | Senior Prouct Manager, Distribution |
| Member | Mark Wood | Senior Prouct Manager, Create:Gitaly |
| Member | TBD | Engineering Manager, Gitaly |

## Related Links

- [Working group kick off meeting](https://www.youtube.com/watch?v=TguakWdOPlw&feature=youtu.be)
- [Defining Day-2 Operations - DZone Agile](https://dzone.com/articles/defining-day-2-operations)
- [Scalability Team - GitLab](https://about.gitlab.com/handbook/engineering/infrastructure/team/scalability/)
