---
layout: handbook-page-toc
title: "Datastore"
---

GitLab is a [single application](https://about.gitlab.com/handbook/product/single-application/) that relies in a [single datastore](https://about.gitlab.com/handbook/product/single-application/#single-data-store), althought this is not, strictly speaking, accurate. It *was* strictly accurate for quite a long time, but scalability and development concerns did force us to be *less* strict, albeit while maintaining full integration within the application, and ensuring both self-managed and GitLab.com continue to operate as a single application. We take this matter seriously, and we have placed some gatekeepers before a separate datastore can be deployed. What we have been missing are some guidlines to help you decide if this is really necessary and under what conditions it can happen.

## We need a new data store

First, we need to fully understand that statement actually means in terms of the type of data we need to store, how tighly coupled it is to the main data store, and how schemas and configuration are to be managed. Secondly, we need to understand what it will mean in terms of resource utilization (space requirements, transaction rates, expected growth for both). Third, we need to understand if the data requires a new data store engine, since this will have significant implications once it it deployed in production in terms of the deployment itself, on-going maintenance (such as upgrades), observability integrations, etc.

### PostgreSQL

PostgreSQL is our databae engine of choice, and until recently, all data resided in a single, main cluster. As scalability needs increased, some items have been extracted from the database (diffs was the first such item), while others were deployed in separate logical databases or instances (at scale) because they already were separate services and had low coupling requirements (Registry and Praefect). Still, others are being extracted right now (CI) because of their scale (and because of relatively low coupling).

Thus, the default answer to "We need a new data store" is usually "Use the main Postgres cluster".

