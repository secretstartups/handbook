---
layout: markdown_page
title: "Technology Roadmap"
---

As GitLab continues to grow and mature, it is approaching a pivotal point in which faster growth across multiple large sites and an emphasis on the enterprise will become the main challenges to contend with over the next 12 months, all within the context of a relentless focus on security, availability, and performance. 

In order to meet these challenges, we need to attain extremely high levels of **preditability** when operating the environment. This entails stricter standardization while providing the required flexibility to support both self-managed instances and GitLab sites, which enables the use of advanced automation by leveraging advanced tooling. But even with a high confidence level on preditability, **risk** is a factor we must manage: things will inevitably go wrong when effecting change in the environments. Thus, we must be able to quantify acceptable risk, to react fast in the face of failure to restore stability, and to so as a single Engineering unit.

As a company, GitLab advocates [cloud native](https://about.gitlab.com/cloud-native/) as the future of software development: customers benefit from GitLab as a complete DevOps platform delivered as a single application (from issue tracking and source code management to CI/CD and monitoring, with a built-in container registry and Kubernetes integration). We must fully embrace this model ourselves. In this context then, our **most critical technical strategic investment will be our own full transition to Cloud Native on stateless components**, which will afford us the ability to operate and fine tune a variety of configurations at scale while innovating feature-wise and being frugal. In tandem, we must also develop enterprise-level capabilities to meet stringent requirements imposed by said customers.

## Multi-Large Sites: Cloud Native

**Cloud native** is an approach to application development and operation built around cloud computing, shitfing the focus from indivividual machines to services that rely on on-demand cloud resources to deliver high service levels while adapting to a never ending stream of changes. It relies on technologies such as containers and strategies such a microservices to deploy at high frequencies in a consistent manner. This is reflected on our beliefs on the [Biggest Tailwinds](https://about.gitlab.com/handbook/leadership/biggest-tailwinds/), and enables a high degree of predictability, thus allowing us to better manage said service levels.

Today, GitLab consists of a monolithic GitLab Rails codebase and several supporting services (Gitaly, GitLab Workhorse, Registry, CI runners, GitLab Shell, and GitLab Pages). GitLab has therefore already adopted some facets of cloud native, but we need to move closer to this model to succeed. 

However, we cannot do a wholesale switch to cloud native: we must evolve a single codebase that supports the wide variety of environments in which it runs along two parallel but distinct paths, scaling across multiple large sites while supporting self-managed instances. Thus, even as we embark on a fuller embrace of cloud native, we must find a balance that spans both paths, allowing for the necessary transitions from one to the other. This balance requires us to continuously identify opportunities to extract specific workloads from the monolith without diving into the trap of creating an unmanageable set of runaway microservices while re-thinking how some of the supporting services scale in this context.

### Compartmentalizing Statefulness

In order to adopt container technologies, we must remove local state from all application components that do not require it, especially those using loca and/or shared POSIX storage (NFS). Build logs and GitLab Pages are the two primary users of NFS in the environment, a dependency that must be eliminated.

### Stateful Services

We won't be migrating stateful services to cloud native at this time, but we will work to align them with cloud native capabilities. In particular, we will focus on both the main database and repository storage.

#### Main Database

The main database (Postgres) will require some significant changes to align with the cloud native transition. We do not anticipate the migration of the database to a containeirized environment (certainly not before we have completed work on all stataless components), but we need to be able to support cloud native strategies in the application. To that end, we must implement near-zero downtime Postgres upgrades (i.e., upgrades that, at most, simply require a database failover to take effect), which will be done through [Database Logical Replication](), and provide a [testing environments with production-like data and traffic]() to validate database changes st scale.

### Error Budgets

With a focus on services, cloud native demands the full implementation of error budgets, both technically and organizationally.

### Feature Flags

Feature flags are a crucial enabler for rapid deployment in a cloud natve environment. 

### Rollbacks

As our deployment pipeline gains speed, feature flags will acquire an even more critical role in our application deployments, both in terms of the number of flags in use and their complexity as a whole.

## The Enterprise  

### Disaster Recovery

As we move deeper into the enterprise, especially within the context of multi-large sites, disaster recovery becomes a critical capability that moves from a purely technical requirement into a critical business concern. Disaster Recovery is managed through [Geo](https://about.gitlab.com/solutions/geo/) on self-managed instances, but GitLab.com has presented a particular challenge at scale, both in terms of size and growth. Additionally, GitLab.com is a public instance with a wide variety of users. Geo operates at the instance level, but this may not be appropriate for GitLab.com. We should determine what our disaster recovery requirements are for GitLab.com (recovery times, user types), and then work towards enabling Geo to handle this unique situation (which will, over time, affect other milti-large sites).

### Repository Storage

Much work has taken place to strengthen repository storage, and we must take this work to completion. In particular, Gitaly clustering.



## Roadmap Scheduling 

### FY21

FY21 (ends on January 31, 2021)

* Database Logical Replication (FY21Q1)
* [Cloud Native Build Logs](https://docs.gitlab.com/ee/architecture/blueprints/cloud_native_build_logs/)
* [Cloud Native GitLab Pages](https://docs.gitlab.com/ee/architecture/blueprints/cloud_native_gitlab_pages/)

### FY22



