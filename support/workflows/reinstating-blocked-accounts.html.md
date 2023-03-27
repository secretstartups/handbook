---
layout: handbook-page-toc
title: Locked & Blocked Accounts
category: GitLab.com
subcategory: Security
description: How to determine if a blocked user can be re-instated if it has been blocked
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Overview

This workflow page will describe how to action on Locked & Blocked accounts. Sometimes users believe they are blocked, but their accounts are locked. The Admin User UI provides information regarding whether a user account is locked or blocked in `/admin/user/USERNAME`. It will say `(Locked)` or `(Blocked)` next to the name at the top. Currently, this functionality is not available in the API, but it has been requested in [gitlab#391635](https://gitlab.com/gitlab-org/gitlab/-/issues/391635).

Our implementation of [Arkose Protect](https://docs.gitlab.com/ee/integration/arkose.html#arkose-protect) does _not_ affect account locking, but instead can prevent users from signing in without solving the challenge.

# Locked accounts

When a user has been identified as locked, you can use the [`Support::SaaS::Account Locked` macro](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/Support/SaaS/Account%20Locked.yaml) to help explain the situation to the user. A user can be locked if:

2FA is **not** enabled:
  - They do not have 2FA enabled and there have been 3 or more failed login attempts within 24 hours.
  - Accounts are **not** unlocked automatically. The user receives an email with a six-digit unlock code _after_ a successful login. They are then redirected to a verification page where they can unlock their account by entering the code. The code is valid for 60 minutes only, but they can request a new code by clicking a link on the verification page.

2FA **is** enabled:
  - There have been 5 or more failed login attempts within 10 minutes.
  - Accounts are unlocked automatically after a 10 minute waiting period.

If the user does not receive a verification email with the 6-digit code, it's likely that the primary email address is inactive or inaccessible. If a user does not have access to their primary email address, they cannot unlock their account or reset their password. Consider other workflows such as [swapping email addresses](https://about.gitlab.com/handbook/support/workflows/account_changes.html#account-access-requests) if a user is not able to access their primary email. 

All verification emails with unlock codes and password reset emails bypass Mailgun suppressions. Mail delivery of these emails can also be seen in Mailgun.

You can see `Account Locked` states in [Kibana](kibana.html) by searching for `json.message: Account Locked`. Here's an example of what it might look like it Kibana:

![locked_account](/images/support/locked_example.png)

# Blocked Accounts

This workflow is used to determine if a blocked user can be reinstated if it has been blocked by us. All blocked accounts should have an admin note with a link to a relevant issue.

1. Only proceed with the next steps if any of the following scenarios is true:
    1. The email address the user has used to raise their request matches an email address associated with the account the request is intended for. 
    1. The user account is classified as an [Enterprise user](https://about.gitlab.com/handbook/support/workflows/gitlab-com_overview.html#enterprise-users) and an owner of the top-level group raises the ticket. 
1. If the account is blocked, look for the admin note on the account to determine why it has been blocked.
    - The [(GitLab user lookup app](https://about.gitlab.com/handbook/support/support-ops/documentation/zendesk_global_apps.html#gitlab-user-lookup) in Zendesk will show the admin notes for the user if they have contacted support using the email address associated with their account.  Alternatively -
	- If you have access to ChatOps you can use the below command in any chatops enabled Slack channel to read admin notes for the user
	> `/chatops run user find <username or email>`
1. If the block or complaint is related to access from an embargoed country, use the [`Support::SaaS::Abuse::TOS Section 10 (Embargoed Countries)`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360020523679) macro.
    - If the user provides the requested information, then complete the `Trust and Safety` [Account Reinstatement Request](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/TS_Operations/account-reinstatements/-/issues/new?issuable_template=Account%20Reinstatement) template in the Trust and Safety Operations tracker. Otherwise, reaffirm the block cannot be removed.
1. Professional Services migrations can also block users as part of their process. Admin notes for migrations were added as of 2022-08-19 through [this issue](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/issues/818). Older migrated accounts may not have an admin note. Support can unblock the user in the following cases:
    -  Blocked users can submit a support ticket to be unblocked. Once they are [verified](https://about.gitlab.com/handbook/support/workflows/account_verification.html), the user can be unblocked. Leave an [admin note](https://about.gitlab.com/handbook/support/workflows/admin_note.html) on the user stating they were unblocked, with the date and ticket number.
    - For [Enterprise users](gitlab-com_overview.html#enterprise-users), the `owner` of the top-level namespace the user belongs to can submit the ticket. Follow the [account verification](account_verification.html), and add an [admin note](admin_note.html) as usual, including if it was user or owner requested.
    - You can also ask for clarification or assistance in the [#professional_services](https://gitlab.slack.com/archives/CFRLYG77X) channel if needed.
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
