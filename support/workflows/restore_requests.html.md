---
layout: handbook-page-toc
title: Restoring Deleted Data Requests
category: GitLab.com
subcategory:
description: "Workflow for cases when a customer requests deleted data to be restored on GitLab.com."
last-reviewed: 2020-11-26
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Support frequently receives requests to restore deleted data.

Note: User accounts and contributions can never be restored. Projects and groups follow the procedure below.

## Process

Make sure the request fits the [criteria as per the support page](/support#restoration-of-deleted-data).
For large customers, be sure to check whether the customer has special provisions in their contract that might affect the processing of this request in the org-notes. The best way to maintain this information is being discussed in [support team #2944](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/2944).

If it does not, then you can reply with `SaaS::Restore requests::Does not meet criteria`.

If it does, then you can reply with `Support::SaaS::Restore requests::Meets restore criteria`,
which lets the customer know the limitations and asks them to confirm they want us to go ahead.

When you’ve received all the necessary information, open an [infra issue](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues) with:

1. Summary of situation
1. Link to group or project
1. Link to ticket
1. Link to bug (if applicable)
