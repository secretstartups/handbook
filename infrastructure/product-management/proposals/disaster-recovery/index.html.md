---
layout: handbook-page-toc
title: "GitLab.com Disaster Recovery Proposal"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

**Update 2022-07-13** This has been postponed. Functionality proposed outside of [Current Capabilities](#current-capabilities) should not be relied upon as a current or forward-looking indication of GitLab.com's RTO or RPO.
{: .alert .alert-warning}

## Background
The ability for GitLab.com to recover from a disaster scenario has been a top request among GitLab.com customers and is needed to help make [GitLab.com enterprise ready](/direction/enablement/dotcom/#availability-and-performance). The purpose of this document is to establish high-level objectives and approach towards addressing customer needs around Disaster Recovery and to establish the 12 month roadmap for delivering on this capability. 

## Current Capabilities
GitLab.com is primarily based around Google Cloud Platform services and [resources in the US-East region](/handbook/engineering/infrastructure/production/architecture/) in addition to dependening upon CDN, global routing, and edge network services from Cloudflare.

The GitLab.com systems are based on the same codebase that GitLab self-managed customers enjoy. Our aim is to deliver improved disaster recovery capabilities for GitLab.com while continuing to use and improve the GitLab product.

GitLab.com has implemented scaling features significantly larger than our largest published reference architecture to provide for resiliency and availability of GitLab.com services in the single US-East region. Additionally, GitLab.com employs technology and process to ensure that healthy backups of stateful data systems are taken on a frequent schedule. More importantly, we test that these backups can successfully be restored.

The main goal of this effort is to build on our single-region resiliency with additional capabilities to assure our enterprise customers of our ability to quickly restore service in response to a larger region disaster scenario.

## Failure Scenarios / Scope
We identify the following failure scenarios based on portion of infrastructure affected:

1. Regional outage
    - Entire GCP region goes down
1. Zonal outage
    - Availability zone goes down
1. Within-Zone outage
    - Ex: Gitaly Node Failures

This document focuses on addressing scenario #1 since we don’t currently have any protection against a GCP regional outage, but have some durability against zonal failures. Recovery Time Objective (RTO) and Recovery Point Objective (RPO) targets proposed later in this document, however, should apply to all scenarios above. To better improve our durability against zonal outages, we are planning to roll out HA solutions like Gitaly Cluster and move critical frontend services to [zonal clusters](https://gitlab.com/gitlab-com/gl-infra/delivery/-/issues/1175). While some of the capabilities we build to address scenario #1 may be used in situations #2 and #3, those use cases are not the primary focus of this effort. Individual repo and project restores for specific customers are also out of scope for this document. 

## Target Customer
We are primarily targeting GitLab.com customers in Silver+ with this initiative. However, we recognize that many small teams/hobbyist developers in the free tiers rely on GitLab.com to host important projects so we must have basic DR capabilities in place for them as well. Because we already provide a [great deal of value](https://about.gitlab.com/pricing/) in the free tier and are trying to [increase the number of customers in higher tiers](/direction/enablement/dotcom/#overview), as a business we can tolerate higher RTO/RPO times for free customers compared to premium customers.

## Customer Feedback
In general when buyers are considering GitLab.com, they want to be assured that we have the ability to restore service to GitLab.com in the case of a disaster. In-flight opportunities mentioning the need for Disaster Recovery add up to $5MM in ARR.

While we don’t expect DR capabilities to make or break a particular deal, it’s important that we provide enterprise customers -- many of whom have their own business continuity plans in place for their own customers -- some level of guarantee that their data can be restored in the case of a disaster. Lack of a DR solution would impact retention since some customers might move their workloads out of GitLab.com should it be down for a significant period of time. 

In the event of an outage, overall customers expect that service will be restored within due time as to not breach our availability SLA. In terms of a recovery point objective, customers want this to be as recent as possible since they are generating and storing business critical data on a frequent basis.

## What Competitors Are Doing
- GitHub guarantees a 99.9% quarterly uptime commitment for the GitHub Enterprise Cloud service: https://docs.github.com/en/github/site-policy/github-enterprise-service-level-agreement
  - “Force majeure” clause in subscription agreement: https://docs.github.com/en/github/site-policy/github-enterprise-subscription-agreement#1137-force-majeure
- BitBucket: No SLA https://confluence.atlassian.com/bbkb/what-is-atlassian-s-bitbucket-cloud-sla-uptime-support-etc-447644045.html
- Azure DevOps: 99.9% SLA https://azure.microsoft.com/en-us/support/legal/sla/azure-devops/v2_0/
- AWS CodeCommit: 99.9% SLA https://aws.amazon.com/codecommit/sla/
- Oracle Cloud: http://www.oracle.com/us/corporate/contracts/saas-public-cloud-services-pillar-3089814.pdf
  - RTO and RPO times differ by service (anywhere from 12hr RTO/ 1hr RPO to 30 mins / 15 mins)

## Options

### Hot Standby
With this option we maintain a fully-operational copy of the environment in a separate, secondary region that’s ready to serve live traffic. Data is also kept fully in-sync so that when a user writes to the primary region it is immediately replicated to the secondary region. When disaster strikes, we simply shift traffic away from the impacted region to the secondary region.
**Pros:** Near immediate RTO/RPO; separate instance could be used to serve users located closer to that region to minimize latency for operations like git and registry
**Cons:** ~ 2x costs (if not more for cross-region data transfer of replication events) since we maintain an identical copy of the environment (all compute, db, and storage components) in another region

### Warm Standby
With this option, we run a few necessary services in the secondary region to handle data replication (which would happen at regular intervals), but don’t spin up resources for other primary services until a disaster strikes.
**Pros:** Not as expensive as 1 since we only run enough services in the separate region to handle data replication
**Cons:** Worse RTO and RPOs than 1 since some infra will still need to be spun up on-demand and data is replicated at an interval rather than immediately.

### Cold Standby
With this option, we spin up a copy of the environment in the secondary region from scratch (e.g. via Terraform) when the disaster happens. Databases/block storage will be populated based on regularly taken snapshots in the primary region. 
**Pros:** Least costly since we don’t continually run resources in the separate region
**Cons:** Longest RPO/RTO times of the three options since we have to build the env from scratch and restore data from backups

## Proposal
### Silver and Gold customers
RTO: Based on an SLA goal of 99.95% we can afford to be down for [22 minutes per month](https://uptime.is/99.95), or ~66 min per quarter at which point we breach SLA. Therefore we set our RTO target for premium customers at **1 hour**. 

RPO: Looking at the [Analytics tab for the GitLab project](https://gitlab.com/gitlab-org/gitlab/-/value_stream_analytics), over past 30 days there were 5482 commits, which equates to ~7.5 commits per hour or 1 commit every 8 minutes. Assuming the GitLab project is representative of the size/activity of what enterprises might store on gitlab.com, we therefore set the RPO target to **10 minutes**.  Note, for commits that were not picked up by the replication process within the 10 minute timeframe, we recommend that customers rely on their local git history to restore them. 

### Free Customers
State that we will restore service for free users as quickly as we can, but offer no official time guarantee.

---

Based on these targets, since we can tolerate some outage time without breaching our SLA, near immediate RTO and RPO provided by the Hot Standby option is likely overkill for what we need (though we can consider offering a hot standby as a paid feature in future iterations).

As discussed in the Target Customer section, we believe that giving free customers the same RTO/RPO guarantees as premium customers would remove an important incentive for them to up-tier. Therefore, we propose treating free users differently than premium users from an Infrastructure standpoint and recommend going with the Warm Standby option for premium customers and the Cold Standby option for free customers as a way to cut down on overall cost to support this feature. 

## Cost Implications
We're tracking the infrastructe cost impact of this proposal [here](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/11591).

## Roadmap
We recommend rolling out a Disaster Recovery solution in an iterative manner and propose the following timeframe for delivering these capabilities:

**Phase 1 (By end of Q4 FY21):**
- Complete Geo failover on a staging/test environment and overall gap analysis of Geo to meet our requirements.

**Phase 2 (By end of Q1 FY22):**
- Enough capabilities in place to tell customers with confidence that we have the ability to recover if GCP us-east goes down (no official RTO guarantee at this point) 

**Phase 3 (By end of Q2 FY22):**
- Launch initial version of disaster recovery capability for paid customers. Targets:
  - RTO: 2 hours
  - RPO: 30 mins

**Phase 4: (By end of Q4 FY22):**
- Reach desired RTO/RPO times specified in proposal section above.
  - RTO: 1 hour
  - RPO: 10 minutes

**Future Iterations**
- In the future we can think about offering a hot standby option or even further redundancy options as an additional paid feature based on customer demand. 

## FAQ

**Q1: Should we have different RTO and RPO targets per service?**

Consensus is that this is something worth considering as a later iteration. Any service in the critical path of getting code out to production (e.g. Registry, Runners) may need to have more stringent RTO/RPO requirements than services in non critical paths (e.g. Pages). TBD whether we expose these different guarantees to customers. For the first iteration, in order to avoid confusion we will go with “all up” rto/rpo times.
