---
layout: handbook-page-toc
title: 'Triage'
category: 'GitLab'
description: 'Details on the workflow for issue/MR triaging'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

To help maintain a sense of data integrity within the issues we work, we have a
triage process implemented into GitLab.com. This runs from the
[support-ops-project repo](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/)
utilizing the [GitLab Triage Gem](https://gitlab.com/gitlab-org/gitlab-triage)
and our custom written 
[triage policies](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/blob/master/.triage-policies.yml).

While we should strive to always add all the labels and the like during the
creation or review of all issues and merge requests, this triage process helps
us ensure it gets done.

### Labels

Our triage process relies heavily on GitLab labels. As such, it is highly
recommended you read through
[What all the labels mean](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project#what-do-all-the-labels-mean)
to have a good grasp of what they all mean.

### How it works

Via a
[.gitlab-ci.yml](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/blob/master/.gitlab-ci.yml)
file, the [GitLab Triage Gem](https://gitlab.com/gitlab-org/gitlab-triage) runs
once a day at 1200 UTC. 

### Current triage policies

We currently are running triage policies for both issues and merge requests.
While our
[triage policies](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/blob/master/.triage-policies.yml)
file should act as the single source of truth, the policies are as follows:

#### Issue policies

* Add Needs-Triage to Support Ops Project Issues missing a category
  * Conditions
    * Issue was created more than 3 days ago
    * The issue is in an opened state
    * The project ID is 12811526 (ie the 
      [support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/)
      repo)
    * It contains none of the following labels:
      * "SupportOps::Needs Triage"
      * "SupportOps::Triaged"
      * "Support-Ops-Category::Account Deletions"
      * "Support-Ops-Category::Agent Signatures"
      * "Support-Ops-Category::Apps"
      * "Support-Ops-Category::Audit"
      * "Support-Ops-Category::Automations"
      * "Support-Ops-Category::Calendly"
      * "Support-Ops-Category::Documentation"
      * "Support-Ops-Category::Forms"
      * "Support-Ops-Category::GitLab Projects"
      * "Support-Ops-Category::GitLab Settings"
      * "Support-Ops-Category::Macros"
      * "Support-Ops-Category::Orgs and Users"
      * "Support-Ops-Category::Other"
      * "Support-Ops-Category::Pagerduty"
      * "Support-Ops-Category::Provisioning and Deprovisioning"
      * "Support-Ops-Category::Shadowing"
      * "Support-Ops-Category::Sync"
      * "Support-Ops-Category::Theme"
      * "Support-Ops-Category::Triggers"
      * "Support-Ops-Category::Views"
      * "Support-Ops-Category::Zendesk Settings"
  * Limits
    * 50 issues per run
  * Actions
    * Add the label "SupportOps::Needs Triage"
    * Mention the DRI and backup DRI (see
      [Division of Responsibilites](../#division-of-responsibilities) for more
      details)
    * Adds a comment of:
      > This issue needs to be triaged. Please ensure it has a category,
      > priority, and progress label. You might need to move this issue to a
      > different project.
* Find issues outside of support-ops-project missing a category
  * Conditions
    * Issue was created more than 3 days ago
    * The issue is in an opened state
    * The project ID is **not** 12811526 (ie the 
      [support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/)
      repo)
    * It contains none of the following labels:
      * "Support-Ops-Category::Account Deletions"
      * "Support-Ops-Category::Agent Signatures"
      * "Support-Ops-Category::Apps"
      * "Support-Ops-Category::Audit"
      * "Support-Ops-Category::Automations"
      * "Support-Ops-Category::Calendly"
      * "Support-Ops-Category::Documentation"
      * "Support-Ops-Category::Forms"
      * "Support-Ops-Category::GitLab Projects"
      * "Support-Ops-Category::GitLab Settings"
      * "Support-Ops-Category::Macros"
      * "Support-Ops-Category::Orgs and Users"
      * "Support-Ops-Category::Other"
      * "Support-Ops-Category::Pagerduty"
      * "Support-Ops-Category::Provisioning and Deprovisioning"
      * "Support-Ops-Category::Shadowing"
      * "Support-Ops-Category::Sync"
      * "Support-Ops-Category::Theme"
      * "Support-Ops-Category::Triggers"
      * "Support-Ops-Category::Views"
      * "Support-Ops-Category::Zendesk Settings"
  * Limits
    * 50 issues per run
  * Actions
    * Add the label "Support-Ops-Category::Missing"
    * Mention the DRI and backup DRI (see
      [Division of Responsibilites](../#division-of-responsibilities) for more
      details)
    * Adds a comment of:
      > This issue is missing a category label. Please add one!
* Find issues outside of support-ops-project missing a priority
  * Conditions
    * Issue was created more than 3 days ago
    * The issue is in an opened state
    * The project ID is **not** 12811526 (ie the 
      [support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/)
      repo)
    * It contains none of the following labels:
      * "Support-Ops-Priority::Missing"
      * "Support-Ops-Priority::Urgent"
      * "Support-Ops-Priority::High"
      * "Support-Ops-Priority::Normal"
      * "Support-Ops-Priority::Low"
  * Limits
    * 50 issues per run
  * Actions
    * Add the label "Support-Ops-Priority::Missing"
    * Mention the DRI and backup DRI (see
      [Division of Responsibilites](../#division-of-responsibilities) for more
      details)
    * Adds a comment of:
      > This issue is missing a priority label. Please add one!
* Find issues outside of support-ops-project missing a progress label
  * Conditions
    * Issue was created more than 3 days ago
    * The issue is in an opened state
    * The project ID is **not** 12811526 (ie the 
      [support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/)
      repo)
    * It contains none of the following labels:
      * "SupportOps::Completed"
      * "SupportOps::Doing"
      * "SupportOps::To Do"
      * "SupportOps::Backlog"
      * "SupportOps::Blocked"
      * "SupportOps::Needs Attention"
  * Limits
    * 50 issues per run
  * Actions
    * Add the label "SupportOps::Needs Attention"
    * Mention the DRI and backup DRI (see
      [Division of Responsibilites](../#division-of-responsibilities) for more
      details)
    * Adds a comment of:
      > This issue is missing a progress label. Please add one!

#### Merge request policies

* Mark merged MRs as SupportOps::Completed
  * Conditions
    * Merge request was merged more than 3 days ago
    * The state of the merge request is merged
    * It contains none of the following labels:
      * "SupportOps::Completed"
    * The target branch is `master`
  * Limits
    * 50 merge reuqests per run
  * Actions
    * Add label "SupportOps::Completed"
    * Add a comment of:
      > As this has been merged, we are auto-marking this as Completed
* Find MRs outside of support-ops-project missing a category
  * Conditions
    * Merge request was created more than 3 days ago
    * The merge request is in an opened state
    * The project ID is **not** 12811526 (ie the 
      [support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/)
      repo)
    * It contains none of the following labels:
      * "Support-Ops-Category::Account Deletions"
      * "Support-Ops-Category::Agent Signatures"
      * "Support-Ops-Category::Apps"
      * "Support-Ops-Category::Audit"
      * "Support-Ops-Category::Automations"
      * "Support-Ops-Category::Calendly"
      * "Support-Ops-Category::Documentation"
      * "Support-Ops-Category::Forms"
      * "Support-Ops-Category::GitLab Projects"
      * "Support-Ops-Category::GitLab Settings"
      * "Support-Ops-Category::Macros"
      * "Support-Ops-Category::Orgs and Users"
      * "Support-Ops-Category::Other"
      * "Support-Ops-Category::Pagerduty"
      * "Support-Ops-Category::Provisioning and Deprovisioning"
      * "Support-Ops-Category::Shadowing"
      * "Support-Ops-Category::Sync"
      * "Support-Ops-Category::Theme"
      * "Support-Ops-Category::Triggers"
      * "Support-Ops-Category::Views"
      * "Support-Ops-Category::Zendesk Settings"
  * Limits
    * 50 merge reuqests per run
  * Actions
    * Add the label "Support-Ops-Category::Missing"
    * Mention the DRI and backup DRI (see
      [Division of Responsibilites](../#division-of-responsibilities) for more
      details)
    * Adds a comment of:
      > This issue is missing a category label. Please add one!
* Find issues outside of support-ops-project missing a priority
  * Conditions
    * Merge request was created more than 3 days ago
    * The merge request is in an opened state
    * The project ID is **not** 12811526 (ie the 
      [support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/)
      repo)
    * It contains none of the following labels:
      * "Support-Ops-Priority::Missing"
      * "Support-Ops-Priority::Urgent"
      * "Support-Ops-Priority::High"
      * "Support-Ops-Priority::Normal"
      * "Support-Ops-Priority::Low"
  * Limits
    * 50 merge reuqests per run
  * Actions
    * Add the label "Support-Ops-Priority::Missing"
    * Mention the DRI and backup DRI (see
      [Division of Responsibilites](../#division-of-responsibilities) for more
      details)
    * Adds a comment of:
      > This issue is missing a priority label. Please add one!
* Find issues outside of support-ops-project missing a progress label
  * Conditions
    * Merge request was created more than 3 days ago
    * The merge request is in an opened state
    * The project ID is **not** 12811526 (ie the 
      [support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/)
      repo)
    * It contains none of the following labels:
      * "SupportOps::Completed"
      * "SupportOps::Doing"
      * "SupportOps::To Do"
      * "SupportOps::Backlog"
      * "SupportOps::Blocked"
      * "SupportOps::Needs Attention"
  * Limits
    * 50 merge reuqests per run
  * Actions
    * Add the label "SupportOps::Needs Attention"
    * Mention the DRI and backup DRI (see
      [Division of Responsibilites](../#division-of-responsibilities) for more
      details)
    * Adds a comment of:
      > This issue is missing a progress label. Please add one!
