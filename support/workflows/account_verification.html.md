---
layout: handbook-page-toc
title: Account Ownership Verification
category: GitLab.com
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

In most cases, users can disable 2FA themselves and regain access to their accounts.

### Recovery codes

Users can try and login using their saved [two-factor recovery codes](https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html#recovery-codes).

### Generating new recovery codes via SSH

If a user didn't save their recovery codes, new ones can be generated with the command below via SSH if they've previously added an SSH key to their account. The new recovery codes can then be used at sign in. This option is presented to users in the Zendesk macro and the auto-response they'll receive if they chose `Two-Factor Authentication (Account Recovery)` as the problem type for the Zendesk ticket.

```plain
ssh git@gitlab.com 2fa_recovery_codes
```

If a user has added an SSH key to their account but receives a `Permission denied (publickey)` error when using the command above, they may need to manually register their private SSH key using `ssh-agent` if they're using a non-default SSH key pair file path. Direct the user to [our documentation](https://docs.gitlab.com/ee/ssh/README.html#working-with-non-default-ssh-key-pair-paths) for guidance on how to solve this.

> Free users won't be able restore access to accounts if the recovery codes were lost and no ssh keys are available to generate more.

## Disable 2FA with Support Intervention

Support intervention for 2FA removal after the above steps have been attempted is only possible for users with a paid plan.

If a paid user (part of paid group or paid user namespace) is unable to remove 2FA or otherwise regain access to their account using the above methods and responds with the need for further verification, then the user will need to provide evidence of account ownership before we can disable 2FA on their account.

If a user has lost their account recovery codes and has no SSH key registered, proving they own the account can be difficult. 
In these cases, please use the workflow below.

### Workflow

As part of access recovery, if 2FA removal is not involved, then skip the following steps and move on to the next section.

1. Apply the **"GitLab.com::2FA::2FA Challenges"** macro if they have not answered the challenges already.
1. The macro marks the ticket as "Pending"

#### If the user responds with the need for further verification (by answering the challenges)

> **Note**: In case the user sends back very minimal information and it's clear it's not sufficient or the answers are vague, reply asking for more information immediately after their response. You can provide some additional guidance, such as "please provide the exact date and time of the commit, not just an approximate".

1. Using the [Risk Factor Worksheet](https://drive.google.com/drive/u/0/search?q=Risk%20factor%20worksheet%20parent:1nI4lCILooN-0U_RmPJP6_cNyIDgXJR99) (internal only), determine the appropriate data classification level and the risk factor you have determined from customer's answers to the challenges.

   - For almost all cases, the originating email should be the same as the one listed on the account.

1. Use the macro **"GitLab.com::2FA::2FA Internal Note"** It leaves an internal note on the ticket. Edit with the relevant admin link, your proposed data classification level, challenges and the risk factor.

1. Request that your decision be peer-reviewed by another member of the team via Slack.

1. For the peer reviewer: In case you disagree, leave an internal note on the ticket stating your thoughts on what the risk factor should be and reply to the Slack conversation for further discussion. If you agree, move to the next section on what to do if successful.

#### User Successfully Proves Account Ownership

1. For situations other than 2FA, please see [Account Changes workflow](account_changes.html).
1. For disabling 2FA: If you agree with the decision; log into your admin account and locate the username in the users table or by going to `https://gitlab.com/admin/users/usernamegoeshere`
      1. Under the account tab, click `Edit`, add an [Admin Note](/handbook/support/workflows/admin_note.html), and save.
      1. On the account tab, click on `Disable 2FA`.
      1. Use the **"GitLab.com::2FA::2FA Removal Verification - Successful"** macro.

#### User Fails to Prove Account Ownership

> **Note**: Do _not_ provide hints to answers. That is how social engineering works!

1. If the user is unable to pass the risk factor but we have not provided all the applicable challenges, you may offer further challenges.
   - Most commonly, an `Owner in the top level namespace` vouch is requested. The orginating email of this request should match the primary email of the Owner's account.
   - For large organizations, please check the ZD org notes to see if they're using the [large customers](#large-customers) workflow before offering the challenge.
1. If the user is unable to pass the selected challenges:
   1. Inform them that without verification we will not be able take any action on the account. For 2FA, use the **"GitLab.com::2FA::2FA Removal Verification - GitLab.com - Failed"** macro.
   1. Mark the ticket as "Solved"

### GitLab Team Members

If the user is a GitLab employee, have them contact IT Ops.

### Large Customers

For customers who are large enough to have an account management project, an issue within their specific project can be used as verification.

#### Setup

1. Create an issue template called `2FA Verification.md` that contains the following:

   ```plain
   User to reset: `@user`
   ZD Ticket: `ZD ticket number`
   /label ~"2FA Reset"
   ```

1. Create a list of Slack handles in a file called `2FA Reset Owners.md` that lists individuals who are authorized to request a 2FA reset.
1. Open a [Support Operations issue](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Add%20Zendesk%20Organization%20Notes%20or%20Tags%20Request) to add a note to the appropriate ZenDesk Organization's `Notes`, such as `2FA owner vouch: [link]`.

#### Usage

1. When a user for a large customer writes in, use a shared communication medium (e.g. a shared Slack channel) to ping the folks listed in the `2FA Reset Owners.md` file, alerting them that a request exists, and that they can expedite the processing of the request. You can use the following as a template for this message:

   ```plain
   Hi @user - we got a request from `REQUESTOR_EMAIL` to reset 2FA on their account. Could you vouch for them by creating an issue via https://gitlab.com/path/to/account/project/issues/new?issuable_template=2FA%20Verification and filling in all of the details there?

   Once you've done that, link the issue here and I'll get them reset. If you don't get to this, we'll use our standard account verification procedures to determine if they're eligible for a 2FA reset.
   ```

1. Continue processing the request as normal, issuing appropriate challenges. If a `2FA Reset Owner` gets back to you, include that in your risk factor assessment.
1. Comment in the issue and Slack thread that you've reset 2FA and close the issue.

## Authentication For GLGL Reports

In the event that a customer requests a report of their group's users from [GLGL](https://gitlab.com/gitlab-com/support/toolbox/glgl), consult the [internal-requests wiki](https://gitlab.com/gitlab-com/support/internal-requests/-/wikis/Procedures/GLGL-Report-Authentication) for the process of authenticating the requestor.

## Account Ownership Change Request for Paid Groups

Our [support page](https://about.gitlab.com/support/#ownership-disputes) outlines that this option is not available for unpaid groups.

If a request is received, verify:

1. Current paid subscription is applied to the namespace.
1. Sole Owner's primary email address matches company domain.
1. Requestor has a GitLab.com account. Typically this user will already be a member but is not Owner.

If the existing Owner's account does not have 2FA, suggest they issue a password reset and claim the account directly. Otherwise, send a message with the following blurb:

```plain
In order to transfer ownership, please provide a letter in PDF format outlining that the existing owner has left and ownership needs to be provided to a current employee. In the letter, please ensure that it is on company letterhead and includes:

- the name, email address, and GitLab username of the departed employee
- the name, email address (tied to the GitLab account), and GitLab username of employee who should be added
- that the current employee should be added to the group as an `Owner`
- the group name and full path (URL)
- name, position, and signature by authorized signatory

In addition, please include a copy of your last invoice from GitLab.
```

Whenever possible, include the current account owner from GitLab in the conversation.

Once received, double check all the requested information is included. If not, let them know what's missing. If yes, add or elevate the requested user to Owner role.
