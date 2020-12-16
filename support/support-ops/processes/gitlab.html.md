---
layout: handbook-page-toc
title: Support Operations GitLab Processes
description: List of Support Operations GitLab Processes which includes Time Tracking, Triage, Priority, Stage and Category.
---

# GitLab Processes

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Time Tracking

Support-Ops utilizes 
[Time Tracking](https://docs.gitlab.com/ee/user/project/time_tracking.html)
in the issues/MRs we work. We utilize this time tracking to help define our
hiring model, measure workload, and etc. As you work issues and merge requests,
make sure you utilize this feature. 

## Triage

At least once a day, Support-Ops should triage the
[issues](https://gitlab.com/groups/gitlab-com/support/support-ops/-/issues) and
[MRs](https://gitlab.com/groups/gitlab-com/support/support-ops/-/merge_requests)
that appear under the
[support-ops group](https://gitlab.com/gitlab-com/support/support-ops).

Triaging these comes into three areas:

  * [Priority](#priority)
  * [Stage](#stage)
  * [Category](#category)

Support-Ops also makes use of the
[GitLab Triage Gem](https://gitlab.com/gitlab-org/gitlab-triage) to assist in
ensuring all issues/merge requests are triaged. 

### Priority

It is important to determine the priority of a Support-Ops issues/MR. This can
be tricky, as priority can often involve and change. The labels (and some
general advise for them) are:

* `Support-Ops-Priority::Needs Priority`
  * This label should be used when a Priority needs to be set on the issue/MR
* `Support-Ops-Priority::Low`
  * This should be for Low priority issues. Things like small aesthetic changes,
    syntax corrections, etc. would fall into this.
* `Support-Ops-Priority::Normal`
  * These should be for standard Support-Ops requests. They bring changes to
    processes/systems/etc., but it is not required for Support to perform their
    duties. An example of this would be the creation of a Macro, adding a field
    to a Zendesk form, etc.
* `Support-Ops-Priority::Important`
  * These should be for highly important issues/MRs. These would be things that
    would bring a significant change to the processes, systems, etc. that is
    needed to keep everything running properly. An example of this would be
    changing views to fix an issue where certain types of tickets do not show up
    at all.
* `Support-Ops-Priority::Critical`
  * These are for system critical issues/MRs. These should be used when
    something is required to fix a broken system. As an example, a new setting
    prevents support from replying to tickets.

### Stage

It is important to keep the stage the issue/MR is in updated. This informs those
following it where we are in the process of resolving/merging the issue/MR. The
labels and what they would be used for are:

* `SupportOps::Needs Attention`
  * The issue/MR has not been triaged and is in need of triaging
* `SupportOps::To Do`
  * Support-Ops needs to begin working on this, but has not yet
* `SupportOps::Doing`
  * Support-Ops is actively working on the issue/MR
* `SupportOps::Completed`
  * Support-Ops has completed the issue/MR
* `SupportOps::Blocked`
  * Something is block Support-Ops from working the issue/MR

### Category

Categorizing the issues/MRs Support-Ops receives are important. We use this
information for metrics, our hiring model, and for determining what kind of
shifts in focus we might need. The labels and what they would be used for are:

* `Support-Ops-Category::Documentation`
  * The issue/MR is about documentation
* `Support-Ops-Category::Pagerduty`
  * The issue/MR is about Pagerduty
* `Support-Ops-Category::Provisioning`
  * The issue/MR is about provisioning something
* `Support-Ops-Category::ZendeskApps`
  * The issue/MR is about Zendesk Applications (creation, development, etc.)
* `Support-Ops-Category::ZendeskForms`
  * The issue/MR is about Zendesk Forms
* `Support-Ops-Category::ZendeskMacros`
  * The issue/MR is about Zendesk Macros
* `Support-Ops-Category::ZendeskOrgsAndUsers`
  * The issue/MR is about Zendesk Organizations and/or Users
* `Support-Ops-Category::ZendeskOther`
  * The issue/MR is about Zendesk, but does not fit into other categories
* `Support-Ops-Category::ZendeskSettings`
  * The issue/MR is about Zendesk Settings (admin level)
* `Support-Ops-Category::ZendeskTickets`
  * The issue/MR is about Zendesk Tickets
* `Support-Ops-Category::ZendeskTriggersAndAutomations`
  * The issue/MR is about Zendesk Triggers and/or Automations
* `Support-Ops-Category::ZendeskViews`
  * The issue/MR is about Zendesk Views
* `Support-Ops-Category::Missing`
  * The issue/MR has not been categorized yet
