---
layout: handbook-page-toc
title: "Data Team Calendar"
description: "GitLab Data Team Calendar"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---

This page describes in detail the proces of adding new data sources to the data warehouse. The data team embrace any initiative of adding new data sources towards our data warehouse. We envision that data could let towards value, but adding new data towards the data warehouse doenst go with no costs. 

Both the development (assigning resoucres from the data team, from other teams involved to support and also you as requestor) and keeping the data pipeline up and running (compute resources on source side and data warehouse, software licensing, incident management, montiroing etc..) cost time and or money. 

**Please, before requesting a new data source, take the following into account:**
- Is there a valid business case? 
    - Sometimes the business case is because its mandatory to comply to regulatory requirements
    - Sometimes this could be straightforward and value potential is clear above the investment costs. 
    - Most of the time it’s hard to quantify, because either the value is unsure or the cost are unsure. Feel free to have an open and honest discussion with the data team. We have the experience and could help with the justification. This does not necessarily need to be a scientific calculation.
- Adding a new data source to the data warehouse is not a 1 off exercise. As soon as the data is extracted to the data warehouse, on a regular cadence (once week, once a day, multiple times per day, etc..) data will be refreshed. This means something can happen or can go wrong after the implementation. We will need a DRI from the source side to support this process when needed.
- We are not done when data lands in the data warehouse. The data will land in the `raw` data layer, and this is not accessible by default for Sisense. Data will be loaded downstream into the Enterprise Dimensional Model via dbt. Follow up needs to take place, and will come on top of the process described on this page.
    - Downstream modelling could be handled by the business team, because we embrace contribution on our data platform. Please not that extensive knowledge is needed (dbt knowledge, data modelling knowledge)
    - Downstream modelling could be handled by the data team. Planning needs to take place and priorities are set in line with company priorities.
- The data platform needs to get access to the source system. Although this sounds obvious, this is not always straightforward. 

## New data source

For adding a new data source the workflow looks at this (note, this is the [existing workflow](/handbook/business-technology/data-team/how-we-work/#workflow-summary) we use for all our work and made explicit here in the context of adding a new data source.

Process for adding a new data source:

| Stage (Label)               | Responsible        | Description                                          | Completion Criteria                                                                                                    |
| --------------------------- | ------------------ | ---------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `workflow::1 - triage`      | Data               | New issue, being assessed                            | Item has enough information to enter problem validation.                                                               |
| `workflow::2 - validation`  | Data, Business DRI | Clarifying issue scope and proposing solution        | Solution defined with sign off from business owners on proposed solution that is valuable, usable, viable and feasible |
| `workflow::3 - scheduling`  | Data               | Waiting for scheduling                               | Item has a numerical milestone label                                                                                   |
| `workflow::4 - scheduled`   | Data               | Waiting for development                              | Data team has started development                                                                                      |
| `workflow::5 - development` | Data               | Solution is actively being developed                 | Initial engineering work is complete and review process has started                                                    |
| `workflow::6 - review`      | Data               | Waiting for or in Review                             | MR(s) are merged. Issues had all conversations wrapped up.                                                             |
| `workflow::X - blocked`     | Data, Business DRI | Issue needs intervention that assignee can't perform | Work is no longer blocked                                                                                              |

### workflow::1 - triage

### workflow::2 - validation

### workflow::3 - scheduling

### workflow::4 - scheduled

### workflow::5 - development

### workflow::6 - review

### workflow::X - blocked


- Create a [new issue using the New Data Source Template](https://gitlab.com/gitlab-data/analytics/-/issues/new?issuable_template=New%20Data%20Source) in the Analytics project requesting for the data source to be added:
    - Document what tables and fields are required
    - Document the questions that this data will help answer
- Create an issue in the [Security project](https://gitlab.com/gitlab-com/gl-security/security-department-meta/issues/) and cross-link to the Analytics issue.
    - Tag the Security team `gitlab-com/gl-security`
