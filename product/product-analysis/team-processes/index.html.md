---
layout: handbook-page-toc
title: Team Processes
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Gearing Ratios

At GitLab, we use gearing ratios as [Business Drivers](/handbook/finance/financial-planning-and-analysis/#business-drivers-also-known-as-gearing-ratios) 
to forecast long term financial goals by function. The Product Analysis group currently focuses 
on one gearing ratio: Product Managers per Product Analyst. In the future, we may consider other 
ratios (ex: Active Experiments per Product Analyst), but for the moment we are focussing on the 
PM:Product Analyst ratio.

### Targets

The long-term target for the Product Managers per Product Analyst ratio is 3:1. The ability of 
PMs to self-serve on day-to-day questions and activities is a critical component to finding 
success at this ratio, and finding the best tool is a focus of the R&D Fusion Team in FY22 Q3-Q4. 
In addition, we want to ensure that analysts are not spending more time context switching 
(changing from one unrelated task to another) and learning the nuances of different data sets 
then they are actually conducting analysis. We want our product analysts to spend their time 
answering complex questions, developing or improving metrics, and making business-critical 
recommendations.

In order to validate our target ratio, we looked at the practices of other large product 
organizations, including Linkedin, Intuit, HubSpot, Squarespace, iHeartRadio, and Peloton 
Digital. We found that most maintained a ratio of 1.5-3 PMs per product analyst, in addition to 
a self-service tool. As such, we feel comfortable setting a target of 3 PM:1 Product Analyst ratio.

### Closing the Gap

The current PM:Product Analyst ratio is ~10:1 - 40 IC product managers (including current openings) 
and 4 product analysts (3 ICs and 1 IC/Manager hybrid). We plan to hire 4 more analysts by 
the end of 2022, which would bring the ratio to 5:1 (assuming the PM head count remains the same). 
As we work to close the gap and move towards to the 3:1 target, we encourage PMs to leverage 
[office hours](/handbook/product/product-analysis/#office-hours).

## Issue Hygiene

### Must-Haves

All issues must have the following:

* `product analysis` label
* Workflow label (ex: `workflow::1 - triage`)
* Priority label (ex: `pa-priority::2`)
* Section label (ex: `section::Growth`)
  * Answers the question "what section is this work supporting?"
* Group label (ex: `group::activation`)
  * Answers the question "what group is this work supporting?"
* Issue weight
  * The total weight should also be included in the issue description
* Iteration (once the issue is scheduled)

### Issue Workflow

As mentioned above, all issues should have a workflow label. These should be kept up-to-date in 
order to track the current status of an issue on our [board](https://gitlab.com/groups/gitlab-data/-/boards/2973914). 
The Product Analysis team uses a subset of the [workflow labels used by the Data team](/handbook/business-technology/data-team/how-we-work/#workflow-summary).

| Stage (Label) | Description | Completion Criteria |
| --- | --- | --- |
| `workflow::1 - triage` | New issue, being assessed | Requirements are complete and issue is assigned to an analyst |
| `workflow::3 - scheduling` | Waiting for scheduling | Issue has an iteration |
| `workflow::4 - scheduled` | Waiting for development | Work starts on the issue |
| `workflow::5 - development` | Work is in-flight | Issue enters review |
| `workflow::6 - review` | Waiting for or in review | Issue meets [criteria for closure](/handbook/product/product-analysis/team-processes/#checklist-for-closing-an-issue) |
| `workflow::X - blocked` | Issue needs intervention that assignee can't perform | Work is no longer blocked |

### Blocked Issues

When an issue becomes blocked:

* Apply the `workflow::X - blocked` label
* Add a comment with an explanation of why/how the issue is blocked, what is required for the 
issue to be unblocked, and an estimated date of when it will be unblocked (if known)
* Link to the issue that unblocks the work (if applicable)

### Rolling Over Iterations

When we start a new iteration, any open issues from the previous iteration do not automatically 
roll over. As such, we need to be diligent about updating issues to ensure that they do not fall 
off the radar before they are completed.

At the end of an iteration, analysts should review any remaining open issues and:

* Update the iteration value
* Apply the `iteration rollover` label
* Update the issue weight to reflect the _remaining_ amount of work
  * The total weight will still be reflected in the issue description

### Unplanned Work

Sometimes high-priority and/or urgent work comes up after an iteration starts. When an unplanned 
issue is opened mid-iteration:

* Ask the stakeholder to document why the work needs to be prioritized in the issue
  * If it is unclear whether the unplanned work should be pulled into the current iteration, the 
  Manager, Product Data Analysis will make the final decision on prioritization
* Apply the `Unplanned` label
* If the unplanned work is large enough to displace other planned issues, reach out to the 
applicable stakeholder so they are aware that their issue is being delayed

### Issues in Other Projects

Sometimes issues are opened and assigned to analysts outside of the Product Analysis and Data team 
projects. As such, they are hard to track (since they will not appear on our board) and do not 
count towards our velocity. In order to capture the work, analysts have the option of opening a 
placeholder/tracking issue within the Product Analysis project. The placeholder/tracking issue 
should contain a link to the original issue, along with the standard labels, iteration, weight, 
etc.

### Closing an Issue

#### Self-Review

All code and issues should undergo self-review. While it may seem obvious, it is critical to 
ensuring the team is producing high-quality, trustworthy work.

Self-review checklist:

* Code runs without error
* Results make logical sense
* Aggregated results match "known truths" (ex: total number of users, baseline conversion rate, etc.)
* Disaggregated version of results behaves as expected (when applicable)
  * If you follow a single entity (ex: your own activity) through the `JOIN`s and other 
  manipulations, the results make sense

#### Peer Review

You should ask a peer to review your code and/or findings if:

* You are new to the team
* You are new to or unfamiliar with the data set
* The code is going to be reused or highly-visible (ex: Sisense snippets and dashboards)
* The code is going to be used to measure an experiment
* The output is informing a critical business decision
* You want extra eyes on it! Asking for a review is never a bad thing

Before submitting your code for peer review, please check the following:

* Code passes self-review
* Issue or code clearly specifies the objective and/or desired output
* Code is well-commented and easy to follow
  * This includes comments on `JOIN`s, values used in `WHERE` clauses, etc. When it doubt, add 
    a comment
  * Consider adding aliases to column names to make references explicit
* Any specific concerns or areas to focus on are called out
  * Ex: "I want some extra eyes on this `LEFT JOIN`", "these are the two most complex CTEs", etc
  * If portions of the code have already been reviewed, call out what is new and what is unchanged

To request a review, [open an MR in the Product Analysis project](https://gitlab.com/gitlab-data/product-analytics/-/merge_requests/new). 

* Add a new directory under `code_reviews/` and use the issue number for the name
  * Ex: For a code review of issue # 60, the directory should be `code_reviews/60/`
* Add the query or code to a file within that new directory
  * Ex: `code_reviews/60/experiment_events_snippet.sql`
* Once the MR is opened, reach out to the team to see who has capacity to review

Using MRs for reviews will allow for easy feedback and collaboration. However, the code in that 
directory will become stale quickly (ex: additional changes may be made to a snippet in a 
different issue), so the queries should not be considered the SSOT.

#### Checklist for Closing an Issue

Use the following checklist before closing an issue:

* Code passed self-review and peer review (if applicable)
* Findings or results are documented in the issue
* Any additional communication through a different channel is memorialized in the issue (ex: 
conversation on Slack, discussion in meeting, etc)
  * Include the actual text (even if in a screenshot) or write up a quick summary of the communication
  * Guideline: If a new team member looks at the issue in 6 months, all of the necessary context 
  is included in the issue and the team member can understand the findings
* Code is included in (or linked to) the issue
  * Using a collapsed section in markdown is your friend here!
  <details markdown=1>
    <summary>Example collapsed section</summary>

    ```
    <details markdown=1>
      <summary>This is the name of the section</summary>
    
      ```
    
      Add your code here
    
      ```

    </details>
    ```

    </details>
* Findings have been communicated to stakeholder
* Tag other DRIs (if applicable)
  * Ex: if finding has to do with Create, tag the applicable Create PM
* Stakeholder agrees that issue can be closed
  * Keep in mind rules surrounding [scope creep](/handbook/product/product-analysis/#scope-creep). 
  If there are outstanding questions or follow-ups, they can be moved to a new issue and linked
* Open new issue with next steps or follow-ups and link to original issue (if applicable)

## Style Guidelines

The Product Analysis group follows the Data team's [SQL Style Guide](/handbook/business-technology/data-team/platform/sql-style-guide/) 
and best practices.
