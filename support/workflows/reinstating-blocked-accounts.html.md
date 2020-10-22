---
layout: handbook-page-toc
title: Reinstating blocked accounts
category: Security
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Overview

This workflow is to determine if a blocked user can be re-instated if it has been blocked by us.

All blocked accounts should have an admin note with a link to a relevant issue.

## Process

1. If the account is blocked, look for the admin note on the account to determine why it has been blocked.
1. If the block or complaint is related to access from an embargoed country, use the `TOS Section 10 (Embargoed Countries)` macro.
    - If the user provides the requested information, then complete the `Trust and Safety` [Unblock Request](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/operations/-/issues) template. Otherwise, reaffirm the block cannot be removed.
1. For all other cases, complete the [Unblock Request](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/operations/-/issues) template. A member of the team will review the request within 24 hours. If the request is urgent, please reach out in the #abuse Slack channel.
1. If account is unblocked, use the `Account::Blocked Accounts::Account Reinstated- Success` macro to notify the user the account has been unblocked.

1. If there is *no* admin note, please complete the `Trust and Safety` [Unblock Request](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/operations/-/issues) template.
    -  unblocked, use the `Account::Blocked Accounts::Account Reinstated- Success` macro to notify the user the account has been unblocked.

The rest of this page is for **reference** only and should be updated to point to Security's workflow.

## Process

1. Check if the account is blocked and check the admin notes.
1. If there is an admin note, move ticket to Security with an internal note with admin account link and block reason.
1. If there is *no* admin note, in Slack (usually in #support_gitlab-com), ping the Trust and Safety team to verify it can be unblocked.
    - If unblocked, use the `Account::Blocked Accounts::Account Reinstated- Success` macro to notify the user the account has been unblocked.

The rest of this page is for reference when required.

## NOTE;

1. All decisions about account reinstantion are final and there is no process for appeals.
1. These criteria are to be taken as examples **only**, and **not** as binding principles.
1. If the account violates our ToS again within a 12 month period, it could result in being permanently banned.

### An account can be reinstated when;

1. The user agrees to remove the content in question within the requested timeframe.
1. The user has provided a sufficient use case for violating our Terms of Use.
1. The user agrees to remove or export the content away from GitLab.com within 24 hours.
1. The DMCA/Trademark complaint has been resolved.


### An account **cannot** be reinstated when;

1. The user refuses to take corrective measures on the account.
1. The user continues to violate our ToS.
1. The user intentionally violates our ToS.
1. Any abusive language or hostile activity towards the support engineer.
1. The account presents damage to the GitLab business and/or brand.


### Workflow to Reinstate Account

<<<<<<< sites/handbook/source/handbook/support/workflows/reinstating-blocked-accounts.html.md
1. Support engineer, check if the account has an admin note present.
1. Open and complete the Trust and Safety [Unblock Request](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/operations/-/issues) issue form, where a member of the team will review the request.
1. Reach out to the Trust and Safety Team on the #security #abuse channel in slack and provide a link to the created unblock request.
1. The Trust and Safety team will review the request and if successful, they will remove the block from the account and restore user access.
    - All projects will remain private and could be made public again by the user after the block has been removed.
1. Once the Trust and Safety team have confirmed the removal of the block, notify the user that the restrictions on their account have been removed using Account::Blocked Accounts::Account Reinstated- Success macro.
=======
1. Check the admin notes related to the reason for account blocking.
1. Security team will review the account to determine if the account qualifies to have the block to be removed and what corrective measures should be taken by the user to resolve the issues on the account if necessary.
1. The Security Team will remove the block from the account and restore any projects on the account. All projects will remain private and could be made public again by the user.
1. Once the Security Team has removed the block and restored the projects, add an admin note to the account detailing that the account has been ublocked.
1. Notify the user that the restrictions on their account has been removed using `Account::Blocked Accounts::Account Reinstated- Success` macro.
>>>>>>> sites/handbook/source/handbook/support/workflows/reinstating-blocked-accounts.html.md
