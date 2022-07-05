---
layout: markdown_page
title: "Next Architecture Workflow"
description: "The charter of this working group is to define and implement the next iteration of the Architecture Evolution Workflow."
canonical_path: "/company/team/structure/working-groups/next-architecture-workflow/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property        | Value           |
|-----------------|-----------------|
| Date Created    | July 1, 2022 |
| End Date        | September 31, 2022 |
| Slack           | [#architecture](https://gitlab.slack.com/archives/CJ4DB7517) (only accessible from within the company) |
| Google Doc      | [Working Group Agenda](https://docs.google.com/document/d/1n1pslXw6yeoqRmsWGi4VYu9bPg8k46IIXqdUTJR8HSU/edit) (only accessible from within the company) |
| Issue Board     | TBD             |

### Exit Criteria

The charter of this working group is to define and implement the next iteration of the
[Architecture Evolution Workflow](/handbook/engineering/architecture/workflow/):

1. Define a general purpose "enhancement proposal" process that is practical for all non-trivial changes
1. Develop strategy for incorporating the process into Product planning and prioritization
1. Lower the entry barriers for proposal creation via automation tooling and template guides
1. Identify cross-functional touchpoints and consolidate upstream processes like
[production readiness](/handbook/engineering/infrastructure/production/readiness/), 
[AppSec reviews](/handbook/engineering/security/security-engineering-and-research/application-security/runbooks/review-process),
and [creation of release posts](/handbook/marketing/blog/release-posts/)

### Context

- The [Architecture Evolution Workflow](/handbook/engineering/architecture/workflow/) is complex,
  spans multiple tools and projects, and is not something external contributors can participate in
- [Architecture Blueprints](https://gitlab.com/gitlab-org/gitlab/-/tree/master/doc/architecture/blueprints)
  provide great context and detail, but they are completely disconnected from Product prioritization and
  thus rarely picked up into the workstream
- [Working Groups](/company/team/structure/working-groups/) involving technical initiatives have a low
  rate of success. Many _choose_ to produce blueprints as part of their exit criteria, but blueprints
  are not standard and do very little to ensure the work gets done
- [Next Prioritization](/company/team/structure/working-groups/next-prioritization/) aims to replace
  [Engineering Allocations](https://about.gitlab.com/handbook/engineering/#engineering-allocation)
  but is not prescriptive regarding how efforts involving engineers across multiple Product stages
  will be coordinated

The following recording from the
[Rate Limit Architecture](/company/team/structure/working-groups/rate-limit-architecture/) working group
included some organic discussion around this topic as we attempt to redefine exit criteria that will
result in a successful implementation after the working group concludes:

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/um9deEVp618?start=1961" frameborder="0" allowfullscreen="true"></iframe>
</figure>

> *Note:* the video is private. Try [this link](https://www.youtube.com/watch?v=um9deEVp618&t=1961s)
> if the embedded video is not playable.

### Prior Efforts

#### Architecture Kickoff Working Group

The [Architecture Kickoff](/company/team/structure/working-groups/architecture-kickoff/) working group
was primarily concerned with [defining a 3/6/12-month technical roadmap](/handbook/engineering/architecture/roadmap/).
This working group picks up by further iterating on the process for maintaining this roadmap over time
and better facilitating its implementation.

#### Special Interest Groups

We have previously attempted to introduce a new organizational structure for facilitating cross-functional
work in the form of Special Interest Groups (SIGs)
(see [`gitlab-com/www-gitlab-com!104378`](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/104378)),
but it was difficult to demonstrate incremental value with this approach.

We hope to see more success by focusing on the consolidation and streamlining of existing process
and improving the success rate of working groups in their current form first.

## Roles and Responsibilities

| Working Group Role                       | Person                          | Title                                    |
|------------------------------------------|---------------------------------|------------------------------------------|
| DRI                      | Marshall Cottrell | Principal, Strategy and Operations (Technical)            |
| Executive Stakeholder    | Eric Johnson | Chief Technology Officer |
| Member                   | Gerardo "Gerir" Lopez-Fernandez | Engineering Fellow, Infrastructure            |
| Member                   | Joshua Lambert | Director of Product, Enablement |
| Member                   | Sam Goldstein | Director of Engineering, Ops |
| Member                   | Andrew Newdigate | Distinguished Engineer, Infrastructure |
| Member                   | Kamil Trzciński      | Distinguished Engineer, Ops and Enablement |
| Member                   | Philippe Lafoucrière | Security Architect, Security |
| Member                   | Grzegorz Bizon | Principal Backend Engineer |
| Member                   | Lucas Charles | Staff Backend Engineer, Sec::Static Analysis |
