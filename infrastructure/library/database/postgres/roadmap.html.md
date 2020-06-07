---
layout: handbook-page-toc
title: "DBRE Roadmap"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


# DBRE Roadmap



## Macro goals

The expected GitLab.com SLA is 99.95%. Our objective with this roadmap is to define a path to make our database ecosystem reliable and keep an SLA at least at 99.96%.
To reach this goal, we are focusing on several aspects of infrastructure, that would make it possible to improve certain areas that we consider risks for our SLA.


To evolve the database ecosystem to a more reliable and stable version, we would focus on the following areas : 

MTTR - Mean Time To Restore

MTTD - Mean Time to Detection

MTBF - Mean Time Between Failures

### MTTR

To improve our mean time to recover, we need improvements in the following areas :

**Improve the reliability of our backups and reduce the restore time:** 

Our current backup solution is executed on the primary database. This activity adds load on the most critical component from the database ecosystem. Also, The encryption of the backup happens on the primary database. 
The goal is to move the backups from the primary to a secondary database reducing the impact on the main database from the cluster. 
Another point to consider is reducing the restore time, and have a pipeline restoring backups constantly ensuring the backup’s health. 
Considering a scenario of disaster and recovery, it is essential to maintain healthy and functional backups.


**Make our database able to scale attending a higher volume of requests:**

To scale our environment, we need to shard our database. Sharding the database could split our data model between several databases. There are several approaches to execute this task, we could split our data model in a vertical or horizontal approach. 
With sharding, we would be able to scale the connection availability in the database ecosystem, and resources in general. We would be able to scale and do not face the hardware limits of the database cluster that we would reach in a single read-write architecture. 

### MTBF

To improve our mean time between failures, we need improvement in the following areas in our database ecosystem :

**Scale our connection resources to the database:** 

We faced several times bottlenecks in our connection pool strategy. When we face saturation at the pgbouncer level, our applications start to collapse due to a lack of connections. 
The goal to be able to scale our capacity, as much as our business requirements needs, and be able to expand dynamically the number of resources allocated, attending a new demand of requests, of course respecting limits. 
Our current solution is not dynamical and limited, we could expand the limit and it would be an impressive improvement. ( I.e.: Increasing the number of pgbouncer instances ). 
We should consider using a similar approach between the primary and secondaries nodes. At the moment we have a different approach for both types of instances.


**Reduce our time to recover after a node failure:** 
(Review our strategy of node replacement (after failover)):

In case of an incident, to restore quickly the health of the database cluster we could use extra nodes. Those nodes would be available and up to date, and it would reduce the restore time of the database ecosystem to a normal state.
Currently, if we have the failure of a node, we could stay in a degraded scenario for more than 4 hours, until the new replacement node is available. With the new strategy, this time would be reduced to a few minutes.  

**Make our database more reliable and with more features available:**

Upgrading the database version would be able to support several new features for DBRE’s and developers. In the newer Postgresql versions, we enhance our stability, since several bugs were solved in the last 2-3 major releases. 
This would lead us to fewer failures, reducing our mean time between failures.

### MTTD

To improve our mean time to detection, we need to improve our logging and monitoring from the whole database ecosystem. It’s important to save more information from the daily activity, we should track and investigate better what happened at the database ecosystem. For this we need to improve :

**Increasing the log level, adding more information to the logs**. Having a bigger footprint of what is happening in all the components. I.e. : We could increase the information of the client connections to the database, and in addition, raising the log level from Patroni and Consul. Those changes would make it easier to understand the events in those components.

**Expanding the period of our log retention**, to maintain data available for longer period of time,  and being able to execute a longer analysis of patterns and problems, and verify if there is a recurrent problem, i.e. every Monday at peak time we have a spike of CPU usage for a pattern of users. The initial log retention suggested is 30 days.

The ideal scenario is to be able to use a tool that we could query easily and generate graphs to share and export. 

Another goal is to **generate user-friendly reports from the database ecosystem** and delivered to all the interested team members ( DBRE, SRE, engineering…), also we should keep in mind to share knowledge, adding references to the documentation and explanations, with whoever is consuming this report. 
Initially, we would generate the report on a weekly basis. The report would contain information from the whole database ecosystem:
* suggestions of points to fine-tune:
* errors 
* warnings
* I.e. : queries that could be improved, most executed queries, audit level, pgbouncer errors, and warnings … 

Nevertheless, another improvement would be to expand the detailed monitoring of all our components, and **having an instant view of the health and status of each component**, would be significantly useful to diagnose faster problems.
Automating the thresholds to alert, and making visible events that should trigger our attention. The initial suggested retention time for those metrics would be for a month. i.e.: how is the status of the replication of each delayed replica, how many WAL logs were applied, if the delay is over X minutes alert us. in case of a replica restoration how much time is needed for the replica catch up.

