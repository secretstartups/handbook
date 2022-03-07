---
layout: handbook-page-toc
title: "Datastore"
---

GitLab is a [single application](https://about.gitlab.com/handbook/product/single-application/) that relies in a [single datastore](https://about.gitlab.com/handbook/product/single-application/#single-data-store), althought this is not, strictly speaking, accurate. It *was* strictly accurate for quite a long time, but scalability and development concerns did force us to be *less* strict, albeit while maintaining full integration within the application, and ensuring both self-managed and GitLab.com continue to operate as a single application. While there is no fundamental aversion to multiple data stores, we want to avoid the pitfalls of having *too many* of them, especially when it involves a variety of data engines. We have placed some gatekeepers before a separate datastore can be deployed, and the following guidelines are intended to help you determine what the best course of action is.

## *We need a new database*

First, we need to fully understand what that statement actually means, particularly in terms of the type of data we need to store, how tighly coupled it is to the main database, and how schemas and configurations are to be managed. Secondly, we need to understand what it will mean in terms of resource utilization (space requirements, transaction rates, expected growth for both). Third, we need to understand if the data requires a new data store engine, since this will have significant implications once it is deployed in production in terms of the deployment itself, on-going maintenance (such as upgrades), observability integrations, and, more importantly, troubleshooting during incidents and scaling it.

We currently have two primary data stores classes: relational (PostgreSQL) and data structure (Redis). 

### Relational: PostgreSQL

PostgreSQL is our relational database engine of choice, and, until recently, all data resided in a single cluster (and thus, a single data store). As scalability needs increased, some items have been extracted from the database (diffs was the first such item), while others were deployed in separate logical databases or instances (at scale) because they were already separate services and had low data coupling requirements (Registry and Praefect). Still, others are being extracted right now (CI) because of their scale (and because we found ways to work around tight coupling).

In general, the default answer to "we need a new database" is to use the main PostgreSQL cluster.

### Data Structure: Redis

We have a significant Redis footprint for very specialized, non-relational needs, which for the most part is considered cache. Over time, some durability has been added.

## Considerations

There are four basic questions you'll need to answer before you request a new data store:

* What kind of code base comprises your application?
* What kind of data do you need to store?
* What kinds of queries do you need to run agains the data store?
* What resource utilization do you expect to need, both today and in the near future, in terms of space consumed, trasaction rates (for read and writes), and latencies?

You likely know well the answers to the first three questions, since they're really baked into your application; the last one tends to be a little less clear, and while you do not need exact answers, you do need some ballpark estimates (for both at deployment time and peering a bit into the future). In any event, you should generally avoid answering those questions with specific technologies in mind (with some exceptions).

## Default answer: the main database

Traditionally, the default answer has been to use our main database (PostgreSQL). However, we are probably at a point where this can no longer be the case, due primarily to two reasons:

* We have to carefully manage load on the main database, particularly in terms of transaction rates, connections, and memory utilization, to ensure availability.
* The product ecosystem is evolving in a varied fashion through integrations of existing technology stacks, and we are coming upon more specialized data needs.

In general, if your code base is part of the main RoR application, you will more than likely use the main PostgreSQL database, as the schema is managed through RoR and your code probably has fairly tight coupling with the Rails code base. This has to ba managed carefully, however, as capacacity planning concerns must be addressed. The Development [Database Group](https://about.gitlab.com/handbook/engineering/development/enablement/database/) is your best source of information. If necessary, engage with Infrastructure [Reliability Engineering](https://about.gitlab.com/handbook/engineering/infrastructure/team/reliability/). This also applies to Redis.

### Exception

Due to scalability concerns, we are currently executing our first [funcional decomposition](https://gitlab.com/groups/gitlab-org/-/epics/6168) from the database: the [CI tables](https://gitlab.com/groups/gitlab-org/-/epics/6167). Although this code base is part of RoR, its sheer size and resource utilization make up about 40% of the main database. Data coupling is relatively loose, so we decided to move it to its own separate cluster, and thus had to develop some techniques to address said coupling while having the data in a separate database ([Loose Foreign Keys](https://docs.gitlab.com/ee/development/database/loose_foreign_keys.html)).

In general, a separate cluster will only be supported if the size of the dataset and its corresponding transaction rate requirements are large enough to merit the cost of operating a separate cluster and the added complexity of developing code to support it. Initially, this will likely reside in separate logical database as part of the ,ain cluster.

## Find your use case

### Relational (PostgreSQL)

If your application is **not** part of the RoR code base (for instance, [Container Registry](https://gitlab.com/gitlab-org/container-registry), [Praefect](https://gitlab.com/gitlab-org/gitaly)), then you are likely looking for a separate database, and whether this is logical or an independent cluster will come down to scale.

| Code base | Transaction Rate | Storage       | Data store           |
| --------- | ---------------- | ------------- | -------------------- |
| Ruby      | Low, Medium      | Low, Medium   | **Main** database    |
| Ruby      | High             | High (>1TB)   | **FD** database      |
| Any       | Low              | Low (<200GB)  | **Logical** database |
| Any       | Medium           | Medium (<1TB) | **Logical** database |
| Any       | High             | High (>1TB)   | **Separate** cluster |

### Data Structure (Redis)

| Code base | Transaction Rate | Storage       | Data store |
| --------- | ---------------- | ------------- | ---------- |
| Ruby      | Low, Medium      | Low, Medium   |            |
| Ruby      | High             | High (>1TB)   |            |
| Any       | Low              | Low (<200GB)  |            |
| Any       | Medium           | Medium (<1TB) |            |
| Any       | High             | High (>1TB)   |            |

## New data store engines

There will be times whether currently supported data store engines will be able to meet your requirements. and a new data store engine must be introduced in the environment. These should be extremely rare, but will generally come courtesy of integrating new technology stacks into our environment (for instance, acquisitions), or when the data needs are very specialized (for instance, time series).

Your due diligence should include involving the Infrastructure team as early as possible, since supporting new technologies will require a variety of work in terms of deployment, configuration, maintenance (upgrades), troubleshooting, etc.
