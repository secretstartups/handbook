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

## Process

1. Confirm if the email address the user has used to raise their request matches an email address associated with the account the request is intended for. Only proceed to the next steps once a match is confirmed.
1. If the account is blocked, look for the admin note on the account to determine why it has been blocked.
    - The [(GitLab user lookup app](https://about.gitlab.com/handbook/support/support-ops/documentation/zendesk_global_apps.html#gitlab-user-lookup) in Zendesk will show the admin notes for the user if they have contacted support using the email address associated with their account.  Alternatively -
	- If you have access to ChatOps you can use the below command in any chatops enabled Slack channel to read admin notes for the user
	> `/chatops run user find <username or email>`
1. If the block or complaint is related to access from an embargoed country, use the [`Support::SaaS::Abuse::TOS Section 10 (Embargoed Countries)`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360020523679) macro.
    - If the user provides the requested information, then complete the `Trust and Safety` [Account Reinstatement Request](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/operations/-/issues/new) template in the Trust and Safety Operations tracker. Otherwise, reaffirm the block cannot be removed.
1. If there is no admin note, check with #professional-services as some Professional Services migrations can block users as part of their process. Adding admin notes for migrations is being considered in [this issue](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/issues/818).
1. For all other cases, including no admin notes that are not a part of PS migrations, complete the [Account Reinstatement Request](https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/operations/-/issues/new) template in the Trust and Safety Operations tracker. A security member of the team will review the request within 24 hours. If the request is urgent, please reach out in the #abuse Slack channel.
1.  Send the [`Support::SaaS::Blocked Accounts::Escalated-TrustAndSafety`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360073013540) macro for the initial response to the user.
1. If account is unblocked, use the [`Support::SaaS::Blocked Accounts::Account Reinstated- Success`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360054271234) macro to notify the user the account has been unblocked. Otherwise, provide the reasoning from the Unblock Request as to why their account will remain blocked.

> **Note:** The rest of this page is for **reference** only and should be updated to point to Security's workflow.

## NOTE

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
