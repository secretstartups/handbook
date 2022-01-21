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

### Resend or Forward a license

We frequently receive requests to forward a license to a contact who is not associated with a subscription in Customers Portal.
We can proceed with the request without question when the request is made:
- Through an [internal request](/handbook/support/license-and-renewals/workflows/working_internal_requests.html)
- By a contact who is linked to the subscription

In other cases, including requests from a reseller, we first need to verify this request by asking for 
[proof that they are associated to the subscription](/handbook/support/license-and-renewals/workflows/customersdot/associating_purchases.html). 
Note that for **reseller requests**, the proof needs to be sent from the *email address of the license recipient* in the request.

Once we have received the requested proof, we can proceed to forward or resend the license.

- Find the license by following steps 1 and 2 mentioned in the [above section](#overview). 
- To resend the license to the same user, click the `Resend to customer via email` button on the right. (Looks like an envelope icon)
- To forward the license to a different address using the `Forward license email` function. 
    1. Navigate to the `Forward license email` tab. 
    1. Enter the `Destination email address`. **NOTE** It is currently not possible to copy (cc) or send to multiple contacts at once.
    1. Click the **Forward** button.

### Trial License or Temporary Key

Before creating the request please consider the following points:

- Support tries as much as possible to refrain from issuing non-trial licenses because trial licenses:
    - Have no grace period
    - Don't affect historical data tracking
    - Aren't tied to any subscriptions for revenue purposes
- All internal requests for a Temporary key or Trial Extension should issue a trial license.
- For trial licenses where the `Expiry Date` is more than 30 calendar days from the Start date, a Sales Manager approval is required. When asking for approval, please also consider the time between waiting for approval and the license period.
   - For example, if the requested trial license is for 33 days, and the wait time for approval could be up to 5 days. By the time the approval is given, perhaps the request doesn't need an Approval in the first place.
Add the `Manager Approval::Required` label to the issue and ping the requester to ask for approval from their manager.
> If you notice several recent requests for temporary keys, consult with a support manager on how to proceed.
- It is fine to set the `Users in license` number to what is needed.
- Set `Starts at` to the current date.
- You can follow the same process as re-issuing a license. 
- Ensure that you have checked the **trial** checkbox when creating the license. 
- Ensure that the `Zuora subscription ID` and `Zuora subscription name` fields are empty.

**NOTE** Starter trial licenses have been deprecated. There is an [ongoing discussion](https://gitlab.com/gitlab-org/license-gitlab-com/-/issues/243) to re-enable Strarter trial license creation for Support.

For Starter trial requests, let the requester know that we can issue either Premium or Ultimate trial licenses.
