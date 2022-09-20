---
layout: handbook-page-toc
title: Issue Triage
description: "Guidelines for triaging new issues opened on GitLab.com projects"
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

GitLab believes in [Open Development][open-development], and we encourage the community to file issues and open merge requests for our projects on [GitLab.com](https://gitlab.com/groups/gitlab-org). Their contributions are valuable, and we should handle them as effectively as possible. A central part of this is triage - the process of categorization according to type and severity.

Any GitLab team-member can triage issues. Keeping the number of un-triaged issues low is essential for maintainability, and is our collective responsibility. Consider triaging a few issues around your other responsibilities, or scheduling some time for it on a regular basis.

Currently the Quality Department takes on triaging all new issues in the main [GitLab](https://gitlab.com/gitlab-org/gitlab) project via the [newly created unlabelled issues](/handbook/engineering/quality/triage-operations/#newly-created-untriaged-issues) triage report.

## Triage levels

We define two levels of triage.

### Partial Triage

An issue is considered partially triaged when all of the following criteria are met:

- Issue has a [type label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#type-labels) applied.
  - (For `~"type::bug"` and `~"UX Debt"`) It has a [severity label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#severity-labels) applied.
- Issue has a [stage label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#stage-labels) applied.
- Issue has a [group label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#group-labels) applied (e.g. `~"group:editor"`). If no group label exists, the stage label is enough.

### Complete Triage

An issue is considered completely triaged when all of the following criteria are met:

- It is partially triaged.
- It has a milestone set.
- (For `~"type::bug"` and `~"UX Debt"`) It has a [priority label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#priority-labels) applied.

## Priority

The priority label is used to indicate the importance and guide the scheduling of the issue. Priority labels are expected to be set based on the circumstances of the market, product direction, IACV impact, number of impacted users and capacity of the team. [DRIs](/handbook/people-group/directly-responsible-individuals/) for prioritization are based on work type:

* Feature - Product Manager (PM)
* Maintenance - Engineering Manager (EM)
* Bug - Quality Engineering Manager (QEM)

| Priority | Importance | Intention | DRI |
| -------- | ---------- | --------- | --- |
| `~priority::1` | Urgent | We will address this as soon as possible regardless of the limit on our team capacity. Our target resolution time is 30 days.                 | PM, EM, or QEM of that product group, based on work type |
| `~priority::2` | High   | We will address this soon and will provide capacity from our team for it in the next few releases. This will likely get resolved in 60-90 days. | PM, EM, or QEM of that product group, based on work type |
| `~priority::3` | Medium | We want to address this but may have other higher priority items. No timeline designated.                                  | PM, EM, or QEM of that product group, based on work type |
| `~priority::4` | Low    | We don't have visibility when this will be addressed. No timeline designated.                                          | PM, EM, or QEM of that product group, based on work type |

## Severity
Note: Theses severity definitions apply to issues only. Please see [Severity Levels section](https://about.gitlab.com/handbook/engineering/infrastructure/incident-management/#severities) of the [Incident Management page](https://about.gitlab.com/handbook/engineering/infrastructure/incident-management/) for details on incident severity.

Severity labels help us determine urgency and clearly communicate the impact of a `~"type::bug"` on users. There can be multiple categories of a `~"type::bug"`. Severity is also applicable to non-`type::bug` `~SUS::Impacting` issues.

The presence of bug category labels `~availability`, `~performance`, `~security`, and `~UX` denotes to use the severity definition in that category. When a `~"type::bug"` correspond to multiple categories, the severity to apply should be the higher, for example, if an issue has a `~severity::2` for `~availability` and a `~severity::1` for `~performance` then the severity assigned to the issue should be `~severity::1`.


| Type of `~"type::bug"` | `~severity::1`: Blocker | `~severity::2`: Critical | `~severity::3`: Major  | `~severity::4`: Low | Triage DRI |
|----------------|--------------------------|---------------------------|-------------------------|----------------------|------------|
| General bugs   | Broken feature with no workaround or any data-loss. | Broken feature with an unacceptably complex workaround. | Broken feature with a workaround. | Functionality is inconvenient. | |
| `~performance` Response time <br> (API/Web/Git)[^1] | Above 9000ms to timing out | Between 2000ms and 9000ms | Between 1000ms and 2000ms | Between 200ms and 1000ms | [Enablement Quality Engineering team](/handbook/engineering/quality/quality-engineering/enablement-saas-platforms-qe-team/) |
| `~performance` Browser Rendering <br> ([LCP](https://web.dev/lcp/))[^2] | Above 9000ms to timing out | Between 4000ms and 9000ms | Between 3000ms and 4000ms | Between 3000ms and 2500ms | [Enablement Quality Engineering team](/handbook/engineering/quality/quality-engineering/enablement-saas-platforms-qe-team/) |
| `~performance` Browser Rendering <br> ([TBT](https://web.dev/tbt/))[^2] | Above 9000ms to timing out | Between 2000ms and 9000ms | Between 1000ms and 2000ms | Between 300ms and 1000ms | [Enablement Quality Engineering team](/handbook/engineering/quality/quality-engineering/enablement-saas-platforms-qe-team/) |
| `~UX` User experience problem [&sup3;](#ux) | "I can't figure this out." Users are blocked and/or likely to make risky errors due to poor usability, and are likely to ask for support. | "I can figure out why this is happening, but it's really painful to solve." Users are significantly delayed by the available workaround. | "This still works, but I have to make small changes to my process." Users are self sufficient in completing the task with the workaround, but may be somewhat delayed. |  "There is a small inconvenience or inconsistency." Usability isn't ideal or there is a small cosmetic issue. | [Product Designers](/handbook/engineering/ux/product-design/) of that Product group |
| `~availability` of GitLab SaaS | See [Availability section](#availability) | See [Availability section](#availability) | See [Availability section](#availability) | See [Availability section](#availability) | |
| `~security` Security Vulnerability | See [Security Prioritization](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues) | See [Security Prioritization](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues) | See [Security Prioritization](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues) | See [Security Prioritization](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues) | AppSec team |
| Global Search | See [Search Prioritization](/handbook/engineering/development/enablement/search/#severity-labels-for-search-issues-advanced-search-global-search) | See [Search Prioritization](/handbook/engineering/development/enablement/search/#severity-labels-for-search-issues-advanced-search-global-search) | See [Search Prioritization](/handbook/engineering/development/enablement/search/#severity-labels-for-search-issues-advanced-search-global-search) | See [Search Prioritization](/handbook/engineering/development/enablement/search/#severity-labels-for-search-issues-advanced-search-global-search) | |
| `~test` Bugs blocking end-to-end test execution | See [Blocked tests section](#blocked-tests) | See [Blocked tests section](#blocked-tests) | See [Blocked tests section](#blocked-tests) | See [Blocked tests section](#blocked-tests) | [Quality Engineering Sub-Department](/handbook/engineering/quality/quality-engineering/) |

### Severity SLOs

The severity label also helps us define the time a ~"type::bug" or ~"corrective action" of that severity should be completed.
This indicates the expected timeline & urgency which is used to measure our SLO targets.

| **Severity**   | Incident root cause analysis `~corrective action` SLO | `~"type::bug"` resolution SLO            |
|----------------|---------|--------------------------------------------------------------------------------|
| `~severity::1` | 1 week  | The current release + next available deployment to GitLab.com (within 30 days) |
| `~severity::2` | 30 days | The next release (60 days)                                                     |
| `~severity::3` | 60 days | Within the next 3 releases (approx one quarter or 90 days)                     |
| `~severity::4` | 90 days | Anything outside the next 3 releases (more than one quarter or 120 days).      |

#### Examples of severity levels

If a issue seems to fall between two severity labels, assign it to the higher severity label.

- Example(s) of `~severity::1`
  - Data corruption/loss.
  - Security breach.
  - Unable to create an issue or merge request.
  - Unable to add a comment or thread to the issue or merge request.
  - An error message displays (that looks like a blocker) when the message should instead be informational.
  - Unclear instructions in the UI that lead to irreversible changes.
- Example(s) of `~severity::2`
  - Cannot submit changes through the web IDE, but the command line works.
  - A status widget on the merge request page is not working, but information can be seen in the test pipeline page.
- Example(s) of `~severity::3`
  - Can create merge requests only from the Merge Requests list view, not from an Issue page.
- Example(s) of `~severity::4`
  - Incorrect colors.
  - Misalignment.

### Availability

Issues with `~availability` label directly impacts the availability of GitLab.com SaaS. It is considered as another category of `~"type::bug"`.

For the purposes of [Incident Management](/handbook/engineering/infrastructure/incident-management/), incident issue severities are chosen based on the `availability` severity matrix below.

We categorize these issues based on the impact to GitLab.com's customer business goal and day to day workflow.

The prioritization scheme adheres to our [product prioritization](/handbook/product/product-processes/#prioritization) where security and availability work are prioritized over feature velocity.

The presence of these severity labels modifies the standard severity labels(`~severity::1`, `~severity::2`, `~severity::3`, `~severity::4`) by primarily taking into account the impact to users. The severity of these issues may change depending on the re-analysis of the impact to GitLab.com users.

| Severity | Availability impact | Time to mitigate (TTM)(1) | Time to resolve (TTR)(2) | Minimum priority |
|-|-|-|-|-|
| `~severity::1` | Problem on GitLab.com blocking the typical user's workflow<br/><br/>Impacts 20% or more of users without an available workaround<br/><br/>**AND/OR**<br/><br/>Any roadblock that puts the [guaranteed self-managed release date](/handbook/engineering/releases/#timelines) at risk (use ~backstage label)<br /><br/>**AND/OR**<br/><br/>Any data loss directly impacting customers | Within 8 hrs | Within 48 hrs | `~priority::1` |
| `~severity::2` | Problem on GitLab.com blocking the typical user's workflow<br/><br/>Impacts 20% or more of users, but a reasonable workaround is available.<br/><br/>Impacts between 5%-20% of users without an available workaround | Within 24 hrs | Within 7 days |  `~priority::1` |
| `~severity::3` | Broad impact on GitLab.com and minor inconvenience to typical user's workflow. No workaround needed.<br/><br/>Impacts up to 5% of users | Within 72 hrs | Within 30 days | `~priority::2` |
| `~severity::4` | Minimal impact on GitLab.com typical user's workflow to less than 5% of users <br/><br/>May also include incidents with no impact, but with importance to resolve to prevent future risk| Within 7 days | Within 60 days | `~priority::3` |

(1) - Mitigation uses non-standard work processes, eg. hot-patching, critical code and configuration changes. Owned by Infrastructure department, leveraging available escalation processes (dev-escalation and similar)

(2) - Resolution uses standard work processes, eg. code review. Scheduling is owned by the Product department, within the defined SLO targets.

#### Availability prioritization

The priority of an availability issue is tied to severity in the following manner:

| Issue with the labels  | Allowed priorities | **Not-allowed priorities** |
|-|-|-|
| `~availability` `~severity::1`  | `~priority::1` only | `~priority::2`, `~priority::3`, and `~priority::4` |
| `~availability` `~severity::2`  | `~priority::1` only | `~priority::2`, `~priority::3`, and `~priority::4` |
| `~availability` `~severity::3`  | `~priority::2` as baseline, `~priority::1` allowed | `~priority::3`, and `~priority::4` |
| `~availability` `~severity::4`  | `~priority::3` as baseline, `~priority::2` and `~priority::1` allowed | `~priority::4` |

### Merge requests experience

The merge request (MR) experience is the core of our product. Due to many teams contributing to the MR workflow components, it has become a disjointed experience.

The overlapping is largely seen in the following areas: Merge Request Widgets, Mergeability Checks, MWPS and Merge Trains.

As part of the analysis in the [Transient Bug working group](/company/team/structure/working-groups/transient-bugs/), we have discovered that the top most affected product areas are:

1. `create::code review`
1. `verify::continuous integration`
1. `create::source code` (tied)
1. `plan::project management` (tied)

These product groups also have a high sensitivity to GMAU. This product groups will benefit from a heightened awareness on bugs overlapping with Merge Request functionality.

#### Merge requests experience prioritization

We need an elevated sense of action in this area. If a bug is related to the merge request experience it should have the labels `~UX` `~merge requests`.
Priority is tied to severity in the following manner:

| MR UX bug severity | Allowed priorities | **Not-allowed priorities** |
|-|-|-|
| `~severity::1` | `~priority::1` only | `~priority::2`, `~priority::3` and `~priority::4` |
| `~severity::2` | `~priority::1` only | `~priority::2`, `~priority::3` and `~priority::4` |
| `~severity::3` | `~priority::1` or `~priority::2` | `~priority::3` and `~priority::4` |
| `~severity::4` | `~priority::1` or `~priority::2` or `~priority::3` | `~priority::4` |

### Blocked tests

End-to-end tests that don't run lead to blind spots that can cause unforeseen availability issues.
We must ensure coverage is stable and active by quickly resolving issues that cause quarantined end-to-end tests.

#### Blocked tests prioritization

To promote awareness of bugs blocking end-to-end test execution, newly opened ~test ~"type::bug" issues will be announced in several Slack channels:

- All newly opened bugs blocking end-to-end test execution should be announced in [#quality](https://gitlab.slack.com/archives/C3JJET4Q6) channel.
- A newly opened bug blocking end-to-end test execution that is a product bug should also be announced in [#development](https://gitlab.slack.com/archives/C02PF508L) and [#vp-development](https://gitlab.slack.com/archives/CRC0B18UX) channels with the appropriate EM and PM tagged.

Priority is tied to severity in the following manner:

| Type of test blocked | Bug severity | Allowed priorities | **Not-allowed priorities** |
|-|-|-|-|
| Smoke end-to-end test | `~severity::1` | `~priority::1` only | `~priority::2`, `~priority::3` and `~priority::4` |
| Non-smoke end-to-end test | `~severity::2` | `~priority::2` as baseline, `~priority::1` allowed | `~priority::3` and `~priority::4` |

### Performance

**Improving performance**: It may not be possible to reach the intended response time in one iteration.
We encourage performance improvements to be broken down. Improve where we can and then re-evaluate the next appropriate level of severity & priority based on the new response time.

[^1]: Our current response time targets for APIs, Web Controllers and Git calls are based on the TTFB P90 results of the [GitLab Performance Tool (GPT)](https://gitlab.com/gitlab-org/quality/performance) being run against a [10k-user reference environment](https://docs.gitlab.com/ee/administration/reference_architectures/10k_users.html) under lab like conditions. This run happens nightly and results are outputted to the [wiki on the GPT project](https://gitlab.com/gitlab-org/quality/performance/-/wikis/Benchmarks/Latest/10k).

[^2]: Our current Browser Rendering targets for [Largest Contentful Paint (LCP)](https://web.dev/lcp/) and [Total Blocking Time (TBT)](https://web.dev/tbt/) are based on results of [SiteSpeed](https://gitlab.com/gitlab-org/quality/performance-sitespeed) being run against a [10k-user reference environment](https://docs.gitlab.com/ee/administration/reference_architectures/10k_users.html) under lab like conditions. This run happens nightly and results are outputted to the [wiki on the GPT project](https://gitlab.com/gitlab-org/quality/performance/-/wikis/Benchmarks/SiteSpeed/10k).

### UX

#### SUS-impacting
Some UX-related issues are identified as impacting our [System Usability Scale (SUS) score](/handbook/engineering/ux/performance-indicators/system-usability-scale/), which is a focus in our [three-year strategy](/company/strategy/#three-year-strategy). We identify SUS-impacting issues with at least one of the labels listed in the [Total open SUS-impacting issues by severity](https://about.gitlab.com/handbook/engineering/ux/performance-indicators/#total-open-sus-impacting-issues-by-severity) UX KPI. If one of these labels is applied, the tracking label `"~SUS::Impacting"` will automatically be added. These issues can have a severity label applied *with* or *without* an accompanying `~"type::bug"` label. For issues with `type::bug`, they follow the [severity](/handbook/engineering/quality/issue-triage/#severity) and [SLOs](/handbook/engineering/quality/issue-triage/#severity-slos) for `type::bug` issues. Issues without `type::bug` are without SLO.

##### SUS-Impacting non-`type::bug` Severity

| `SUS` issue severity without `type::bug` label | Allowed priorities | Recommended delivery |
|-|-|-|
| `~severity::1` | `~priority::1` only | within 60 days |
| `~severity::2` | `~priority::1` or  `~priority::2` | within 120 days |
| `~severity::3` | `~priority::1`, or `~priority::2`, or `~priority::3` | No SLA set today |
| `~severity::4` | `~priority::1`, or `~priority::2`, or `~priority::3`, or `~priority::4` | No SLA set today  |

**Note:** The above delivery timeframes only apply for new UX bugs filed after 2022-03-22. All UX bugs file prior to this date need to be reevaluated for the correct delivery timeframe.


Additionally, we include UX bugs (identified with *both* the `~UX` `~"type::bug"` labels) in our list of SUS-Impacting issues.

Note: SUS-impacting issues are intended to have an impact on the current product experience rather than on new feature additions. An issue will have the `SUS::Impacting` label automatically applied if any of the SUS-impacting labels are used. However, there are exceptions: 
- Issues with the combination `type::feature` and `feature::addition` indicate we are not making a change or improvement to an existing experience.
- Issues with the `Actionable Insights::Exploration needed` label applied but the issue is not ready to be prioritized and added to the product.

In these cases, you should replace the `SUS::Impacting` label with the [`SUS::Non-impacting`](https://gitlab.com/groups/gitlab-org/-/labels?subscribed=&search=sus) label and a severity label is not needed.

#### UX debt

As noted above, issues labeled as `~UX Debt` also have a severity (and additionally [priority](#priority)) label applied *without* an accompanying `~"type::bug"` label. [UX Debt](/handbook/engineering/workflow/#ux-debt) results from the decision to release a user-facing feature that needs refinement, with the intention to improve it in subsequent iterations. Because it is an intentional decision, `~UX Debt` should not have a severity higher than `~severity::3`, because [MVCs](/handbook/values/#minimal-viable-change-mvc) should not intentionally have obvious bugs or significant usability problems. If you find yourself creating a UX debt issue that is higher than `~severity::3`, please talk to your stage group team about reincorporating that issue into the MVC.

### Transient bugs

A transient bug is unexpected, unintended behavior that does not always occur in response to the same action.

Transient bugs give users conflicting impressions about what is happening when they take action, may not consistently occur, and last for a short period of time. While these bugs may not block a user's workflow and are usually resolved by a total page refresh, they are detrimental to the user experience and can build a lack of trust in the product. Users can become unsure about whether the data they are seeing is stale, fresh, or has even updated after they took an action. Examples of transient behaviors include:

- Clicking the "Apply Suggestion" button and the page not getting updated with the applied suggestion
- Updating the milestone of an issue by using a quick action, but the sidebar not updating to reflect the new milestone
- Merging a merge request and the merge request page still showing as "Open"

In order to define an issue as a "transient bug," use the `~"bug::transient"` label

### Infradev Issues

An issue may have an `infradev` label attached to it, which means it subscribes to a dedicated process to related to SaaS availability and reliability, as detailed in the [Infradev Engineering Workflow](https://about.gitlab.com/handbook/engineering/workflow/#infradev). These issues follow the established [severity SLOs for bugs](/handbook/engineering/quality/issue-triage/#severity-slos).

### Limit Related Bugs

GitLab, like most large applications, enforces limits within certain features. The absences of limits can impact security, performance, and availability. For this reason issues related to limits are considered `~"type::bug"` in the `~"bug::availability"` sub-category.

In order to define an issue as related to limits add the labels `~"availability::limit"` and `~"bug::availability"`.

Severity should be assessed using the following table:

| Severity | Availability impact |
|-|-|
| `~severity::1` | Absence of this limit enables a single user to negatively impact availablity of GitLab |
| `~severity::2` | Absence of this limit poses a risk to reduced availability of GitLab |
| `~severity::3` | Absence of this limit has a negative impact on ability to manage cost, performance, or availability |
| `~severity::4` | A limit could be applied, but it's absences does not pose availability risk |

These issues follow the established [severity SLOs for bugs](/handbook/engineering/quality/issue-triage/#severity-slos).



## Triaging Issues

Initial triage involves (at a minimum) labelling an issue appropriately, so un-triaged issues can be discovered by searching for issues without any labels.

Follow one of these links:

- [GitLab][issues-query]
- [GitLab Omnibus][omnibus-issues-query]
- [GitLab.com Support Tracker][support-issues-query]

Pick an issue, with preference given to the oldest in the list, and evaluate it with a critical eye, bearing the [issue triage practices](#issue-triage-practices) below in mind. Some questions to ask yourself:

- Do you understand what the issue is describing?
- What labels apply? Particularly consider [type, stage and severity](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html) labels.
- How critical does it seem? Does it need to be escalated to a product or engineering manager, or to the security team?
- Would the `~security` label be appropriate?
- Should it be made confidential? It's usually the case for `~security` issues or
  issues that contain private information.

Apply each label that seems appropriate. Issues with a security impact should be treated specially - see the [security disclosure process](/handbook/support/channels/#security-disclosures).

If the issue seems unclear - you aren't sure which labels to apply - ask the requester to clarify matters for you.
Keep our [user communication guidelines](/handbook/communication/#user-communication-guidelines) in mind at all times, and commit to keeping up the conversation until you have enough information to complete triage.

Check for duplicates! Searching for some keywords in the issue should give you a short list of possibilities to scan through.
Check both open and closed issues, as it may be a duplicate of a solved problem.

Consider whether the issue is still valid. Especially for older issues, a `~"type::bug"` may have been fixed since it was reported, or a `~"type::feature"` may have already been implemented.

Be sure to check cross-reference notes from other issues or merge requests, they are a great source of information!
For instance, by looking at a cross-referenced merge request, you could see a "Picked into `8-13-stable`, will go into `8.13.6`." which would mean that the issue is fixed since the version `8.13.6`.

If the issue meets the requirements, it may be appropriate to make a [scheduling request](/handbook/engineering/workflow/#scheduling-issues) - use your judgement!

You're done! The issue has all appropriate labels, and may now be in the backlog, closed, awaiting scheduling, or awaiting feedback from the requestor. Pick another, if you've got the time.

## Issue Triage Practices

We're enforcing some of the policies automatically in
[triage-ops](https://gitlab.com/gitlab-org/quality/triage-ops), using the
[`@gitlab-bot`](https://gitlab.com/gitlab-bot) user.
For more information about the automated triage, please read the
[Triage Operations](/handbook/engineering/quality/triage-operations/)

That said, we can't automate everything. In this section we'll describe some of
the practices we're doing manually.

### Outdated issues

For issues that haven't been updated in the last 3 months the "Awaiting Feedback" label should be added to the issue. After 14 days, if no response has been made by anyone on the issue, the issue should be closed. This is a slightly modified version of the Rails Core policy on outdated issues.

If they respond at any point in the future, the issue can be considered for reopening. If we can't confirm an issue still exists in recent versions of GitLab, we're just adding noise to the issue tracker.

### Duplicates

Before opening a new issue, make sure to **search for keywords** and verify your issue isn't a duplicate.

Checking for and/or reporting duplicates when you notice them.

All things held equal, the earliest issue should be considered the canonical version. If one issue has a better title, description, and/or more comments and positive reactions, it should be prioritized over earlier issues even if it's a duplicate.

### Lean toward closing

We simply can't satisfy everyone. We need to balance pleasing users as much as possible with keeping the project maintainable.

- If the issue is a bug report without reproduction steps or version information, close the issue and ask the reporter to provide more information.
- If we're definitely not going to add a feature/change, say so and close the issue.

### Label issues as they come in

When an issue comes in, it should be triaged and labeled. Issues without labels are harder to find and often get lost.

Be careful with severity labels. Underestimating severity can make a problem worse by suggesting resolution can wait longer than it should. Review available
[Severity](#severity) labels. If you are not certain of the right label for a bug, it is OK
to overestimate the severity. But do get confirmation from a [domain expert](/handbook/engineering/workflow/code-review/#domain-experts).

### Take ownership of issues you've opened

Sort by "Author: your username" and close any issues which you know have been fixed or have become irrelevant for other reasons. Label them if they're not labeled already.

### Product feedback issues

Some issues may not fall into the [type labels](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#type-labels), but they contain useful feedback on how GitLab features are used.
These issues should be mentioned to the product manager and labeled as `~"Product Feedback"` in addition to the group, category and stage labels.
<https://gitlab.com/gitlab-org/gitlab/-/issues/324770> is an example of a Product Feedback issue.

### Questions/support issues

If it's a question, or something vague that can't be addressed by the development
team for whatever reason, close it and direct them to the relevant support
resources we have (e.g. <https://about.gitlab.com/get-help/>, our Discourse forum or emailing Support).

### New labels

If you notice a common pattern amongst various issues (e.g. a new feature that
doesn't have a dedicated label yet), suggest adding a new label in Slack or a new issue.

### Reproducing issues

If possible, ask the reporter to reproduce the issue in a public project
on GitLab.com. You can also try to do so yourself in the
[issue-reproduce group](https://gitlab.com/issue-reproduce). You can ask
any owner of that group for access.

### Reporting Spam Issues

During triage rounds you may come across issues that look like Spam. These issues can be reported to the abuse team in the `#abuse` Slack channel or using the "Report User" function on the issue author's profile page

## Events

We also hold regular, quarterly events where the Community, Core Team Members and
Team Members can contribute to tackling some of our open issues.
Please see [the dedicated page](/community/issue-bash/) for further information and upcoming event dates.

## Notes

The original issue about these policies is [#17693][17693]. We'll be working to improve the situation from within GitLab itself as time goes on.

The following projects, resources, and blog posts were very helpful in crafting these policies:

- [CodeTriage][code-triage]
- [How to be an open source gardener][open-source-gardener]
- [Managing the Deluge of Atom Issues][atom-issues]
- [Handling Large OSS Projects Defensively][handling-big-projects]
- [My condolences, you’re now the maintainer of a popular open source project][my-condolences]
- [The Art of Closing][art-of-closing]

[open-development]: /2015/12/16/improving-open-development-for-everyone/
[issues-query]: https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=None&assignee_id=None
[omnibus-issues-query]: https://gitlab.com/gitlab-org/omnibus-gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=None&assignee_id=None
[support-issues-query]: https://gitlab.com/gitlab-com/support-forum/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=None&assignee_id=None
[17693]: https://gitlab.com/gitlab-org/gitlab-ce/issues/17693
[code-triage]: https://www.codetriage.com/
[open-source-gardener]: http://words.steveklabnik.com/how-to-be-an-open-source-gardener
[atom-issues]: http://blog.atom.io/2016/04/19/managing-the-deluge-of-atom-issues.html
[handling-big-projects]: http://artsy.github.io/blog/2016/07/03/handling-big-projects/
[my-condolences]: https://runcommand.io/2016/06/26/my-condolences-youre-now-the-maintainer-of-a-popular-open-source-project/
[art-of-closing]: https://blog.jessfraz.com/post/the-art-of-closing/
