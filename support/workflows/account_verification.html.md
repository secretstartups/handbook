---
layout: handbook-page-toc
title: Account Ownership Verification
category: GitLab.com
subcategory: Accounts
description: "Workflow detailing how and when to disable 2FA for a customer and verifying account ownership"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This workflow focuses on  disabling [Two-factor Authentication](http://docs.gitlab.com/ee/profile/two_factor_authentication.html) on a GitLab.com account.

It should also be used any time ownership of an account needs to be verified, such as for [account changes](/handbook/support/workflows/account_changes.html).

2FA removal and other account actions can only be completed if the [workflow](#workflow) below is successful.

## Self Service 2FA Removal

In most cases, users can disable 2FA themselves and regain access to their accounts, using one of the following methods:

1. Use a saved [two-factor recovery code](https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html#recovery-codes).
1. [Generate new recovery codes via SSH](https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html#generate-new-recovery-codes-using-ssh).
    - If a user has an SSH key tied to their account but receives a `Permission denied (publickey)` error, they may need to manually register their private SSH key using `ssh-agent` if they're using a non-default SSH key pair file path. Direct the user to [our documentation](https://docs.gitlab.com/ee/ssh/README.html#working-with-non-default-ssh-key-pair-paths) for guidance on how to solve this.

> As of August 2020, [free users won't be able restore access to accounts](https://about.gitlab.com/blog/2020/08/04/gitlab-support-no-longer-processing-mfa-resets-for-free-users/) if self-service methods do not work for them.

## Disable 2FA with Support Intervention

If a user cannot make use of self-serve methods (lost their account recovery codes and has no SSH key registered), proving they own the account can be difficult. Support intervention for 2FA removal after the above steps have been attempted is only possible for users with an *existing paid plan* when the ticket was created.

If a paid user (part of paid group or paid user namespace) is unable to remove 2FA or otherwise regain access to their account using the above methods and responds with the need for further verification, then the user will need to provide evidence of account ownership before we can disable 2FA on their account.

While Support typically identifies users by their membership in a paid namespace, there are cases where users cannot be added manually by group owners, such as with [SSO enforcement](https://docs.gitlab.com/ee/user/group/saml_sso/#sso-enforcement) enabled. In these cases:

1. Owner vouch is required.
1. Primary email of the account must match the company domain.
1. User must still prove account ownership following the [workflow](#workflow).
   - Include the paid namespace when determining the data classification level.  

### Workflow

As part of access recovery, if 2FA removal is not involved, then skip the following steps and move on to the next section.

1. If they have not answered the challenges, apply the [`Support::SaaS::2FA::2FA Challenges` macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+103721068).
1. The macro marks the ticket as "Pending".

#### Evaluating challenge answers

> **Note**: In case the user sends back very minimal information and it's clear it's not sufficient or the answers are vague, reply asking for more information immediately after their response. You can provide some additional guidance, such as "please provide the exact date and time of the commit, not just an approximate one".

1. Using the [2FA App in Zendesk](../support-ops/documentation/zendesk_global_apps.html#2fa-app), determine the appropriate data classification level and the risk factor you have determined from customer's answers to the challenges.
   - For almost all cases, the originating email should be the same as the one listed on the account.
   - An existing paid plain is required for 2FA resets.  However, challenge responses can be accepted from any group or project associated with the user.  This includes groups or projects that are not associated with a paid plan.
   - Backup to app: [Risk Factor Worksheet](https://drive.google.com/drive/u/0/search?q=Risk%20factor%20worksheet%20parent:1nI4lCILooN-0U_RmPJP6_cNyIDgXJR99) (internal only) with the [`Support::SaaS::2FA::2FA Internal Note` macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360043856894) to put an internal note on the ticket with the table at the bottom of the sheet.
1. Request that your decision be peer-reviewed by another member of the team via Slack `#support_gitlab-com` if the account verification passed. If the verification failed, a peer review is optional, and you may opt to [offer more challenges to the user](#user-fails-to-prove-account-ownership).
1. For the peer reviewer: In case you disagree, leave an internal note on the ticket stating your thoughts on what the risk factor should be and reply to the Slack conversation for further discussion. If you agree, move to [the next section](#user-successfully-proves-account-ownership) on what to do if successful.

#### User Successfully Proves Account Ownership

This section will usually be done by the peer reviewer.

1. For situations other than 2FA, please see [Account Changes workflow](account_changes.html).
1. For disabling 2FA: If you agree with the decision, sign into your admin account and locate the username in the users table or by going to `https://gitlab.com/admin/users/usernamegoeshere`
      1. Under the account tab, click `Edit`, add an [Admin Note](admin_note.html), and save.
      1. On the account tab, click on `Disable 2FA`.
      1. Use the [`Support::SaaS::2FA::2FA Removal Verification - Successful` macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+103772548).

#### User Fails to Prove Account Ownership

> **Note**: Do _not_ provide hints to answers. That is how social engineering works!

1. If the user is unable to pass the risk factor but we have not provided all the applicable challenges, you may offer further challenges.
   - Most commonly, an `Owner in the top level namespace` (with a valid subscription) vouch is requested. Use the [`Support::SaaS::2FA::2FA ask owner vouch` macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360052221199). The originating email of this request should match a verified email of the Owner's account.
   - For large organizations, please check the Zendesk organization notes to see if they're using the [large customers](#large-customers) workflow before offering the owner vouch challenge.
   - When we receive a subsequent response, go back to [evaluating the challenges](#evaluating-challenge-answers) to see if they now pass.
1. If the user is unable to pass the available challenges:
   1. Inform them that without verification we will not be able to take any action on the account. For 2FA, use the [`Support::SaaS::2FA::2FA Removal Verification - GitLab.com - Failed` macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+103790308).
   1. Mark the ticket as "Solved".

### GitLab Team Members

If the user is a GitLab employee, have them contact IT Ops.

### Large Customers

For customers who are large enough to have an account management project, an issue within their specific project can be used as verification.

#### Setup (by Account Manager)

The (Technical) Account Manager ((T)AM) is responsible for the setup. If a customer requests this workflow, please refer them to their (T)AM.

1. Create an issue template in `.gitlab/issue_templates` called `2FA Verification.md` that contains the following (modifying as necessary):

```plain

   A user in your organization is requesting to have 2FA removed from their account.

   - User requesting reset: `@user`
   - ZD Ticket: `#ticket number`

   /label ~"2FA Reset" ~"Awaiting confirmation"

   <!-- TAM to adjust template to add approved resetters here --!>
   /assign `@2FA resetter 1`, `@2FA resetter 2`, `@2FA resetter 3`

   <!-- TAM to adjust template to add approved resetters Slack Handles and Customer channel here, or remove this section if they don't have a shared Slack channel--!>
   ### Support Engineer Instructions:
   - [ ] This customer has a shared Slack channel `#customer-channel` - ping `@2FA resetter 1`, `@2FA resetter 2`, `@2FA resetter 3` there to alert them of this request

   ### Customer Instructions:
   - [ ] Review the request and get in contact with the user requesting the reset to verify the authenticity.
   - [ ] Comment on this issue indicating your approval.
   - [ ] Label this issue ~"Approved".
   - [ ] Unassign yourself (and any others).
   - [ ] Assign the Support Engineer who opened this issue.

   You can do most of the above by copying/pasting the following into a comment box:

   
   I approve this request!
   /label ~"Approved"
   /unassign me
   /assign `<put Support Engineer GitLab handle here>`
  

```

1. Open a [Support Operations issue](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Add%20Zendesk%20Organization%20Notes%20or%20Tags%20Request) to add a note to the appropriate Zendesk Organization's `Notes`, such as `2FA owner vouch: [link to 2FA Reset Owners file]` and also include a link to the customer's account management project.

#### Usage

If the Zendesk organization's notes has a "2FA owner vouch" link, use the following process to ask for an owner vouch.
The following is a guide only - the issue template is the source of truth, and may include some special handling notes.

#### Create approval issue
1. Open a new issue using the issue template in their `account-management` project and fill out the required fields.

#### Slack Owner Contact

1. If a Slack channel is listed, join the listed channel and ping the individuals listed in the approval issue in the listed Slack channel, alerting them that a request exists, and that they can expedite the processing of the request. You can use the following as a template for this message, but just be sure to fill in all of the user details and adjust the issue link.

   ```plain
   Hi <CUSTOMER_SLACK_HANDLE> - we've received a request from the following user to disable 2FA on their account.
   
   GitLab Username:  
   Email: 
   Support Ticket: 
   
   Could you vouch for them by following the steps in `link.to/issue`? 

   Once you've done that, please let me know. If you don't get to this within 24 hours, we'll use our standard account verification procedures to determine if they're eligible for a 2FA reset.
   ```

    - *Skip this step if* a listed owner has created and sent a link to the issue through Zendesk prior to Support's request.
1. Notify the user that you are getting an owner to vouch for them if needed (based on ticket SLA).
1. Once a "2FA Reset Owner" gets back to you, include the vouch in your risk factor assessment.
1. Acknowledge the response in the Slack thread.
1. Comment in the account management issue that you've included the owner vouch in the verification process, and close the issue.

## Authentication For GLGL Reports

In the event that a customer requests a report of their group's users from [GLGL](https://gitlab.com/gitlab-com/support/toolbox/glgl), consult the [internal-requests wiki](https://gitlab.com/gitlab-com/support/internal-requests/-/wikis/Procedures/GLGL-Report-Authentication) for the process of authenticating the requestor.

## Account Ownership Changes

There are some conditions under which a change of ownership may be requested by a company with a business relationship with GitLab.
Our [support page](https://about.gitlab.com/support/#ownership-disputes) outlines that these processes are not available for unpaid groups.

The end result of a successful request is a new or existing user in the namespace will have the Owner role.

### Account Ownership Change Request for Paid Groups

Account Ownership Change Requests are initiated when the sole Owner of a group leaves a company and an authorized representative of the company is seeking to regain access. This process should be a last resort, and self-service options should be pursued first. 

If a request is received, verify:

1. Current paid subscription is applied to the namespace.
1. Sole Owner's primary email address matches company domain.
1. Requestor has a GitLab.com account. Typically this user will already be a member but is not Owner.

Ensure that the requestor has exhausted all self-service options:
- If the existing Owner's account does not have 2FA, suggest they issue a password reset and claim the account directly. 
- If the existing Owner's account does have 2FA, suggest contacting the previous Owner to provide the one time password, backup codes or private ssh key to regain access.

If no Self-service options are viable, follow the steps below:

1. Use [`Support::SaaS::Account ownership change verification (Self-service option not possible)`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360073396100) macro
1. If possible, add the account owner or account manager in the CC.
1. Once we received the necessary document, double check all the requested information is included. If not, let them know what's missing. If all required elements are present, follow the next step. 
1. Create a new issue in [the Legal tracker](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues/) requesting approval to add or upgrade the permissions of the requesting user. Note the issue in an internal comment on the ticket, then reply to the requestor using [`Legal::General` macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360056569419) and set the ticket to "On-Hold". If you don't receive a reply after the On-Hold ticket reverts to open (4 days), ping in `#legal`.
1. After receiving approval: add or elevate the requested user to Owner role.

