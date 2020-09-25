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

This workflow is to determine when an account blocked due to violation of our [Terms of Use](/terms/) should or should not be re-instated after a user sends a request via Zendesk.

All blocked accounts should have an admin note with a link to a relevant issue. If an account is blocked, but there is no admin note, please ping the abuse team via Slack.

## NOTE;

1. All decisions about account reinstantion are final and there is no process for appeals.
1. These criteria are to be taken as examples **only**, and **not** as binding principles.
1. If the account violates our ToS again within a 12 month period, it could result in being permanently banned.

### An account can be reinstated when;

1. The content in question has been removed by the Support/Security Team.
1. The user has given us a substantial reason that they are not violating our Terms of Use.
1. The user agrees to remove or export the content away from GitLab.com within 24 hours.
1. The DMCA/Trademark complaint has been resolved.


### An account **cannot** be reinstated when;

1. The user refuses to take corrective measures on the account.
1. The user has been reported on multiple occasions and continues to violate our ToS.
1. The user intentionally violates our ToS.
1. Any abusive language or hostile activity towards the support engineer.
1. The account presents damage to the GitLab business and/or brand.


### Workflow to Reinstate Account

1. Support engineer, check the admin notes related to the reason for account blocking.
1. Reach out to the security team on the #security channel in slack to review the account to determine if the account qualifies to have the block to be removed and what corrective measures should be taken by the user to resolve the issues on the account if necessary.
1. The Security Team will remove the block from the account and restore any projects on the account. All projects will remain private and could be made public again by the user.
1. Once the Security Team has removed the block and restored the projects, add an admin note to the account detailing that the account has been ublocked.
1. Notify the user that the restrictions on their account has been removed using Account::Blocked Accounts::Account Reinstated- Success macro.
