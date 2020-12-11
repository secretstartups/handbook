---
layout: handbook-page-toc
title: Reinstating blocked accounts
category: Security
description: How to determine if a blocked user can be re-instated if it has been blocked
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
1. For all other cases (including if there is *no admin note*), complete the [Unblock Request](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/operations/-/issues/new?issuable_template=T&S:%20Unblock%20Request) template in the Trust and Safety Operations tracker. A security member of the team will review the request within 24 hours. If the request is urgent, please reach out in the #abuse Slack channel.
1. If account is unblocked, use the `Account::Blocked Accounts::Account Reinstated- Success` macro to notify the user the account has been unblocked.

> **Note:** The rest of this page is for **reference** only and should be updated to point to Security's workflow.

## NOTE

1. All decisions about account reinstation are final and there is no process for appeals.
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
