---
layout: handbook-page-toc
title: GitLab.com Overview
category: GitLab.com
description: "Provides a general overview of how the GitLab.com (SaaS) context is different from other GitLab instances for Support Engineering"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This page is meant to provide a general overview of how GitLab SaaS (GitLab.com) is different from self-managed instances of GitLab.

Please note that context for the following sections on this page should be covered by the various [workflows](index.html) that Support utilizes when working with GitLab SaaS along with the [GitLab.com Basics](https://gitlab.com/gitlab-com/support/support-training/-/blob/master/.gitlab/issue_templates/GitLab-com-Basics.md) training module.

## GitLab.com Architecture

GitLab.com is the largest known GitLab instance. It is monitored and maintained 24/7 by our [infrastructure team](/handbook/engineering/infrastructure/).

The Support team should have a general understanding of [its architecture](https://about.gitlab.com/handbook/engineering/infrastructure/production/architecture/) along with how to access logs ([Kibana](kibana.html)) and error reports ([Sentry](sentry.html)) to troubleshoot reported issues.

Numerous Support team members including all SaaS focused ones also assist with incidents as [CMOC](cmoc_workflows.html).

## Legal Context

When signing up, users agree to our [terms](/terms), which means they are bound by them as well.

Violation of terms, including DMCA and code of conduct, are taken care of by [Security Operations](https://about.gitlab.com/handbook/engineering/security/operations/).

## Administration

With GitLab SaaS, GitLab (the company) is the administrator of the instance. This has a number of consequences, outlined below.

### Users Are Not Admins

Users including customers [never have an admin role](https://docs.gitlab.com/ee/administration/index.html#administrator-documentation).

This means that none of our administrator specific documentation will apply to end-users, and [instance level settings](https://docs.gitlab.com/ee/user/gitlab_com/) are managed by our infrastructure team.

### Accounts Belong to Users

Due to the current way users register for accounts, terms apply to individual accounts and information should not be shared to others unless they are an [Enterprise User](#enterprise-users) as defined below.

> **Note:** Only share information with a user if they have access to it.

While it can sometimes make support interactions more difficult or frustrating, even something as basic as the email address on an account should not be shared if it's not public, or the user has not provided us explicit permission to share it with the other individual.

#### Enterprise Users

As of 2021-02-01 when our terms were last updated, when a user meets the definition of an **enterprise user**, information can be shared and actions can be taken based on a *top-level group owner's* request.

However, in situations where [proof of account ownership is required](account_verification.html), then a request is still required from the relevant user, not just the group owner.

A request can be worked on without explicit permission from the account holder if the user meets the definition of an Enterprise User, meaning all of the following are true:

1. The request comes from a user with role `Owner` in the top-level of a *paid* group.
1. The user's email has a domain that is owned by the company of the paid group.
1. The user account meets one of the following conditions:
    - was created 2021-02-01 or later.
    - has a SAML or SCIM identity tied to the organization's group.
    - has a `provisioned_by_group_id` value that is the same as the organization's group's ID. (This can be found with the [Users API](https://docs.gitlab.com/ee/api/users.html#for-admins))
    - is a member of the organization's group, where the subscription was purchased or renewed 2021-02-01 or later.
