---
layout: markdown_page
title: "Time-Decay Data"
description: "Blueprint for time-decay data"
canonical_path: "/company/team/structure/working-groups/database-scalability/time-decay"
---

## On this page
{:.no_toc}

- TOC
{:toc}
## Time-Decay data

This document describes the *time-decay pattern* introduced in the [Database Scalability Working Group](index.html#time-decay-data).
We discuss the characteristics of time-decay data and propose best practices for GitLab development to consider in this context.

Some datasets are subject to strong time-decay effects, in which recent data is accessed far more frequently than older data.
This effect is usually tied to product and/or application semantics and can vary in the degree that older data are accessed and how useful or required older data are to the users or the application.

Let's first consider entities with no inherent time related bias for their data.
A record for a user or a project may be equally important and frequently accessed irrelevant to when it was created. We can not predict by using a user's `id` or `created_at` how often the related record will be accessed or updated.

On the other side, a good example for datasets with extreme time-decay effects are logs and time series data, like, for example, events recording user actions.
Most of the times that type of data may have no business use after a couple of days or weeks and quickly become less important even from a data analysis perspective.
They represent a snapshot that is very quickly becoming less and less relevant to the current state of the application, until at some point they have no real value.

In the middle of the two extremes we can find datasets that have useful information that we want to keep around, but with old records seldomly being accessed after an initial (small) time period after they are created.

## Characteristics of time-decay data

There can be datasets of variable sizes that show strong time-decay effects, but in the context of this blueprint we are going to focus to entities with a **considerably large dataset**.
Smaller datasets do not contribute significantly to the database relate resource usage, nor do they inflict a considerable performance penalty to queries.
In contrast, large datasets over \~50 Million records and/or 100GB in size add a significant overhead to constantly accessing a really small subset of the data. In those cases we would want to use the time-decay effect in our advantage and reduce the actively accessed dataset.

The second and most important characteristic of time-decay data is that most of the times we implicitly or explicitly access the data using a date filter, **restricting our results based on a time related dimension**.
There can be many such dimensions, but we are going to only restrict our focus on the creation date as it is both the most commonly used and the one that we can control and optimize against.
It is constant, set when the record is created, and can be tied to physically clustering the records without having to move them around.
Time decay data without such a time-decay related access method are of no use from an optimization perspective as there is no way to set and follow a scaling pattern.

The third characteristic of time-decay data is that their **time-decay status does not change**. Once they are considered "old", they can not switch back to "new" or relevant again.
This definition may sound trivial but we have to be able to make operations over "old" data expensive (e.g. by archiving or moving them to less expensive storage) without having to worry about the repercussions of switching back to being relevant and having important application operations underperforming.
Consider as a counter example to a time-decay data access pattern an application view that presents issues by when they were updated. We are also interested in the most recent data from an "update" perspective, but that definition is volatile and not actionable.
Similarly, it would be hard to apply the time-decay pattern to data with various levels of time relevancy definitions depending on the context or the role of the user accessing them (e.g. developers never accessing an entity more than one week old vs administrators going daily through year old past data).

As a side note, if we extend the aforementioned definitions to access patterns that most of the time restrict access to a monotonically, well defined subset of the data, we could use the time-decay scaling patterns for many other types of data.
As an example, consider data that are only accessed while they are labeled as active, like ToDos not marked as done, pipelines for not merged MRs (or a similar not time based constraint), etc.
In this case, instead of using a time dimension to define the decay, we use a categorical dimension (i.e. one that uses a finite set of values) to set the subset of interest.
As long as that subset is small compared to the overall size of the dataset, we could use the same approach.

Finally, a characteristic that further differentiates time-decay data in sub categories with slightly different approaches available is **whether we want to keep the old data or not** (e.g. retention policy) and/or **whether old data will be accessible by users through the application**.

## Identifying time-decay data

**WIP**: Before we continue with strategies on how to address time-decay data, it would be useful if we could define ways to identify such datasets and not only depend on empirical evidence.

How could we identify such datasets? It's too expensive to monitor the data fetched by `created_at`; we don't even log such information.

This section may be removed and only use the characteristics provided in the previous section. As we are only focussing on large datasets, it may not be required in the first place.

## Time-Decay data strategies

### Partitioning

This is the acceptable best practice for addressing time-decay data from a pure database perspective.

Partitioning by date intervals (e.g. month, year) allows us to create much smaller tables (partitions) for each date interval and only access the most recent partition(s) for any application related operation.

It can be combined with other strategies to either prune (drop) old partitions, move them to cheaper storage inside the database or move them outside of the database (archive or use of other types of storage engines).

As long as we do not want to keep old records and partitioning is used, pruning old data has a constant, for all intents and purposes zero, cost compared to deleting the data from a huge table (as described in the following sub-section).

Moving partitions to cheaper storage inside the same database is relatively simple in PostgreSQL through the use of [tablespaces](https://www.postgresql.org/docs/12/manage-ag-tablespaces.html).
It is possible to specify a tablespace and storage parameters for each partition separately, so the approach in this case would be to:

- Create a new tablespace on a cheaper, slow disk.
- Set the storage parameters higher on that new tablespace so that the PostgreSQL optimizer knows that the disks are slower.
- Move the old partitions to the slow tablespace automatically by using background workers.

Finally, moving partitions outside of the database can be achieved through database archiving or manually exporting the partitions to a different storage engine (more detials in the dedicated sub-section).

### Pruning old data

If we don't want to keep old data around in any form, we can implement a pruning strategy and delete old data.

It's a simple to implement strategy that uses a pruning worker to delete past data. As an example that we'll further analyze below, we are pruning old `web_hook_logs` older than 90 days.

The disadvantage of such a solution over large, non-partitioned tables is that we have to manually access and delete all the records that are considered as not relevant any more.
That is a very expensive operation and can lead to the pruning worker not being able to catchup with new records being created, like in the case of [web_hook_logs](https://gitlab.com/gitlab-org/gitlab/-/issues/256088) at the time of writing this document.

### Moving old data outside of the database

If we consider old data as valuable, so we do not want to prune them, while, at the same time, they are not required for any database related operations (e.g. directly accessed or used in joins and other types of queries), we can move them outside of the database.

That does not mean that they are not directly accessible by users through the application; we could move data outside the database and use other storage engines or access types for them, similarly to offloading metadata but only for the case of old data.

In the simplest use case we can provide fast and direct access to recent data, while allowing users to download an archive with older data.
This is an option evaluated in the `audit_events` use case; depending on the country and industry, audit events may have a very long retention period, while only the past month(s) of data are actively accessed through GitLab's interface.

**WIP:** Define detailed strategy on how to approach moving data out of the database

## Use cases

### Audit Events

**WIP:** [Partitioning: web_hook_logs table](https://gitlab.com/groups/gitlab-org/-/epics/5558)

### Web hook logs

**WIP:** [Partitioning: Design and implement partitioning strategy for Audit Events](https://gitlab.com/groups/gitlab-org/-/epics/3206)

### CI tables

**WIP:** Requirements and analysis of the CI tables use case

## Summary

**WIP**: The deliverable should include a detailed analysis of the strategies to follow, together with examples of how they were or can be applied on specific use cases in GitLab's database.
