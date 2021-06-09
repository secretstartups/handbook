---
layout: handbook-page-toc
title: Engineering A/B tests
description: >-
  Learn more about how Digital Experience engineers our A/B tests.
---


## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Engineering AB Tests

## Overview

This document is a work in progress. @brandon_lyon was the DRI for marketing's AB testing engineering efforts using the feature flag based tool LaunchDarkly.

## What is an AB test?

An A/B test is when we release two versions of a page and compare how well they perform (comparing version A to version B). When running an experiment, we are testing a hypothesis using a control variant and a test variant, similar to how one typically employs the scientific method.

## What is a feature flag

Below are some resources to learn more about feature flags. At a high level, a feature flag is an if-else wrapper around code that can be enabled, disabled, or served at a certain percentage to a certain group. This is controlled via a dashboard toggle, changing the production interface on-the-fly without having to wait for a release to change something.

* [An introduction to feature flagging software](https://github.com/launchdarkly/featureflags/blob/master/1%20-%20Introduction.md)
* [Feature flag use cases](https://github.com/launchdarkly/featureflags/blob/master/2%20-%20Uses.md)

## Why did we choose LaunchDarkly

Because the marketing website about.gitlab has no dynamic server, we needed a solution that could be performant and implemented using a javascript SDK. In addition to that, we needed a solution that was able to attach metrics. 

Below are some links with information on the history of the decision:

* [GitLab marketing's use of LaunchDarkly](https://gitlab.com/gitlab-org/growth/team-tasks/-/issues/106#note_318635630)
* [Why use a SaaS tool](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/6151#note_276729044)
* [Taking a step back when defining requirements](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/6151#note_276747995)
* [Epic for the original implementation](https://gitlab.com/groups/gitlab-com/-/epics/290)
* [Original proof of concept](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/6422)


## How do we engineer tests

We currently use [LaunchDarkly](https://launchdarkly.com/) to control whether or not a test is showing, at what percentage, and gather metrics about a test's performance.

Our AB tests include two files, the control and the test variant. Both exist on the page in the HTML DOM at the same time, but are hidden by default on page load. The javascript SDK will return which version of the experiment should be shown. This can be overridden by optional URL parameters as exhibited in the codepaths section below.

[Example merge request for an AB test](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/80315)

### Codepaths

* [JS: run experiment](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/source/javascripts/run-experiment.js)
  * This is our in-house javascript created to assist us with running feature-flag based AB tests.
* [HTML: Experiment structure](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/sites/uncategorized/source/experiments/structure.html.haml)
  * This file is the superstructure that includes the CSS, JS, and optional arguments.
* [AB test files are stored here](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/sites/uncategorized/source/experiments)

### Tutorials

**Active**

* [VIDEO: Part 1 of 3, explaining code paths and how to develop an AB test of the pricing page](https://youtu.be/H3-y5JRNDTM)
* [VIDEO: Part 2 of 3, explaining how our feature flag vendor's system works and how to verify that the AB test is working](https://youtu.be/5Pll30nkqes)
* [VIDEO: Part 3 of 3, explaining how to decommission a feature flag and set up a new control experience](https://youtu.be/kY0lpmXlELE)
* [DEPRECATED: Outdated Google doc and video explainer outlining the system. Code and structure has changed a lot since this video was made.](https://docs.google.com/document/d/1_XztSRs_CMBulZDvrVbSHmCjtOnL0xd6gFUEVo_NxoA/edit?usp=sharing)

### Checklists

* [Merge request checklist for AB testing](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Inbound-Marketing-AB-Checklist.md)
* [Evaluating an experiment on the pricing page](https://gitlab.com/gitlab-com/marketing/inbound-marketing/marketing-website/-/issues/108#note_562999063)
