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

There are three basic questions youll need to answer before you request a new data store:

* What kind of data do you need to store?
* What kinds of queries do you need to run agains the data store?
* What resource utilization do you expect to need, both today and in the near future, in terms of space consumed, trasaction rates (for read and writes), and latencies?

You likely know well the answers to the first two questions; the last one tends to be a little less clear, and while you do not need exact answers, you do need some ballpark estimates (for both at deployment time and peering a bit into the future). In any event, you should generally avoid answering those questions with specific technologies in mind (with some exceptions). 

### Type of Data

If you are dealing with relational data and relational queries, the obvious answer is PostgreSQL. The level of coupling to the main data and the types of queries you need to run will determine whether you should use the main database (assuming you have a Ruby/Rails code base), in which case, we are deeply interested in your resource needs, particularly in terms of transaction rates. If you have a separate code base and/or your resource needs are extremetly high, you're a good candidate for a logical database in the main cluster (a separate database)



