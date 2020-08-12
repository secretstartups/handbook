---
layout: handbook-page-toc
title: Issue Triage
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

GitLab believes in [Open Development][open-development], and we encourage the community to file issues and open merge requests for our projects on [GitLab.com](https://gitlab.com/groups/gitlab-org). Their contributions are valuable, and we should handle them as effectively as possible. A central part of this is triage - the process of categorization according to type and severity.

Any GitLab team-member can triage issues. Keeping the number of un-triaged issues low is essential for maintainability, and is our collective responsibility. Consider triaging a few issues around your other responsibilities, or scheduling some time for it on a regular basis.

Currently the Quality Department takes on triaging all new issues in the main [GitLab](https://gitlab.com/gitlab-org/gitlab) project via the [newly created unlabelled issues](/handbook/engineering/quality/triage-operations/#newly-created-unlabelled-issues-requiring-first-triage) triage report.

## Triage levels

We define two levels of triage.

### Partial Triage

An issue is considered partially triaged when:

- Issue has a [type label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#type-labels) applied.
  - (For `~"bug"` and `~"UX Debt"`) It has a [severity label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#severity-labels) applied.
- Issue has a [stage label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#stage-labels) applied.
- Issue has a [group label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#group-labels) applied (e.g. `~"group:editor"`). If no group label exists, the stage label is enough.

### Complete Triage

An issue is considered completely triaged when:

- (For `~"bug"` and `~"UX Debt"`) It has a [priority label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#priority-labels) applied.
- It has a milestone set.

## Priority

The priority label is used for scheduling by Product Managers. If there are multiple defects, the priority label decides which defect has to be fixed immediately versus later.

| Priority | Importance | Intention | DRI | Planning milestone |
| ------ | ------ | ----- | ---- |---|
| ~P1 | Urgent | We will address this as soon as possible regardless of limit on our team capacity | PM of that product| Current milestone |
| ~P2 | High | We will address this soon and will provide capacity from our team for it in the next release | PM of that product group | Next milestone |
| ~P3 | Medium | We want to address this but may have other higher priority items |  PM of that product group | Next 2-3 release/milestones |
| ~P4 | Low | We don't have visibility when this will be addressed |  PM of that product group | Next 4+ milestones |

## Severity

Severity labels help us clearly communicate the impact of a `~bug` on users. There can be multiple facets of a `~bug`. The below is a guideline. The presence of bug category labels `~availability `, `~performance`, `~security`, and `~UX` denotes to use the severity definition in that category.

The severity label also helps us define the time a ~bug or ~"corrective action" fix should be completed. Priority determines how quickly the defect turnaround time must be.

This label indicates the planned timeline & urgency which is used to measure against our target SLO on delivering ~bug and ~"corrective action" fixes.


| Type of `~bug`         | `~S1` - Blocker                                       | `~S2` - Critical                                         | `~S3` - Major                                | `~S4` - Low                                    |
|------------------------|-------------------------------------------------------|----------------------------------------------------------|----------------------------------------------|------------------------------------------------|
| General bugs           | Broken feature with no workaround.                    | Broken feature with an unacceptably complex workaround.  | Broken feature with a workaround.            | Functionality is inconvenient.                 |
| `~performance` Response time <br> (API/Web)[^1] | Above 9000ms to timing out   | Between 2000ms and 9000ms                                | Between 1000ms and 2000ms                    | Between 500ms and 1000ms                       |
| `~performance` Degradation <br> (to be reviewed for deprecation) |             | Degradation is guaranteed to occur in the near future    | Degradation is likely to occur in the near future | Degradation may occur but it's not likely |
| Affected Users <br> (to be reviewed for deprecation) | Impacts 50% or more of users | Impacts between 25%-50% of users                    | Impacts up to 25% of users                   | Impacts less than 5% of users                  |
| `~availability` GitLab.com Availability |See [Availability Prioritization](/handbook/engineering/performance/#availability)|See [Availability Prioritization](/handbook/engineering/performance/#availability)|See [Availability Prioritization](/handbook/engineering/performance/#availability)|See [Availability Prioritization](/handbook/engineering/performance/#availability)|
| `~security` Security Vulnerability |See [Security Prioritization](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues)|See [Security Prioritization](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues)|See [Security Prioritization](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues)|See [Security Prioritization](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues)|
| `~UX` User experience problem | "I can't figure this out." Users are blocked (or so confused that they believe they are blocked), and are likely to ask for support. | "I can figure out why this is happening, but it's really painful to solve." Users are significantly delayed by the available workaround. | "This still works, but I have to make small changes to my process." Users are self sufficient in completing the task with the workaround, but may be somewhat delayed. |  "There is a small inconvenience or inconsistency." Usability isn't ideal or there is a small cosmetic issue. |

| Label | Meaning         | Incident root cause analysis `~corrective action` SLO | `~bug` resolution SLO  |
|-------|-----------------|--------------------------|--------------------------------------------------------------------------------|
| `~S1` | Urgent Severity | 1 week                   | The current release + next available deployment to GitLab.com (within 30 days) |
| `~S2` | High Severity   | 30 days                  | The next release (60 days)                                                     |
| `~S3` | Medium Severity | 60 days                  | Within the next 3 releases (approx one quarter or 90 days)                     |
| `~S4` | Low Severity    | 90 days                  | Anything outside the next 3 releases (more than one quarter or 120 days).      |

### UX debt

Issues labeled as `~UX Debt` can also have a severity and priority labels applied *without* an accompanying `~bug` label. UX Debt results from the decision to release a user-facing feature that needs refinement, with the intention to improve it in subsequent iterations. Because it is an intentional decision, `~UX Debt` should not have a severity higher than `~S3`, because [MVCs](https://about.gitlab.com/handbook/values/#minimal-viable-change-mvc) should not intentionally have obvious bugs or significant usability problems.

### Examples of severity levels

If a issue seems to fall between two severity labels, assign it to the higher severity label.

- Example(s) of `~S1`
  - Data corruption/loss.
  - Security breach.
  - Unable to create an issue or merge request.
  - Unable to add a comment or thread to the issue or merge request.
  - An error message displays (that looks like a blocker) when the message should instead be informational.
- Example(s) of `~S2`
  - Cannot submit changes through the web IDE, but the command line works.
  - A status widget on the merge request page is not working, but information can be seen in the test pipeline page.
- Example(s) of `~S3`
  - Can create merge requests only from the Merge Requests list view, not from an Issue page.
  - Status is not updated in real time and needs a page refresh.
- Example(s) of `~S4`
  - Label colors are incorrect.
  - UI elements are not fully aligned.

### Availability

Issues with `~availability` label directly impacts the availability of GitLab.com. It is considered as another category of `~bug`.

We categorize these issues based on the impact to GitLab.com's customer business goal and day to day workflow.

The prioritization scheme adheres to our [product prioritization](/handbook/product/product-processes/#how-we-prioritize-work) where security and availability work are prioritized over feature velocity.

The presence of these severity labels modifies the standard severity labels(`~S1`, `~S2`, `~S3`, `~S4`) by additionally taking into account the impact as described below.
The severity of these issues may change depending on the re-analysis of the impact to GitLab.com customers.

| Severity | Availability impact | Reproducibility | Time to resolve (TTR) | Deployment target | Minimum priority |
| -------- | ------------------- | --------------- | --------------------- | ----------------- | ---------------- |
| `~S1` | Roadblock on GitLab.com and blocking customer's business goals and day to day workflow | Consistently reproducible | Within 48 hrs | Hotfix to GitLab.com | `~P1` |
| `~S2` | Significant impact on GitLab.com and customer's day-to-day workflow. Customers have an acceptable workaround in place. | Consistently reproducible | Within 5 business days | Next deployment window after resolution | `~P1` |
| `~S3` | Broad impact on GitLab.com and minor inconvenience to customer's day-to-day workflow. No workaround needed.  | Inconsistently reproducible | Within 30 days | Next release after resolution | `~P2` |
| `~S4` | Minimal impact on GitLab.com, no known customers affected | Inconsistently reproducible | 60 days  | Next release after resolution | `~P3` |

#### Availability prioritization

To call out specifics on what priorities can be set on an availability issue, please refer to the prioritization band table below.

| Issue with the labels  | Allowed priorities | Not-allowed priorities |
| ------ | ------ | ------ |
| `~availability` `~S1`  | `~P1` only | `~P2`, `~P3`, and `~P4` |
| `~availability` `~S2`  | `~P1` only | `~P2`, `~P3`, and `~P4` |
| `~availability` `~S3`  | `~P2` as baseline, `~P1` allowed | `~P3`, and `~P4` |
| `~availability` `~S4`  | `~P3` as baseline, `~P2` and `~P1` allowed | `~P4` |

### Performance

**Improving performance**: It may not be possible to reach the intended response time in one iteration.
We encourage performance improvements to be broken down. Improve where we can and then re-evaluate the next appropriate level of severity & priority based on the new response time.

[^1]: Our current response time standard is based on the TTFB P90 results of the GitLab Performance Tool (GPT) being run against the 10k-user reference environment.
This run happens nightly and results are outputted to the [wiki on the GPT project.](https://gitlab.com/gitlab-org/quality/performance/-/wikis/Benchmarks/Latest/10k)


## Triaging Issues

Initial triage involves (at a minimum) labelling an issue appropriately, so un-triaged issues can be discovered by searching for issues without any labels.

Follow one of these links:

* [GitLab][issues-query]
* [GitLab Omnibus][omnibus-issues-query]
* [GitLab.com Support Tracker][support-issues-query]

Pick an issue, with preference given to the oldest in the list, and evaluate it with a critical eye, bearing the [issue triage practices](#issue-triage-practices) below in mind. Some questions to ask yourself:

* Do you understand what the issue is describing?
* What labels apply? Particularly consider [type, stage and severity](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html) labels.
* How critical does it seem? Does it need to be escalated to a product or engineering manager, or to the security team?
* Would the `~security` label be appropriate?
* Should it be made confidential? It's usually the case for `~security` issues or
  issues that contain private information.

Apply each label that seems appropriate. Issues with a security impact should be treated specially - see the [security disclosure process](/handbook/support/channels/#security-disclosures).

If the issue seems unclear - you aren't sure which labels to apply - ask the requester to clarify matters for you.
Keep our [user communication guidelines](/handbook/communication/#user-communication-guidelines) in mind at all times, and commit to keeping up the conversation until you have enough information to complete triage.

Check for duplicates! Searching for some keywords in the issue should give you a short list of possibilities to scan through.
Check both open and closed issues, as it may be a duplicate of a solved problem.

Consider whether the issue is still valid. Especially for older issues, a `~bug` may have been fixed since it was reported, or a `~feature` may have already been implemented.

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

### Take ownership of issues you've opened

Sort by "Author: your username" and close any issues which you know have been fixed or have become irrelevant for other reasons. Label them if they're not labeled already.

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
