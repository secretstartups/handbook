---
layout: markdown_page
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

### Product Analysis group members

* [Carolyn Braza](/company/team/#cbraza): [Manager, Product Data Analysis](/job-families/product/product-analyst/#manager-product-data-analysis)
* [Dave Peterson](/company/team/#dpeterson1): [Senior Product Analyst](/job-families/product/product-analyst/#senior-product-analyst)
* [Nicole Galang](/company/team/#nicolegalang): [Product Analyst](/job-families/product/product-analyst/#product-analyst-intermediate)
* [Product Analyst](/job-families/product/product-analyst/): TBH

The product analysts also work closely with members from the central Data team, including:
* [Mathieu Peychet](https://about.gitlab.com/company/team/#mpeychet_): [Senior Data Analyst](/job-families/finance/data-analyst/#senior-data-analyst)

The Product Analysis group hopes to partner more closely with data engineers on the Data 
team, as well.

## Intake & Planning Process

The Product Analysis group works on a 2-week milestone cadence, which dictates how and when we 
plan and prioritize work.

You can see our current milestone [here](https://gitlab.com/gitlab-data/analytics/-/boards/2329061?scope=all&label_name[]=product%20analysis&milestone_title=%23started)

### Issue Intake

For all product analysis requests, please create an issue on [Data Team Analytics Project](https://gitlab.com/gitlab-data/analytics/-/issues), 
and add a `product analysis` label, as well as your section and group labels. More details below.

All data issues with `product analysis` labels will appear on a [product analysis board](https://gitlab.com/gitlab-data/analytics/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=product%20analytics).

1. In the issue, please explain the urgency/criticality of the requests and provide as much context as possible.

#### Submission Deadline

In order to be considered for the upcoming milestone, please open all issues by EOD Wednesday before 
the next milestone begins. We understand that urgent matters come up, but please try to adhere to 
the submission deadline for any planned work. 
* You can find our milestone cadence/schedule here (Need something here on how to follow our schedule)

#### Issue Templates

Please select the appropriate template based on your type of request.
| Request Type | Template |
| --- | --- |
| Ad hoc / Default | [Product Analysis Request](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/) |
| Experimentation analysis | [experiment_template](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/experiment_template.md) |

#### Labels

All Product Analysis issues should carry the `product analysis` label. (This will automatically be 
added for issues created using the templates). When you open a new issue, please add applicable section and 
group labels.

#### Issue Weight

Each issue is assigned a weight based on estimated time commitment*. If a partially-completed 
issue rolls over from one milestone to another, the weight will be adjusted to reflect the time 
commitment of the outstanding work.

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
| 55 | 1+ quarter |
| 89 | 1+ year |
| 144 | 1+ decade |

If a single issue has a weight greater than the length of the milestone (2 weeks), it should be 
broken into smaller units of work. (This also could be an indicator that the issue should be 
converted to an epic).

### Issue Prioritization

The Manager, Product Data Analysis will help prioritize work based on importance and capacity, and 
will work closely with the Director of Product Growth, Chief Product Officer, and VP, Product 
Management on trade-offs (if needed).

The prioritization process is completed by the Product Analysis team.
1. The product analysis group works on a 2-week milestone cadence
  * You can see our current milestone [here](https://gitlab.com/gitlab-data/analytics/-/boards/2329061?scope=all&label_name[]=product%20analysis&milestone_title=%23started).
1. Prioritization to be set during the planning meeting the week before the start of the new milestone
1. Prioritization labels will be added to reflect the issue's impact and urgency
1. Issue will be assigned an estimated projected time commitment
1. New issues will be considered alongside existing issues to set prioritization for the upcoming 
milestone, adjusting task load based on past milestone performance.

#### Prioritization Labels

Prioritization labels will be added by the Product Analysis team.

| Label | Priority |
| ----- | -------- |
| pa-priority::1 | High and/or urgent |
| pa-priority::2 | Medium |
| pa-priority::3 | Low, non-urgent |

#### Milestone Planning

Final prioritization will be set during the milestone planning meeting, which takes places the 
Thursday before a new milestone begins. The team will consider new and existing issues, along 
with issues in progress.

### Urgent Issues

If an urgent matter comes up, please open an issue and tag your analyst contact (and/or [at]cbraza). 
Please include why the issue is urgent, when it is needed by, what it will inform or how it will 
be used, and who is the intended audience.

If you have not heard from the tagged analyst within 1 business day (or earlier if the issue 
requires a faster turn-around), please send a message in [#s_growth_data](https://gitlab.slack.com/messages/s_growth_data/) 
and feel free to reach out to [at] cbraza.

### Scope Creep

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

### Issue Workflow

The Product Analysis team follows the [same workflow as the Data Team](/handbook/business-technology/data-team/how-we-work/#workflow-summary).

### Capacity

As the Product Analysis team is still fairly new and small, we expect most PMs to self-serve 
on analysis and only create data issues for critical asks. As the group grows, so will our ability 
to support additional asks and analyses.

## Slack

1. [#s_growth_data](https://gitlab.slack.com/messages/s_growth_data/) - For Growth stage-related data questions
1. [#data](https://gitlab.slack.com/messages/data/) - For general data questions 

## Product Analysis Handbook Contents

* [Growth Data Guide](/handbook/product/product-analysis/growth-data-guide/)
* [Experimentation Design & Analysis Framework](/handbook/product/product-analysis/experimentation/)

### Other helpful resources & links

1. [Growth Insights Knowledge Base](/direction/growth/#growth-insights-knowledge-base)
1. [Growth Experiments Knowledge Base](/direction/growth/#growth-experiments-knowledge-base)
1. [Growth Product Handbook](/handbook/product/growth/)
1. [Data for product managers](/handbook/business-technology/data-team/programs/data-for-product-managers/)
1. [Data team How we can help you Page](/handbook/business-technology/data-team/#how-we-can-help-you)
