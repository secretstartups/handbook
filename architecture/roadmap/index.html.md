---
layout: markdown_page
title: "Technology Roadmap"
---

As GitLab continues to grow and mature, it is approaching a pivotal point in which faster growth across multiple large sites and an emphasis on the enterprise will become the main challenges to contend with over the next 12 months. We will need to meet these challenges effectively and effiiently, with a relentless focus on security, availability, and performance, both on self-managed instances and GitLab sites.

As a company, GitLab advocates [cloud native](https://about.gitlab.com/cloud-native/) as the future of software development: customers benefit from GitLab as a complete DevOps platform delivered as a single application (from issue tracking and source code management to CI/CD and monitoring, with a built-in container registry and Kubernetes integration). We must fully embrace this model ourselves. In this context then, our **most critical technical strategic investment will be our own full transition to Cloud Native on stateless components**, which will afford us the ability to operate and fine tune a variety of configurations at scale while innovating feature-wise and being frugal.



## Cloud Native

**Cloud native** is an approach to application development and operation built around cloud computing, shitfing the focus from indivividual machines to services that rely on on-demand cloud resources to deliver high services levels while adapting to a never ending stream of changes. It relies on technologies such as containers and strategies such a microservices to deploy at high frequencies in a consistent manner. This is reflected on our beliefs on the [Biggest Tailwinds](https://about.gitlab.com/handbook/leadership/biggest-tailwinds/).

GitLab consists of a monolithic GitLab Rails codebase and several supporting services (Gitaly, GitLab Workhorse, Registry, CI runners, GitLab Shell, and GitLab Pages). In its current form, GitLab has already adopted some facets of cloud native.

As noted in Architecture, we must evolve a single codebase that supports the wide variety of environments in which it runs, two parallel but distinct paths, scaling across multiple large sites while supporting self-managed instances. Thus, even as we embark on fully embracing cloud native, we must find a balance that spans both paths, allowing for the necessary transitions from one to the other. Said balance requires us to continuously identify opportunities to extract specific workloads from the monolith without diving into the trap of creating an unmanageable mess of runaway microservices while re-thinking how some of the supporting services scale in this context.





 

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



