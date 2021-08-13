---
layout: markdown_page
title: "Frontend Observability Working Group"
description: "The frontend observability working group aims to define and create a mechanism for frontend observability at GitLab"
canonical_path: "/company/team/structure/working-groups/frontend-observability/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property | Value |
|-|-|
| Date Created | 2021-07-14 |
| End Date | TBD |
| Slack | [#wg_frontend-observability](https://gitlab.slack.com/archives/C0265BTH1EV) (only accessible from within the company) |
| Google Doc | [Working Group Agenda](https://docs.google.com/document/d/1GuW6_IyYgSTi6IFI2adc3lrOJTfVoATkF2maZ5lToqg) (only accessible from within the company) |

### Charter

This working group will co-ordinate the organization of the effort to develop a frontend observability framework for Gitlab and establish guidelines for its usage. There is currently no method to instrument the frontend for the purposes of monitoring performance, especially across a range of devices and content. Error monitoring is possible but is mostly unused. This group will explore, define, and coordinate the development of system to make this instrumentation possible and document recommendations for use.

### Scope and Definitions

This group will focus on creating a method for sending browser performance data to a frontend stats gateway that will allow the metrics to be accessed via our system, like the current backend metrics. Determining the details of this is part of the remit. Once this exists, the group will be responsible for documenting its use, as well as usage recommendations for error monitoring. This will allow frontend engineers to understand the performance of their code in various contexts and add another source of data to help find issues when new features are rolled out.

Stakeholders for this project include frontend engineers and SREs.

This group will not focus on instrumentation around user actions for product reasons; this is covered by Snowplow and has a different use case.

#### Definitions
* **Frontend Observability** describes the process of being able to answer questions about the performance of frontend code "in the wild". It is provided via the instrumentation of frontend Javascript. [This is a nice talk covering what it can mean](https://www.youtube.com/watch?v=VA0b6v9vaEM), although the goals of this group will be focused around performance and errors.

### Exit Criteria

This working group will have fulfilled its purpose when:

* The `@sentry/browser` package is upgraded to version `6.10.0` or higher
* Sentry is configured to track and report frontend errors reliably
* Sentry is configured to monitor our performance with performance tracing
* We have decided what client performance data to send to Prometheus
* The aforementioned client performance data is sent to and tracked in Prometheus
* A triaging / diagnosing process is created for sentry errors
* Documentation is written that allows other frontend engineers to contribute

## Roles and Responsibilities

The functional leads will be responsible for:

* Representing the needs of individual stakeholders in their department/sub-dept
* Gathering and consolidating feedback on specific proposals from their department/sub-dept
* Communicating the output from the working group (if any) and answering questions from their dept/sub-dept

Ideally the functional lead is someone who is an IC that might be affected by the policy put in place. but anyone capable of representing a department or sub-department in the fashion mentioned above is welcome.

| Working Group Role | Person | Stakeholder Department | Title |
|-|-|-|-|
| Executive Sponsor | Tim Zallmann |  | Senior Director |
| Facilitator | Sam Beckham | Frontend:Verify | Frontend Engineering Manager |
| Functional Lead | Sarah Groff Hennigh-Palermo | Frontend:Verify::Pipeline Authoring | Senior FE Engineer |
| Functional Lead | Drew Cimino | Backend:Verify::Testing | Backend Engineer |
| Functional Lead | Andrew Newdigate | Infrastructure | Distinguished Engineer |
| Member | José Vargas López | Frontend:Verify::Pipeline Execution | Senior FE Engineer |
| Member | Thomas Randolph | Frontend:Create::Code Review | Senior FE Engineer |
| Member | Daniel Fosco | Design:Release::Release | Senior Product Designer |
| Member | Marius Bobin | Backend:Verify::Pipeline Execution | Senior Product Designer |
| Member | Miguel Rincon | Frontend:Verify::Runner | Senior FE Engineer |
| Member | Dov Herskhovitch | Product Manager:Verify::Pipeline Authoring | Senior Product Manager |
