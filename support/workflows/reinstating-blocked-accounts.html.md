---
layout: handbook-page-toc
title: Reinstating blocked accounts
category: GitLab.com
subcategory: Security
description: How to determine if a blocked user can be re-instated if it has been blocked
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Overview

This workflow is to determine if a blocked user can be re-instated if it has been blocked by us.

All blocked accounts should have an admin note with a link to a relevant issue.

# Locked accounts

Sometimes users believe they are blocked, but their accounts are locked.

The Admin User UI provides information regarding whether a user account is locked in `/admin/user/USERNAME`. It will say `(Locked)` next to the name at the top.

Currently, this functionality is not available in the API, but it has been requested in [gitlab#391635](https://gitlab.com/gitlab-org/gitlab/-/issues/391635).

There is a [`Support::SaaS::Account Locked` macro](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/Support/SaaS/Account%20Locked.yaml) which you can use to help explain the situation to the user. Please see the macro for information on when the account gets locked.

If the user cannot find the email to unlock their account in their email account, they can [request a password reset](https://gitlab.com/users/password/new) email. Going through the password reset process should unlock their account.

# Blocked Account Process

1. Only proceed with the next steps if any of the following scenarios is true:
    1. The email address the user has used to raise their request matches an email address associated with the account the request is intended for. 
    1. The user account is classified as an [Enterprise user](https://about.gitlab.com/handbook/support/workflows/gitlab-com_overview.html#enterprise-users) and an owner of the top-level group raises the ticket. 
1. If the account is blocked, look for the admin note on the account to determine why it has been blocked.
    - The [(GitLab user lookup app](https://about.gitlab.com/handbook/support/support-ops/documentation/zendesk_global_apps.html#gitlab-user-lookup) in Zendesk will show the admin notes for the user if they have contacted support using the email address associated with their account.  Alternatively -
	- If you have access to ChatOps you can use the below command in any chatops enabled Slack channel to read admin notes for the user
	> `/chatops run user find <username or email>`
1. If the block or complaint is related to access from an embargoed country, use the [`Support::SaaS::Abuse::TOS Section 10 (Embargoed Countries)`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360020523679) macro.
    - If the user provides the requested information, then complete the `Trust and Safety` [Account Reinstatement Request](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/TS_Operations/account-reinstatements/-/issues/new?issuable_template=Account%20Reinstatement) template in the Trust and Safety Operations tracker. Otherwise, reaffirm the block cannot be removed.
1. Professional Services migrations can also block users as part of their process. Admin notes for migrations were added as of 2022-08-19 through [this issue](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/issues/818). Older migrated accounts may not have an admin note. You can ask in the #professional_services channel if needed.
1. For all other cases, including no admin notes that are not a part of PS migrations, complete the [Account Reinstatement Request](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/TS_Operations/account-reinstatements/-/issues/new?issuable_template=Account%20Reinstatement) template in the Trust and Safety Operations tracker. A security member of the team will review the request within 24 hours. If the request is urgent, please reach out in the #abuse Slack channel.
1.  Send the [`Support::SaaS::Blocked Accounts::Escalated-TrustAndSafety`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360073013540) macro for the initial response to the user.
1. If established it is not a Trust and Safety block, or is blocked as a result of a SM-to-SaaS migration (conducted with or without Professional Services), a paid account can be unblocked with authorization from a user with the Owner role in the top level namespace. Free accounts can be unblocked at the discretion of the Support Engineer. 
1. If account is unblocked, use the [`Support::SaaS::Blocked Accounts::Account Reinstated- Success`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360054271234) macro to notify the user the account has been unblocked. Otherwise, provide the reasoning from the Unblock Request as to why their account will remain blocked.

---

NOTE:
The rest of this page is for **reference** only and should be updated to point to Security's workflow.

## Policy Reference
1. All decisions about account reinstation are final and there is no process for appeals.
1. These criteria are to be taken as examples **only**, and **not** as binding principles.
1. If the account violates our ToS again within a 12 month period, it could result in being permanently banned.

### An account can be reinstated when

1. The user agrees to remove the content in question within the requested timeframe.
1. The user has provided a sufficient use case for violating our Terms of Use.
1. The user agrees to remove or export the content away from GitLab.com within 24 hours.
1. The DMCA/Trademark complaint has been resolved.

### An account **cannot** be reinstated when

1. The user refuses to take corrective measures on the account.
1. The user continues to violate our ToS.
1. The user intentionally violates our ToS.
1. Any abusive language or hostile activity towards the support engineer.
1. The account presents damage to the GitLab business and/or brand.
