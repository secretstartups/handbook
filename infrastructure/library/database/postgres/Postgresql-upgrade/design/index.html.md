---
layout: markdown_page
title: "PostgreSQL Upgrade - Design"
---

## On this page
{:.no_toc}

- TOC
{:toc}
## Resources

Epic: [gl-infra/106](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/106)

Blueprint: [PostgreSQL Upgrade Blueprint](https://about.gitlab.com/handbook/engineering/infrastructure/library/database/postgres/Postgresql-upgrade/blueprint/)

## Design

The objective of this design document is to describe the most important technical aspects of the PostgreSQL upgrade to 11.7. Currently, our PostgreSQL cluster is at version 9.6. 

We are upgrading to version 11.7 due to business requirements.

The option chosen is to execute a pg_upgrade directly on the live cluster. The main reasons for this approach are:

The maintenance window could have a duration of up to 2 hours. Considering this time constraint, and the time consumed to stop the platform and reinitialize the traffic, we need to focus on the main goal, which is the PostgreSQL upgrade. The goals of enabling checksums should be approached in a further iteration.

Considering the deadlines and the business requirements as: (the end of support of PostgreSQL version 9.x and 10.x)[https://gitlab.com/groups/gitlab-org/-/epics/2184] and supporting [the initiatives of database sharding](https://about.gitlab.com/company/team/structure/working-groups/database-sharding/) ), the approach proposed is to keep the project as simple and straightforward as possible. Besides, all the testing and interaction with all the necessary teams for this upgrade will demand time, concentration and effort from all involved. For more information about the discussed options and reasons consider the [PostgreSQL Upgrade Blueprint](https://about.gitlab.com/handbook/engineering/infrastructure/library/database/postgres/Postgresql-upgrade/blueprint/).

[MORE TO COME]

### Implementation Considerations

All the detailed steps of the change request (it will test and apply this change in staging and production) will be detailed in the upgrade plan, that is reflected in the [PostgreSQL Upgrade Template](https://gitlab.com/gitlab-com/gl-infra/db-migration/-/blob/master/.gitlab/issue_templates/pg_upgrade.md). We will include all the tasks, pre-checks, post-checks, communications and tests, with the person responsible for each item. 
	
The upgrade process will consist of the following steps :

#### PG_UPGRADE 

The approach with pg_upgrade that is being implemented is based on the [Official PostgreSQL Upgrade Documentation](https://www.postgresql.org/docs/11/pgupgrade.html).

Pg_upgrade : The following command will migrate the data between the major versions of PostgreSQL, in our case from 9.6 to 11.7. We will execute the pg_upgrade in the primary node, during a maintenance window without traffic on the database cluster.

```pg_upgrade -b oldbindir -B newbindir -d oldconfigdir -D newconfigdir  -k```

The parameters are: 

`-b oldbindir`: defines the path of the binaries from the old version. In our case the path of the binaries from version 9.6.

`-B newbindir`:  defines the path of the binaries from the new version. In our case the path of the binaries from version 11.7.

`-d oldconfigdir`: defines the path of the old configuration directory, that in our case would be the configuration folder from the version 9.6 

`-D newconfigdir`: defines the path of the new configuration directory. In the new configuration, we will have the optimized setup for PostgreSQL 11.7. The main tests we 
are executing is to enable the new features of query processing parallelism. 

`-K:` use hard links instead of copying files to the new cluster.

#### UPGRADING THE REPLICAS 

Following the [Official PostgreSQL Upgrade Documentation](https://www.postgresql.org/docs/11/pgupgrade.html). The following steps would be executed:

- Ensure the new data directory is created and empty on the secondaries nodes.
- In the setup of the instances from cluster on version 11.7 is being used as a new cluster name. This step will facilitate possible rollback.
- Execute rsync command: `rsync --archive --delete --hard-links --size-only --no-inc-recursive old_cluster new_cluster remote_dir`

The execution of this rsync will record the links created by pg_upgrade's link mode that connect files in the old and new clusters on the primary server. Finding the matching files in the old secondary node cluster and creates links in the new secondary cluster. Files that were not linked on the primary are copied from the primary to the secondary. The data that has been rsync`ed in our tests is small. This step is the key to provide fast secondary upgrades.

- Initialize the cluster.

This process has been tested in several times in a test environment considering :
- The generated a similar scenario from production with PostgreSQL versions and folder structure. 
- Using similar data volumes as the production cluster.
- The time consumed for the upgrade was around 20 minutes.
- The replication was verified and  was working properly. After evaluating all the logs, we confirm that the database cluster was working properly.
- All the tests of data integrity were successful.


#### VACUUMDB ANALYZE-ONLY 

After executing the upgrade, and during the downtime, it is necessary to gather statistics from the database on the newer version. The new database will have no stats at this point. This task will be executed during the downtime with a high number of cores to be completed quickly.
	
```Vacuumdb -j 70  --analyze-only database_name```
	
The parameters are: 

`-j number_of_jobs`: It will execute the task with the specified number of parallel jobs.

`--analyze-only`: Only calculate statistics for use by the optimizer (no vacuum executed).

#### VACUUMDB FREEZE	

After completing the analyze, we will start executing the VACUUM FREEZE ANALYZE.
Executing a VACUUM FREEZE helps to avoid any future vacuums triggered by txid wraparound protection. With this step we are reseting the variables from vacuum not to carry them from the old cluster. During this execution we should start to restore the traffic into the DB.

```Vacuumdb -j 20 -F database_name```

The parameters are: 

`-j number_of_jobs` : It will execute the task with the specified number of parallel jobs.

`-F`: Aggressively “freeze” tuples.  Specifying FREEZE is equivalent to performing VACUUM with the vacuum_freeze_min_age and vacuum_freeze_table_age parameters set to zero.

#### ROLLBACK

Currently, our database cluster consists of 12 nodes, we would spare 4 nodes in the current version 9.6, to be able to rollback in a short period of time. 

As another recovery mechanism, in our automated upgrade process, a snapshot from the data disk will be executed when the database is down (to ensure the consistency of the database snapshot). The command to execute the snapshot is:

`gcloud --project [PROJECT_NAME] compute disks snapshot [DISK_NAME] --type [TYPE_NAME] --source-snapshot [SOURCE_NAME] --zone [ZONE_NAME]`.

The SRE, DBRE and dev teams will be constantly monitoring the database, application logs, and monitoring alerts.

In the event of any unexpected problem, our rollback strategy during the maintenance is :

- Stop all the components that have access to the database cluster, and drain the database connections from Sidekiq, web-api, Puma and our Kubernetes hosts.

- Execute the automated PostgreSQL **rollback**: 
    - Stopping Pgbouncer, Patroni, and PostgreSQL in the 8 nodes from the cluster on version 11.7. This new cluster has a different cluster name than version 9.6; and the cluster 11.7 would not be able to start again.
    - Starting PostgreSQL, Patroni, and PgBouncer in the 4 nodes from the cluster with version 9.6.
    - Patroni will promote one node to become the primary database in cluster 9.6.
    - For the DNS entries in Consul, the traffic will be automatically balanced to redirect the read-write traffic to the primary and the read-only traffic to the secondaries.
    - Starting the components that access the database:  Sidekiq, web-api, Puma and our Kubernetes hosts, checking logs and alerts to verify the successful start of the components. 

- Execute tests on the database to validate consistency and that the replication is working properly.
	- Verifying that the stream replication is working as expected, with the new changes being applied to the secondaries nodes.
	- Creating new database objects and verifying they are replicated properly, ensuring the data quality on new objects and rows.
	- Executing test queries on the database to verify data consistency.

- Run the QA test suites on the cluster on version 9.6.

- Start the recreation of 4 extra nodes, with the following steps:
	- Attaching the disk snapshot created when the database is down. Using the command: `gcloud compute instances attach-disk`
 	- Reverting the MR executed during the upgrade on the 4 nodes that were on version 11.7, to restore original cluster name, same data directory, and remove the binaries from the PostgreSQL 11.7.  
	- Verifying that the Postgresql and Patroni configuration files are configured properly.
	- Starting PostgreSQL, Patroni, and PgBouncer in the cluster on version 9.6, and those nodes will join the cluster.
	- Verifying that nodes are working properly, and the replication is working as expected.
	
- Resuming the maintenance mode and restoring the incoming traffic into the Application.



#### RISKS AND MITIGATIONS

The following is a list of risks and mitigations : 

- There is a chance of having a degraded performance for some queries in the new 11.7 version. We are benchmarking the new version with queries from our workload, and searching for possible optimizations that could be required for a good performance. But still, we could find some performance issues. The mitigation steps consist of analyzing the possible problematic statements and make the changes needed to fix the situation (more indexes, optimise queries, block some other queries temporarily, etc).

- Data inconsistency. In the event of finding any data inconsistency during the tests after the upgrade process the rollback procedure will be followed.

- In the event of a rollback, we could be in a degraded-performance state until all the nodes would be recreated. Given the traffic pattern on a Sunday morning the situation should be manageable.

- There is a chance of a failure of the upgrade process if it is executed from an engineer's laptop. In case of an accident with the laptop, hardware problem or a network failure, the migration process could be interrupted leaving the environment in an unknown state. To mitigate this it'll be required to execute the scripts from a bastion host, sharing the session by screen or any similar software (so the connection is persistent).

- There is a remote risk of a network glitch during the rsync process between the nodes from the cluster. To mitigate this risk we will delete all data on the new data directory on the secondaries and start the rsync process again.

- There are chances that, after the rollback, the application will not want to start. To mitigate this risk, during the production change we will make available a multi-disciplinar team (SRE, DBREs, QA, devs), highly knowledgeable about the Application, to be able to troubleshoot and quickly mitigate (on the spot) this incident/outage.

------

Author: [Jose Finotto](https://gitlab.com/Finotto) {: .note}
