---
layout: handbook-page-toc
title: "Throughput"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

[Throughput](https://weblogs.asp.net/wallen/throughput-vs-velocity), is a
measure of the total number of MRs that are completed and in production in a
given period of time. Unlike velocity, throughput does not require the use of
story points or weights, instead we measure the number of MRs completed by a
team in the span of a week or a release. Each MR is represented by 1
unit/point.  This calculation happens after the time period is complete and no
pre-planning is required to capture this metric. The total count should not be
limited to only MRs that deliver features, it's important to include
[engineering proposed](/handbook/engineering/#engineering-proposed-initiatives)
MRs in this count as well. This will ensure that we properly reflect the team's
capacity in a consistent way and focus on delivering at a predictable rate.

We also refer to throughput as productivity on occasion. In both cases, we
measure it at a team level (or higher), not at an individual level.

## Implementation

Throughput types classify merge requests and issues with a top level type
in the list below. If an issue or merge request has more than one of these
labels then the highest one in the list takes precedence.

Some throughput types have sub-types such as `~"feature"` with
`~"feature::maintenance"`. Type labels will be inferred from sub-types with
[`triage-serverless`](https://gitlab.com/gitlab-org/quality/triage-serverless)
to aid in throughput type reporting. Application of the sub-type label is
encouraged for measuring the type at the highest level of specificity.

1. `~"Community contribution"`: A community contribution label takes precedence over other labels. Therefore, while the work may introduce a new feature or resolve a bug, we prioritize this label over others due to the importance of this particular category.
You may apply a second throughput label such as `~"bug"` or `~"feature"` to indicate the throughput type.
1. `~"security"`: Security-related MRs.
1. `~"bug"`: Defects in shipped code. Read more about [features vs bugs](/handbook/product/product-processes/#issues).
1. `~"feature"`: Any MR that contains work to support the implementation of a feature and/or results in an improvement in the user experience. Read more about [features vs bugs](/handbook/product/product-processes/#issues).
  - `~"feature::addition"`: Refers to the first MVC that gives GitLab users a foundation of new capabilities that were previously unavailable. For example, these issues together helped create the first MVC for our Reviewer feature: [Create a Reviewers sidebar widget](https://gitlab.com/gitlab-org/gitlab/-/issues/237921), [Show which reviewers have commented on an MR](https://gitlab.com/gitlab-org/gitlab/-/issues/10294), [Add reviewers to MR form](https://gitlab.com/gitlab-org/gitlab/-/issues/216054), [Increase MR counter on navbar when user is designated as reviewer](https://gitlab.com/gitlab-org/gitlab/-/issues/255102)
  - `~"feature::enhancement"`: Refers to GitLab user-facing improvements that refine the initial MVC to make it more useful and usable. For example, these issues enhance the existing Reviewer feature: [Show MRs where user is designated as a Reviewer on the MR list page](https://gitlab.com/gitlab-org/gitlab/-/issues/237922), [Display which approval rules match a given reviewer](https://gitlab.com/gitlab-org/gitlab/-/issues/233736), [Add Reviewers quick action](https://gitlab.com/gitlab-org/gitlab/-/issues/241244)
  - `~"feature::maintenance"`: Refers to refinements to an existing feature that are not GitLab user-facing and not related to `~bug` resolution. This could include `~"technical debt"` and industry-standard updates such as work towards Rails upgrade. For example: [Updating software versions in our tech stack](https://gitlab.com/gitlab-org/ci-cd/codequality/-/issues/22), [Recalculating UUIDs for vulnerabilities using UUIDv5](https://gitlab.com/gitlab-org/gitlab/-/issues/212322)
1. `~"tooling"`: MRs related to engineering tooling.
  - `~"tooling::pipelines"`: MRs related to pipelines configuration.
  - `~"tooling::workflow"`: MRs related to improvements of the engineering workflow and release tooling like Danger, RuboCop, linters, etc.
1. `~"documentation"`: For documentation-only MRs, use `~"documentation"` only unless the work is attributable to code changes for a feature or bug, and in that case, use `~"feature"` or `~"bug"`, even if the doc change is being made late for a feature/bug from a previous milestone.

Note that users of GitLab internal development tools do not count as GitLab
users. Example projects are:

- [release-tools](https://gitlab.com/gitlab-org/release-tools)
- [gitlab-qa](https://gitlab.com/gitlab-org/gitlab-qa)
- [triage-ops](https://gitlab.com/gitlab-org/quality/triage-ops)

If it does not have any of these, it will be tracked in the 'undefined'
bucket instead. The Engineering Manager for each team is ultimately
responsible for ensuring that these labels are set correctly, and should
do this as a manual process on a schedule that is appropriate for their
time.

### Deprecated types

`~"backstage"` was intended to be changes that were done to keep product development running smoothly. Over time, `~"backstage"` was also being used for pre-feature work and has become unclear and confusing. `~"backstage"` was deprecated as part of <https://gitlab.com/gitlab-org/quality/team-tasks/-/issues/488>.

#### Suggestions for previous common ~"backstage" examples

This guidance may be helpful if you are wondering the go-forward type label based on your use case for applying `~"backstage"`.

- `~"feature::maintenance"` for industry standard and refactoring changes such as:
  - `~"technical debt"`
  -  non-`~"security"` `~"dependency update"`
  - `~"railsx.y"`
  - `~"Architecture Decision"`
- `~"feature::maintenance"` for addition or updates to specs for existing GitLab features
- `~"feature::addition"` for all changes related to the release of a new feature
- `~"tooling::workflow"` for changes to engineering workflows such as:
  - `~"Danger bot"`
  - `~"static analysis"`
  - release tooling
  - Docs tooling changes
- `~"tooling::pipelines"` for changes to project pipeline configurations

`~backstage` will be removed with <https://gitlab.com/gitlab-org/quality/triage-ops/-/issues/483>.

## Why we adopted this model

- The goal for using this measure is to incentivize teams to break MRs to the smallest deliverable which lead to a smaller set of changes and the many benefits that come along with that.
- This practice aligns with one of our core values: [Iteration](/handbook/values/#iteration), do the smallest thing possible and get it out as quickly as possible.
- Instead of spending time sizing and figuring out the weight of an issue, we should put this effort toward breaking issues to the smallest [deliverable](/handbook/engineering/#code-quality-and-standards).
- Since throughput is a measure of actual work completed, it is far more
accurate than using weights.
- Throughput is a simpler model to implement for new teams since the measure
  is the count of small well defined MRs.
- Unlike weights which may be estimated differently from one team to another,
  throughput can be normalized across every engineering team.

## A few notes to consider when using this model

- There are many activities such as code reviews, meetings, planning that we do not count as units of work independently, they are however accounted for as part of the delivery of an issue whether it be feature work or technical debt.  The team's rate of delivering code to production is what we are trying to measure.
- This metric is a tool for an Engineering Manager to [determine the capacity
  of the team](/handbook/engineering/management/project-management/) for each given release.
  You need to gather a few milestones worth of data to get a sense of your week to week delivery rate.
- While there is no scoring required with this model, there is still value
  for an Engineering Manager to look through each issue they are committing to
  in any given release and making sure they are well defined small deliverables.

## How to read and interpret the data

- Review the chart weekly and take notes of the trend week to week.
Is your delivery rate staying consistent? If not,
take note of anything that might be impacting the team's capacity such as holidays.
- If the team is merging most of their MRs during a particular week of a milestone, it is
good to discuss this further with the team and understand what impediments might be leading to this
trend.
- Take note of your categories which are based on the labels listed above.
Are you delivering in mostly one or two categories over all others? You may need to discuss
this further with your Product Manager.
- Take note of your team's focus on community contribution as an example. If the team is able
to consistently merge MRs in this categories, celebrate it.
- If you see `undefined` MRs represented, spend some time to review your team's MRs
 and add labels so you can get a more accurate reflection of your investment. It could take up to
 a day for these updates to show up on the quality dashboard. Also good to keep in mind that
 the data here represents contributions in multiple projects. Label hygiene is not enforced across
 all of them.
- Link to the first training video can be found here: <https://youtu.be/6QC1OwoddD8>

When combined with cycle time, throughput is a great metric to help you identify areas of improvement and possible bottlenecks that the team can work to address.

## Stage and Group labels in Throughput

In the spirit of "Everyone can Contribute" it's natural that members in a group will contribute to another group.
Our guideline aims to cover for the 20/80 (default accounting method). By default the MR from an author should belong to their `group::xxx` and direct parent `devops::xxx`
Optimizing for all edge cases will lead to complexity since there will always be edge cases.

We allow flexibility where the parent `devops::xxx` and child `group::xxx` label may not match. For example:
* In the case where labelling was corrected by a human.
* When working on shared `frontend`, `backend` components or `backstage` work that spans multiple groups.

If a contribution happens across groups, we leave it to the discretion of the engineering and product manager to change the `group::xxx` label to reflect which group worked on it. They can also decide if they want to move over the `devops::xxx` as well or keep it to reflect the product area.
The [triage bot](https://gitlab.com/gitlab-org/quality/triage-ops/) automatic labelling we will not override existing labels.
