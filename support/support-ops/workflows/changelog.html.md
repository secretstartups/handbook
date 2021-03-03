---
layout: handbook-page-toc
title: 'Support Operations Changelog'
category: 'GitLab'
description: 'Details on the Support Operations Changelog'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Our changelog is available via
[GitLab Pages](https://docs.gitlab.com/ee/user/project/pages/) at
https://gitlab-com.gitlab.io/support/support-ops/changelog/

It is generated once a day at 0000 UTC. This utilizes a
[gitlab-ci.yml](https://gitlab.com/gitlab-com/support/support-ops/changelog/-/blob/master/.gitlab-ci.yml)
file and custom made scripts to gather the data for the changelog site itself.

## How the scripts work

The scripts do the following:

1. It uses the GitLab.com API to get all the epics under the
   [support-ops](https://gitlab.com/gitlab-com/support/support-ops) group whose
   title matches the regex statement of `^FY[0-9][0-9]$`
1. For each epic found, it then uses the GitLab.com API to get all the epics
   under the [support-ops](https://gitlab.com/gitlab-com/support/support-ops)
   group whose title matches the regex statement of `^#{year}Q[0-9]$`, where
   `#{year}` is the epic title found in the previous step.
1. For each epic found in the previous step, it then uses the GitLab.com API to
   get all issues and MRs using the epic itself or the milestone with the same
   name as the epic in question.
1. It then saves all these into an artifact file.
1. Using said artifact file, it then generates the changelog website files
   (using ERB templating).

## Where should feedback & ideas go for this?

We would prefer all feedback, ideas, suggestions, and comments to go in the
[changelog project](https://gitlab.com/gitlab-com/support/support-ops/changelog).
