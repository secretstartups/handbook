---
layout: markdown_page
title: "Rate Limit Architecture Working Group"
description: "Learn more about the Rate Limit Architecture Working Group attributes, goals, roles and responsibilities."
canonical_path: "/company/team/structure/working-groups/rate-limit-architecture/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property        | Value           |
|-----------------|-----------------|
| Date Created    | 2022-04-27 |
| Target End Date | 2022-05-30 |
| Slack           | #wg_rate_limit_architecture (only accessible from within the company) |
| Google Doc      | Agenda (TBA) (only accessible from within the company) |

### Context

During FY23-Q1 we prioritized an engineering allocation for [Rate Limiting Across DevOps Platform](https://gitlab.com/gitlab-com/ops-sub-department/ops-engineering-management/-/issues/77) focused on identifying and addressing denial of service (DoS) vectors via rate and application limits.  So far that effort has been successful in addressing [dozens of DoS related issues](https://gitlab.com/dashboard/issues?scope=all&state=closed&label_name[]=availability%3A%3Alimit).  

In addition to addressing DoS vectors to ensure high availability we have goals around:

* consistent monitoring and alerting on limits
* consistent, comprehensive documentation of limits
* synchronization of GitLab.com limit settings with GitLab default limits

Currently there are multiple approaches to rate limiting documented in [GitLab application limits development documentation](https://docs.gitlab.com/ee/development/application_limits.html).

### Exit Criteria 

This Working Group has the following goals:

1. Develop a recommendation for the preferred way to implement application rate limits within GitLab
1. Document this recommendation for GitLab developers in an [Architecture Evolution Blueprint](/handbook/engineering/architecture/workflow/).
1. Document iterative project plan for short term, medium term, and long term rate limiting improvements
1. Determine organizational approach to funding effort on this work (e.g. new team, borrow, SIG, fan out, etc.)


### Roles and Responsibilities

| Working Group Role    | Person                | Title                          |
|-----------------------|-----------------------|--------------------------------|
| Executive Sponsor     | Christopher Lefelhocz | VP of Development            |
| Facilitator | Sam Goldstein | Director Engineering, Ops |
| Functional Lead | | |
| Functional Lead | | |
| Member | Grzegorz Bizon | Principal Engineer, Verify |
| Member | Fabio Pitino   | Staff Backend Engineer, Verify |
| Member | Quang-Minh Nguyen | Senior Backend Engineer, Scalability |
| Member | Liam McAndrew | Engineering Manager, Scalability |
| Member | Markus Koller | Senior Backend Engineer, Integrations |
| Member | Grant Hickman | Sr Product Manager, Integrations |


