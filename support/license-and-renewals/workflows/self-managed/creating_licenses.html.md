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
1. Click **Save**

The license should be emailed out immediately. Please note that a license should always be sent to the end user. Do not email the license to a gitlab team member or a reseller.

When an existing license isn't available to duplicate, instead select,
`Add New Offline License` and fill in all of the above mentioned fields, along with the
Zuora subscription ID and Zuora subscription name.

### Trial license

You can follow the same process as re-issuing a license. **NOTE** you need to ensure that you have checked the **trial** checkbox when creating the license. You also do not need to link a Zuora or Salesforce account if you do not have it.
