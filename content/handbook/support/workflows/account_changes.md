---

title: Making Changes and Taking Actions on an Account
category: GitLab.com
subcategory: Accounts
description: "Workflow for when and how to make account changes on behalf of a customer"
---



## Overview

This workflow focuses on the process when action is required by the Support team on behalf of the user.

The main situations where action may need to be taken on behalf of the user:

1. Project/Group Changes
1. Account Access Requests
1. Releasing an Email Address
1. Primary email change of an enterprise user.

### User Action First

Following our [Security Policy on "GitLab's Access to Your Private Repositories"](https://about.gitlab.com/security/faq), actions should always be taken by the user whenever possible.

For example, users should be deleting their own projects, but if they encounter an error with every attempt and there are no workarounds, then Support can intervene [with permission](#asking-permission).

If in doubt, please ask a Support manager to review.

## Project/Group Changes

In cases where Support needs to take action on the project or group, such as for troubleshooting purposes, Support should do two things:

1. Verify the user is a group *Owner* or project *Maintainer*. Otherwise, ask the user to have an owner/maintainer contact us.
1. Ask for permission to take action. See the [Asking Permission](#asking-permission) section below.
1. Consider adding an [Admin Note](/handbook/support/workflows/admin_note.html) to the group admin page if Support may need to know the action was taken in the future.

You can continue working with the original requester once an owner/maintainer provides permission if that is their preference.

## Account Access Requests

In cases where a user has lost access to their account, all other options (such as SSH recovery codes, password reset) should be exhausted first.

For unconfirmed accounts, the only account action support will typically take is an [email typo fix]({{< ref "confirmation_emails#typo-fix" >}}).

Before taking any action on confirmed accounts, ensure that you have verified the account owner using the [Account Ownership Verification](/handbook/support/workflows/account_verification.html) workflow.

If ownership is verified, then:

1. [Confirm permission for the changes](#asking-permission).
1. Add an [Admin Note](/handbook/support/workflows/admin_note.html) to the user's account.

Example cases include:

1. Swapping secondary email with primary email due to primary email being unconfirmed or non-existent. If the requester is a free user, manager approval is needed. Available until [gitlab#416451](https://gitlab.com/gitlab-org/gitlab/-/issues/416451) is implemented.
1. Removing an identity tied to the user account. The identity should also be verified in these cases.

## Releasing an Email Address

Similar to **Account Access Requests**, if a user has lost access to their account and the account shows **no activity** in its history, then we can consider releasing the email address for the user to create a new account with.

We can also use this workflow when a user cannot add an email address to their account because it is on a different account *and* is unverified. This often happens if a user has accidentally created an account using one of the single sign-on registration methods or cannot recall creating the account.

For more information on unverified/unconfirmed accounts, please see the [confirmation emails]({{< ref "confirmation_emails" >}}) workflow.

The primary (for paid users only, all users should be able to get a new confirmation email) and secondary email (for all users until [#367823](https://gitlab.com/gitlab-org/gitlab/-/issues/367823) is resolved) can be released following the process below.

To release an email address for an inactive account:

### Verify account status and ownership

Check the user's activity page:

1. If an account shows any activity tied to any type of contribution (such as snippets, or comments in a project or group), use the [Account Ownership Verification]({{< ref "account_verification" >}}) workflow to verify ownership.
1. If the account shows **no** activity:
1. Confirm that the email address the user is trying to add exists on a different account.
1. Verify that the account shows **no activity** and is not a member of any projects or groups. Additionally, confirm that the following are true:
      - The user is unverified
      - The user has never logged in
      - The user has no data (No groups or projects)
1. If the account **is** verified or data exists, inform the original requestor that the email is **not eligible** for release. They can [request an account deletion](/handbook/support/workflows/personal_data_access_account_deletion.html#zendesk) if necessary.

### If eligible for email release

1. If applicable, add the new email address as a CC to the ticket and ask the user to respond to the ticket from the email address they wish to add.
1. Once the user has replied to confirm they own the email address, update the email address with `+release`. For example, if the email address is `johndoe@example.com`, then update the email address on the account to `johndoe+release@example.com`.
    - This can be done with Admin access or [via Chatops]({{< ref "chatops#Update-a-Users-Primary-Email" >}})
1. Add an [Admin Note]({{< ref "admin_note" >}}) to the user's account.
1. Advise the customer to add the newly released email address again to their primary account.
1. Consider commenting on [this feature request](https://gitlab.com/gitlab-org/gitlab/-/issues/352514)

## Change primary email address of enterprise users

Enterprise users [cannot modify their primary email address to an email with a non-verified domain](https://docs.gitlab.com/ee/user/enterprise_user/#primary-email-change). An enterprise user can only change their primary email to an email their organization owns as per its verified domains. An enterprise user or a top level group owner can reach out to Support to request primary email address change.
**Note that changing the primary email address to an email that is not part of the group domain verification will disassociate the user**: the user will no longer be an enterprise user.

### Request from a top level group owner

Until [the issue 412966](https://gitlab.com/gitlab-org/gitlab/-/issues/412966) is implemented, top level group owners are not able to change their enterprise users primary email address. They can request support to change the primary email of one or more enterprise user(s).

1. Check the [Account Verification Matrix for eligibility](/content/handbook/support/workflows/account_verification.md#account-verification-matrix).
1. Use the [Account Ownership Verification workflow](/content/handbook/support/workflows/account_verification.md) to verify ownership.
1. If successful:

> Greetings,
>
> Thank you, we were able to verify your identity as account owner.
>
> Could you please confirm that you would like us to change the enterprise user primary address from example@primary-email.address to example@new-primary-email address ? Replying in this ticket stating you provide permission will be sufficient.
>
> [Important notice](https://docs.gitlab.com/ee/user/enterprise_user/#dissociation-of-the-user-from-their-enterprise-group): Changing an enterprise user’s primary email to an email with a non-verified domain automatically disassociates them from their enterprise group.

1. Update the primary email address of the enterprise user(s).
1. Add an Admin Note to the user’s account(s).

### Request from an enterprise user that may or may not be part of the group

Enterprise users have user accounts that are administered by an organization that has purchased a GitLab subscription. This means Support is not taking action without the explicit permission of one of the top level group owners.

1. Send the snippet below as an initial answer:

> Greetings,
>
> Your account is an enterprise user account, [enterprise users cannot modify their primary email address to an email with a non-verified domain](https://docs.gitlab.com/ee/user/enterprise_user/#primary-email-change). An enterprise user can only change their primary email to an email their organization owns as per its verified domains.
> Updating your primary email address to an email with a non-verified domain will automatically disassociates you from your enterprise group.
>
> If you still wish to update your primary email address please note it will require involvement of one of the top level group owners. Please let us know if you wish to proceed.

1. If answer they wish to procceed, use the [Account Ownership Verification workflow](/content/handbook/support/workflows/account_verification.md) to verify ownership.

1. If successful, contact Owner:
- Create a new Zendesk ticket with the top level group owner’s email address as the requester (found in admin) by following [this specific workflow to create ticket and user](https://handbook.gitlab.com/handbook/support/readiness/operations/docs/zendesk/tickets/#creating-tickets-for-outbound-requests)
- Apply the macro `General::Outbound Contact Request` that ensure the new ticket routes properly and the end-user we wish to contact receives the correct notification.
- Copy the snippet below and mark the ticket as `On-hold`:

> Hi,
>
> We're contacting you because we've received a request from one of your enterprise users <username and email address> to modify their primary email address to an email address with a non-verified domain. This will disassociate the user from your organization: the user will no longer be an enterprise user.
>
> As you will lost the user administration following this change we are asking for your permission. Replying in this ticket stating you provide permission will be sufficient.

- Make an internal comment providing a link to the requester’s ticket.
- If the group contains multiples owners, contact one owner per ticket. Limit to 3 owners if more (you can pick the owners that have the most recent Last activity in the page `https://gitlab.com/groups/<group_name>/-/group_members` or/and the owner(s) that is(are) listed as Source).

1. Requester’s Ticket:
 - Add as an internal comment the ticket created above.
 - Reply to the requester with the snippet below and mark ticket as `On-hold`.

> Hi,
>
> We have verify your identity, we are now waiting for permission from your organization to release the account by updating your primary email address.
> We will keep you updated.

1. If one of the owners approve, update the primary email address of the enterprise user.
1. Add an Admin Note to the user’s account.

## How is permission given for troubleshooting?

The Support team will not view any private information unless required to resolve an issue. Typically, the issue is filed by the account holder (for users) or valid members of the namespace (for projects and groups) via a support ticket for troubleshooting purposes as outlined in [Security Policy on "GitLab's Access to Your Private Repositories"](https://about.gitlab.com/security/faq).

A Support team member may look at information on pages not explicitly mentioned in the request, but will limit the scope of the review to the minimum access required to solve any issues.

The Support team will only take action from the requester if they:

- Are a member of the namespace.
- Have a problem that requires Support to investigate.
- Provide a link to the namespace.
  - This link can come from the initial form submission or a response in the ticket.

We expect users to provide specific links in order to focus on the related views and logs while investigating an issue. For example, a request to look into a CI/CD error should include links to the relevant job logs, pipelines, and/or CI YAML file.

Any time user data needs to be downloaded (such as cloning a repository), or where secrets must be revealed (such as [CI/CD Variables](https://docs.gitlab.com/ee/ci/variables/)), to further troubleshoot, requires [explicit permission](#asking-permission) before continuing. Any user data that has been downloaded for reproduction purposes must be deleted when the issue is resolved, for example with [our `zd-dl-wiper` tool](https://gitlab.com/gitlab-com/support/toolbox/zd-dl-wiper#zd-dl-wiper).

## Asking Permission

Before any actions are taken, please request explicit permission to take the required action. Be as specific as possible so that there is no confusion.

Once permission is confirmed by the user, then you may proceed.

Some sample phrases:

> Could you please provide permission for Support to ... ?

or

> Could you please confirm that you would like us to ... ?

Some examples:

> Could you please provide permission for Support to re-run one or more pipelines in project `xyz` to investigate the issue you've described? Replying in this ticket stating you provide permission will be sufficient.
>
> Could you please provide permission for our Support Engineers to look at the CI/CD variables in the project so that we confirm they are correct? Replying in this ticket stating you provide permission will be sufficient.
>
> Could you please confirm that you would like us to exchange your primary address `example@primary-email.address` and secondary address `example@secondary-email.address` on your account? Replying in this ticket stating you provide permission will be sufficient.

### Impersonating

Impersonating a user is considered performing an action as another account, impersonating will update the **Current sign-in IP** and **Current sign-in at** for the impersonated user.

When impersonating a user, the administrator account will receive a slack message from the **SIRTbot** app asking to confirm if the impersonation was a legit action.

The action of impersonation is in accordance with our [Confidentiality Terms of the Subscription Agreement](https://about.gitlab.com/handbook/legal/subscription-agreement/#7-confidentiality).
