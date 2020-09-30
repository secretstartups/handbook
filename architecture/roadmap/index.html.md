---
layout: markdown_page
title: "Technology Roadmap"
---

As GitLab continues to grow and mature, it is approaching a pivotal point in which faster growth across multiple large sites and an emphasis on the enterprise will become the main challenges to contend with over the next 12 months. We will need to meet these challenges effectively and effiiently, with a relentless focus on security, availability, and performance, both on self-managed instances and GitLab sites.

Our most critical technical strategic investment will therefore be the full transition to **Cloud Native** on stateless components (reflected by its #2 position on the [Biggest Tailwinds](https://about.gitlab.com/handbook/leadership/biggest-tailwinds/)), which will afford us the ability to operate and fine tune a variety of configurations at scale while innovating feature-wise and being frugal.



## Cloud Native

[**Cloud native**](https://about.gitlab.com/cloud-native/) is an approach to application development and operation built around cloud computing, shitfing the focus from indivividual machines to services that rely on on-demand cloud resources to deliver high services levels while adapting to changes. It relies on technologies such as containers and strategies such a microservices to deploy at high frequencies in a consistent manner.

GitLab consists of a monolithic GitLab Rails codebase and several supporting services (Gitaly, GitLab Workhorse, Registry, CI runners, GitLab Shell, and GitLab Pages). Scaling across multiple large instance will require us to continuously identify opportunities to extract specific workloads the monolith, but also re-think how some of the supporting services scale to this next step. And yet, GitLab is still required to operate in non-cloud native environments. Thus, we must achieve the right balance between a properly decomposed monolith and 

### Compartmentalizing Statefulness

In order to adopt container technologies, we must remove local state from all components that do not require it. One key area in this regard is the presence of NFS.

1. [Cloud Native Build Logs]()
2. [Cloud Native GitLab Pages]()

#### Database

The main database (Postgres) will require some significant changes to align with the cloud native transition. We do not anticipate the migration of the database to a containeirized environment (certainly not before we have worked on the stataless components), but we still need to push it closer to be able to support . To that end, there are two major initiatives to understake:

1. Shifting to [Database Logical Replication](), which will enable us to implement near-zero downtime Postgres upgrades
2. Providing the ability to [test with production-like data and traffic](), which will allow us to validate database changes and migrations

#### Repository Storage

TDB

### Error Budgets

With a focus on services, cloud native demands the full implementation of error budgets, both technically and organizationally.

### Feature Flags and Rollbacks

As our deployment pipeline gains speed, feature flags will acquire an even more critical role in our application deployments, both in terms of the number of flasg in use and their complexity as a whole.  



## FY21

FY21 (ends on January 31, 2021)

* Database Logical Replication (FY21Q1)
* Cloud Native Build Logs
* Cloud Native GitLab Pages



