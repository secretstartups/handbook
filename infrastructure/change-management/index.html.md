---
layout: handbook-page-toc
title: "Change Management"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}
### Context and Objectives

**Change Management** has *traditionally* referred to the processes, procedures, tools and techniques applied in IT environments to carefully manage changes in an operational environment: change tickets and plans, approvals, change review meetings, scheduling, and other *red tape*.

In our context, **Change Management** refers to the guidelines we apply to manage changes in the operational environment with the aim of doing so (in order of highest to lowest priority) **safely**, **effectively** and **efficiently**. In some cases, this will require the use of elements from traditional change management; in most cases, we aim to build automation that removes those traditional aspects of change management to increase our speed in a safe manner.

Our overriding objective is maximize changes that avoid traditional aspects of change management, which is an **iterative process** that will evolve over time. Success is measured by our ability to safely execute changes at the speed required by our business needs.

# Changes

**Changes** are defined as modifications to the operational environment, including configuration changes, adding or removing components or services to the environment and cloud infrastructure changes. Our [Staging environment](handbook/engineering/infrastructure/environments/#staging) is crucial to our GitLab.com release process.  Therefore, Staging should be considered within scope for Change Management, as part of Gitlab's operational environment. Application deployments, while technically being changes, are excluded from the change management process, as are most, but not all, [feature flag toggles](https://docs.gitlab.com/ee/development/feature_flags/controls.html#process).

* **Service changes** are regular, routine changes executed through well-tested, automated procedures performed with minimal human interaction that may cause predictable and limited performance degradation and no downtime. A service change is implemented such that **it protects the environment while executing the desired change**.  As such, mature service changes do not require review or approval except on their very first iteration.

* **Maintenance changes** are complex changes that require manual intervention and will cause downtime or significant performance degradation. These changes require strict scheduling, careful planning and review, and approval by the Director of Reliability.

**Deployments** are a special change metatype depending on their scope and the effect they may have on the environment, as defined above. As we make progress towards CI/CD, we aim to turn all deployments into simple service changes.

**Changes** that need to be performed during the resolution of an Incident fall under [Incident Management](/handbook/engineering/infrastructure/incident-management/).

**Operational Environments** are currently defined as `GitLab.com` and `ops.GitLab.net` as well as supporting systems such as Prometheus.

## Trust

Change Management is underpinned by **trust**: we trust ourselves to act responsibly when working in the operational environment and do everything in our power to **safeguard its integrity** and **maintain its availability and performance**.

To that end, we must develop a practice through automation that allows for **safe** changes.  Our highest priority is **always** the integrity and reliability of the operational environment, which entails appropriate risk evaluation, quantifiable validation and verification, extensive communication, detailed auditing, and a focus on *defensive coding*.

### Anatomy of a Change

At its core, changes implement the **transitions** that take the operational environment from its **current state** to a **new state** that yields the desired configuration. It is critical that we have a full and concrete understanding of both states, as they determine how the transition is planned and executed.

Change always begins with the **current state** of the environment, which is defined by both its **actual state** and the **assumptions** made about it. Predicting the ways in which a change will fail or yield undesirable results is, at best, an extremely difficult undertaking (if at all possible); it is outright impossible when our assumptions do not match reality, which is one of the primary sources of change failure, as the change will behave in unexpected ways under uncertain conditions, likely resulting in an incident.

**All changes, without exception, regardless of complexity and whether they require a change plan or not, must outline, implement and codify pre-flight checks and post-verification checks. The automation's primary goal is to protect the environment. When exceptions are necessary, the author should document why this is the case, and the reviewer should approve said exception.**

In general, three rules are critical to the successful execution of a change:

* Avoid *wildcard globbing*.
* Always execute changes from production systems, never from your laptop.
* Always create quantifiable (and ideally programmatic) pre and post change checks.

#### Pre-flight Checks

Pre-flight checks **protect** the operational environment by validating assumptions about the current state of the  environment and provide the necessary gates to the execution of any change. If any assumption is proven to be incorrect through these checks, a change should either be halted or take corrective action: under no circumstances should a change proceed as originally planned when pre-flight checks are not successful.

Pre-flight checks should be coded into the automation and executed as the prerequisite step of a change. In essence, we are asking the question *what must be true for the change at hand to execute successfully?*

In determining what these checks should entail, we must focus on the assumptions implicit in the change. There are many examples of how to defensily protect the environment:

* If a change should result in changes to a specific environment, then it should check that hosts and services affected are in said environment.
* If a change will operate against an entire DNS zone, it should ensure each and every record is accounted for on the source and destination before effecting the change.

While pre-flight checks will likely have an effect on the speed of a change (both on *our* speed to implement changes and on the runtimes), failure has a far greater impact, especially on our users. When working on Infrastructure changes, **safety** is always prioritized over **velocity**.

#### Post-verification Checks

Much in the way we must validte the current state of the environment and the assumptions we make about it before a change, we must always validate the new, post-change state and the assumptions made about it. We must explicitly quantify the desired results of the change.

As examples:

* If we execute any change on a given service host, we should validate the health of the service post-change: are service ports accessible? are monitoring endpoints reachable?

#### Availability of Monitoring and Alerting Systems

Key to all pre-flight and post-verification steps is our monitoring stack, based primarily on Prometheus, Thanos and AlertManager (the `monitoring` service).

Additionally, most incidents are the direct result of change, either in the application, through deployments, or infrastructure changes. It is therefore imperitive that any elective change (ie, one not related to an urgent ongoing incident) requires the availability of our metrics platform.

If the monitoring platform is not functioning correctly, no change should be executed, unless it is being made to resolve an ongoing critical incident.

"_no metrics, no changes._"
{: .alert .alert-gitlab-orange}

### Change Priorities

Change Management helps us prioritize our resources towards changes that need to be made more resilient through defensive automation. Priorities are driven by two factors:

* changes that can potentially cause ~S1 or ~S2 incidents
* changes driven by services that are below a TBD error budget

In these situations, we will focus on developing the necessary automation and safeguards to help teams and services move towards safe service changes in a timely fashion. Until then, all changes that fall under the two aforementioned categories are treated as maintenance changes.

### Change Severities

Change severities encapsulate the risk associated with a change in the environment. Said risk entails the potential effects if the change fails and becomes an incident. Change management uses our standarized severity definition, which can be found under out which can be found under [issue workflow documentation](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/development/contributing/issue_workflow.md#severity-labels).

* In order to minimize the number of variables at play, no changes are executed during an active incident.
* ~S1 and ~S2 changes are always serialized and executed exclusively (i.e., never concurrently).
* ~S3 and ~S4 changes are allowed to take place concurrently as long as there is awareness of said concurrency.
* The Infrastructure on-call resource has veto power over any and all changes.

## Change Plans

All changes should have change plans. Planning is the way the infrastructure department assesses and mitigates the risks changes introduce. They generate awareness and are the focal point for scheduling, communicating, and recording changes.

# Change Request Workflows
Plan issues are opened in the [production](https://gitlab.com/gitlab-com/gl-infra/production/issues) project tracker via the [change management issue template](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/new?issuable_template=change_management). Each issue should be opened using an issue template for the corresponding level of criticality: `C1`, `C2`, `C3`, or `C4`. It must provide a detailed description of the proposed change and include all the requested information in the template. Every plan issue is initially labeled `~"change::unscheduled"` until it can be reviewed and scheduled with a Due Date. After the plan is approved and scheduled it should be labeled `~"change::scheduled"` for visibility.

All change requests, regardless of the change criticality follow the same [change management issue template](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/new?issuable_template=change_management).

## Change Criticalities

### Criticality 1

These are changes with high impact or high risk. If a change is going to cause downtime to the environment, it is always categorized a `C1`. Before implementing the change.

**Examples of Criticality 1:**

1. Any changes to Postgres hosts that affects DB functionality - quantity of nodes, changes to backup or replication strategy
1. Architectural changes to Infra as code (IaC)
1. IaC changes to pets - Postgres, Redis, and other Single Points of Failure
1. Changes of major vendor - CDN, mail, DNS
1. Major version upgrades of tooling (HAProxy, Chef)
1. Creating and deploying a custom build generated by ourselves is generally not recommended. There are use cases where it could be necessary due to a security or stability patch, to apply before it is part of the official upstream release. It is only allowed through Criticality 1 guidelines.
1. Architectural or tooling changes to alerting infrastructure.

#### Approval

1. Add a Due Date to the issue and to the [GitLab Production](https://calendar.google.com/calendar/embed?src=gitlab.com_si2ach70eb1j65cnu040m3alq0%40group.calendar.google.com) calendar.
1. Have the change approved by Infrastructure management at the Sr. Manager level or above.
1. Identify the Engineer On-Call (EOC) scheduled for the time of the change and review the plan with them.
1. Announce the start of the plan execution in the `#production` Slack channel and obtain a written approval from the EOC in both the issue and in Slack.
1. Join The "Situation Room" zoom channel with the EOC and obtain verbal approval to start the plan execution.

The EOC must be engaged for the entire execution of the change.

### Criticality 2

These are changes that are not expected to cause downtime, but which still carry some risk of impact if something unexpected happens. For example, reducing the size of a fleet of cattle is usually ok because we've identified over-provisioning, but we need to take care and monitor carefully before and after.

**Examples of Criticality 2:**

1. Any changes to databases which do not meet the requirements of being Criticality 1.
1. Load Balancer Configuration - major changes to backends or front ends, fundamental to traffic flow
1. IaC changes to cattle / quantity when there is a decrease
1. Minor version upgrades of tools or components (HAProxy)
1. Removing old hosts from IaC (like removals of legacy infrastructure)
1. Changes to alerting routing or integrations.
1. Any procedural invocation such as a SQL script, a ruby script module, a rake task which is performed on a production console server, either using `gitlab-rails` or `gitlab-rake`.

#### Approval

1. Add a Due Date to the issue and an event to the [GitLab Production](https://calendar.google.com/calendar/embed?src=gitlab.com_si2ach70eb1j65cnu040m3alq0%40group.calendar.google.com) calendar.
1. Identify the Engineer On-Call (EOC) scheduled for the time of the change and review the plan with them.
1. Have the change approved by Reliability Engineering management at the manager level or above.
1. Announce the start of the plan execution in the `#production` Slack channel and obtain a written approval from the EOC in both the issue and in Slack.


### Criticality 3

These are changes with either no or very-low risk of negative impact, but where there is still some inherent complexity, or it is not fully automated and hands-off

**Examples of Criticality 3:**

1. IaC changes to cattle / quantity when there is an increase (not requiring reboot or destroy/recreate)
1. Changes in configuration for current systems serving customers related to DNS or CDN

#### Approval

1. Add a Due Date to the issue.
1. Identify the Engineer On-Call (EOC) scheduled for the time of the change and review the plan with them.


### Criticality 4

These are changes that are exceedingly low risk and commonly executed, or which are fully automated.  Often these will be changes that are mainly being recorded for visibility rather than as a substantial control measure.

**Examples of Criticality 4:**

1. Any invocation of an existing code pathway which ultimately will perform any mutate operation on live data.  This is distinguished from diagnostic investigation operations which should typically be limited to read-only operations.  It is ostensibly left to the discretion of the engineer whether or not a peer should be included to co-observe the invocation of such diagnostics.

#### Approval

No approval required.


### Change Plans Summary

With change plans, we develop a solid library of change procedures. Even more importantly, they provide detailed blueprints for implementation of defensive automation. Adding on to the defensive automation, every change request that uses some sort of a script _must have a dry-run capability_, the script should be run in the dry-run mode and its output should be provided to the CR for review. Ideally, the planner and the executor should be different individuals.

## Scheduling the Change

UTC is the standard time zone used in talking about the scheduled time for all the changes.

When scheduling your change, keep the impact of the change in mind and consider the following questions: 

1. Are there other C1/C2 changes occuring around the same time?
1. Does the change being conducted contain a planned failover or other high-risk component, where the risk to customers can be reduced by executing the change in a low-traffic period?
1. As the DRI for the change, are you able to supervise the change, and communicate its status to the EOC, for an agreed upon period of time after the change?
1. Is the change being conducted at a time conducive to recovering (i.e. rollback of the change) from any issues arising from the change?


## Change Execution

If the change is executed by a script, it should be run from the bastion host
of the target environment in a terminal multiplexer (e.g. screen or tmux) session.
Using a bastion host has the benefit of preventing any unintended actions
(e.g. caused by a script bug) from spreading to other environments. A terminal
multiplexer guards against the possibility of losing connection to the bastion
mid-change and the unpredictable consequences of it.

`sudo` is disabled on the bastion hosts, so you can copy your Chef PEM file to
one of them, if your script requires it, without fearing it being snooped on.

A sequence of actions to run a script could look like this:

```
your-workstation $ ssh -A bastion-01-inf-gstg
bastion-01-gstg  $ tmux
bastion-01-gstg  $ git clone git@gitlab.com:my-migration/script.git
bastion-01-gstg  $ ./script/migrate
```

## Change Reviews

Maintenance changes require change reviews. The reviews are intended to bring to bear the **collective** experience of the team while providing a forum for pointing out potential risks for any given change. A minimun quorun of three reviewers is required to approve a ~S1 or ~S2 maintenance change.

## Roles

| **Role** | **Definition and Examples** |
| -------- | ------------------------|
| `EMOC`   | **Event Manager** |
|          | The **Event Manager** is the tactical leader of the change team. For **service changes**, the EMOC is the person executing the change. For **maintenance changes**, the EMOC is the person in the IMOC rotation. ~S1 and ~S2 changes require an EMOC.|
| `CMOC`   | **Communications Manager** |
|          | The **Communications Manager** is the communications leader of the change team. The focus of the Change Team is executing the change as safely and quickly as possible. For ~S1 and ~S2 **maintenance changes**, a CMOC communicates with the appropriate stakeholders. Othersiwe, EMOC can handle communication.|
| `CT`   | **Change Team** |
|          | The Change Team is primarily composed of technical staff perfoming the change.|

## Communication Channels

Information is a key asset during any change.  Properly managing the flow of information to its intended destination is critical in keeping interested stakeholders apprised of developments in a timely fashion. The awareness that a change is happening is critical in helping stakeholders plan for said changes.

This flow is determined by:

* the type of information,
* its intended audience,
* and timing sensitivity.

For instance, a large end-user may choose to avoid doing a software release during a maintenance window to avoid any chance that issues may affect their release.

Furthermore, avoiding information overload is necessary to keep every stakeholder’s focus.

To that end, we will have:

* a dedicated change bridge (zoom call) for S1 and S2 changes.
* periodic updates intended to the various audiences at place (CMOC handles this):
  * End-users (Twitter)
  * eStaff
  * Support staff
  * Employees at large
* [a dedicated repo for issues related to Production](https://gitlab.com/gitlab-com/gl-infra/production/issues) separate from the queue that holds Infrastructures’s workload: namely, issues for incidents and changes. This is useful because there may be other teams, over time, that need to do work in the production environment.
* After the maintenance is complete - handoff notes to other region on call team members should be left.  Including items like:
  * state / success of the maintenance
  * any alerts that can have been silenced and may go handoff
  * links to specific graphs to watch for areas of concern

## Communicating a change that requires Downtime ("maintenance window")

From time to time we will need to run a production change that requires downtime, affecting customers and our SLO. This section covers how to successfully manage communications in these type of situations.

As a reference, we should communicate 5-6 weeks before the change, for a C1 that does not carry a significant architecture change. Longer preparation time is adviced if the change involves a large migration or a significant architecture change.

Steps:
* Create a Google doc with the change communication message draft. Have it reviewed by an SRE Manager and those involved with the change.
* Create an issue for the official company communication about the change.
    * Create a new communication Issue in the **Production project** of the Gitlab Infrastructure team. Choose template: "external_communication", and fill in as suggested in the template comments.
    * Set Confidentiality to `Confidential` until the day we publish it in status.io, when we will set it to `Not Confidential`.
    * Obtain approval for the overall plan and expected impact from:
      * Director of SRE, Infrastructure
      * VP of Infrastructure
      * VP of Support
* 1 month before the change at least (if possible):
    * Ask our TAMs in our #customer-success channel about their preferences on how to communicate this change to our main customers:
        * Make sure that our main customers TAMs are included in this "ping". If we need to get the list of our Marquee customers, it is [here](https://gitlab.com/gitlab-com/gl-infra/marquee-account-alerts/-/blob/master/marquee-accounts.yml).
        * They might propose that we communicate in the customer's channel about the specifics of the change. If that is the case draft a msg, agree on its content with the TAM and share it in the relevant customer Slack channels (in sync with the TAM).
    * Share information and a link to the Issue in `#whats-happening-at-gitlab` slack channel
* Shortly after that, the Communication Issue should be linked to a simple post in status.io (by clicking in "new maintenance"). We should engage with the CMOC to Share that maintenance in status.io, via all the possible channels (mail, tweet, slack, etc). From there customers will be able to ask questions and comment on it.
[The company official way to communicate downtime to customers is via status.io].
* From this point, when the upcoming change is already public, we should:
    * Check the Communication Issue periodically, to see if we have question/comments from our customers, to address them timely.
    * Remind customers about the upcoming change 2 weeks, 1 week, 3 days and 1 day before the change time, via status.io.

# Production Change Lock (PCL)

While changes we make are rigorously tested and carefully deployed, it is a good practice to temporarily halt production changes during certain events such as GitLab LiveStream, GitLab Summit and days where LOA (leave of absence), due to holidays, is high in engineering teams. We categorize these special periods of times into two buckets:

1. GitLab Events
2. High LOA

Risks of making a production deployment during the said periods includes immediate customer impact and/or less engineering team coverage in case an incident occurs and has to be resolved immediately. Therefore, we have introduced a mechanism called **Production Change Lock (PCL)**. We see the future of PCL as an automated process which, provided a time range, locks production deployments and releases the lock once the time expires. However, as the first iteration towards this future state we are starting with creating events on our **Production Calendar** so that teams are aware of the PCL periods.

The following dates are currently scheduled PCLs. Times for the dates below begins at 09:00 UTC and ends at 09:00 UTC.

| Dates                       | Type       | Reason                        |
|-----------------------------|------------|-------------------------------|
| 24 December 2019            | Soft       | Holiday: Christmas Eve        |
| 25-26 December 2019         | Hard       | Holiday: Christmas            |
| 27-31 December 2019         | Soft       | High Number of SRE Vacations  |
| 01 January 2020             | Hard       | Holiday: New Year's Day       |
| 21-28 March 2020            | Hard       | GitLab Contribute             |
| 22nd of every month         | Soft       | Release day                   |

There are 2 types of PCLs: soft and hard.

### Soft PCL

Soft PCLs aim to mitigate risk without halting all changes to production.
Soft PCLs prohibit infrastructure changes with a criticality level of 2 or higher. In case of an emergency, the EOC should interact with the IMOC for C1 and C2 changes.

During the soft PCL, code deployments to canary are allowed since we have tools to control canary impact. Production deployments are allowed for lower criticality items (C3/C4) in coordination with the EOC.
These items include high priority code deployments (impactful bugs, security fixes).

### Hard PCL

Hard PCLs include code deploys and infrastructure changes for every criticality level (see [change severities](/handbook/engineering/infrastructure/change-management/#change-severities)).
In case of an emergency, the EOC should interact with the IMOC prior to making any decision.
It is at EOC and IMOC discretion to make a decision on whether a change should be approved and executed. If the change is approved, IMOC should inform the VPE of this decision.

## Feature Flags and the Change Management Process

Feature flags reduce risk by allowing application changes to be easily tested in production. Since they can be gradually or selectively enabled, and
quickly turned off, their use is encouraged whenever appropriate.

However, as the company and the number of developers working with feature flags continues to grow, it becomes important to manage risk associated with
these changes too. Developers follow the process defined in the [developers documentation for feature flags](https://docs.gitlab.com/ee/development/feature_flags/controls.html#rolling-out-changes).

On any given day, dozens of feature flag changes may occur. Many of these are trivial, allowing low risk changes -- sometimes just changes to UI appearance -- to be tested. However, some feature flag changes can have a major impact on the operation of GitLab.com, negatively affecting our **service level agreements**. This in turn can have a financial and reputational risk for the company. Without clear communication between the application developers toggling features and the engineer-on-call (EOC), it can be difficult for the EOC to assess which feature flag toggles are high risk and which are not.

Additionally, during an incident investigation, knowing which high-risk features have recently been enabled, and documentation on how to assess their operation, is important.

**For this reason, feature flag toggles which meet any of the below criteria, should be accompanied by a change management issue.**:

* **Features that enable new services**: For example, if a feature toggle will drive traffic to a newly provisioned database or through a new application service.
* **Features that may have an impact on the service levels availability of GitLab.com**: any feature which could, under reasonable circumstances, lead to an incident.
* When feature toggles, or associated features, have **previously had to be rolled back due to user-impacting service degradation**, or as a result of the previous toggle leading to a production incident.
* When the application development team assess the risk of the change to warrant the overhead of change management, or the infrastructure team specifically request it.

## Questions

- **Does _production_ above include _canary_?**

    Yes.

- **Does this apply only to production environment?**

    Yes. Only production environment. This means you can still make changes and deployments to environments other than production.

- **What is the exact scope of the changes that are enforced under PCL? (infrastructure, software, handbook...etc)**

    Any production change that has a potential of making gitlab.com unavailable. For example, configuration changes, setup of new libraries, introducing new code.

- **What if I still want to make a change during the PCL period?**

    VPE will need to approve your change production rollout during PCL period in non-urgent situations.

- **Does this apply to our monthly release which happens on the 22nd?**

    No. If 22nd falls under PCL period, additional coordination is necessary to ensure uninterrupted monthly release.

- **Why did you select these dates only?**

    The above listed periods are immediate times we know we will have less engineering teams' coverages (because of holidays, vacations and events). This was a data-driven decision based on our engineering population density around the globe. We hope to have made a progress towards the automated, future state of PCL beyond May, 2019 and if we achieve our goal we would be managing these via systems rather than manual communications and calendar events.

- **We have a question that is not answered here?**

    Please raise an issue to [Infrastructure team's queue](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues) and we will be happy to get back to you as soon as we can.
