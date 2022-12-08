---
layout: markdown_page
title: "ClickHouse Working Group"
description: "Learn more about the ClickHouse Datastore Working Group attributes, goals, roles and responsibilities."
canonical_path: "/company/team/structure/working-groups/clickhouse-datastore/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property        | Value           |
|-----------------|-----------------|
| Date Created    | 2022-12-01 |
| Target End Date | 2023-03-30 |
| Slack           | #wg_clickhouse_datastore (only accessible from within the company) |
| Google Doc      | [Agenda](https://docs.google.com/document/d/1ZZ7fE7s18Yxww9wp0-lO7mFxJmwop3pWvqINCQPNubA/edit#) (only accessible from within the company) |

### Context

[ClickHouse](https://clickhouse.com) is an open-source column-oriented database management system. It can efficiently filter, aggregate, and sum across large numbers of rows.

In FY23 ClickHouse was selected as GitLab's standard datastore for features with big data and insert-heavy requirements (e.g. Observability, Analytics, etc.)  ClickHouse is not intended to replace Postgres or Redis in GitLab's stack.

In FY23-Q2 the Monitor:Observability team developed and shipped a [ClickHouse data platform](https://gitlab.com/groups/gitlab-org/-/epics/7772) to store and query data for Error Tracking and other observability features.  Other teams have also begun to incorporate ClickHouse into their current or planned architectures.  

We want ensure teams can efficiently leverage the ClickHouse data platform when developing new features and that we can maintain and support this functionality effectively for SaaS and self-managed customers.




### Exit Criteria 

This Working Group has the following goals:

1. Develop & Socialize Architecture Strategy for ClickHouse usage
   1. Architecture Blueprint for ClickHouse usage within GitLab
   1. Supports all teams and reference architectures
   1. Provides guidance which sets expectations on scaling/clickhouse query design/debugging/guardrails/etc.  
   1. Rollout strategy (e.g. feature flags, would customers ever want to disable/remove it, etc.)


### Roles and Responsibilities

| Working Group Role    | Person                | Title                          |
|-----------------------|-----------------------|--------------------------------|
| Executive Sponsor     | Christopher Lefelhocz | VP of Development            |
| Facilitator | Sam Goldstein | Director of Engineering, Ops |
| Facilitator (backup) | Nick Nguyen | Senior Engineering Manager, Data Stores |
| Facilitator (backup) | Nicole Williams | Senior Engineering Manager, Monitor & Runner |
| Functional Lead - Analytics | Sebastian Rehm | Engineering Manager, Analytics:Product Intelligence  |
| Functional Lead - Optimize | Adam Hegyi | Staff Backend Engineer, Plan:Optimize |
| Functional Lead - ModelOps | Mon Ray| Engineering Manager, ModelOps |
| Functional Lead - Monitor | Mat Appelman | Principal Engineer, Monitor |
| Functional Lead - Distribution | Dmytro Makovey | Senior Backend Engineer, Distribution:Build|
| Functional Lead - Quality |  | |
| Functional Lead - Infrastructure | Reuben Pereira | Senior Backend Engineer, Delivery:System |
| Functional Lead - Product | Dilan Orrino | Senior Product Manager, Enablement:Distribution |
| Member | Nick Nguyen | Senior Engineering Manager, Datastores |
| Member | Pavel Shutsin | Senior Backend Engineer, Plan:Optimize |
| Member | Dennis Tang | Engineering Manager, Analyze:Product Analytics |
| Member | Max Woolf            | Senior Backend Engineer, Analyze:Product Analytics |
| Member | Mikołaj Wawrzyniak   | Staff Backend Engineer, Analyze:Product Intelligence |
| Member | Piotr Skorupa   | Backend Engineer, Analyze:Product Intelligence |
| Member | Alex Ives | Engineering Manager, Database (PostgreSQL) |
| Member | Brandon Labuschagne | Engineering Manager, Plam:Optimize |
| Member | Dylan Griffith | Principal Engineer, Datastores |
| Member | Nathan Rosandich | Engineering Manager, Govern:Compliance |
| Member | João Pereira | Staff Backend Engineer, Package:Container Registry |
| Member | Haim Snir | Senior Product Manager, Plan:Optimize |
| Member | Lucas Charles | Staff Backend Engineer, Secure::Static Analysis |
| Member | Kamil Niechajewicz | Engineering Manger, Growth:Acquisition  |
| Member | Doug Stull | Staff FullStack Engineer, Growth:Acquisition  |
| Member | David Curlewis | Engineering Manager, Reliability |
| Member | Nicholas Klick | Engineering Manager, Observability |
| Member | Arun Sori | Senior Backend Engineer, Monitor:Observability |
