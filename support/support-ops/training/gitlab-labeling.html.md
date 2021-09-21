---
layout: handbook-page-toc
title: 'GitLab Labeling Training'
category: Gitlab.com
description: 'Training documentation concerning labeling on GitLab'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* What GitLab labels are
* How to create a GitLab label
* How to edit a GitLab label
* How to delete a GitLab label
* Important labels for support ops

## What are GitLab labels

Labels help you tag issues, merge requests, and epics within GitLab.

There are two types of labels:

* Project labels: ones existing at the project level only
* Group labels: ones existing at the group level, and are thus inherited to all
  subgroups and projects within the group

Support Operations uses Group labels so we can apply them to every item we work
on. We create them at either the
[gitlab-com group](https://gitlab.com/gitlab-com) level or the
[support-ops group](https://gitlab.com/gitlab-com/support/support-ops) level.

### Scoped labels

As per
[GitLab](https://docs.gitlab.com/ee/user/project/labels.html#scoped-labels):

> Scoped labels allow teams to use the label feature to annotate issues, merge
> requests and epics with mutually exclusive labels. This can enable more
> complicated workflows by preventing certain labels from being used together.

To use a scoped label, it must contain two colons (`::`) in the title. This
makes it so the first part (before the double colons) is a category and the
second part (after the double colons) is the label for the category.

Do note only scoped label from a scoped label category can be present at any
time. Adding a new one will remove the other one from the scoped label category.

## How to create a GitLab label

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/1TbJIf8WU_g" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To create a label at the project level, go to the project in question within
GitLab and hover on `Project information` on the left-hand side of the page. In
the submenu that appears, click on `Labels`.

To create a label at the group level, go to the group in question within GitLab
and hover on `Group information` (or `Subgroup information` if you are using a
subgroup) on the left-hand side of the page. In the submenu that appears, click
on `Labels`.

From here, click the blue `New label` button in the top-right of the page. On
the page this takes you to, you will add a title for your label, a description
for your label, and a background color for the label. After you have filled
these out, click the blue `Create label` button to create the label. You will
now be able to use that label at the project level (for Project labels) or on
all projects/subgroups under the group (for Group labels).

## How to edit a GitLab label

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/cwUpN7BNvJM" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To edit a label at the project level, go to the project in question within
GitLab and hover on `Project information` on the left-hand side of the page. In
the submenu that appears, click on `Labels`.

To edit a label at the group level, go to the group in question within GitLab
and hover on `Group information` (or `Subgroup information` if you are using a
subgroup) on the left-hand side of the page. In the submenu that appears, click
on `Labels`.

From here, locate the label you wish to edit and click the pencil icon on the
right-hand side of the label box to edit it. Here you can change the title,
description, or background color. Keep in mind that changing this will change it
on all items the label is present on.

After you are done making your changes, click the blue `Save changes` button.

## How to delete a GitLab label

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/NsjUQXLU4AM" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To delete a label at the project level, go to the project in question within
GitLab and hover on `Project information` on the left-hand side of the page. In
the submenu that appears, click on `Labels`.

To delete a label at the group level, go to the group in question within GitLab
and hover on `Group information` (or `Subgroup information` if you are using a
subgroup) on the left-hand side of the page. In the submenu that appears, click
on `Labels`.

From here, locate the label you wish to delete and click the three vertical dots
on the right-hand side of the label box. On the submenu that appears, click the
`Delete` option. This will make a pop-up box appear asking you to confirm the
deletion. Keep in mind that doing so will remove the label from all items it
exists on. If you are sure you wish to confirm the deletion, click the red
`Delete label` button.

## Important GitLab labels for Supprot Operations

| Label                      | Category | Purpose |
|----------------------------|----------|---------|
| `SupportOps::To Do` | Progress | No one has begun working it |
| `SupportOps::Doing` | Progress | Someone is actively working it |
| `SupportOps::Completed` | Progress | Someone has completed all work on it |
| `SupportOps::Blocked` | Progress | Support Ops is unable to work on it due to an external blocker |
| `SupportOps::Backlog` | Progress | Support Ops has determined the issue/MR is needed, but is not able to prioritize it at this time |
| `SupportOps::Needs Triage` | Progress | The issue is in need of triage |
| `Support-Ops-Category::Account Deletions` | Categorization | It is about account deletions |
| `Support-Ops-Category::Agent Signatures` | Categorization | It is about agent signatures |
| `Support-Ops-Category::Apps` | Categorization | It is about Zendesk Apps |
| `Support-Ops-Category::Audit` | Categorization | It is an audit |
| `Support-Ops-Category::Automations` | Categorization | It is about Zendesk automations |
| `Support-Ops-Category::Calendly` | Categorization | It is about Calendly |
| `Support-Ops-Category::Documentation` | Categorization | It is about Documentation |
| `Support-Ops-Category::Forms` | Categorization | It is about Zendesk ticket forms |
| `Support-Ops-Category::GitLab Projects` | Categorization | It is about a gitlab.com project |
| `Support-Ops-Category::GitLab Settings` | Categorization | It is about gitlab.com settings |
| `Support-Ops-Category::Macros` | Categorization | It is about Zendesk macros |
| `Support-Ops-Category::Missing` | Categorization | The category is missing |
| `Support-Ops-Category::Orgs and Users` | Categorization | It is about Zendesk orgs/users |
| `Support-Ops-Category::Other` | Categorization | It doesn't have a defined category |
| `Support-Ops-Category::Pagerduty` | Categorization | It is about Pagerduty |
| `Support-Ops-Category::Provisioning and Deprovisioning` | Categorization | It is about provisioning |
| `Support-Ops-Category::Shadowing` | Categorization | It is about shadowing |
| `Support-Ops-Category::Sync` | Categorization | It is about Zendesk sync |
| `Support-Ops-Category::Theme` | Categorization | It is about Zendesk Guide |
| `Support-Ops-Category::Triggers` | Categorization | It is about Zendesk triggers |
| `Support-Ops-Category::Views` | Categorization | It is about Zendesk views |
| `Support-Ops-Category::Zendesk Review` | Categorization | It is about Zendesk review/realignment |
| `Support-Ops-Category::Zendesk Settings` | Categorization | It is about Zendesk settings |
| `Zendesk::Global` | Instance | It pertains to the Zendesk Global instance |
| `Zendesk::US Federal` | Instance | It pertains to the Zendesk US Federal instance |
| `Support-Ops-Priority::Urgent` | Priority | It has an urgent priority with an expected SLO of 3 days |
| `Support-Ops-Priority::High` | Priority | It has an high priority with an expected SLO of 7 days |
| `Support-Ops-Priority::Medium` | Priority | It has an medium priority with an expected SLO of 14 days |
| `Support-Ops-Priority::Low` | Priority | It has an low priority with an expected SLO of 30 days |
| `Support-Ops-Priority::Missing` | Priority | It is missing a priority |

## Useful links

* [GitLab Labels documentation](https://docs.gitlab.com/ee/user/project/labels.html)
