---
layout: handbook-page-toc
title: ChatOps Commands for GitLab.com
category: GitLab.com
description: "Guide for common ChatOps commands used by Support Engineering"
---

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This guide lists common [ChatOps](https://gitlab.com/gitlab-com/chatops/) commands that can be used to service support requests for GitLab.com.

**Note**: Before you can use ChatOps, you will need to [request access](https://docs.gitlab.com/ee/development/chatops_on_gitlabcom.html#requesting-access)

## Namespace

Uses the GitLab API for managing namespaces.

### Available Options

- find
- minutes

#### Obtaining details about a single namespace

`/chatops run namespace find :id`

| **Attribute** | **Type** | **Required** | **Description** |
| --- | --- | --- | --- |
| `id` | integer/string | yes | ID or `path` of the namespace|

> **Note:**
If you are attempting to search for a sub-group and not a top level group, you'll need to ensure the slash `/` is encoded to `%2F`. For example, the path of the sub-group `gitlab-com/support` should be entered as `gitlab-com%2Fsupport`.

#### Setting additional minutes quota for a namespace

`/chatops run namespace minutes :id :minutes`

| **Attribute** | **Type** | **Required** | **Description** |
| --- | --- | --- | --- |
| `id` | integer/string | yes | ID or `path` of the namespace|
| `minutes` | integer | yes | Total additional minutes limit. If you want to add 1,000 minutes to existing quota of 500, this value should be `1500`. Enter `0` to set limit to 0. |

View the [Handling CI Minutes workflow page](/handbook/support/license-and-renewals/workflows/saas/ci_minutes.html)
for more information about setting additional CI minutes for a namespace.

## User

Uses the GitLab API for managing users.

### Available Options

- find
- update_email

#### Obtaining details about a single user

`/chatops run user find :id`

| **Attribute** | **Type** | **Required** | **Description** |
| --- | --- | --- | --- |
| `id` | string | yes | `username` or `email` (primary email address) of the user |

#### Update a User's Primary Email

`/chatops run user update_email <username or current email> <new_eamil@example.com>`

## Feature Flags

- Used for checking whether a specific feature flag has been enabled on GitLab.com or not.
- User for enabling feature flag on a project level, as well as enabling group feature flags for groups.

### Available Options

- get
- list
- set

#### Obtaining the status of a specific feature flag

`/chatops run feature get :feature_flag`

| **Attribute** | **Type** | **Required** | **Description** |
| --- | --- | --- | --- |
| `feature_flag` | string | yes | The name of the feature flag. |

#### Search for the name of a feature flag

`/chatops run feature list --match :query`

| **Attribute** | **Type** | **Required** | **Description** |
| --- | --- | --- | --- |
| `query` | string | yes | Your search term. For example, searching `wiki` will return all feature flags with the substring `wiki` in their name, along with their status. |

#### Enable Feature Flag on a project/group 

`/chatops run feature set :feature_flag true --project=:full_project_path`
`/chatops run feature set :feature_flag true --project=:full_group_path`

| **Attribute** | **Type** | **Required** | **Description** |
| --- | --- | --- | --- |
| `feature_flag` | string | yes | The name of the feature flag. |
| `full_project_path` | string | yes | The full path to project. |
| `full_group_path` | string | yes | The full path to a group. |

Example:  

`/chatops run feature set datadog_ci_integration true --project=toplevelgroup/subgroup/projectslug`
`/chatops run feature set epic_boards true --group=somegroup`
