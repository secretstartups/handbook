---
layout: handbook-page-toc
title: 'Account Deletion Weekly Reports'
category: 'GitLab.com'
description: 'An overview of awdr'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Aa part of the processes involved in
[Account Deletions](/handbook/support/workflows/personal_data_access_account_deletion.html), weekly reports are
generated via the
[ADWR project](https://gitlab.com/gitlab-com/support/toolbox/adwr/). These
reports are made as issues in the
[Internal Requests project](https://gitlab.com/gitlab-com/support/internal-requests).
You can locate them by reviewing issues in that project that have the label
[`ADWR`](https://gitlab.com/gitlab-com/support/internal-requests/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=ADWR).

## How it works

CI/CD scripts in the project gather all issues meeting the following criteria:

* Is in an opened state
* Was created over 30 days ago

It then takes this list and created an issue in the
[Internal Requests project](https://gitlab.com/gitlab-com/support/internal-requests),
which pings the assignees of the issues, as well as their managers.
