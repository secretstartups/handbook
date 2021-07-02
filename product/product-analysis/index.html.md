---
layout: handbook-page-toc
title: Product Analysis Group
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Product Analysis Handbook

The Product Analysis group consists of a team of product analysts. This group reports to the 
Director of Product, Growth and serves as a specialized analytics team to support product data 
analysis requests. The primary customer this group serves is Product Managers from various 
sections/groups.

Read more about what we do at GitLab on our [Direction](/direction/product-analysis/) page.

### Product Analysis Group Members

* [Carolyn Braza](/company/team/#cbraza): [Manager, Product Data Analysis](/job-families/product/product-analyst/#manager-product-data-analysis)
* [Dave Peterson](/company/team/#dpeterson1): [Senior Product Analyst](/job-families/product/product-analyst/#senior-product-analyst)
* [Nicole Galang](/company/team/#nicolegalang): [Product Analyst](/job-families/product/product-analyst/#product-analyst-intermediate)
* [Product Analyst](/job-families/product/product-analyst/): TBH

As part of the [Research & Development (R&D) Data Fusion Team](https://about.gitlab.com/handbook/business-technology/data-team/#data-fusion-teams), 
the product analysts also work closely with members from the central Data team, including:
* [Mathieu Peychet](https://about.gitlab.com/company/team/#mpeychet_): [Senior Data Analyst](/job-families/finance/data-analyst/#senior-data-analyst)

The Product Analysis group hopes to partner more closely with data engineers on the Data 
team, as well.

## Intake & Planning Process

The Product Analysis group works on a 2-week milestone cadence, which dictates how and when we 
plan and prioritize work. We follow the [Data team's milestone schedule](/handbook/business-technology/data-team/how-we-work/planning/#milestone-planning) 
and, as such, 1 milestone per quarter will be 3 weeks long. Milestones start on Wednesdays and 
end on Tuesdays.

You can see our current milestone [here](https://gitlab.com/gitlab-data/analytics/-/boards/2329061?scope=all&label_name[]=product%20analysis&milestone_title=%23started)

### Issue Intake

For all product analysis requests, please create an issue in the [Data Team Analytics project](https://gitlab.com/gitlab-data/analytics/-/issues), 
apply the `~product analysis` label, and follow the guidelines below.

All data issues with the `product analysis` label will appear on a [product analysis board](https://gitlab.com/gitlab-data/analytics/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=product%20analysis).

#### Issue Templates

Please select the appropriate template based on your type of request and answer as many of the 
questions as you can. The more information and context we have up front, the faster we are able 
to triage and begin work on the issue.

| Request Type | Template |
| --- | --- |
| Ad hoc / Default | [Product Analysis Request](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/Product%20Analysis%20Request.md) |
| Experimentation analysis | [experiment_template](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/experiment_template.md) |

#### Submission Deadline

In order to be considered for the upcoming milestone, please open all issues by EOD Monday before 
the next milestone begins. We understand that urgent matters come up, but please try to adhere to 
the submission deadline for any planned work. 

#### Relative Priority

Please indicate the relative priority of the new issue compared to any other issues you have open 
in the backlog (if applicable). In general, the issues that are more immediately actionable and 
impactful to the company should be higher in priority.

### Milestone Planning

Final commitment and prioritization will be set during the milestone planning meeting, which 
takes places the Thursday before a milestone begins. The team will consider new and existing 
issues, along with issues in progress. When selecting issues for the next milestone, the team 
considers the following:

* Issue priority
* Issue weight
* Velocity
* Working days

#### Issue Priority

The Manager, Product Data Analysis will help prioritize work based on importance and capacity, and 
will work closely with the Director of Product Growth, Chief Product Officer, and VP, Product 
Management on trade-offs (if needed).

Prioritization labels will be added by the Product Analysis team as a part of triage and 
planning.

| Label | Priority |
| ----- | -------- |
| `pa-priority::1` | High and/or urgent |
| `pa-priority::2` | Medium |
| `pa-priority::3` | Low, non-urgent |

Most issues will fall under `pa-priority::2` and `pa-priority::3`.

#### Issue Weight

Each issue is assigned a weight based on estimated time commitment. If a partially-completed 
issue rolls over from one milestone to another, the weight will be adjusted to reflect the time 
commitment of the outstanding work.

If a single issue has a weight greater than the length of the milestone (2 weeks), it should be 
broken into smaller units of work. (This could also be an indicator that the issue should be 
converted to an epic).

| Weight Value | Estimated time to complete |
| --- | --- |
| 1 | < 1 hour |
| 2 | 2 hours |
| 3 | 4 hours |
| 5 | 1 day |
| 8 | 2-3 days |
| 13 | 1 week |
| 21 | 2+ weeks |
| 34 | 1+ month |

#### Velocity

Product Analysis defines velocity as the amount of work (measured in issue weight) completed by the 
team within a given milestone. While we recognize that this is an imperfect measurement 
(partially-completed issues and [undocumented work](/handbook/product/product-analysis/#undocumented-requests) 
are not accounted for), it is a rough gauge of team output.

We aim to only commit to work we believe can be completed within the 2 weeks. As such, we will 
commit to _less than_ our recent velocity and leave a buffer to account for urgent issues and 
interruptions. To start, each analyst will leave a buffer of ~2 days worth of work (an estimate based on 
the recent volume of unplanned work). High-priority issues exceeding the allotted buffer will have 
a material impact on our ability to complete planned work, so please plan ahead if you know that 
you will need assistance from the Product Analysis team.

#### Working Days

As GitLab team members, we are [encouraged to take PTO](/handbook/paid-time-off/) and observe public 
holidays in order to maintain a healthy work-life balance. Analyst capacity should be adjusted 
based on the number of days they are working in the milestone.

### Urgent Issues

If an urgent matter comes up, please open an issue and tag your analyst contact (and/or [at] cbraza). 
Please include why the issue is urgent, when it is needed by, what it will inform or how it will 
be used, and who is the intended audience.

If you have not heard from the tagged analyst within 1 business day (or earlier if the issue 
requires a faster turn-around), please send a message in [#s_growth_data](https://gitlab.slack.com/messages/s_growth_data/) 
and feel free to reach out to [at] cbraza.

### Additional Considerations

Please keep the following in mind when working with the Product Analysis team:

#### Scope Creep

[Scope creep](https://en.wikipedia.org/wiki/Scope_creep) is a problem everyone faces. Please keep 
in mind that [team capacity](/handbook/product/product-analysis/#capacity) is a zero-sum game, 
so scope creep in one issue can mean that we are unable to complete other work planned for 
that milestone.

Additional scope (change in requirements, additional follow-ups, etc) that adds a material amount 
of work* to an issue will need to be captured as net-new work in a new issue. The new issue will 
then go through the normal prioritization and planning process. The best way to avoid scope creep 
is to have thorough, complete requirements in the issue when you initially open it. The issue 
templates should help guide you to include all relevant information.

_*"material amount of work" is to be determined by the analyst working on the issue, not the 
stakeholder_

#### Blocked Issues

If an issue is blocked and it requires additional work* to diagnose or troubleshoot 
(ex: a data issue is uncovered), a new issue should be opened, assigned a weight and priority, 
and linked to the original. The new issue can be added to the current milestone without going 
through the formal planning process at the analyst's discretion.

_*The threshold for "additional work" is to be determined by the analyst working on the issue._

#### Undocumented Requests

Please open an issue for _all_ Product Analysis requests. Requests made via comments in 
Google Drive are extremely difficult to track, and Slack messages are gone after 90 days. 
In addition, these requests are not planned or accounted for in team velocity. Your informal 
request might mean that we are unable to complete work we committed to for another stakeholder.

By keeping a formal record of requests (via issues), we are able to identify frequently asked 
questions (which could lead to building a self-service solution) and quickly replicate past work.

#### Capacity

As the Product Analysis team is still fairly new and small, we expect most PMs to self-serve 
on analysis and only create Product Analysis issues for critical asks. As the group grows, 
so will our ability to support additional asks and analyses.

## Slack

1. [#s_growth_data](https://gitlab.slack.com/messages/s_growth_data/) - For Growth stage-related data questions
1. [#data](https://gitlab.slack.com/messages/data/) - For general data questions

## Product Analysis Handbook Contents

* [Growth Data Guide](/handbook/product/product-analysis/growth-data-guide/)
* [Experimentation Design & Analysis Framework](/handbook/product/product-analysis/experimentation/)

## Product Analysis Handbook Structure

* [Growth Data Guide](/handbook/product/product-analysis/growth-data-guide/)
* [Experimentation Design & Analysis Framework](/handbook/product/product-analysis/experimentation/)

### Other Helpful Resources & Links

1. [Growth Insights Knowledge Base](/direction/growth/#growth-insights-knowledge-base)
1. [Growth Experiments Knowledge Base](/direction/growth/#growth-experiments-knowledge-base)
1. [Growth Product Handbook](/handbook/product/growth/)
1. [Data Team Handbook](/handbook/business-technology/data-team/)
1. [Data for Product Managers](/handbook/business-technology/data-team/programs/data-for-product-managers/)
