---

title: Handling trials and extensions for GitLab Self-Managed
category: GitLab Self-Managed licenses
description: Issuing a license to "extend" Self-managed trials and grace periods
---

## Overview

Self-managed trials and grace periods cannot be extended - a **trial** license must be issued and applied to the instance in order to "extend" a license.
Requests for grace period extensions, temporary keys, temporary extensions, temporary licenses,
and trial extensions all require generating a trial License.

Sales will often request through an [Internal Request / Zendesk Ticket](https://gitlab-com.gitlab.io/support/internal-requests-form/) that we extend the duration of Self-Managed trials on behalf of their prospects. These tickets will always be raised from the GitLab Support End User `gitlab_support@example.com`, with the submitter cc'd on the ticket. The following workflow should be followed to service them.

If any fields when opening the ticket were filled out incorrectly, send a public reply in the ticket asking the submitter to supply the missing information.

> **NOTE**: Non-trial licenses are required to match an existing subscription and these licenses
generally have a span of 1 year. There is an
[ongoing discussion](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3817) on
how to support complex subscription models.

Support tries as much as possible to refrain from issuing non-trial licenses.
We are allowed to issue trial licenses because they:

- Have no grace period
- Do not affect historical data tracking
- Are not tied to any subscriptions for revenue purposes

### How to extend an expired or soon to expire license

**Note:** Unlike [SaaS](/handbook/support/license-and-renewals/workflows/saas/trials_and_plan_change.html#extending-trials), a Self-managed extension does **not** require a pre-existing Trial license. Instead, start with the current almost-expired license, or most-recent expired license.

1. Open the expired or soon to expire license and select `Duplicate License`
1. Set the `License type` to `Legacy License`.
1. Delete the contents of `Zuora subscription ID` field if present.
1. Set the `Users count` number to what is requested.
1. Set the `Previous users count` number to the previous license **if there are trueups OR if the requested `User Count` is less than the `Previous User Count`**. Otherwise, delete the contents.
1. Set the `Trueup count` number if present.
1. Set the `Plan code` to what is requested.
1. Ensure the `Trial` checkbox is checked.
1. Set `Starts at` to today's date.
1. Set `Expires at` to the requested date. (Expires at 0:00 on this date)
1. Set `Notes` to the ticket or issue URL.
1. Click `Save`. The license will be automatically sent to the email specified in the `Email` field.

If you need to [send a trial license to another contact](/handbook/support/license-and-renewals/workflows/self-managed/sending_license_to_different_email.html#overview),
use the `Forward license email` tab after saving the new license.

### How to create a new trial license

Users should initiate a request on their own by clicking on the following link:  <https://about.gitlab.com/free-trial/?hosted=self-managed>

### Emergency Weekend Licenses

If you're on call and you need a license generated, but don't have access to the CustomersDot interface, follow the [Weekend Emergencies - License Request](/handbook/support/license-and-renewals/workflows/self-managed/license_for_weekend_emergencies.html) workflow.

### SFDC generated trial license extensions

Account Executives (AEs) can use SalesForce.com (SFDC) to issue a self-managed 21-day license extension to a customer when the renewal opportunity is taking longer than expected to close. When an AE uses this functionality, the license code is automatically generated and sent to the customer without any L&R Support involvement. The [Temporary renewal extensions](https://about.gitlab.com/handbook/product/fulfillment-guide/#temporary-renewal-extensions) handbook entry documents this approach. Note that there are guardrails in place to prevent abuse of this ability, and that as a result only one license extension can be generated per renewal event. Therefore on occasions L&R Support will still be required to generate further license extensions.


#### Sales AE requests for a manual temporary extension

An AE is expected to use the [SFDC process](#SFDC-generated-trial-license-extensions) first when a customer requires a self-managed license extension.  However, if an extension has elapsed then an AE can use the [Internal Form](https://gitlab-com.gitlab.io/support/internal-requests-form/) named `Extend an (almost) expired subscription` to request a license extension directly from L&R support.  There are some caveats to this process which are listed below:

- If the AE selects a different form (e.g. the IR `other`), then the L&R Support engineer should redirect the AE to submit a new ticket, add the macro `Deviation from SM License Extension Workflow` and close the ticket.
- If the AE has not first utilized the SFDC process, then the L&R Support engineer should direct them there, add the `Deviation from SM License Extension Workflow` and close the ticket.


#### Customer requests for temporary license extension

For tracking customer requests for a temporary extension, it becomes a manual process relying on either the customer to select the right problem type or the SE to review the problem type and fix it if it's wrong. Therefore if a customer contacts us requesting a temporary extension then we can add the macro `Customer Request for SM License Extension` to redirect the customer to their AE.  In this scenario, you should modify the macro to provide the customer with their sales AE’s email address.

This macro will automatically add the tag `lnr_sm_extension_customer_request` to track these instances.

