---
layout: markdown_page
title: Creating a license key
description: "How to create a GitLab license key"
category: GitLab Self-Managed licenses
---

{:.no_toc}

----

## Overview

You will frequently need to generate a new license key due to either user error or system error.

Self-managed licenses are managed in [CustomersDot](https://customers.gitlab.com/admin/license).
Access to the application is managed through Okta, in order to request access please open an [access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request)
and refer that your role entitles you to access with
[this link](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/blob/master/.gitlab/issue_templates/role_baseline_access_request_tasks/department_customer_support/role_support_engineer.md).

To re-issue a license:

1. Log in to the [CustomerDot](https://customers.gitlab.com/admin/license).
1. Identify the license by searching by customer email or company name.
1. Click duplicate license button on the right. (Looks like the copy symbol)
1. Modify the values you need. Be careful not to change the `Customer` field.
1. In the `Notes` field, describe why you're issuing this license and add a link
   to the Zendesk ticket or GitLab issue for the request if applicable.
      - If working on a Gitlab issue, add the label `Manually Generate Trial License` (for trials) or `Manually Generate License`.
1. Click **Save**

The license should be emailed out immediately. Please note that a license should always be sent to the end user. Do not email the license to a gitlab team member or a reseller.

When an existing license isn't available to duplicate, instead select,
`Add New Offline License` and fill in all of the above mentioned fields, along with the
Zuora subscription ID and Zuora subscription name.

### Trial or Temporary license

Before creating the request please consider the following points:

- Support tries as much as possible to refrain from issuing non-trial licenses because trial licenses:
    - Have no grace period
    - Don't affect historical data tracking
    - Aren't tied to any subscriptions for revenue purposes
- All internal requests for a Temporary key or Trial Extension should issue a trial license.
- For trial licenses with the `Expiry Date` in more than 30 calendar days from the Start date, a manager approval is required.
Add the `Manager Approval::Required` label to the issue and ping the requester to ask for approval from their manager.
- It is fine to set the `Users in license` number to what is needed.
- Set `Starts at` to the current date.
     - <i class="fab fas fa-exclamation-triangle fa-fw"></i> **_TODO_**: What if we know Expiry of current license (either from IR or ZD ticket)? Do we set it to the date after Expiry date?
- You can follow the same process as re-issuing a license. 
- You need to ensure that you have checked the **trial** checkbox when creating the license. 
- You also do not need to link a Zuora or Salesforce account if you do not have it.

**NOTE** Starter trial licenses have been deprecated. There is an [ongoing discussion](https://gitlab.com/gitlab-org/license-gitlab-com/-/issues/243) to re-enable Strarter trial license creation for Support.

For Starter trial requests, let the requester know that we can issue either Premium or Ultimate trial licenses. You can tag a support manager to get approval to create a non-trial Starter license with the expiry date set to 14 days before the requested expiry. This ensures that the 14 day grace period is used up in the extension request.
