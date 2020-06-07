---
layout: handbook-page-toc
title: "GitLab Security Releases"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Resources

Issues:

* [`framework/29`](https://gitlab.com/gitlab-com/gl-infra/delivery/issues/29)
* [`framework/107`](https://gitlab.com/gitlab-com/gl-infra/delivery/issues/107)

Documentation:

* [`release/docs/security`](https://gitlab.com/gitlab-org/release/docs/tree/master/general/security)

## Overview

Security releases are naturally very similar to patch releases, but
on a much shorter timeline.

Number of teams/departments are participating in each type of security release:

* Security team
* Development team
* Infrastructure department - Delivery team
* Quality team
* Marketing team

At GitLab, we have two types of releases:

* Patch release
  * Includes releases for major, minor and patch versions of GitLab
* Security release, with two distinct types of priority
  * critical: immediate patch and mitigation is required for a single issue
  * non-critical: regular monthly release of planned security fixes

We can also define two customers we are serving with security releases:

* internal customer: GitLab.com, dev.gitlab.org, ops.gitlab.net
* external customer: All customers and GitLab users

### Participating teams

**Security team** involvement in security release process is detailed in [security release docs](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/security-engineer.md).

Responsibilities can be summarised as:

* Triaging incoming security vulnerability reports
* Verifying validity of those reports
* Applying the severity/priority labels after verification
* Working with the Development team on defining the problem and informing of common
security practices that might be applied
* Informing the Delivery team on pending security releases
* Working with Quality team on manually verifying fixes for reported security vulnerability
* Working with the Marketing team on providing information to the external customers
* Follow up with the security reporters

**Development team** involvement in security release process is detailed in [security release docs](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/developer.md)

Responsibilities can be summarised as:

* Assigning developers to address the security report
* For top severity/priority reports, provide hot patches for internal customer
* Working with the Security team on adjusting the severity/priority in case of discrepancy between the report and actual situation, on case per case basis
* Providing a fix for the security vulnerability
* Creating backports for older releases possibly affected by the vulnerabilities

**Infrastructure team** involvement in security release process is done through participation of
two teams: Delivery team and Reliability teams.

Delivery team responsibility is detailed in [security release docs](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/release-manager.md) and it is related to release management tasks. Reliability teams are responsible for applying hot patches
for the internal customer.

Delivery team responsibility can be summarised as:

* Coordinate between ongoing regular releases and security releases
* When information is received from Security team about upcoming critical security release, creating release plans with a timetable on when the critical security release can be completed
* Preparing a release for all versions affected
* Porting all fixes provided by Development team
* Deploying prepped release artifact for internal customer
* Coordinating with Quality team on executing automated and manual QA tasks
* Coordinating with Security team on timing for public release of the security release
* Publishing all release artifacts

**Quality team** involvement in security release process is detailed in [security release docs](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/quality.md).

Responsibilities can be summarised as:

* Once notified by Delivery team of pending security release, prepares test environments
* Runs automated QA tests against the environments for each backport being prepared
* Provides Security team with access to test environments for manual verification

**Marketing team** involvement is related to sending notice to security mailing list.

### Critical and non-critical security releases (per 2019-01)

Decision on what goes into a critical and what goes into a non-critical release is made
initially by Security team which is triaging the initial security report.

Definition of severity and priority labels is [noted in the security team handbook](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues/).

When the labels are applied, Security hands off the issue to the Development team which does its own estimation on how difficult it is to address the report. Development team can also shed some
new light on the issue and, in cooperation with the Security team, discuss changing of severity and priority labels.

In the case of highest severity/priority, critical security release process is started.
Development team creates a hot-patch that is handed of to Infrastructure team for applying to the environments of internal customer.
In the same case, Security team informs the Delivery team (responsible for releases) of incoming highest
severity/priority patch. Delivery team then prepares a possible timeline for critical security release.

In the case of lower severity/priority reports, non-critical security process is followed.
Non-critical security process has a different release timeline and different urgency of providing
fixes for the issue. Issues triaged with lower severity/priority are scheduled using
the regular development processes and the internal customer receives the fix in similar way to
external customers. The Delivery team creates a non-critical security release at a predefined
schedule.   

### Internal and external customers (per 2019-01)

Customers are defined from the point of view of GitLab Inc.
Internal customer is a team that runs any GitLab instance that potentially has
important data that can affect business operations of GitLab Inc.

In 2019-01, the internal customer is the Infrastructure department whose teams are
operating installations of GitLab for GitLab.com, dev.gitlab.org, and ops.gitlab.net.

External customer is not less important than internal customer, and the difference between the two
only exists due to public exposure of internal customer and the distribution channels at disposal.

In the case of critical security releases, hot-patches are applied to critical infrastructure
as soon as the patches become available. When the Development team prepares the final fix,
release is deployed and hot-patches removed. The same release is then shipped to external customers
and external customers are notified of release through various announcement channels.

In the case of non-critical security releases, no hot-patches are provided for internal customer.
Internal customer receives the final release artifact and this gets deployed to various environments
before. External customers then receive the same release artifact.

## Open questions in security releases

With the above process overview, there are some open questions that should be addressed
in order to make the security releases more efficient.

1. Do all listed teams need to participate in the process?
1. What are the SLA's for *releasing* the fixes to public for each of the severity/priority labels?
1. How do we ensure that fixes do not leak to public given the public nature of our work?
1. How do we ensure that the security/priority items are upgraded/downgraded in priority when new information is received, and how do we communicate it efficiently?
1. What is the requirement behind releases containing only security fixes?


### Do all listed teams need to participate in the process?

Given the title of this document, we know that at minimum we have Security and Development team involved and that fact is not going to change
through process or automation.

The other teams are up for discussion, so let's focus on what can be _removed_, and _changed_(or _unchanged_) in their process.

**Infrastructure department** teams, Delivery and Reliability teams participate in the process.
Reliability teams are currently only involved through verifying and applying hot-patches to GitLab.com environments.
Through automation, Delivery team has created a new [patching tool](https://ops.gitlab.net/gitlab-com/gl-infra/patcher)
that is fully unattended. This means that Reliability teams could only be involved with confirming the fix
given that this can directly affect their on-call duties.

_REMOVE_ Reliability teams on-call person applying hot-patch
_CHANGE_ Reliability teams on-call person approving hot-patch

Delivery teams has responsibility in releasing fixes to both external and internal customers.
Releasing to internal customer can be done through automation and CI/CD. For reasons described in
[CI/CD blueprint](/handbook/engineering/infrastructure/blueprint/ci-cd/), this process is a road
more than it is a process or automation change.
Releasing to external customers has a different dimension in that it requires backporting to older versions
and manual tasks to ensure that the backports are applied cleanly.

Due to the above, Delivery teams involvement in security release will remain _UNCHANGED_.

**Quality team** is responsible for providing access to backport releases for external customers and running an automated GitLab QA suite.
Due to work executed in CY18, by Quality team but also Distribution team, involvement of Quality team in Security releases can be automated.
Distribution team has created [gitlab-provisioner](https://gitlab.com/gitlab-org/distribution/gitlab-provisioner/) tool which can create
a full HA environment using the omnibus-gitlab package. This task is also fully automated in `nightly` pipelines where a full environment is created
and GitLab QA ran against it.

With some additional changes to this setup, we can automatically create an omnibus-gitlab environment with automated QA executed against it.
If there is a requirement of providing access to Security team for manual verification, some additional work can be done to allow for that.

_REMOVE_ Quality team does not need to participate in Security releases

**Marketing team** is responsible for communication with the public. It is not fully clear what tasks need to be executed on, but from
some minor investigation this involves scheduling an email campaign for security mailing list. Scheduling a tweet used to be one
of the other tasks but it is difficult to confirm this at this point.

If it is possible to automate email campaign, and tweet scheduling, Marketing team can be completely removed from the process.
Alternatively, if automation is not possible, one of the other involved teams can be responsible for executing this task. Given that Security team
is starting, and has final tasks in the process, assigning this task to the Security team could remove another handover. In either case,

_REMOVE_ Marketing team does not participate in Security releases
_CHANGE_ Automate email campaign and tweet, or change the owner of the task


Conclusion: We can remove participation of two teams in the process, Quality and Marketing, by automating tasks or changing ownership in the process.


### What are the SLA's for *releasing* the fixes to public for each of the severity/priority labels?

Security team has definition of [Severity and Priority labels](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues) for security issues.

What remains unclear from this description from the side of the Security process is a clear definition on timelines for delivering *the fix* and delivering *the release containing the fix*.

For level 2 and 3 of both S/P issues, time to remediate is defined within 60 and 90 days, respectively.
This allows the Development teams to schedule the S/P 2/3 items through the regular scheduling process.
The fixes will be released through one of the scheduled non-critical security releases that happen once a month. This would mean that S/P 2/3 issues have similar (if not the same) time to remediate and time to release for both internal and external customers.

For S/P 1 items, things complicate because of a different definition of time to remediate and time to release for internal and external customers.

For internal customer, defined time to remediate `"As soon as possible"` means that upon a report
of S/P 1 issue, the process:

* Security team informs Development team of a S/P 1 report
* Development team prepares a hot-patch for internal customer that gets applied immediately
* Development team then works on preparing security fix

At this point, Delivery team needs to know about `time to release`. There are multiple
releases being prepared in parallel at any point in time, both for internal and external customers.
For internal customers, ongoing monthly release means that there are a number of deployments in motion
cross environments of untagged (unreleased) versions of GitLab.
For external customers, there might be an ongoing patch releases in preparation.
Due to various reasons, these pipelines might be dependent on or can be blocking each other.

For this reason, it is important that we have a clear SLA defined for `time to release`, _based on customer requirements and obligations_.

This defined time is to be used for deciding on how to progress with the releases that are in progress or are scheduled.

An example timeline with `time to release` set to 72h:

* Security report of S/P 1 issue is received and issue is escalated to Development team
* Development team creates a hot-patch for internal customer and is about to start working on a fix
* Security team informs Delivery team of pending critical release and 72 h countdown starts
* Delivery team can now make a decision based on the current releases in progress on how to proceed further
* In case of release in progress, Delivery team can finish that and inform the other participants that
we are able to do a release at earliest in 24 hours
* In case of no release in progress, Delivery team can start prepping for the imminent release

As seen above, this time is giving Delivery team a tool for better defining the critical process and allows other participants a clearer timeline for providing critical security fixes to external customers.

Conclusion: We need to define `time to release` for S/P 1 items in addition to existing definitions.

### How do we ensure that fixes do not leak to public given the public nature of our work?

Transparency and working in public is a workflow that all teams involved in this process are used
to in their day-to-day work. Working on security releases requires a shift in workflow
and more attention which can be more challenging. Below we will describe each teams workflow and
how the challenge is resolved.

Security team receives reports through various channels, most (if not all) being private by default.
For Security team, non-public works is more a routine however that does not mean that there are no
challenges to overcome.

Once the security report is triaged, Security team needs to interact with the Development and Delivery teams through issues in projects owned by those teams. These projects are almost exclusively public.
By creating a _confidential_ issue, Security team is able to resolve the challenging part of their
public work.

Development teams work in public projects on the day-to-day. Most assigned issues are public and code
review is also happening in public. For them, working in private is a major shift in work.
All processes and tooling is configured for public workflows, making private workflows an after thought.

When Development team is engaged in a security issue, they are working with Security team in a _confidential_ issue. Since merge requests and all code pushed to a public project in GitLab are
exclusively public, this means that code review needs to be carried out differently compared to the regular workflow. This is resolved by moving the security development to a separate instance (dev.gitlab.org) where projects are private. In [security process docs for developers](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/developer.md), steps
and some tooling is provided to help aid this workflow. However, this is still error prone as it
requires a manual intervention by developers and periodically accidents happen where security releases
need to be released quicker (or partially) due to code leak.
Optimal way of resolving this would be to have confidential merge requests. In absence of that feature,
we could have a separate private group outside of default project paths on GitLab.com where security work could be carried out. The upside of this workaround is that it allows for using same tools and simpler automation because there is no requirement of separate GitLab instance. For this workaround,
there is a proposal and a discussion around it in [gitlab-ce/55648](https://gitlab.com/gitlab-org/gitlab-ce/issues/55648).

Similar to Development teams, Delivery team works almost exclusively public with all tooling and process being public. When a security release is started, Delivery team works from a checklist in a _confidential_ issue. Since all fixes created by developers are on a private instance, this means that the Delivery team works of GitLab.com for coordinating the release, but actually prepares the release
on dev.gitlab.org where the code fixes are created. Another challenge that the Delivery team is facing
is that all tooling is, by default, executing commands that assume public releases. This means that when a release is being prepared, not appending `--security` to number of commands could leak the release to public. One possible solution for this problem is that all release related work is carried out in a
non-public project and carrying out work that is interacting with public would require an extra step.

To summarise:

| Team | Task | Current solution | Possible solution |
|-|-|-|-|
|Security|Report triage|Confidential issue| Confidential issue |
|Development|Fix the vulnerability|Work on dev.gitlab.org| Confidential merge request OR work in private group on GitLab.com |
|Delivery|Create a security release|Work on dev.gitlab.org| Work in private group on GitLab.com |

### How do we ensure that the security/priority items are upgraded/downgraded in priority when new information is received, and how do we communicate it efficiently?

As previously mentioned, Security team is responsible for triaging incoming security reports and assigning severity/priority labels. Development team can change severity/priority based on
new facts gathered during the work.
There are cases where a security vulnerability severity/priority label is lower than the impact
a fix can create. Let's take an example of [gitlab-ce/50319](https://gitlab.com/gitlab-org/gitlab-ce/issues/50319), and attempt to retrospect on it. Issue was assigned S/P 2, and the fix for this vulnerability has been developed and released in a non-critical security release. While the fix for the security vulnerability was important, it did have
an impact on external customers workflows eg. [support-forum/#4151](https://gitlab.com/gitlab-com/support-forum/issues/4151).

Conclusion: How does a non security impact of a security vulnerability affect
severity/priority of the security issue? Asked differently, if the security vulnerability is having a larger impact on users and their workflows, how do we work on changing the priority?

### What is the requirement behind releases containing only security fixes?

Security release process is separate from patch release process, and that also reflects in
the release artifact. Namely, each security release contains only security fixes.

For critical security releases, this makes a lot of sense because:

* Security fix needs to be created on a short timeline
* The fix needs to be released quick enough to address the critical vulnerability
* Both internal and external customers want to apply the security fix without delay

Non-critical security releases have a different sense of urgency:

* Non-critical releases have a set release cadence
* It is important to apply non-critical releases but short delay won't adversely affect the stability of the system
* Security fixes are still addressing security vulnerabilities, but they are treated on the same level as bug fixes when it comes to release timelines

As such, non-critical security releases create a lot of overhead for both the Delivery team and the internal/external customers. To demonstrate the current workloads, take this table from a 10.8 release in consideration:

| Version | Type          | Teams         | Urgency                         | Visibility | User perceived impact |
| ------- | ------------- | ------------- | ------------------------------- | -----  | ------- | ---- |
| 10.8.0  | Monthly release               | Development, Product, Delivery  | High   | Public  | High |
| 10.8.1  | Bug patch release             | Development, Delivery           | Normal | Public  | Medium  |
| 10.8.2  | Non-critical security release | Security, Development, Delivery | Normal | Private | Medium  |
| 10.8.3  | Bug patch release             | Development, Delivery           | Low    | Public  | Low  |
| 10.8.4  | Bug patch release             | Development, Delivery           | Low    | Public  | Low  |
| 10.8.5  | Non-critical security release | Security, Development, Delivery | Low    | Private | Low  |

From the table above we can see that we had total of 6 releases for the 10.8 release cycle. Monthly release being the first one is also of the highest urgency as this is also a marketing event for the company. That release also has a number of release candidates created in the run up to the public release making it highly complex. All work is carried out in public and all other work is secondary making it highly urgent job. From user perspective, monthly release is where we deliver new features so the impact to all our users is high.

The other releases in the table have different impact on different participants in the process but all of them combined can affect participants in different ways.

For example, 10.8.1 bug fix release was affecting internal and external customers so some users were expecting the fixes as soon as possible. This in turn was delaying releasing security fixes which were already prepared for release, only waiting for a convenient time for releasing.

The requirement to have a separated releases for bug fixes and security fixes has _actually affected_
both releases. Release manager had to prepare two separate releases in parallel but execute them sequentially. Internal and external customers had to upgrade GitLab two times to receive fixes that are similar in urgency and impact.

If non-critical security fixes could have been released at the same time as bug fixes, the same process would look a bit differently:

| Version | Type          | Teams         | Urgency                         | Visibility | User perceived impact |
| ------- | ------------- | ------------- | ------------------------------- | -----  | ------- | ---- |
| 10.8.0  | Monthly release               | Development, Product, Delivery  | High   | Public  | High |
| 10.8.1  | Patch release                 | Security, Development, Delivery | Normal | Private | Medium  |
| 10.8.2  | Bug patch release             | Development, Delivery           | Low    | Public  | Low  |
| 10.8.3  | Patch release                 | Security, Development, Delivery | Low    | Private | Low  |

If you observe the table above, you will see three significant changes:

* There are 2 releases less, `Patch release` contains both `Bug patch release` and `Non-critical security release`
* Two patch releases that contain both security and bug fixes are being handled as all security releases, *private*
* Customers have to upgrade GitLab two times less to same impact

From security perspective, there is no change to the process. Security fixes are still kept private until the announcement not posing any threat to any customer.
From release perspective, there is less pressure to create release with the same impact.

## Conclusion

With number of participants in security releases, and impact that those have on participants and consumers, we should work towards agreeing and committing to implement on the following:

* Remove Quality and Marketing teams participation in security releases through automation
* Define `time to release` SLAs based on customer SLAs and compliancy requirements
* Create a better process for Development team and Delivery team to prevent accidental leaks => Design in [Security Release Development on GitLab.com](/handbook/engineering/infrastructure/design/security-releases-development/)
* Define rules that would allow more efficient change in severity/priority of security fixes
* Reduce amount of work and releases by merging non-critical security releases with bug fix releases
