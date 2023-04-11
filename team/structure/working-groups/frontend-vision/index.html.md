---
layout: markdown_page
title: "Frontend Vision Group"
description: "Write guidelines about frontend architecture practices we want to have on GitLab frontend in three years"
canonical_path: "/company/team/structure/working-groups/frontend-vision/"
---

## On this page

{:.no_toc}

- TOC
  {:toc}

## Attributes

| Property          | Value                                                                                                                                     |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Date Created      | 2023-03-27                                                                                                                                |
| Target End Date   | TBD                                                                                                                                       |
| Slack             | #wg_frontend-vision (only accessible from within the company)                                                                             |
| Google Doc        | [Agenda](https://docs.google.com/document/d/1H0td5YZJROQG_aOkGJuIpXqxi4UEpiuCufvEAc27kMo/edit?usp=sharing) (only accessible from within the company) |
| Overview & Status | See [Exit Criteria Progress](#exit-criteria-progress)                                                                                     |

### Context

Currently, our frontend development guidelines only document features and practices _we are currently using in production_. There is no clear documentation about what we see as a desired state of the frontend at GitLab, nor guidelines regarding practices we plan to deprecate. It would be nice to define a set of high-level expectations regarding frontend architecture, tech stack, and best practices as we see them in the scope of three years from now. Here is a non-exhaustive list of topics we should discuss:

- Single-Page Application vs Multi-Page Application vs hybrid approach (multiple SPA's that handle some functionality).
- Server-Side rendering
- Technical stack (frontend framework, state management approach, testing levels and tools)
- Real-time features, optimistic updates, frontend caching and "snappy GitLab experience" overall
- Exception process when certain group requires the tool that deviates from the main strategy

### Exit Criteria

1. Add introduction page to frontend documentation, explaining direction and high-level overview of the frontend codebase/architecture.
  1. Include evolution of codebase over three year horizon.
  1. List frontend technologies used and the design principals that guide the frontend team's work.
  1. Explicitely define deprecation/removal plans, including why these features are being deprecated.
  1. Communicate outcome to the broader frontend functional group.
    1. Discuss and document communication plan, including frequency of updates from working group.
1. Document usage of reusable components.
  1. Determine plan around vue-shared.
  1. Determine and document guide on creating/using reusable components.
1. [Determine DRIs around specific parts of frontend documentation.](https://gitlab.com/gitlab-org/gitlab/-/issues/381536)
1. Complete an update to the frontend RFC process.
  1. Determine how the exception to the main strategy process will work, and if there is a need for a separate area for "wild" ideas.
  1. Determine evaluation and decision-making process for RFCs.

#### Exit Criteria Progress

| Criteria                                                                                      | Start Date | Completed Date | Progress | DRI     |
| --------------------------------------------------------------------------------------------- | ---------- | -------------- | -------- | ------- |
| Add guidelines about frontend vision                                                          |            |                | 0%       | `@you?` |

### Roles and Responsibilities

| Working Group Role | Person                | Title                                                        |
| ------------------ | --------------------- | ------------------------------------------------------------ |
| Executive Sponsor  | Christopher Lefelhocz | VP of Development (Delegating to Tim Zallmann)               | 
| Executive Sponsor  | Tim Zallmann          | Senior Director of Engineering                               |
| Facilitator        | Donald Cook           | Engineering Manager, Plan:Project Management                 |
| Functional Lead    | Natalia Tepluhina     | Principal Engineer, Plan                                     |
| Member             | Vitaly Slobodin       | Staff Frontend Engineer, Fulfillment                         |
| Member             | Paul Slaughter        | Staff Frontend Engineer, Create:Editor                       |
| Member             | Mark Florian          | Senior Frontend Engineer, Ecosystem:Foundations              |
| Member             | Lukas Eipert          | Senior Frontend Engineer, Ecosystem:Foundations              |
| Member             | Frédéric Caplette     | Senior Frontend Engineer, Verify:Pipeline Authoring         |
| Member             | Andrei Zubov          | Senior Frontend Engineer, Release                            |
| Member             | Stanislav Lashmanov   | Senior Frontend Engineer, Create:Source Code                 |
