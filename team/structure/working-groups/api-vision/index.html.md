---
layout: markdown_page
title: "API Vision"
description: "The GitLab API Vision Working Group aims to improve the current APIs and define their future evolution."
canonical_path: "/company/team/structure/working-groups/api-vision/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property        | Value                                                                                                                                             |
|:----------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|
| Date Created    | February 07, 2022                                                                                                                                 |
| Target End Date | -                                                                                                                                                 |
| Slack           | [#wg_api_vision](https://gitlab.slack.com/archives/C030DMJE0SZ) (only accessible from within the company)                                         |
| Google Doc      | [Working Group Agenda](https://docs.google.com/document/d/1o4Tq84Lt5VnxrVZmhlP0u4qiErzC1MtVfivnIc6_29E) (only accessible from within the company) |
| Issue Board     | [Issue Board](https://gitlab.com/groups/gitlab-org/-/boards/3929903)                                                |

## Goal

The GitLab API Vision Working Group aims to improve the current APIs and define their future evolution.

### Overview

We don't have a cohesive view between the REST and GraphQL APIs. We specify that the GraphQL API is the primary means of interacting programmatically with GitLab, but we often don't follow this criteria. Both APIs cover a different set of features, but none is feature-complete.

### Goals

This is a list of topics that we want to discuss:

- Responsibilities, Directly Responsible Individual, and technical experts. At the moment, the `Ecosystem:Integrations` group is the DRI of the APIs but there is also the `@graphql-experts` group.
- General vision of the GitLab API:
  - REST / GraphQL API consistency.
  - REST first vs. GraphQL first vs. another approach.
  - Define user personas and consumers: frontend, CLI tooling, etc.
- Review APIs:
  - General architecture.
  - Permissions and scopes.
  - Feature coverage.
  - Performance.
- Testing:
  - Coverage.
  - Automated testing.
  - Tools (eg. Postman collections).
- API deprecations lifecycle and strategy:
  - REST v5 API or further iterations.
  - GraphQL deprecation process.
- API standards, including OpenAPI specification.
- Documentation:
  - Improve current documentation.
  - Review the first-time API user experience.
  - Automation of the documentation.
  - Full catalog of all public and internal APIs.
- Learning and contributions:
  - Review contributors' documentation.
  - Create learning paths for team members, especially about GraphQL.

### Exit Criteria

- Define the vision of the GitLab API for the future years.
- Set the foundation of a cohesive development strategy going forward.
- Improve the API or capture the work needed to have a world-class API.
- Clarify the lifecycle of the API.
- Improve the documentation of the API.
- Create learning paths and content to contribute to the API.
- Define minimum levels of performance and stability, with appropriate checks and monitoring.
- Refresh personas to account for users of our APIs.

## Roles and Responsibilities

| Working Group Role      | Username        | Person                                                                   | Title                                                           |
| :---------------------- | :-------------- | ------------------------------------------------------------------------ | :-------------------------------------------------------------- |
| Executive Stakeholder   | @timzallmann    | [Tim Zallmann](https://about.gitlab.com/company/team/#timzallmann)       | Senior Director of Engineering, Dev                             |
| Facilitator             | @arturoherrero  | [Arturo Herrero](https://about.gitlab.com/company/team/#arturoherrero)   | Engineering Manager, Ecosystem:Integrations                     |
| Facilitator             | @g.hickman      | [Grant Hickman](https://about.gitlab.com/company/team/#g.hickman)        | Senior Product Manager, Ecosystem:Integrations                  |
| Functional Lead         | @.luke          | [Luke Duncalfe](https://about.gitlab.com/company/team/#.luke)            | Senior Backend Engineer, Ecosystem:Integrations                 |
| Functional Lead         | @alexkalderimis | [Alex Kalderimis](https://about.gitlab.com/company/team/#alexkalderimis) | Senior Backend Engineer, Ecosystem:Integrations                 |
| Functional Lead         | @axil           | [Achilleas Pipinellis](https://about.gitlab.com/company/team/#axil)      | Senior Technical Writer, Enablement                             |
| Functional Lead         | @Andysoiron     | [Andy Soiron](https://about.gitlab.com/company/team/#Andysoiron)         | Senior Backend Engineer, Ecosystem:Integrations                 |
| Member                  | @grzesiek       | [Grzegorz Bizon](https://about.gitlab.com/company/team/#grzesiek)        | Principal Engineer, Verify                                      |
| Member                  | @f_caplette     | [Frédéric Caplette](https://about.gitlab.com/company/team/#f_caplette)   | Senior Frontend Engineer, Verify:Pipeline Authoring             |
| Member                  | @bmarjanovic    | [Bojan Marjanovic](https://about.gitlab.com/company/team/#bmarjanovic)   | Senior Backend Engineer, Ecosystem:Integrations                 |
| Member                  | @kerrizor       | [Kerri Miller](https://about.gitlab.com/company/team/#kerrizor)          | Senior Backend Engineer, Create:Code Review                     |
| Member                  | @lauraX         | [Laura Montemayor](https://about.gitlab.com/company/team/#lauraX)        | Backend Engineer, Verify:Pipeline Authoring                     |
| Member                  | @nagyv-gitlab   | [Viktor Nagy](https://about.gitlab.com/company/team/#nagyv-gitlab)       | Senior Product Manager, Configure                               |
| Member                  | @kpaizee        | [Kati Paizee](https://about.gitlab.com/company/team/#kpaizee)            | Senior Technical Writer, Growth and Ecosystem                   |
| Member                  | @fabiopitino    | [Fabio Pitino](https://about.gitlab.com/company/team/#fabiopitino)       | Staff Backend Engineer, Verify:Pipeline Execution               |
| Member                  | @dstull         | [Doug Stull](https://about.gitlab.com/company/team/#dstull)              | Staff Fullstack Engineer, Growth:Expansion                      |
| Member                  | @ntepluhina     | [Natalia Tepluhina](https://about.gitlab.com/company/team/#ntepluhina)   | Staff Frontend Engineer, Plan:Project Management                |
| Member                  | @avielle        | [Avielle Wolfe](https://about.gitlab.com/company/team/#avielle)          | Backend Engineer, Verify:Pipeline Authoring                     |
