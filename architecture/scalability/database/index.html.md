---
layout: handbook-page-toc
title: "Database"
---



We know that the database will not scale up *ad eternum*, so we have been exploring solutions involving **database sharding** to scale it out. Two proposals are under consideration:

- [Namespace sharding](https://about.gitlab.com/handbook/engineering/development/enablement/database/doc/root-namespace-sharding.html), and
- [Tenant sharding](https://docs.google.com/document/d/12KDzzeiqs0C9GnQtuPE8BJZVqrfsEBUy3vFD7_RFfho/edit)

Both approaches are backed by relevant data analysis, and they both reflect a desire to find a visible, high-level, easy-to-grasp splitting variable to use in the creation of logical groupings to shard the database, especially within the context of our values of Iteration ([MVC](https://about.gitlab.com/handbook/values/#minimal-viable-change-mvc)) and Efficiency ([Boring solutions](https://about.gitlab.com/handbook/values/#boring-solutions)).

And yet, arguably, there is nothing boring about sharding, especially about database sharding. The database is such a foundational component that even seemingly small changes can have major detrimental ripple effects across the board. The database is everything, its criticality far surpassing that of just about any other component, given the very stringent performance and durability requirements, coupled with the intrinsic complexity of the relationships it holds.

Database sharding is one of the hardest and most sensitive scalability problems we need to solve, bordering on *rite of passage* status into growing and maturing the environment at scale, Every decision we make has long-lasting effects, every iteration will naturally limit the space of future options. Furthermore, as time goes by, the dataset size and the relationships built into it will inevitably increase, making it more difficult over time to execute future sharding maneuvers, as they’re likely to require data migrations.

Which one of the two sharding proposals should we choose? They’re both sensible, they’re both technically correct, they’re both right, and they’re both wrong: that one option is complex and difficult to implement while the other is better aligned with our values does not build a strong case for selecting one over the other. A third option, for which we can find a large number of well-known examples, could propose a service-oriented split. A fourth one might toss Postgres altogether and select a different backend.

# Proposals

Both proposals advocate for splitting along the **`z`**-axis through sharding. This section evaluates the proposals through the lens of the scalability framework and its best practices.

## Namespaces [WIP]

### Summary

The Namespace sharding proposal seems logical at the outset: it avoids breaking up GitLab.com into subdomains, so namespaces are the next highest level entity available. However, namespaces are relationship entities: their primary (and only?) function is that of grouping a set of users and projects (with associated permissions, labels, etc), which runs squarely against `[NFR]`. Unfortunately, the proposal arbitrarily chooses root namespaces as the federation dimension, so in reality, only a subset of namespaces would be sharded. This adds complexity, as we not longer have a variable that works *all the time*.

### Analysis

#### Best Practices

##### `[CBF]` Componentization Before Federation

This proposal proposes federation through namespaces, so we must carefully evaluate why we would invoke the *Most of the Time* clause and override [CBF].

##### `[NFR]` Never Federate Relationships

Namespaces are *relationship entitie*s, which are extremely complex to federate, as they permeate the entire stack.

## Tenancy [WIP]

### Summary

The [Tenant Sharding proposal](https://docs.google.com/document/d/12KDzzeiqs0C9GnQtuPE8BJZVqrfsEBUy3vFD7_RFfho/) can be summarized in one sentence: “[tenants are completely isolated from one another](https://docs.google.com/document/d/12KDzzeiqs0C9GnQtuPE8BJZVqrfsEBUy3vFD7_RFfho/edit#bookmark=id.po3esvyd2k9j)”, which brings up an important question: why shard at all? If tenants are to be completely isolated, if we are going to force them to change their DNS entry end-point, the most obvious solution is to install separate GitLab instances under new domain names. We already do this internally: the production, staging, pre, and ops environments exist to provide isolation, which implies we are already running multiple instances at GitLab. This, of course,  would be the equivalent of reviving the old GitHost offering, which we found to be undesirable.

### Analysis

Tenancy is a **logical isolation strategy** that provides scalability benefits through the break up of a user population into naturally smaller groups. Tenancy is usually driven by a user’s need or desire to have their own GitLab hostname in GitLab.com (i.e., example.gitlab.com) or to embed a well-known address in their own domain (gitlab.example.com) to host GitLab. Thus, the primary motivation for this type of separation is rooted with the end-user, related to organizational identity, and at times driven by regulatory compliance needs, i.e., a **product decision** with a user bias. Of the [examples mentioned in the tenancy proposal](https://docs.google.com/document/d/12KDzzeiqs0C9GnQtuPE8BJZVqrfsEBUy3vFD7_RFfho/edit#bookmark=id.ntqfkww0qoh9), they were all likely driven by a need to separate tenants as a benefit to the tenants themselves (their user base wanted or needed the isolation so that they here would be no risk of having their messages or alerts available to other tenants).

#### Best Practices

##### `[CBF]` Componentization before Federation

CBF indicates we should componetize before we federate, but the tenant proposal advocates federation before componentization, in which case, we should carefully evaluate why we would invoke the *Most of the Time* clause and override [CBF].

The proposal outlines several benefits: 

* Technically straightforward: this argument is somewhat debatable, as there are queries all over the code base that will now need to take into account the `tenant_id`. Intuitively, a change that affects the entire stack is risky: we are bound to find edge cases given the swath of the application we intend to change,
* Sharding on a single key: most federated sharing occurs (and should occur) this way, so this probably isn't an inherent benefit. It is perhaps more concrete that namespaces, since it federates the entire subset of `tenant_id`s.
* Minimal application drift: it is not clear why any other approach would create any more drift than this one. There are ways to componentize and federate in the same database instance.
* Easier data residency: true
* SaaS migration: this is also debatable. Extracting the data that belongs to a `tenant_id` and migrating it to an entirely new database will not be trivial. It's achievable, of course, and will be necessary long-term (much like we find the need to move repositories among storage nodes)
* Incremental rollout: also true of any approach
* Customer demand: true, but customer demand was rooted in availability concerns, not scalability, and also driven by the desire to have Geo functionality available, which this option does not provide.
* Full parity with self-managed: true in that N=1 for self-managed.

A successful tenant, however, can potentially become large enough that it overwhelms the infrastructure underlying its tenant pod. The tenant proposal would likely force a tenant into sub-tenancy, again incurring on end-point destination issues and further migrations. Even if we by then we chose another scalability axis, we would now be dealing with federated migrations.

##### `[MVF]` Minimum, Variable-depth Federation.

This proposal argues that total isolation is the easiest, most straight-forward sharding step, squarely breaking with [MVF]. Prior experience suggests that any change that cuts across an entire stack is rarely easy, let alone straight-forward. As noted earlier, a separate instance would serve us just as well, with little development (tho we are not advocating said approach).

##### `[NFE]` Never Federate Entities

If we create a new entity, the **tenant**, we should not federate on a specific instance of said entity, i.e., we should decouple a tenant from there he tenancy container. It should be possible to align several tenants in a single tenancy container (from a scalability point of view). If a tenant were to desire a dedicted container, this would likely come at a cost.

##### `[FCC]` Federation is a Customer Choice

While some customers have asked for fault isolation, they have done so as an availability concern and the desire to have Geo functionality. While scalability was and continues to be a concern, it was never their primary driver. Taking into account the risks of new code cutting across the entire stack, coupled with the necessary migrations they would have to perform, they are unlikely to embrace this option if forced to do so. End-point destinations (i.e., the domain) are hidden away in developers’ Git configs and probably on a myriad of home-grown scripts that have GitLab.com hardcoded in them. **A migration imposed on existing users into a tenancy domain will be disruptive and place the burden of the migration on the users**, and will do so for no direct, apparent benefit to them.

##### Other Issues to Consider

- The tenant GitLab domain name would openly publicize that a particular organization is a GitLab user, which may or may not be desirable for said organization.
- We store intellectual property as code, so none of this content can be purged unless deleted by choice. It represents tangible value to our users. That other services (Slack, PagerDuty) do this is almost irrelevant. The value to a company of messages or alerts are far less than that of their code.
- We will enter the name arbitration business, which, at its worst, will have legal implications for us as a third-party. Arguably, we already support some naming through GitLab pages and the use of namespace in GitLab.com. The latter exist inside GitLab.com and are there not part of a public system (DNS). The former is far less visible than GitLab.com proper. Additionally, we will have to deal with name collisions, name land-grabbing abusers, and the like.



