---
layout: handbook-page-toc
title: Account Ownership Verification
category: GitLab.com
subcategory: Accounts
description: "Workflow detailing how and when to verify account ownership including disable 2FA"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This workflow covers how a user can provide account verification. While the workflow focuses on disabling [Two-factor Authentication](https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html) on a GitLab.com account, it should be used for any [account changes](/handbook/support/workflows/account_changes.html).

2FA removal and other account actions can only be completed if the [workflow](#workflow) below is successful.

## GitLab Team Members

If the user is a GitLab team member, have them contact IT Ops.

## Self Service 2FA Removal

In most cases, users can disable 2FA themselves and regain access to their accounts, using one of the following methods:

1. Use a saved [two-factor recovery code](https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html#recovery-codes).
1. [Generate new recovery codes via SSH](https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html#generate-new-recovery-codes-using-ssh).
    - If a user has an SSH key tied to their account but receives a `Permission denied (publickey)` error, they may need to manually register their private SSH key using `ssh-agent` if they're using a non-default SSH key pair file path. Direct the user to [our documentation](https://docs.gitlab.com/ee/ssh/#configure-ssh-to-point-to-a-different-directory) for guidance on how to solve this.

> As of August 2020, [free users won't be able restore access to accounts](https://about.gitlab.com/blog/2020/08/04/gitlab-support-no-longer-processing-mfa-resets-for-free-users/) if self-service methods do not work for them.

## Disable 2FA With Support Intervention

If a user cannot make use of self-serve methods (lost their account recovery codes and has no SSH key registered), proving they own the account can be difficult. Support intervention for 2FA removal after the above steps have been attempted is only possible for users with an *existing paid plan* when the ticket was created.

If a paid user (part of paid group or paid user namespace) is unable to remove 2FA or otherwise regain access to their account using the above methods and responds with the need for further verification, then the user will need to provide evidence of account ownership before we can disable 2FA on their account.

#### Note

For security purposes, support will not process 2FA resets for users who are added to a paid subscription for the express purpose of having 2FA disabled on their account.

### Conditions for 2FA Reset Consideration

In order for a SaaS user to be a candidate for the [workflow](#workflow), one of the following is true:

1. The user on GitLab.com occupies a seat in a paid group on GitLab.com.
1. The user is the primary billing contact on a current invoice for either Self-managed or SaaS purchases.
1. GitLab team member (account managers, TAMs or others) collaborate with the holder of this account in an account management project.

More succinctly: they're paid, they use the account to pay, or we use the account to communicate with them.

While Support typically identifies users by their membership in a paid namespace, there are cases where users cannot be added manually by group owners, such as with [SSO enforcement](https://docs.gitlab.com/ee/user/group/saml_sso/#sso-enforcement) enabled. In these cases:

1. [Owner vouch](#authenticating-an-owner-vouch) is required.
1. Primary email of the account must match the company domain.
1. User must still prove account ownership following the [workflow](#workflow).
   - Include the paid namespace when determining the data classification level.
1. If the user is classed as an [Enterprise user](https://about.gitlab.com/handbook/support/workflows/gitlab-com_overview.html#enterprise-users) the user or an owner of the paid group raises the ticket.

## Workflow

The workflow applies to all cases where account verification is required.

### Keeping the Ticket Simple and Accurate

Because an ownership-verification ticket is a matter of record, the ticket must be simple, accurate, and tightly focused on the access issue. 

1. Do not allow the customer to bring up unrelated topics.
1. Do not add requested CCs to the ticket. Remove any CCs that get added, except:
    1. Exception: Owners of the top-level group may be CCed as required.

### Sending Challenges

If you need a basis for a response where you send the challenges, or in a 2FA ticket, if the user has not answered the challenges, use the `Support::SaaS::2FA::2FA Challenges` [macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+103721068).

### Evaluating Challenge Answers

> **Note**: In case the user sends back very minimal information and it's clear it's not sufficient or the answers are vague, reply asking for more information immediately after their response. You can provide some additional guidance, such as "please provide the exact date and time of the commit, not just an approximate one".

1. To verify the challenge answers, use [chatops](https://about.gitlab.com/handbook/support/workflows/chatops.html), the [Zendesk GitLab User Lookup App](https://about.gitlab.com/handbook/support/support-ops/documentation/zendesk_global_apps.html#gitlab-user-lookup) or, for those who have admin access, check at `https://gitlab.com/admin/users/USERNAME`.
1. Using the [2FA App in Zendesk](../support-ops/documentation/zendesk_global_apps.html#2fa-app), determine the appropriate data classification level and the risk factor you have determined from customer's answers to the challenges.
   - [Specific conditions are required to be considered for 2FA resets](#conditions-for-2fa-reset-consideration).  However, challenge responses can be accepted from any (paid or unpaid) group or project associated with the user.
   - If a group owner is answering on an [enterprise user's](gitlab-com_overview.html#enterprise-users) behalf, you can accept the owner's answers on the user's behalf. Use the same verification process, and [owner vouch process](#authenticating-an-owner-vouch) (the same owner can be the on vouching).
   - Backup to app: [Risk Factor Worksheet: ZenDesk requests](https://docs.google.com/spreadsheets/d/1NBH1xaZQSwdQdJSbqvwm1DInHeVD8_b2L08-V1QG1Qk/edit#gid=0) (internal only) with the `Support::SaaS::2FA::2FA Internal Note` [macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360043856894) to put an internal note on the ticket with the table at the bottom of the sheet.
1. **If verification passed:** Request that your decision be peer-reviewed by another member of the team via Slack `#support_gitlab-com`.
1. **If the verification failed**: A peer review is optional, and you may opt to [offer more challenges to the user](#user-fails-to-prove-account-ownership).
1. *Peer reviewer:* In case you disagree, leave an internal note on the ticket stating your thoughts on what the risk factor should be and reply to the Slack conversation for further discussion. If you agree, move to [the next section](#user-successfully-proves-account-ownership) on what to do if successful.

### Authenticating an Owner Vouch

In a paid namespace: If the user elects to have an Owner vouch for their request, apply the macro `Support::SaaS::2FA::2FA ask owner vouch`. This will direct the requestor to have an Owner (top-level) create a Snippet with a Support-provided string. Once they have replied verifying they have done so:

1. Use your Admin or Auditor account to browse to the Snippet provided (e.g. `https://gitlab.com/-/snippets/2057341`)
   - Verify the text of the Snippet matches the string you specified
   - Verify that the author of the Snippet is an Owner and direct member of the top-level paid group
1. If the Owner passes, you may count this towards the account verification challenges.

Note: Due to this [bug](https://gitlab.com/gitlab-org/gitlab/-/issues/337939) some group owners are not able to create snippets. In that case use a [backup method](#backup-methods-for-authenticating-an-owner) instead.

### Backup methods for authenticating an owner

If a group owner is unable to create a snippet, you may use another method to verify their identity. It must be an action that has been specifically instructed by Support and identifiably unique to the situation. Some examples include having the owner:
 - create an issue in a project they have access to with a specific piece of text that you provide.
 - create a new project at a path that you provide.
 - update their GitLab Status to a specific string.

### User Successfully Proves Account Ownership

This section is typically done by the peer reviewer. If needed, the peer reviewer (or approving manager) may leave an approval note, in which case the original reviewer will perform the actions.

1. For situations other than 2FA, please see [Account Changes workflow](account_changes.html).
1. For disabling 2FA: If you agree with the decision, sign into your admin account and locate the username in the users table or by going to `https://gitlab.com/admin/users/usernamegoeshere`
      1. Under the account tab, click `Edit`, add an [Admin Note](admin_note.html), and save.
      1. On the account tab, click on `Disable 2FA`.
      1. Use the `Support::SaaS::2FA::2FA Removal Verification - Successful` [macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+103772548).

### User Fails to Prove Account Ownership

> **Note**: Do _not_ provide hints to answers, or let the user know which challenges they got right or wrong. That is how social engineering works!

1. If the user is unable to pass the risk factor but we have not provided all the applicable challenges, you may offer further challenges. This is true for all users, including owners.
   - Most commonly, an `Owner in the top level namespace` (with a valid subscription) vouch is requested. Use the `Support::SaaS::2FA::2FA ask owner vouch` [macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360052221199). See the [Verifying an Owner Vouch section](#authenticating-an-owner-vouch) for more information. The originating email of this request should match a verified email of the Owner's account. If the user is an Owner, vouch must be from a different Owner.
   - For large organizations, please check the Zendesk organization notes to see if they're using the [large customers](#large-customers) workflow before offering the owner vouch challenge.
   - Some challenges can be answered with the help of their colleagues. Use the `Support::SaaS::2FA::2FA Removal Verification - GitLab.com - Failed - Ask colleagues for help` [macro](https://gitlab.com/search?group_id=15990755&project_id=17008590&repository_ref=&scope=blobs&search=360089726039&snippets=false) to let them know which challenges they can try to work with their colleagues to answer.
   - When we receive a subsequent response, go back to [evaluating the challenges](#evaluating-challenge-answers) to see if they now pass.
1. If the user is unable to pass the available challenges:
   1. Inform them that without verification we will not be able to take any action on the account. For 2FA, use the `Support::SaaS::2FA::2FA Removal Verification - GitLab.com - Failed - Final Response` [macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+103790308).
   1. Mark the ticket as "Solved".

## Large Customers

For customers who are large enough to have an account management project, a different workflow can be configured for them that will allow Support to more easily disable 2FA for any of their users that require it. Before this process can be used, a GitLab team member from either Customer Success or Sales must perform a few setup steps (described below). If a customer requests this workflow, please refer them to either of those individuals.

### Setup (For CS & Sales)

The steps to follow depend on whether or not the customer has a shared Slack channel with us. Either the customer's Technical Account Manager (CS) or Account Manager (Sales) is responsible for performing this setup. Please proceed to [Shared Slack Channel](#shared-slack-channel) if they do or [No Shared Slack Channel](#no-shared-slack-channel) if they don't.

#### Shared Slack Channel

1. Find out which users within the customer's organization are the ones that will be authorizing GitLab Support to disable 2FA on their users accounts. Obtain **both** the Slack handle and GitLab username of these users.
1. Create a file called `2FA Verification.md` inside of the `.gitlab/issue_templates` directory of the customer's [Account Management](https://gitlab.com/gitlab-com/account-management) project. If that directory does not exist, create it as well.
1. Populate the `2FA Verification.md` file with the template below, taking care to replace the following variables from it with your specific customer's information:
   - `CUSTOMER_SLACK_CHANNEL` - The name of the shared Slack channel that the customer's organization has with us.
   - `SLACK_USERNAME` - The Slack handle of a user that is authorized to allow GitLab Support to disable 2FA for the customer's user accounts.
   - `GITLAB_USERNAME` - The GitLab username of a user that is authorized to allow GitLab Support to disable 2FA for the customer's user accounts.

     <details>
      <summary markdown="span">2FA Verification Template</summary>

       <p>A user in your organization is requesting to have [GitLab two-factor authentication](https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html) removed from their account. Please review and complete the highlighted sections below.</p>

       <p>## Support Engineer Instructions
       <p>- [ ] Ping the customer's organization owners in CUSTOMER_SLACK_CHANNEL using the [Notify Customer - Slack](https://about.gitlab.com/handbook/support/workflows/account_verification.html#2-contact-through-slack) template. For this organization the owners are SLACK_USERNAME, SLACK_USERNAME, and SLACK_USERNAME.
       <p>- [ ] Fill out the `Request Details` section below.

       <p>## {+Request Details+}
       <p>- {+User Requesting Reset: USERS_GITLAB_USERNAME+}
       <p>- {+Support Ticket: TICKET_NUMBER+}

       <p>## {+Customer Instructions+}
       <p>- [ ] {+Review the request and get in contact with the user requesting the reset to verify its authenticity.+}
       <p>- [ ] {+Comment on this issue indicating your approval.+}
       <p>- [ ] {+Unassign yourself and any others from this issue.+}
       <p>- [ ] {+Assign to the Support Engineer who opened this issue.+}

       <p>/assign GITLAB_USERNAME GITLAB_USERNAME GITLAB_USERNAME
       <p>/label ~"2FA Reset" ~"Awaiting confirmation"

1. Open a [Support Operations issue](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/organizations/-/issues/new) to request that three pieces of information be added to a customer's Zendesk organization:
   1. A link to the `2FA Verification.md` file you created in the previous step, such as `2FA owner vouch: /path/to/2FA Verification.md/` in the notes.
   1. A link to the customer's account management project in the notes.
   1. The `skip_2fa_automation` tag so that users requesting this won't get the autoresponder.

#### No Shared Slack Channel

1. Find out which users within the customer's organization are the ones that will be authorizing GitLab Support to disable 2FA on their users accounts. Obtain the GitLab username of these users.
1. Create a file called `2FA Verification.md` inside of the `.gitlab/issue_templates` directory of the customer's [Account Management](https://gitlab.com/gitlab-com/account-management) project. If that directory does not exist, create it as well.
1. Populate the `2FA Verification.md` file with the template below, taking care to replace the following variables from it with your specific customer's information:
   - `GITLAB_USERNAME` - The GitLab username of a user that is authorized to allow GitLab Support to disable 2FA for the customer's user accounts.

     <details>
      <summary markdown="span">2FA Verification Template</summary>

       <p>A user in your organization is requesting to have [GitLab two-factor authentication](https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html) removed from their account. Please review and complete the highlighted sections below.</p>

       <p>## Support Engineer Instructions
       <p>- [ ] Fill out the `Request Details` section below.

       <p>## {+Request Details+}
       <p>- {+User Requesting Reset: USERS_GITLAB_USERNAME+}
       <p>- {+Support Ticket: TICKET_NUMBER+}

       <p>## {+Customer Instructions+}
       <p>- [ ] {+Review the request and get in contact with the user requesting the reset to verify its authenticity.+}</p>
       <p>- [ ] {+Comment on this issue indicating your approval.+}
       <p>- [ ] {+Unassign yourself and any others from this issue.+}
       <p>- [ ] {+Assign to the Support Engineer who opened this issue.+}

       <p>/assign GITLAB_USERNAME GITLAB_USERNAME GITLAB_USERNAME
       <p>/label ~"2FA Reset" ~"Awaiting confirmation"

1. Open a [Support Operations issue](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/organizations/-/issues/new) to request that two pieces of information be added to the notes section of the customer's Zendesk organization:
   1. A link to the `2FA Verification.md` file you created in the previous step, such as `2FA owner vouch: /path/to/2FA Verification.md/`.
   1. A link to the customer's account management project.

### Usage (For GitLab Support)

If a 2FA ticket is opened by an organization that has had this workflow configured for them, perform the following steps to process the request depending on whether or not the customer has a shared Slack channel with us.

#### 1. Create Issue
{:.no_toc}

1. Open a new issue in the issue tracker of the customer's account verification project using the `2FA Verification` template and follow all instructions within it. A link to this template should be in the notes for the organization in Zendesk.

#### 2. Contact Through Slack (skip if no shared Slack channel)
{:.no_toc}

1. Within the customer's shared Slack channel with us, use the template below to alert them to the fact that a new 2FA disable request exists in their account management issue tracker. Be sure to replace the following variables:
   - `SLACK_USERNAME` - The Slack handle of a user that is authorized to allow GitLab Support to disable 2FA for the customer's user accounts. If there are more than one, add them as well.

     <details>
       <summary markdown="span">Notify Customer - Slack</summary>

       <p>Hi <SLACK_USERNAME> - we've received a request from one of your users to disable 2FA on their account.

       <p>Could you vouch for them by following the steps in this issue: <ISSUE_LINK>?

       <p>Once you've done that, please let me know. If you don't get to this within 24 hours, we'll use our standard account verification procedures to determine if they're eligible for a 2FA reset.

>**Note:** If the customer has created an issue using the `2FA Verification` template themselves and sent us a Zendesk ticket with a link to it, skip this step.

#### 3. Wait For Authorization
{:.no_toc}

Wait for the customer to comment on the issue and approve the request to disable 2FA.

As stressed in the Slack notification template, we will wait for the customer's answer for 24 hours. If no response is received by then, regular 2FA verification will take place via the [challenges workflow](#sending-challenges).

#### 4. Disable 2FA
{:.no_toc}

Once the customer has approved the request, disable 2FA on the user's account, add an [Admin Note](admin_note.html) on the user's account, and then close both the support ticket and issue.

## **Account Ownership Changes**

There are some conditions under which a change of ownership may be requested by a company with a business relationship with GitLab. Our [support page](https://about.gitlab.com/support/#ownership-disputes) outlines that these processes are not available for unpaid groups.

The outcome of a successful request is a new or existing user in the namespace will have the Owner role.

### Account Ownership Change Request for Paid Groups

Account Ownership Change Requests are initiated when the sole Owner of a group leaves a company and an authorized representative of the company is seeking to regain control. This process should be a last resort, and self-service options must first be explored.

**If a request is received, verify:**

1. Current paid subscription is applied to the namespace.
1. Sole Owner's primary email address matches company domain.
1. Requestor has a GitLab.com account. Typically this user will already be a member but is not an Owner.

**Ensure that the requestor has exhausted all self-service options:**

- If the existing Owner's account does not have 2FA enabled, suggest that the requestor issue a password reset to the existing Owner's account, and [claim the account](https://docs.gitlab.com/ee/user/group/#change-the-owner-of-a-group).
- If the existing Owner's account has 2FA enabled, suggest the requestor contact the existing Owner to request that the existing Owner provide the one time password, backup codes, or private ssh key to allow the requestor to regain access, and [claim the account](https://docs.gitlab.com/ee/user/group/manage.html#change-the-owner-of-a-group).

**If no self-service options are viable, follow the steps below:**

1. Use the `Support::SaaS::Account Ownership Change Request (Self-Service Not Possible)` [macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360073396100) , adding the add the account owner or account manager in CC if possible.
1. Once you have received the requested document, verify that all of the necessary information is included. If not, follow up with the requestor to obtain any outstanding information. Once the required information has been obtained, carefully follow the next steps.
1. Assess the request to verify if the following criteria have been met:
   1. Self-service options have been suggested and aren’t viable.
   1. The requested document is completely and correctly populated, and is on appropriate letterhead.
   1. The existing Owner has not been active during the last 90 days.
   1. The requestor is using an email address on the same customer email domain as the existing Owner.
   1. The requestor already holds a Maintainer role within the group.
   1. Independent online search analysis supports the information provided (such as: the existing Owner no longer works for the customer; the roles and positions held at the organization by the requestor and signer; and there is no indication of an internal dispute between the requestor and the existing Owner).
1. **If all criteria are met:** elevate the requestor to Owner role.
1. **If any criteria is NOT met:**
   1. Create a new [Group Owner Change issue](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues/new?issuable_template=group-owner-change) in the [Legal and Compliance project](https://gitlab.com/gitlab-com/legal-and-compliance);
   1. Add a link to the issue to the Zendesk ticket;
   1. Reply to the requestor using the `Legal::General` [macro](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360056569419) and set the ticket to "On-Hold". If you don't receive a reply after the On-Hold ticket reverts to open (4 days), ping in the `#legal` [Slack channel](https://app.slack.com/client/T02592416/C78E74A6L).
   1. After receiving approval from Legal, elevate the requestor to Owner role.
1. Add an [Admin note](admin_note.html) on the group admin page.
