---
layout: handbook-page-toc
title: ChatOps Commands for GitLab.com
category: GitLab.com
description: "Guide for common ChatOps commands used by Support Engineering"
---

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

[ChatOps](https://gitlab.com/gitlab-com/chatops/) commands can be used to service support requests for GitLab.com, especially useful when one does not have admin access. In the interest of maintaining a single source of truth, it is recommended to use the built-in "help" command within ChatOps to see what commands are available or [inspecting the code itself](https://gitlab.com/gitlab-com/chatops).

**Note**: Before you can use ChatOps, you will need to [request access](https://docs.gitlab.com/ee/development/chatops_on_gitlabcom.html#requesting-access).

## Namespace

Uses the GitLab API for managing namespaces.

`/chatops run namespace --help`

## User

Uses the GitLab API for managing users.

`/chatops run user --help`

## Feature Flags

Used for checking whether a specific feature flag has been enabled on GitLab.com or not.

`/chatops run feature --help`
