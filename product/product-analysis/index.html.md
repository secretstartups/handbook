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
* [Neil Raisinghani](/company/team/#nraisinghani): [Product Analyst](/job-families/product/product-analyst/#product-analyst-intermediate)
* [TBH](https://boards.greenhouse.io/gitlab/jobs/5429229002): [Senior Product Analyst](/job-families/product/product-analyst/#senior-product-analyst)

As part of the [Research & Development (R&D) Data Fusion Team](/handbook/business-technology/data-team/#data-fusion-teams), 
the product analysts also work closely with members from the central Data team.

## Working With Us

The Product Analysis group works in two-week iterations, which dictate how and when we 
plan and prioritize work. Iterations start on Thursdays and end on Wednesdays.

You can see our current iteration [here](https://gitlab.com/groups/gitlab-data/-/boards/2973914).

### Issue Intake

For all product analysis requests, please create an issue in the [GitLab Data Product Analytics project](https://gitlab.com/gitlab-data/product-analytics/-/issues), 
apply the `product analysis` label, and follow the guidelines below.

All data issues with the `product analysis` label will appear on the [Product Analysis board](https://gitlab.com/groups/gitlab-data/-/boards/2959103).

#### Issue Templates

Please select the appropriate template based on your type of request and answer as many of the 
questions as you can. The more information and context we have up front, the faster we are able 
to triage and begin work on the issue.

| Request Type | Template |
| --- | --- |
| Ad hoc / Default request | [Ad Hoc Request](https://gitlab.com/gitlab-data/product-analytics/-/issues/new?issuable_template=Ad%20Hoc%20Request) |
| Experimentation analysis | [Experiment Analysis Request](https://gitlab.com/gitlab-data/product-analytics/-/issues/new?issuable_template=Experiment%20Analysis%20Request) |

#### Submission Deadline

In order to be considered for the upcoming iteration, please open all issues by EOD Monday 
before the next iteration begins. We understand that urgent matters come up, but please try to 
adhere to the submission deadline for any planned work. 

#### Relative Priority

Please indicate the relative priority of the new issue compared to any other issues you have open 
in the backlog (if applicable). In general, the issues that are more immediately actionable and 
impactful to the [company KPIs](/company/kpis/) should be higher in priority.

### Iteration Planning

Final commitment and prioritization will occur during the iteration planning meeting, which 
takes places the day before an iteration begins (every other Wednesday). The team will consider 
new and existing issues, along with issues in progress. When selecting issues for the next 
iteration, the team considers the following:

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
issue rolls over from one iteration to another, the weight will be adjusted to reflect the time 
commitment of the outstanding work.

If a single issue has a weight greater than the length of the iteration (2 weeks), it should be 
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
team within a given iteration. While we recognize that this is an imperfect measurement 
(partially-completed issues and [undocumented work](/handbook/product/product-analysis/#undocumented-requests) 
are not accounted for), it is a rough gauge of team output.

We aim to only commit to work we believe can be completed within the 2-week iteration. As such, 
we will commit to _less than_ our recent velocity and leave a buffer to account for urgent issues 
and interruptions. To start, each analyst will leave a buffer of ~2 days worth of work (an 
estimate based on the recent volume of unplanned work). High-priority issues exceeding the 
allotted buffer will have a material impact on our ability to complete planned work, so please 
plan ahead if you know that you will need assistance from the Product Analysis team.

#### Working Days

As GitLab team members, we are [encouraged to take PTO](/handbook/paid-time-off/) and observe public 
holidays in order to maintain a healthy work-life balance. Analyst capacity should be adjusted 
based on the number of days they are working in the iteration.

### Urgent Issues

If an urgent matter comes up, please open an issue and tag your analyst contact (and/or `@cbraza`). 
Please include why the issue is urgent, when it is needed by, what it will inform or how it will 
be used, and who is the intended audience.

If you have not heard from the tagged analyst within 1 business day* (or earlier if the issue 
requires a faster turn-around), please send a message in [#s_growth_data](https://gitlab.slack.com/messages/s_growth_data/) 
and feel free to tag `@cbraza`.

_*Please keep in mind that we work across different timezones_

### Additional Considerations

Please keep the following in mind when working with the Product Analysis team:

#### Scope Creep

[Scope creep](https://en.wikipedia.org/wiki/Scope_creep) is a problem everyone faces. Please keep 
in mind that [team capacity](/handbook/product/product-analysis/#capacity) is a zero-sum game, 
so scope creep in one issue can mean that we are unable to complete other work planned for 
that iteration.

Additional scope (change in requirements, additional follow-ups, etc) that adds a material amount 
of work* to an issue will need to be captured as net-new work in a new issue. The new issue will 
then go through the normal prioritization and planning process. The best way to avoid scope creep 
is to have thorough, complete requirements in the issue when you initially open it. The issue 
templates should help guide you to include all relevant information.

_*The threshold for a "material amount of work" is to be determined by the analyst working on the issue._

#### Blocked Issues

If an issue is blocked and it requires additional work* to diagnose or troubleshoot 
(ex: a data issue is uncovered), a new issue should be opened, assigned a weight and priority, 
and linked to the original blocked issue. The new issue can be added to the current iteration 
without going through the formal planning process at the analyst's discretion, but this can 
impact our ability to complete all issues in the iteration.

_*The threshold for "additional work" is to be determined by the analyst working on the issue._

Experimentation analysis issues are naturally blocked by the experiment actually running (we have 
to wait until we have sufficient data in order to perform the analysis). In order to enable a more 
accurate measure of velocity, we will divide the work into 2 separate issues*:
1. Experiment prep (dashboard creation and data validation)
1. Experiment analysis

_*At this time, PMs should continue to open a single issue and analysts will separate accordingly._

#### Undocumented Requests

Please open an issue for _all_ Product Analysis requests. Requests made via comments in 
Google Drive are extremely difficult to track, and Slack history is gone after 90 days. 
In addition, these requests are not planned or accounted for in team velocity. Your informal 
request might mean that we are unable to complete work we committed to for another stakeholder.

By keeping a formal record of requests (via issues), we are able to identify frequently asked 
questions (which could lead to building a self-service solution) and quickly replicate past work.

#### Capacity

As the Product Analysis team is still fairly new and small, we expect most PMs to self-serve 
on analysis and only create Product Analysis issues for critical asks. As the group grows, 
so will our ability to support additional asks and analyses.

### Office Hours

In order to start supporting more PMs across GitLab, the Product Analysis team is launching an 
office hours pilot. Office hours will be held every other Wednesday, alternating between 8 am PT 
and 1 pm PT. While the pilot is intended to enable us to support PMs across the organization, 
all GitLab team members are welcome to join.

The intent of office hours is to give PMs faster access to the team and get support for smaller 
tasks, brainstorming, and data self-service. More formal requests that answer more complex 
questions are captured in issues and go through a more 
Unlike more formal requests that we capture in issues, office hours is intended to help PMs 
with smaller tasks, brainstorming, and data self-service. 

#### How to Sign Up

This is currently a pilot program. We expect to make adjustments and iterate over time to maximize 
our level of support.
{: .alert .alert-info}

The [agenda](https://docs.google.com/document/d/1ZXS-eeZNuRUn7176dZFqsyhIU-DSWYvWuEhogpbTzys/edit#) 
is first-come, first-served. Please add your name and topic (or question) by EOD Monday before 
the next office hours. This allows the team time to review new agenda items ahead of time.

Topics will be time-boxed to 30 minutes in order to ensure that, at minimum, we are able to help 
2 stakeholders. (An exception will be made if there is only 1 item on the agenda). If 
topics are too large to be covered in 30 minutes, a team member will reach out to the 
stakeholder to either reduce the scope or to [open an issue for the team](https://gitlab.com/gitlab-data/product-analytics/-/issues/new?issue%5Bmilestone_id%5D=) 
instead. Stakeholders are welcome to leverage office hours to discuss and define the new issue, 
which can help reduce async back-and-forth communication in the issue itself.

To respect everyone's time, the team will set the schedule ahead of time and notify the 
stakeholders we have slated for discussion. We will also pull in 1-2 "on deck" topics -- 
those that we might be able to address, time permitting. If we are unable to cover a topic, 
it will be pushed to the following meeting.

#### Example Topics

Office hours is intended for smaller bodies of work, brainstorming, and assistance with 
data self-service. Since topics are limited to 30 minutes, we ask that stakeholders be mindful of the types of 
items they add to the agenda. Here are some examples of topics for office hours:

<details><summary>👍 Example Topic 1: Experiment Setup</summary>

I am interested in launching an experiment to see if we can increase adoption of Secure.
* How would you go about setting the experiment up? 
* Can you help me calculate the sample size?
* Can you help me interpret the results?

</details>

<details><summary>👍 Example Topic 2: Approach to Analysis</summary>

I am trying to do an analysis on the relationship between users with SSO enabled and invite 
acceptance rate.
* Which tables should I use? Can you help me understand this data source?
* What approach would you take?
* Would this metric answer the question?
* Can you help me understand this data source?

</details>

<details><summary>👍 Example Topic 3: Code Review</summary>

I wrote a query to calculate xMAU for namespaces that converted from a trial to a paid plan.
* Is this `JOIN` correct?
* Does this logic to only include namespaces that had trials before converting?

**Note:** We are not able to accommodate all code reviews in the scope of office hours. 
Please limit this type of topic to specific aspects of a query, whether you are using the correct 
data source, etc.

</details>

<details><summary>👍 Example Topic 4: Dashboard Updates</summary>

I am looking to make some updates or enhancements to this existing dashboard.
* Can you help me incorporate a filter into this dashboard that would allow me to limit the charts 
to activity within 30 days of namespace creation?
* Can you update this funnel to include this additional event?

</details>

<details><summary>👍 Example Topic 5: Follow-Up Questions</summary>

In the last key meeting, you presented an [analysis on early trial adoption](https://docs.google.com/presentation/d/1ESH797L8zwT_28n3Ypqp1xckKhvtt3jr-8eWpexgmto/edit#slide=id.ge35de508d3_0_0). 
* Can you walk me through your methodology?
* Can you help me understand the implications of the data/analysis?

</details>

<details><summary>👍 Example Topic 6: Scope and Define New Issue</summary>

I am going to open an issue for a new analysis.
* Can we discuss the overall scope and details?
* What kind of information should I include in the issue?

</details>

Here are some examples of topics _not_ suited for office hours. These topics are too broad to be 
addressed during office hours and should be captured in an issue. Please note that stakeholders 
are welcome to come to office hours to discuss the scope and details of the subsequent issue 
(see example topic 6 above).

<details><summary>👎 Example Topic 7: New Dashboard</summary>

Can you build a dashboard to help me understand invite acceptance rate?

</details>

<details><summary>👎 Example Topic 8: Net-New Analysis</summary>

Can you look into the relationship between stage adoption and retention?

</details>

#### FAQs

**What is the difference between topics for office hours and formal data requests?**

Office Hours is intended to help PMs with smaller tasks, provide a venue for brainstorming, and 
help folks looking to learn more about data self-service. The benefit is that the agenda is 
first-come, first-served, the prioritization process is bypassed, and the wait time is minimal.

Formal data requests are larger bodies of work captured in issues in the [Product Analytics project](https://gitlab.com/gitlab-data/product-analytics/-/issues/new?issue%5Bmilestone_id%5D=). 
They can help answer more complex questions, but go through more robust [intake](/handbook/product/product-analysis/#issue-intake) 
and [planning](/handbook/product/product-analysis/#iteration-planning) processes. As such, there 
is a longer turn-around time given team size and [capacity](/handbook/product/product-analysis/#capacity).

**What if I don't know if my topic is best suited for office hours or whether I need to open an issue?**

Feel free to ask your analyst partner (if applicable) or in [#s_growth_data](https://gitlab.slack.com/messages/s_growth_data/). 
In addition, we will review agenda items before office hours, and will flag any topics that are 
too broad to be covered in office hours.

### Slack

1. [#s_growth_data](https://gitlab.slack.com/messages/s_growth_data/) - For Growth-related data questions
1. [#g_product_analysis_daily](https://gitlab.slack.com/messages/g_product_analysis_daily/) - For 
the Product Analysis team's asynchronous daily stand-up, powered by [Geekbot](https://geekbot.com/)
1. [#data](https://gitlab.slack.com/messages/data/) - For general data questions

### GitLab Groups

1. `@gitlab-org/growth/data-analysts` - Notifies the entire Product Analysis team

## Product Analysis Handbook Contents

* [Growth Data Guide](/handbook/product/product-analysis/growth-data-guide/)
* [Experimentation Design & Analysis](/handbook/product/product-analysis/experimentation/)
* [Team Processes](/handbook/product/product-analysis/team-processes/)

## Other helpful resources & links

1. [Growth Insights Knowledge Base](/direction/growth/#growth-insights-knowledge-base)
1. [Growth Experiments Knowledge Base](/direction/growth/#growth-experiments-knowledge-base)
1. [Growth Product Handbook](/handbook/product/growth/)
1. [Data Team Handbook](/handbook/business-technology/data-team/)
1. [Data for Product Managers](/handbook/business-technology/data-team/programs/data-for-product-managers/)
1. [Experimentation Best Practices](/handbook/business-technology/data-team/experimentation-best-practices/)
