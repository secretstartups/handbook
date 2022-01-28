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
| Issue Board     | [Issue Board](https://gitlab.com/groups/gitlab-org/-/boards/363876?label_name[]=WorkingGroup::API)                                                |

## Goal

The GitLab API Vision Working Group aims to improve the current APIs and define their future evolution.

### Overview

We don't have a cohesive view between the REST and GraphQL APIs. We specify that the GraphQL API is the primary means of interacting programmatically with GitLab, but we often don't follow this criteria.

### Goals

This is a list of topics that we want to discuss:

- Responsibilities, Directly Responsible Individual, and technical experts. At the moment, the `Ecosystem:Integrations` group is the DRI of the APIs but there is also the `@graphql-experts` group.
- General vision of the GitLab API:
  - REST / GraphQL API consistency.
  - REST first vs. GraphQL first vs. another approach.
  - Define user personas and consumers: frontend, CLI tooling, etc.
  - Real-time data synchronization, as we are progressively moving towards more of a "SPA" frontend architecture.
- Review APIs:
  - General architecture.
  - Permissions and scopes.
  - Feature coverage.
  - Performance.
- Testing:
  - Coverage.
  - Automated testing.
  - Tools (eg. Postman collections).
- API deprecations life cycle and strategy:
  - REST v5 API or further iterations.
  - GraphQL deprecation process.
- API Standards, including OpenAPI specification.
- Documentation:
  - Improve current documentation.
  - Review the first-time API user experience.
  - Automation of the documentation.
- Learning and contributions:
  - Review contributors' documentation.
  - Create learning paths for team members, especially about GraphQL.

### Exit Criteria

- Define the vision of the GitLab API for the future years.
- Set the foundation of a cohesive development strategy going forward.
- Improve the API or capture the work needed to have a world-class API.
- Clarify the life cycle of the API.
- Improve the documentation of the API.
- Create learning paths and content to contribute to the API.

## Roles and Responsibilities

| Working Group Role    | Person               | Title                                                         |
|:----------------------|:---------------------|:--------------------------------------------------------------|
| Executive Stakeholder | Tim Zallmann         | Senior Director of Engineering, Dev                           |
| Facilitator           | Arturo Herrero       | Engineering Manager, Ecosystem:Integrations                   |
| Facilitator           | Grant Hickman        | Senior Product Manager, Ecosystem:Integrations                |
| Functional Lead       | Achilleas Pipinellis | Senior Technical Writer, Enablement                           |
| Functional Lead       | Andy Soiron          | Senior Backend Engineer, Ecosystem:Integrations               |
| Functional Lead       | Luke Duncalfe        | Senior Backend Engineer, Ecosystem:Integrations               |
| Member                | Alex Kalderimis      | Senior Backend Engineer, Ecosystem:Integrations               |
| Member                | Avielle Wolfe        | Acting Backend Engineering Manager, Verify:Pipeline Execution |
| Member                | Doug Stull           | Staff Fullstack Engineer, Growth:Expansion                    |
| Member                | Fabio Pitino         | Staff Backend Engineer, Verify:Pipeline Execution             |
| Member                | Frédéric Caplette    | Senior Frontend Engineer, Verify:Pipeline Authoring           |
| Member                | Kati Paizee          | Senior Technical Writer, Growth and Ecosystem                 |
| Member                | Laura Montemayor     | Backend Engineer, Verify:Pipeline Authoring                   |
| Member                | Markus Koller        | Backend Engineer, Ecosystem:Integrations                      |
| Member                | Natalia Tepluhina    | Staff Frontend Engineer, Plan:Project Management              |
| Member                | Grzegorz Bizon       | Principal Engineer, Verify                                    |
