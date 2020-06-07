---
layout: markdown_page
title: "Joe, a Postgres query optimization bot"
---

## On this page
{:.no_toc}

- TOC
{:toc}
## Resources

Epic: [gl-infra/76](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/76)

Blueprint: [Postgres query optimization bot to boost backend development process](/handbook/engineering/infrastructure/library/database/postgres/query-optimization-bot/blueprint/)

## Problem Statement and Idea

Any database schema and database-related application code changes need
verification. The verification process can be considered as entirely relevant
and efficient (development process-wise) only when backend engineers can
perform such verification on production-scale data sets and without a DBRE's help.

Until Autumn 2019, at GitLab, performing verification of such changes on production-scale
data sets implied the following problems:

- there is only a single staging environment in GitLab, and
its database size is ~10 times less than production;
- not all backend engineers have access to production (which is typical for any
fast-growing or grown organization) and those who have it, have only limited,
read-only access;
- for engineers with production access, it is not reasonable to verify
heavy queries right on production nodes, due to high risks to affect production
systems performance (and sometimes such verification is impossible at all –
for example, consider any DB schema changes);
- troubleshooting of `INSERT`/`UPDATE`/`DELETE`, `TRUNCATE` and DDL (`ALTER`, `CREATE`, `DROP`) on
production is, obviously, prohibited;
- provisioning of production clone takes significant time and manual efforts and
in case of multiple iterations of change verification are needed,
it becomes incredibly inconvenient, since for each iteration, a new provisioning
is required.

As described in [the Blueprint]((/handbook/engineering/infrastructure/library/database/postgres/query-optimization-bot/blueprint/)), a new approach was proposed: the use of
[Joe bot](https://gitlab.com/postgres-ai/joe) and [Database Lab](https://gitlab.com/postgres-ai/database-lab)
created and maintained by [Postgres.ai](https://postgres.ai). The main
ideas behind them are:

- Joe is a Slack bot, working similarly to the current chatops tool,
- Joe talks directly to an independent Postgres instance on ZFS filesystem (thin clone),
containing a database cloned from production (restored from WAL-E/WAL-G archive),
- the bot can provide detailed execution plans to users, without exposing the
data directly,
- the bot can apply any database schema changes such as new index creation,
- thanks to Database Lab and ZFS snapshots and clones, it is possible to revert
all the changes made by users quickly,
including those that Postgres cannot revert itself (such as a committed
transaction that dropped some DB objects),
- moreover, Database Lab uses thin cloning technique to allow having independent
Postgres databases operating on the same machine, so developers working on
micro-optimization tasks do not interfere with each other, while the GCP budgets
are fixed,
- the bot provides additional explanations of the execution plan and suggestions
on query optimization,
- for security reasons, all actions are logged in a special audit log, including
timestamp, action details, and requesting person ID and name.

As a result, with the new tool, any backend developer from the GitLab team is
capable of verifying any SQL query plans on a production-scale database clone,
without having access to production and not waiting for help from SREs or DBREs.
Engineers without in-depth query optimization knowledge also benefit from
optimization bits of advice the bot provides.

## Design

![The architecture of Joe, a Postgres query optimization bot](joe_with_control_instance.png){: .shadow}

### User Interface

#### Slack

Users (backend developers and DBREs) interact with a production database clone
using Slack. They can execute queries and get execution plans with performance
metrics without direct access to the data.

Slack app configuration is described in [Joe's README](https://gitlab.com/postgres-ai/joe#slack-app).

##### Chatbot commands

- `help`: show available commands.
- `explain`: get the execution plan for an SQL statement. First, it performs just `EXPLAIN`
for the provided query, which is very fast because no actual query execution is performed.
It immediately allows understanding how "bad" the plan is. Immediately after this
`EXPLAIN (BUFFERS, ANALYZE)` for the query is being performed. Once it's done,
the detailed execution plan is provided, with some optimization recommendations.
Example: `explain select * from issues where id = 1;`
- `exec`: execute any query. Usually, it is used to modify the database schema.
For example, to create a new index: `exec create index i_new_1 on issues (last_edited_by_id);`
- `reset`: reset the state of your database clone. Useful for iterating. It is
not needed at the end of the session: all sessions are independent, and after
2 hours of inactivity, your thin clone will be deleted automatically, so that
the next session starts in a "fresh" state again.
- `\d`, `\d+`, `\dt`, `\dt+`, `\di`, `\di+`, `\l`, `\l+`, `\dv`, `\dv+`, `\dm`, `\dm+` — psql
meta-information commands. Useful to explore the current DB schema, learn current
sizes of any DB object. You can find each command explaination in the
[official PostgreSQL documentation](https://www.postgresql.org/docs/current/app-psql.html).

#### CLI

Slack as an interface is very accessible. It provides some basic collaboration and
search capabilities. At the same time, it is not always (and not for
everyone) convenient during development. Having a CLI as an alternative
interface might be a good option. [Database Lab](https://gitlab.com/postgres-ai/database-lab#usage)
provides CLI for those who are granted full access to production data.
With Database Lab CLI it becomes possible to request for a thin clone of
production database, get it in a few seconds, and then work using any tool,
including official CLI (psql) or any third-party GUI.

#### GUI

GUI with visual presentation of execution plans is another convenient feature
that can be implemented in the future. Examples of visual representation of
plans that can be integrated with Joe:

- [explain.depesz.com](https://explain.depesz.com/) ([GitLab repo](https://gitlab.com/depesz/explain.depesz.com)),
- [Postgres Explain Visualizer (pev)](http://tatiyants.com/postgres-query-plan-visualization/) ([GitHub repo](https://github.com/AlexTatiyants/pev)),
- [explain.dalibo.com](https://explain.dalibo.com),
- [explain.tensor.ru](https://explain.tensor.ru) (Russian only).

As of January 2020, many developers at GitLab prefer using explain.depesz.com
to visualize queries. At Postgres.ai, there is work in progress to provide better
means to integrate Joe with the best Postgres plan visualization tools.

### Storage and Filesystem

The data (a clone of production database) is located on an SSD Persistent Disk
(PD) in Google Cloud. The data on the PD is continuously updated thanks to Database Lab's
so-called "shadow instance" – a Postgres instance which continuously receives and replays
WAL data from WAL archive (WAL-E/WAL-G). Periodically, the baseline snapshot used for
thin cloning is being refreshed (as of January 2020, manually, 2-4 times per month;
we plan to switch to automated refreshes in the nearest future).

### GCE Instances

For better disk IO characteristics, GCE instances have to have more vCPUs. The
best performance is achieved with 60 or more vCPUs (see
[Google's official documentation](https://cloud.google.com/compute/docs/disks/performance#ssd-pd-performance)
with PD performance specifications).

As of July 2019, GitLab.com's production Postgres nodes have machine type
`n1-highmem-64`, with 64 vCPUs and 416 GiB of memory (Update: a few months later,
GitLab.com database switched to `n1-highmem-96`, with 96 vCPUs and 624 GiB).
It means that sustained disk throughput is 1,200 MiB/s for reads and 400 MiB/s
for writes. Joe is not designed to work with hundreds or thousands of users
simultaneously, which would imply having many gigabytes of hot caches. So,  higher
volumes of memory are not required. Use of `n1-highcpu-32` with 32 vCPUs and
28.8 GiB of memory looks reasonable, meaning that a similar level of disk
characteristics will be achieved for much fewer budgets.

For additional budget savings, it is reasonable to consider using a preemptible
instance (price for preemptible `n1-highcpu-32` is 78.8% lower compared to the
regular `n1-highcpu-32`, see [the official documentation](https://cloud.google.com/compute/vm-instance-pricing)),
re-provisioning such instance only when it is needed, keeping PD independent and
attaching it, or re-creating it from a PD snapshot. However, this requires
a fully automated and hassle-free approach to Database Lab instance provisioning.
The planned implementation of Kubernetes support in Database Lab and Joe bot
will meet these needs.

### HTTP Server

To receive Slack events, we need to set up a publicly available hostname, and
NGINX server with SSL enabled. We use 443 port for SSL connection. An SSL
certificate has to be generated for the hostname.

### Implementation Considerations

#### Testing

For the period of initial testing, we provisioned an instance of type `n1-highcpu-32`,
with 6 TiB standard (not "SSD") PD. Obtaining of Postgres database clone was done
using the so-called "restore" project that is used for daily backup verification.

On this PD, we created a ZFS pool using the following command:
```bash
    sudo zpool create \
      -O compression=on \
      -O atime=off \
      -O recordsize=8k \
      -O logbias=throughput \
      -m /var/opt/gitlab \
      zpool "/dev/disk/by-id/google-${INSTANCE_NAME}-data-disk" \
      -f
```

No additional ZFS tuning was performed during this test (such as setting
certain ARC cache values).

The production database was restored from the WAL-E archive (in the same way that
it is done daily for backup verification). Then, the database was promoted to
become a primary (to allow changes). Right after that, a ZFS snapshot was
created to support Joe's `reset` command.

The restoring of the database was done on the same node. So for testing
purposes, the setup included only one GCE instance:

![Single instance architecture](joe_single_instance.png){: .shadow}

Joe bot was added to GitLab's Slack workspace. Slack channel [#database-lab](https://gitlab.slack.com/messages/CLJMDRD8C) was created.

![Example of work with Joe in Slack](joe_example.png){: .shadow}

#### Security Aspects

Joe works with a clones of production databases. Users see only query execution
plans, they do not have direct access to the data.

On database machines being by Joe, only 22 and 443 ports are open. The latter
is used to organize communication with Slack. PostgreSQL is configured to
work only locally.

While direct access to the data is not allowed, users can get information
about presense of concrete values in the database (example: analyzing the pland of
`SELECT .. FROM t1 WHERE c1 = :some_value` we can understand how many records
with `c1 = :some_value` are present in the table `t1`). This makes possible
to use [blind SQL injection](https://www.owasp.org/index.php/Blind_SQL_Injection):
each query allows to leak some bits of information. The following is implemented
in Joe code to mitigate these risks:

- query rates limits for each user,
- audit log to track any user's activity.

#### Multi-user Support

Joe relies on Database Lab to provide thin provisioning capabilities. Database Lab
uses thin clones (in this setup implemented using ZFS snapshots and clones)
to provide all users fully independent database clones of 6 TiB production database
in a few seconds.

#### Cache Control

It is not uncommon that during SQL query optimization, developers overlook the
fact that query performance highly depends on the state of OS and Postgres
caches (the file cache and the buffer pool).

Joe helps to understand, was the most of the data obtained from
the Postgres buffer pool or OS cache, or it was mostly read from the disk.
There are plans to implement simple commands to allow users to reset both caches at any
time. This work is in progress.

### Operational Considerations

#### Automated Provisioning

Currently, Joe is installed and is being maintained using semi-automated approach.

We are working on automated provisioning on Kubernetes and GCP infrastructure.

#### Monitoring

Joe's process writes to the local logfile, `joe.log`. Audit records
are marked with `AUDIT` prefix. The future work includes setting up the log
shipping for centralized analysis, as well as technical monitoring and alerting
describing the state of Database Lab and Joe bot (free disk space, CPU usage, etc.)

## Testing Period. Summary

First appeared in Summer 2019 in Slack channel [#database-lab](https://gitlab.slack.com/archives/CLJMDRD8C) (internal link),
Joe quickly received attention from GitLab engineers. As of January 2020,
more than 70 people have joined the `#database-lab` channel, and 49 of them have used Joe to optimize SQL at least once during the last 3 months.

The old chatops tools (allowing to
EXPLAIN queries on a production clone, limited to read-only queries lasting not more than 15 seconds)
is still being used

[The analysis](https://docs.google.com/spreadsheets/d/1c46FKjBXcW89goY-tLVrBXxW7Y_cbIJrV7UGBZiRKbo/edit#gid=1110872840)
of both tools for the period of 4 weeks, since December 31, 2019, till
January 27, 2020, revealed the following:

- the number of commands sent to Joe is more than 4 higher than those sent to chatops (698 vs. 156);
- on average, Joe receives 28 commands per day (excluding "technical" commands such as help, reset),
while chatops gets ~6 commands daily;
- the average amount of commands in daytime communication between a developer and Joe is 8.8, while for chatops
it is 2.9;
- meanwhile, still, many developers use chatops: during 4 weeks analyzed, 24 people communicated with
the chatops tool and 27 talked to Joe.

![How many users used chatops vs. Joe in January 2020](joe_and_chatops_202001_users.png){: .shadow}

![How many SQL optimization calls were made to chatops vs. Joe in January 2020](joe_and_chatops_202001_calls.png){: .shadow}

See also: [Comparison of SQL micro-optimization methods](/handbook/engineering/infrastructure/library/database/postgres/query-optimization-bot/blueprint/#comparison-of-sql-micro-optimization-methods)

## Future Work

- Extend documentation for GitLab developers explaining how to use Joe
- Upgrade Joe to new version to speed up thin cloning (from 30-40 seconds to 1-2 seconds),
and add various usability improvements
- Support 'explain-rollback' ([MR](https://gitlab.com/postgres-ai/joe/-/merge_requests/64))
- Means to verify Rails DB migrations ([MR](https://gitlab.com/postgres-ai/joe/-/merge_requests/55))
- Provide cache control
- Provide ability to share a session or attach to someone's session
- Improve optimization recommendations, suggest indexes, partitions, etc.
- Switch to Kubernetes to get rid of manual control
- Integrate visualization tool
- Provide history and plan sharing capabilities for better collaboration

------

Author: [Nikolay Samokhvalov](https://gitlab.com/NikolayS) {: .note}
