---
layout: handbook-page-toc
title: "Blueprint: Postgresql Upgrade"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Resources

Epic: [Postgresql Upgrade](gl-infra/-/epics/106)

## Idea or problem statement

The goal of this document is to explain the alternatives that are feasible for executing the Postgresql database upgrade.

Upgrading the database will allow us to use new features that would make the work executed by developers and administrators easier. We can consider the following: 
* Table partitioning now with more functionalities and with better performance.
* CREATE INDEX can now use parallel processing while building a B-tree index, that would be faster.
* Quorum-based commit, that would ensure our transactions are committed in the specified nodes from the cluster.
* Among other features.

Initially, we would like to consider that version 11.7 is the best candidate, due to business requirements considering. These are the links to the list of features and bugs fixed:

[Postgresql v11.0](https://www.postgresql.org/docs/release/11.0/)

[Postgresql v11.1](https://www.postgresql.org/docs/release/11.1/)

[Postgresql v11.2](https://www.postgresql.org/docs/release/11.2/)

[Postgresql v11.3](https://www.postgresql.org/docs/release/11.3/)

[Postgresql v11.4](https://www.postgresql.org/docs/release/11.4/)

[Postgresql v11.5](https://www.postgresql.org/docs/release/11.5/)

[Postgresql v11.6](https://www.postgresql.org/docs/release/11.6/)

[Postgresql v11.7](https://www.postgresql.org/docs/release/11.7/)

Additionally, due to a business decision in version 13.0 from Gitlab, we would not support any longer Postgresql version 10.

Nevertheless, we are aware that the end of life support of the current version is relatively near:  November 11, 2021.

## Migration options:

The aim of this section is to describe the main options that are part of the migration. 

### 1 - Enable the checksum feature in the database. 

Enabling the checksum feature would allow the cluster to check for every data page being used to find out if the page is reliable or not. A reliable page is a page that has not been corrupted by writing data to the disk or reading back the data. This will add around approximately 2% of load overhead.

This step could require a long downtime in our current cluster to verify that all the pages are reliable. Setting up a new cluster with the checksum feature, and using logical replication to transfer all the data to this new cluster, could be the best solution to eliminate this downtime. Of course, this new cluster would be ready for a failover operation after receiving all the data. 

Respecting our values of avoiding data loss over availability this action is necessary for the database cluster.


### 2 - How to execute the migration : 

#### 2.1 - Upgrade with downtime : 

##### 2.1.1 - Executing pg_upgrade + enabling checksums

One option could be to execute pg_upgrade and activate the database checksums. The downtime could take hours, so we need to check in staging how long it would take to execute both steps to get a better estimate of time.

The positives:
- Technically it is a simple and straightforward procedure to implement and execute.
- The pre-requisites for this migration are minimum.

The negatives: 
- This approach would require a long downtime.

##### 2.1.2 - Executing pg_upgrade

Another option would be just to execute pg_upgrade. The downtime would be short, so we need to check in staging how long it would take to execute in stagging to get a better estimate of time.

The pg_upgrade process consists of the following parts:

- Starting the maintenance mode and stopping the incoming traffic, in this step the traffic is stopped on Cloudflare and HA Proxy instances, drastically reducing the number of database transactions, to reach faster the consistent shutdown of the database required for the PostgreSQL upgrade.

- Stopping all the components that have access to the database cluster, and draining database connections from Sidekiq, web-api, Puma and our Kubernetes hosts. During this step, all the database connections will be finalized and we will reach the optimal scenario to execute the upgrade process.

- Executing the automated PostgreSQL upgrade process, that consists of the following steps:
	
	- Verifying that all the prerequisites are fulfilled in all the cluster:
		 - The correct folder structure is created with adequate access permissions.
		 - The correct versions of Postgresql are installed on all the nodes.
		 - Execute the maintenance needed on the database functions used by monitoring.

	- Stopping the database components in the following order in all the nodes from the database cluster: 
		 - Pgbouncer: Stopping the connection pool to eliminate any possibility of new database connections.
		 - Patroni: Stopping the component that controls the HA to not execute any failover when we shut down the database instances.
		 - PostgreSQL: Stopping Postgresql instances to execute the pg_upgrade process.
	 
	- Executing the pg_upgrade process consists of the following steps:
		 - Executing a GCP disk snapshot from the data partition, that would be used in a restore scenario.
		- Executing the pg_upgrade first on the primary database and after on the secondary instances. For a detailed explanation please consult the [PostgreSQL Upgrade Design](https://about.gitlab.com/handbook/engineering/infrastructure/library/database/postgres/Postgresql-upgrade/design/)
         	
	- Starting the database components in the following order in all the nodes from the database cluster: 
		 - PostgreSQL: Starting Postgresql instances, first the primary and after the secondaries, and collecting database statistics for the query planner to resolve efficiently the queries when we restore the traffic.
		 - Patroni: Starting this component in all the nodes we recover our HA setup.
		 - Pgbouncer: Starting the connection pooling to allow the database connections.
	
	- Executing the verification that the upgrade process is completed successfully:
		 - Verifying that the stream replication is working as expected, with the new changes being applied to the secondaries nodes.
		 - Creating new database objects and verifying they are replicated properly, ensuring the data quality on new objects and rows.
		 - Executing queries on the database to verify data consistency.
		 - Verifying that the statistics have been collected and ensuring it is safe to restore database traffic.

- Starting the components that have access to the database, Sidekiq, web-api, Puma and our Kubernetes hosts, checking logs and alerts to verify the successful start of the components. 

- Executing the QA  tests on the upgraded database, to ensure the data quality and all the application functionalities are working properly. The SRE and DBRE team will keep monitoring the database, application logs, and alerts to verify that all the components are working properly.

- Resuming the maintenance mode and restoring the incoming traffic.

The positives:
- Technically it is a simple and straightforward procedure to implement and execute.
- The pre-requisites for this migration are minimum.
- The rollback strategy is well known and under control (take snapshot once the DB has been stopped - recover from there if necessary using slaves)

The negatives: 
- This approach would require some downtime.

After weeks evaluating the solutions, we decided to choose the pg_upgrade because of the following points:
 - It Allows us to execute the PostgreSQL upgrade in one maintenance in reduced downtime.
 - In the event of any unexpected problem, we have a reliable rollback strategy that is detailed on the [PostgreSQL Upgrade Design](https://about.gitlab.com/handbook/engineering/infrastructure/library/database/postgres/Postgresql-upgrade/design/).

##### 2.2 - Upgrade with a reduced downtime: 

Since it's not possible to execute a stream replication between different major versions of Postgresql, and considering the goal of a minimum downtime, solutions that would use logical replication are needed.


##### 2.2.1-Execute a logical migration with Londiste.

Essentially, it is a project written in python to execute logical migrations and has not been updated recently.

Positive side:
- It was a reliable solution in the past.

Negatives:
- Requires verification if it works properly in our environment due to old libraries and dependencies.
- It is based on triggers and adds load to the primary. That could generate a degraded situation during peak time. 
- Primary keys are required in all the tables.
- By default is compiled by “make” in the host. It is recommended to generate a package that would be an extra step.

##### 2.2.2-Execute a logical replication with Pglogical version 2.
It is an old version of a project that the latest version is under a commercial license, developed by 2nd quadrant.

Positives:
- It was a reliable solution in the past.
- It does not add load to the primary.

Negatives:
- Implementation time.
- Extensive testing will be required since there are some limitations and restrictions that could impact our application: https://www.2ndquadrant.com/en/resources/pglogical/pglogical-docs/#limitations-and-restrictions 
- We would need to do our proper R&D in case of issues.
- During the setup, an extension load and Postgresql restart are required.


##### 2.2.3-Execute a logical replication with Egres.
Egres is a logical replication solution developed by Ongres.

Positive:
- Faster than Pglogical and Londiste.
- It Does not add load to the primary.
- Exports metrics to Prometheus for continuous monitoring.
- We would have support for the solution, and Ongres has hands-on experience.

Negative:
- We would need development cycles to get the solution ready for our environment.
- It could take longer to get this solution working properly.
- Not used by the community.


## Prerequisites :

Executing the [Enable external merge request diff storage](gl-infra/infrastructure/issues/7356) to a different data-source would be a pre-requisite. The result would release 33% of the database size and will reduce significantly the time cost and downtime of all the options above.
