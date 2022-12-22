---
layout: handbook-page-toc
title: "Root Cause Analysis for Critical Vulnerabilities"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Root Cause Analysis for Critical Vulnerabilities

## What is an RCA?

Root Cause Analysis (RCA) is a process to ultimately identify the root problem of an issue so that we may prevent it from occurring again. You can learn more about [RCAs here](/handbook/engineering/root-cause-analysis/).

To do this the AppSec team and other stakeholders from Security & Product teams systematically work through a set of questions and discussion topics, as defined in our [RCA Template](https://gitlab.com/gitlab-com/gl-security/appsec/appsec-rcas/-/blob/main/.gitlab/issue_templates/AppSec%20S1%20RCA.md).

## Why do a RCA for S1 vulnerabilities?

It's important to learn from our past mistakes in order to prevent the same or similar `~"severity::1"` issues from repeating in the future. The expectation is that we can both identify and address the root problem as well as discover other similar attack vectors related to the root cause.

## Initiating an RCA

As early as an `~"severity::1"` security issue is identified, but at the latest when the issue has been mitigated, an RCA should be initiated by [opening an issue using the RCA template](https://gitlab.com/gitlab-com/gl-security/appsec/appsec-rcas/-/issues/new?issuable_template=AppSec%20S1%20RCA) in the [appsec-rcas](https://gitlab.com/gitlab-com/gl-security/appsec/appsec-rcas) project.

Due date is automatically set to 30 days.

A specific AppSec engineer must be assigned to the issue. This could be the engineer who has the most context, or who was DRI for the security release, or who is interested in the vulnerability. They are the DRI for the RCA. The DRI role is mainly administrative, with responsibilities described below.

## Progressing an RCA

The DRI is responsible for reminding other AppSec engineers to contribute to the RCA (the weekly AppSec Sync is a good forum), and for ensuring any stakeholders from relevant [Product Groups](https://about.gitlab.com/handbook/product/categories/) or Security Departments have been given an opportunity to contribute.

The DRI is responsible for creating issues for corrective actions the team have identified and assigning a DRI for that issue. Note the DRI does not need to come up with all the ideas! This is mainly an administrative task.

The DRI for an RCA should aim to meet these timeframes:

- T+2 weeks: All AppSec Engineers have been given an opportunity to contribute.
- T+4 weeks: 
  + All identified corrective actions have issues created and DRIs assigned
  + The RCA issue description is in a tidy & readable state

## When is an RCA considered complete?

The RCA is considered complete when the tasks in the RCA issue are marked as completed and the issue is closed. This means that the root cause of the vulnerability is well understood and we have a path forward to reduce the likelihood of a similar vulnerability happening again. For example this can be a [custom SAST rule](https://docs.gitlab.com/ee/user/application_security/sast/#customize-rulesets), new security enhancement addressing the vulnerability class holistically, secure coding training, threat model, more secure application settings, etc.).

Issues for corrective actions can be labeled with `~"corrective action"` and [an SLO will apply depending on the severity](/handbook/engineering/quality/issue-triage/#severity-slos).

## Where can I find past RCAs?

In the [appsec-rcas](https://gitlab.com/gitlab-com/gl-security/appsec/appsec-rcas/-/issues?sort=created_date&state=closed) project closed issues.

## How can I improve our RCA process?

Open an MR to update this page, and update the [RCA Template](https://gitlab.com/gitlab-com/gl-security/appsec/appsec-rcas/-/blob/main/.gitlab/issue_templates/AppSec%20S1%20RCA.md).

