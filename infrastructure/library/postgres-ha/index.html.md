---
layout: markdown_page
title: "PostgreSQL High Availability Solution"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Idea/Problem Statement

GitLab.com uses [repmgr](https://repmgr.org) for managing replication and
failover for its cluster of PostgreSQL servers, it is also shipped to on-prem
customers in Omnibus. However, repmgr has some drawbacks.

### From architectural and algorithmic perspective

Repmgr does not state what algorithm it uses for cluster operations, like
electing a new master or fencing the older one, and in all cases ensure cluster
consistency. Only deep inspection of the source code may reveal it. There’s no
mention on the web page or its documentation. It is obviously not based on
distributed consensus like Paxos or Raft. This means that, from a theoretical
foundation, repmgr operations are likely prone to fail, or conversely provide
significantly weaker correctness guarantees.  From an architectural perspective,
repmgr writes its state in the primary node. Unless pure synchronous replication
would be used, which is undesirable for both performance and availability
reasons, this means that the cluster state and monitoring information is
inconsistent across the repmgrd daemons observing on each node of the cluster
(since state needs to be written into the master, and then replicated
asynchronously). So it becomes quite hard to assess how an implementation of a
leader election or other operations can be correct if they operate over
(potentially) different views of the cluster state from each node of the
cluster.

### From the implementation perspective

Repmgr does not support switchover and automatic failover with the same
configuration. Switchover is incompatible with automatic failover, under
brain-split risk. Quoting repmgr
[docs](https://repmgr.org/docs/4.0/switchover-caveats.html):

> repmgrd should not be running with setting failover=automatic in repmgr.conf
> when a switchover is carried out, otherwise the repmgrd daemon may try and
> promote a standby by itself.

#### "Degraded" mode

According to repmgr
[docs](https://repmgr.org/docs/4.0/repmgrd-degraded-monitoring.html), there are
certain cases (and its hard to consider them improbable) under which after a
failover is triggered repmgr may end up in a state where no subsequent action
may be taken, failing to promote a given node (i.e. leaving the cluster with no
master). Only possible outcomes are that cluster state returns to the expected
state for the operation to finally succeed or, if timeout is configured, to
exit. But it seems repmgr is not capable of approaching other possible failover
targets in the case the first one doesn’t succeed.  Quoting repmgr docs:
> In certain circumstances, repmgrd is not able to fulfill its primary mission
> of monitoring the nodes' upstream server. In these cases it enters "degraded
> monitoring" mode, where repmgrd remains active but is waiting for the
> situation to be resolved.

Situations where this happens are:
* A failover situation has occurred, no nodes in the primary node's location are
  visible
* A failover situation has occurred, but no promotion candidate is available
* A failover situation has occurred, but the promotion candidate could not be
  promoted
* A failover situation has occurred, but the node was unable to follow the new
  primary
* A failover situation has occurred, but no primary has become available
* A failover situation has occurred, but automatic failover is not enabled for
  the node
* repmgrd is monitoring the primary node, but it is not available (and no other
  node has been promoted as primary)

By default, repmgrd will continue in degraded monitoring mode indefinitely.
However a timeout (in seconds) can be set with `degraded_monitoring_timeout`,
after which repmgrd will terminate.

repmgr monitors PostgreSQL and other nodes via standard PostgreSQL wire protocol
connection. While normally an unprivileged user may suffice, many installations
use a privileged user as it is the same one used for replication purposes. This
is fine. However, if a database is saturated with as many as `max_connections`
connections, new connections will be dropped, and this may also apply to repmgr
connections. This confuses repmgr and could end up triggering a failover.
Exactly [this problem](https://gitlab.com/gitlab-com/migration/issues/770) was
already experienced in GitLab’s production environment, shortly after migrating
from Azure to GCP.

On network split events, it may happen that a group of nodes where the old
primary was, are in even number. To avoid possible split-brain scenarios, a
witness server is recommended. But it is
[non-scalable](https://repmgr.org/docs/4.0/repmgrd-network-split.html):

> repmgr enables provision of "witness server" to artificially create a quorum
> of servers in a particular location, ensuring that nodes in another location
> will not elect a new primary if they are unable to see the majority of nodes.
> However this approach does not scale well, particularly with more complex
> replication setups.

Nor is a complete solution to the problem. There could be more complex scenarios
(combinations of more nodes, some of them disconnected from others due to
network partitions) where the witness server may not suffice to satisfy a given
majority. We believe in these cases repmgr will leave the cluster in a state
with no master.

Due to the fact that state is written to the same database that is being
monitored and replicated asynchronously, in the event of primary fail this state
cannot be updated. This includes repmgr’s event notification system, which
becomes then unavailable, making it [very
fragile](https://repmgr.org/docs/4.0/event-notifications.html):

> Each time repmgr or repmgrd perform a significant event, a record of that
> event is written into the repmgr.events table together with a timestamp, an
> indication of failure or success, and further details if appropriate. This is
> useful for gaining an overview of events affecting the replication cluster.
> However note that this table has advisory character and should be used in
> combination with the repmgr and PostgreSQL logs to obtain details of any
> events. […]
Note that under some circumstances (e.g. when no replication cluster primary
could be located), it will not be possible to write an entry into the
repmgr.events table, in which case executing a script via
event_notification_command can serve as a fallback by generating some form of
notification.

#### Lack of tests

repmgr source code repository contains no failover tests. Neither unit nor
integration tests. Only [one
test](https://github.com/2ndQuadrant/repmgr/blob/8c422d60849b5b474bb356041a09a5ad50f9420a/sql/repmgr_extension.sql)
is present in the repository, and it’s only testing that the functions that are
installed with the extension are indeed present.

## Design

To address repmgr short comings, we consider using
[Patroni](https://github.com/zalando/patroni). It defines itself as "A template
for PostgreSQL High Availability with ZooKeeper, etcd, or Consul". Patroni does
not implement directly a consensus algorithm, but instead relies on a DCS
(Distributed Consensus Store, that already implements a consensus algorithm) to
support its operations. This means that:

* An external cluster of either etcd, Consul or Zookeeper is required. Consul is
  recommended. This means more operational complexity.
* Either of the three provides similar guarantees, which are basically that this
  cluster always presents a consistent view to its users (Patroni in this case)
  regardless of the cluster state (as long as any given majority of the nodes is
  alive; otherwise, cluster would become unavailable and will not service
  queries) and regardless of what node you connect or talk to.

Being based on a DCS, Patroni’s job is greatly simplified. A brief description
of how it operates follows:
* Every node periodically write to the DCS its position in the replication
  stream (lag). All nodes see the same information, all the time.
* Master node holds a lock that needs to renew every number of seconds. If it
  doesn’t, as long as all nodes see the same data, an election would be
  triggered.

In other words, the HA software is greatly simplified by offloading the
distributed consensus to the external DCS, at the cost of higher operational
complexity. However, this means that the DCS already provides very strong
correctness guarantees, and the confidence on the solution is significantly
higher.

If we would factor in other considerations that are required for HA, that also
need to be taken into account even with Patroni, the HA architecture may look
similar to that of the following (simplified) diagram:

![Patroni Cluster
Architecture](https://docs.google.com/drawings/d/e/2PACX-1vQc_ID9tsco9Rv8K692gBz640-L8-ICMa1nH0YsUfNUl9FAd1clE2Ls-wwmpuyBs3c89LkmEOopNhaA/pub?w=985&amp;h=1356)

Apart from the extra operational complexity due to the use of an external DCS,
Patroni has another significant drawback: as its own definition states, it is a
"template", and not a full-blown HA solution. This means that extra work (could
be significant) is required to implement the "missing pieces" (mostly entrypoint
and fencing, which are heavily environment dependent).

Patroni itself is not a standalone component of the architecture, but it is
rather deeply integrated with PostgreSQL. In particular, Patroni:

* Wraps PostgreSQL
* Manages PostgreSQL configuration
* Controls PostgreSQL lifecycle
* Performs the initial initdb. This is specially relevant, as by default Patroni
  expects the database cluster to be empty (no data). This can’t obviously be
  the case, so for the transient state of the migration from the current cluster
  to Patroni’s cluster, Patroni would be setup in a special mode, called
  "standby", where it is there "watching" but not acting, while data is being
  replicated via normal Streaming Replication from the original cluster. And at
  the switchover time, Patroni would be activated, without performing an initdb.

There is one Patroni per PostgreSQL node, as they are bundled together within
the same instance. Indeed, Patroni is the process launched by the init program,
and it launches, in turn, PostgreSQL.

Consul is the recommended DCS as it is already used by GitLab and shipped with
Omnibus. It is in turn recommended that Patroni will communicate with Consul via
a Consul Agent, which acts as a proxy. Thus every Patroni has connection to the
Consul Agent.

Patroni also exposes an HTTP API. This API could by used for dynamic Patroni’s
or even PostgreSQL’s reconfiguration, but in our case it’s mostly interesting to
serve the health check for the load balancer that will serve as the entry point
for the application. 

Patroni exposes the two following URLs:

* http://patroni.i.p:8008/master It will return HTTP 200 if this node is the
  master 	node of the cluster, or HTTP 503 (Service Unavailable) otherwise.	
* http://patroni.i.p:8008/replica It will return HTTP 200 if this node is a
  replica node of the cluster, or HTTP 503 if it is the master.

With this information it is easy to construct URLs for the health check of the
entrypoint. For a read-write channel, the /master URL could be used. At most one
node would respond to 200 to this URL, and the load balancer of the entry point
would route connections, always, to the master.

### The Entrypoint

The entrypoint is the mechanism by which PostgreSQL clients connect to the
PostgreSQL instances. While on a "normal" scenario this is simple (for instance
you may hardcode the IP and port), it doesn’t work on a dynamic scenario where
the master node is a parameter subject to change dynamically.

GCP internal load balancers (ILB) may be used for the purpose of serving as an
entry point. Consider a read-write connection to PostgreSQL. On the ILB one
proxied service may be created for the PostgreSQL cluster.

The ILB will expose a virtual IP (provided by its internal high-availability
mechanism) to PostgreSQL clients. At the same time, the ILB will use the health
check URLs provided by Patroni (as previously described) and that will make the
ILB to always point to the correct master, even after a failover.

Certainly, the applications should be (re)-tested to try to re-connect on
connection failure (as that is what will be perceived by the application in case
of a failover). This is not exclusive to automatic failover, but should be
tested in any scenario, always.


### Implementation Considerations

#### Testing

A new Patroni cluster is to be provisioned in staging in standby mode,
replicating from the existing PostgreSQL cluster. The new cluster should have
the same configurations and specs as the existing one. To minimize the
maintenance window required to migrate the production PostgreSQL cluster to
Patroni, multiple migration rehearsals should be performed in staging until we
have a smooth migration plan. After each migration, it is recommended that a
full QA suite to be run against staging as a sanity check that nothing has
changed from the client perspective.

#### GitLab.com and Self-managed

Patroni should work for self-managed installations the same way it does for
GitLab.com, with one difference that is the internal load balancer (ILB) as an
entrypoint. GitLab.com uses an ILB because it is cloud-hosted and the ILB is
guaranteed to be highly-available, but self-managed installations may not have
access to such solution.

Regardless, Omnibus
[docs](https://gitlab.com/gitlab-org/gitlab-ee/blob/f164be45167f0e239262feed0fa6fc761ee8350a/doc/administration/high_availability/database.md#architecture)
already suggest an entrypoint that is pgbouncer, and it can be used in of lieu
an ILB. There are two approaches that can be used:

1. To continue using the Consul watchers (after adapting them to Patroni) we
   ship with Omnibus to update pgbouncer configuration to point to the current
   PostgreSQL master, or
1. To configure pgbouncer with DNS name that is provided by a Consul
   [service](https://www.consul.io/docs/agent/services.html) that resolves to
   the current PostgreSQL master

Both approaches can leverage Patroni's API.

For existing self-managed installations that want to migrate from repmgr to
Patroni, [Patroni can take over a running
cluster](https://github.com/zalando/patroni/blob/93d157dea39e40bb6fdfa3c5172e7b2622795e10/docs/existing_data.rst)
when configured properly, but it would probably require careful coordination by
Omnibus.

### Operational Considerations

#### Automation

Once a Patroni cluster is up and running, adding and/or removing new cluster
members happen automatically when a node is newly created and/or decommissioned.

####  Monitoring

Existing alerts for PostgreSQL and pgbouncer should still function as expected.
New metrics for Patroni need to be created as Patroni itself doesn't expose
metrics. This can be achieved by scraping Patroni logs to alert on high error
rates or if the Patroni process itself is down.

### Additional Considerations

N/A

### Alternatives

#### Stolon

[Stolon](https://github.com/sorintlab/stolon) is a consensus-based high
availability solution. Instead of implementing itself a consensus algorithm, it
relies on a external service for this purpose, similar to Patroni. This external
service could be either etcd, Consul or Kubernetes API.

Stolon has a unique approach to the entry point problem: instead of relying on
external components to indicate applications how to route connections to the
(current) master, Stolon brings in a network proxy (PostgreSQL-specialized) to
serve as an entry point. This is a very good architectural decision, as it
allows transparency for the client, self-containment of the HA solution and
fencing capabilities (no client can connect to a master that became disconnected
from the rest of the nodes, since the proxy won’t allow it). The proxy is fed
from the consensus external service, so it always has a consistent view.
