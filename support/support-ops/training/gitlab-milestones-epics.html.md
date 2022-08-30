---
layout: handbook-page-toc
title: 'GitLab Milestones and Epics Training'
category: Gitlab.com
description: 'Training documentation concerning milestones and epic on GitLab'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* What GitLab milestones are
* What GitLab epics are
* How to create GitLab milestones and epics
* How to edit GitLab milestones and epics
* Support Ops use cases

## What are milestones and epics

In regards to milestones, as per
[GitLab](https://docs.gitlab.com/ee/user/project/milestones/):

> Milestones in GitLab are a way to track issues and merge requests created to
> achieve a broader goal in a certain period of time.

In regards to epics, they are items that link issues together. As per
[GitLab](https://docs.gitlab.com/ee/user/group/epics/):

> When issues share a theme across projects and milestones, you can manage them
> by using epics.

## Videos for milestones

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/K8pzIiFSXBs" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

## How to create GitLab milestones

To create a milestone, you would go to the project or group page and then hover
over `Issues`. In the submenu that appears, you would then click `Milestones`'.

From here, you will click the blue `New milestone` button at the top-right of
the page.

After doing so, you will enter a title for the milestone, a start and end date
for the milestone, and a description for the milestone. After doing so, click
the blue `Create milestone` button.

## How to edit GitLab milestones

To edit a milestone, you would go to the project or group page and then hover
over `Issues`. In the submenu that appears, you would then click `Milestones`'.

From here, locate the milestone in question and click on its title.

After doing so, you will then click the white `Edit` button towards the
top-right of the page. Doing so will allow you to edit the title for the
milestone, a start and end date for the milestone, and a description for the
milestone. After doing so, click the blue `Save changes` button.

## How to close and delete a milestone

To close or delete a milestone, you would go to the project or group page and
then hover over `Issues`. In the submenu that appears, you would then click
`Milestones`'.

From here, locate the milestone in question and click on its title.

After doing so, you can close the milestone by clicking the white
`Close milestone` button at the top-right of the page. You can delete
the mileston by clicking the red `Delete` button (and confirming deletion by
clicking the red `Delete milestone` button that appears on the pop-up box).

## Adding issues and merge requests to GitLab milestones

There are a few ways to add an issue or merge request to a milestone. The
easiest way is via the issue or merge request itself. On that page, you can do
one of the following:

* Make a comment containing the text `/milestone %"XXX"` (where `XXX` is the
  milestone title)
* Click the `Edit` button to the right of `Milestone` on the right-hand side of
  the page and select the milestone to use.

## Video for epics

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/dBsGMjE7sWw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

## How to create GitLab epics

To create an epic, you will click the `Epics` link on the left-hand side of a
group/subgroup page. After doing so, click the blue `New epic` button. On this
page, you can enter the title, description, confidentiality, labels, start
date, and end date for the epic. After doing so, click the blue `Create epic`
button.

## How to edit GitLab epics

To edit an epic, you will click the `Epics` link on the left-hand side of a
group/subgroup page. After doing so, locate the epic in question and click on
the title.

To edit the title or description of the epic, click the pencil icon on the
top-right of the page to enter the epic editor. After you have made your
changes, click the blue `Save changes` button.

To edit the start date, click the `Edit` link to the right of `Start date` on
the right-hand side of the page.

To edit the start date, click the `Edit` link to the right of `Due date` on the
right-hand side of the page.

To edit the labels, click the `Edit` link to the right of `Labels` on the
right-hand side of the page.

To edit the confidentiality, click the `Edit` link to the right of
`Confidentiality` on the right-hand side of the page.

## How to close an epic

To close an epic, you will click the `Epics` link on the left-hand side of a
group/subgroup page. After doing so, locate the epic in question and click on
the title.

After doing so, click the white `Close epic` button.

## Adding issues to GitLab epics

There are a couple of ways to add issues to an epic. 

To do this via the epic page itself, you'd scroll down past the description of
the epic and click the `+` icon to the right of the `Linked issues` section (if
there are no linked issues, you'd instead click the Add drop-down on the right
side and then click `Add an existing issue`). After doing so, paste the issue
link (or ID if within the same project) and click the green `Add` button. For
the type of association, see down below).

To add an issue to an epic from the issue itself, you can either:

* comment `/epic &XX` (where `XX` is the epic ID)
  * If adding the issue to an epic from a different project/group, you can
    instead comment `/epic URL` (where `URL` is the epic URL)
* click the `Edit` link to the right of `Epic` on the right-hand side of the
  page

### Relates to

This means the issue relates to the epic. This is the most common type of
association.

### Blocks

This indicates the epic is blocking the issue from being completed.

### Is blocked by

This indicates the epic is blocked by the issue being added.

## Useful links

* [GitLab Milestones documentation](https://docs.gitlab.com/ee/user/project/milestones/)
* [GitLab Epics documentation](https://docs.gitlab.com/ee/user/group/epics/)
