---
layout: handbook-page-toc
title: "Datastores Team"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Who We Are (WIP)

The Datastores team owns our persistent storage platforms in GitLab, namely our PostgreSQL databases (our main priority) and our Gitaly backend service.

PostgreSQL Databases we look after in Gitlab:
- Staging cluster.
- Production cluster.
- Archive and Delayed production replicas.
- Cloud SQL cluster in ops.gitlab.net.
- Prefect Cloud SQL databases, staging and production clusters.

Other components we take care of, as part of the Database ecosystem in Gitlab:
- Patroni templates.
- Consul (running on the Database clusters).
- PG Bouncer connection pooler.

Gitaly components we maintain:
- Repository File servers.
- Gitaly App.
- Praefect - as part of our [Gitaly Cluster architecture](https://docs.gitlab.com/ee/administration/gitaly/praefect.html).


Datastores is:

| Person | Role |
| ------ | ------ |
|[Alberto Ramos](/company/team/#albertoramos)|[Engineering Manager, Reliability](https://about.gitlab.com/job-families/engineering/engineering-management-infrastructure/#engineering-manager-reliability)|
|[Alejandro Rodríguez](/company/team/#eReGeBe)|[Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Ahmad Sherif](/company/team/#ahmadsherif)|[Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Henri Philipps](/company/team/#hphilipps)|[Senior Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Jose Cores Finotto](/company/team/#jose-finotto)|[Staff Database Reliability Engineer](/job-families/engineering/database-reliability-engineer/)|
|[Nels Nelson](/company/team/#nnelson)|[Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|Open Position|[Database Reliability Engineer](/job-families/engineering/database-reliability-engineer/)|


## Vision

*WIP*

## Tenets

- Data integrity and consistency are our top priority - GitLab.com depends very much on that.
- Automation as a way to run things with no manual intervention in production. All of our production changes are run via code.
- Reliability of our datastores, also top priority. As part of the Reliability group we endeavour to run GitLab.com with 99.95% (or higher) availability - our Datastores availability should enable that goal.
- We don’t want to fix things twice: If anything is broken, take your time to find a permanent (code based) solution, test it and roll it to production.
- Growth mindset: we believe that our abilities can grow with effort and persistence. Goals are opportunities to grow. The purpose of what you do every day is to improve.
- Obsession about avoiding service incidents, and fast mitigation if they do happen.

