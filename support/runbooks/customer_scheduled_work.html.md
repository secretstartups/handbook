---
layout: handbook-page-toc
title: Custom Support Assisted Customer Requests
category: Runbook - Custom requests
---

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This runbook purpose is to provide a simple to use document with the steps to perform before, during, and after the scheduled customer work.
Custom support assisted customer requests refers to any action which requires the creation of scripts to complete the action which otherwise wouldn't be possible to do within the platform.

## Project to store runbooks

The runbooks will be store in an issue in the [runbook project](https://gitlab.com/gitlab-com/support/runbooks/-/issues)
Due to the nature of the information on the runbook, the contents will be `confidential`.

## Runbook structure

###  Header

| Runbook name        |   |
|---------------------|---|
| Runbook description |   |
| DRI                 |   |
| Schedule at         |   |
| Meeting URL         |   |
| Gitlab Issue        |   |


Runbook name:

#### Runbook name

A name from the runbook, for best practices we can use: `CUSTOMER` - `REQUESTED TASK`
So for Acme requesting us to enforce 2FA on all of their groups. the name should be: 
Acme - Enforce 2FA on All groups

#### Runbook description
A small summary of the work to be done, also including the expected goal from the task.

#### DRI
The owner of the task and main contact for schedule and execution.

#### Schedule at
The agreed date and time to work with the customer on the task. Include the time zone.

#### Meeting URL
The zoom meeting URL to use.

#### GitLab Issue
Link to the GitLab issue created for this request

### Gitlab - Contacts

| Name | Role | Description |
|-------------|------|-------------|
|             |      |             |

A table showing who is attending the call from GitLab and their role during the task.

### Customer - Contacts

| Name | Role | Description |
|-------------|------|-------------|
|             |      |             |

The customer contact section contains who is joining the call from the customer team and their roles.
This table is optional but a useful element to have to increase the efficiency during the task.

### Pre-call checklist

Mark the item if completed otherwise provide details which prevents it.

- [ ] Inform on `#support_gitlab-com` or `#support_self-managed` and `#support_manager` slack channel about the work to be done with a runbook link

- [ ] Verify that any rollback plan can be execute by an engineer from every region

- [ ] Has a dry-run been performed before the call?

- [ ] Do we have a way to create logs from the actions performed.

### Runbook -Tasks

When possible, link the task name with a project, handbook page, which documents it.

| Task | Outcome | Duration |
|-------------|---------|----------|
|             |         |          |

#### Example

| Task | Outcome | Duration |
|-------------|---------|----------|
| Confirm the users provided state | Success | 10m |
| Modify user with MUser console method  | Success | 1h15m |

### Rollback plan

In the rollback plan, we provide a link for the steps to revert the actions performed. If we have a situation where the rollback requires only a simple explanation, it can be added to the runbook directly.


### Post-call checklist

- [ ] Inform on `#support_gitlab-com` or `#support_self-managed` and `#support_manager` slack channel the about the work completion, the current state, and if any follow up is necessary with documentation links.

### Complete RunBook Example

| Runbook name        |  Acme - Enforce 2FA on all groups |
|---------------------|---|
| Runbook description |  Acme Inc. requires us to enforce 2FA on all of their 2500 groups  |
| DRI                 |  `@john_doe` |
| Schedule at         |  `2020-10-10 - 23:30 PST` |
| Meeting URL         |   example.zoom.com/my/example.meeting|
| Gitlab Issue        |   `https://gitlab.com/gitlab-com/demo/example/example-project/-/issues/1` |

#### Gitlab Contacts
| Name | Role | Description |
|-------------|------|-------------|
| John Doe    |  Technical Execution  | Technical  execution during the change |
| Jane Smith  |  Communication & Technical assistance  | In charge of updates and to support the `technical execution` role |

#### Customer Contacts
| Name | Role | Description |
|-------------|------|-------------|
| Tom Blogs | Systems Enginer | Work verification and support |
| harry Page | IT Manager | Coordination from customer side |


#### Pre-call checklist

[x] - Inform on `#support_gitlab-com` or `#support_self-managed` and `#support_manager` slack channel about the work to be done with a runbook link

[x] - Verify that any rollback plan can be execute by an engineer from every region

[ ] - Has a dry-run been performed before the call?

    `Dry-run cannot be completed due to change requeriments`

[x] - Do we have a way to create logs from the actions performed.

#### Runbook - Tasks

| Task | Outcome | Duration |
|-------------|---------|----------|
| Confirm the users provided state | | |
| Remove 2FA from user list  | | |
| Review users with errors   | | |
| Update issue wuth outcome    | | |

#### Rollback plan

The method used for this change takes an optional parameter `status` which is `disable` by default, to rollback we need to execute the same method adding a parameter `status: 'enable'.

#### Post-call checklist

[x] - Inform on `#support_gitlab-com` or `#support_self-managed` and `#support_manager` slack channel the about the work completion, the current state, and if any follow up is necessary with documentation links.