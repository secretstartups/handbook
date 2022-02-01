---
layout: markdown_page
title: Handling trials and extensions for GitLab Self-Managed
category: GitLab Self-Managed licenses
description: Issuing a license to "extend" Self-managed trials and grace periods
---

{:.no_toc}

----

## Overview

Self-managed trials and grace periods cannot be extended - a license must be re-issued and applied
to the instance in order to "extend" a trial.

Requests for Grace period extensions, Temporary keys, Temporary extensions, Temporary licenses, 
and Trial extensions all require generating of a Trial License.

> **NOTE**: Non-trial licenses are required to match an existing subscription and these licenses 
generally have a span of 1 year. There is an 
[ongoing discussion](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3817) on
how to support complex subscription models.

Support tries as much as possible to refrain from issuing non-trial licenses.
We are allowed to issue trial licenses because they:

- Have no grace period
- Don't affect historical data tracking
- Aren't tied to any subscriptions for revenue purposes

For trial license requests where the `Expiry Date` is more than 30 calendar days from the Start date, a **Sales Manager** approval is required. When asking for approval, also consider the time between waiting for approval and the license period.
   - For example, if the requested trial license is for 33 days, and the wait time for approval could be up to 5 days. By the time the approval is given, perhaps the request doesn't need an Approval in the first place.
   - Ask the requestor to CC a manager for approval and set the ticket status to `On Hold`.
> If you notice several recent requests for temporary keys, consult with a support manager on how to proceed.

To create a new trial license, follow the steps in the
[creating a license key workflow](creating_licenses.html) with these points in mind:

1. It is fine to set the `Users in license` number to what is requested.
1. Set `Starts at` to the current date.
1. Set `Expires at` to the `Extend the date to` value.
1. Ensure that you have checked the **trial** checkbox when creating the license. 
1. Ensure that the `Zuora subscription ID` and `Zuora subscription name` fields are empty.


