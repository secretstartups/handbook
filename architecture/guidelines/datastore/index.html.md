---
layout: handbook-page-toc
title: "Datastore"
---

GitLab is a [single application](https://about.gitlab.com/handbook/product/single-application/) that relies in a [single datastore](https://about.gitlab.com/handbook/product/single-application/#single-data-store), althought this is not, strictly speaking, accurate. It *was* strictly accurate for quite a long time, but scalability and development concerns did force us to be *less* strict, albeit while maintaining full integration within the application, and ensuring both self-managed and GitLab.com continue to operate as a single application. While there is no fundamental aversion to multiple data stores, we want to avoid the pitfalls of having *too many* of them, especially when the involved a variety of data engines. We have placed some gatekeepers before a separate datastore can be deployed, and the following guidelines are intended to help you determine what the best course of action is.

## *We need a new data store*

First, we need to fully understand that statement actually means in terms of the type of data we need to store, how tighly coupled it is to the main data store, and how schemas and configuration are to be managed. Secondly, we need to understand what it will mean in terms of resource utilization (space requirements, transaction rates, expected growth for both). Third, we need to understand if the data requires a new data store engine, since this will have significant implications once it is deployed in production in terms of the deployment itself, on-going maintenance (such as upgrades), observability integrations, and, more importantly, troubleshooting during incidents and scaling it.

We currently have two primary data stores classes: relational (PostgreSQL) and data structure (Redis). 

### Relational: PostgreSQL

PostgreSQL is our relational databae engine of choice, and, until recently, all data resided in a single cluster (and thus, a single data store). As scalability needs increased, some items have been extracted from the database (diffs was the first such item), while others were deployed in separate logical databases or instances (at scale) because they were already separate services and had low coupling requirements (Registry and Praefect). Still, others are being extracted right now (CI) because of their scale (and because we found ways to work around tight coupling).

In general, the default answer to "We need a new data store" is to use the main PostgreSQL cluster.

### Data Structure: Redis

We have a significant Redis footprint for very specialized, non-relational needs, which for the most part is considered cache. Over time, some durability has been added.

## Considerations

There are four basic questions youll need to answer before you request a new data store:

* What kind of data do you need to store?
* What kinds of queries do you need to run agains the data store?
* What resource utilization do you expect to need, both today and in the near future, in terms of space consumed, trasaction rates (for read and writes), and latencies?
* Codebase

You likely know well the answers to the first two questions; the last one tends to be a little less clear, and while you do not need exact answers, you do need some ballpark estimates (for both at deployment time and peering a bit into the future). In any event, you should generally avoid answering those questions with specific technologies in mind (with some exceptions).

## Default answer: the main database

Traditionally, the default answer has been to use our main database (PostgreSQL). And yet, we are probably at a point where this can no longer be the case, due primarily to two reasons:

* We have to carefully manage load on the main database, particularly in terms of transaction rates, connections, and memory utilization.
* The product ecosystem is evolving in a varied fashion, with more specificalized data needs.

Havinf said that, in general, if youe code base is part of the main RoR application, you will more than likely need to to use the main PostgreSQL database, as the schema is managed through RoR and your code likely has fairly tight coupling with the Rails code base. This has to ba managed carefully, however, as capacacity planning concerns must be addressed. This also applies to Redis.

### Exception

Due to sclability concerns, we are currently executing our first funcional decomposition from the database: the [CI tables](https://gitlab.com/groups/gitlab-org/-/epics/6167). Although this code base is part of RoR, its sheer size and resource utilization make up about 40% of the main database. Data coupleing is relatively lose, so we decided to move it to its own independent cluster, and thus had to develop some techniques to address said coupling while having the data in a separate database ([Loose Foreign Keys](https://docs.gitlab.com/ee/development/database/loose_foreign_keys.html)).

In general, a separate cluster will only be supported if the size of the dataset and its corresponding transaction rate requirements are large enough to merit the cost of operating a separate cluster and the added complexity of developing code to support it. Initially, this will likely reside in separate logical database as part of the ,ain cluster.

## Find your use case

### Relational (PostgreSQL)

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
