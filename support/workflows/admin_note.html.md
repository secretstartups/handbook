---
layout: handbook-page-toc
title: Use of Admin Notes
category: GitLab.com
description: "Workflow for when and how to add admin notes to a GitLab.com account"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

The admin note serves as a quick reference for any account changes or action performed on a GitLab.com account. It also helps to determine if the user was previously flagged for any violations to prevent any further abuse.

If you encounter a situation with the following cases, an admin note is required.

- User requested change
- Legal case
- Security or Abuse case

### Adding the Note

To add the admin note, simply go to the user profile in the admin page of GitLab.com in the section of Admin Notes:

In general, the formatting should be standard in a one liner format:

- Violation: `Date | Note | Case | Link`
- Action Taken: `Date | Note | Case | Link`

Slack conversations or Issue links may be used for the link if no ticket is lodged for the type of request.

#### Sample Notes

Disabling 2FA:
`2018-11-05 | 2FA removed | user requested | https://gitlab.zendesk.com/agent/tickets/123`

Email Address Change/Removal:
`2018-11-22 | Primary Email Change - No Access | User Requested | https://gitlab.zendesk.com/agent/tickets/123`

DMCA Request:
`2018-11-05 | DMCA Violation | Abuse | https://gitlab.zendesk.com/agent/tickets/123`

Abuse Case:
`2018-11-05 | Flagged for terms violation |  Abuse Case | https://gitlab.zendesk.com/agent/tickets/123` 

User Blocked:
`2019-07-07 | User blocked by infra | see https://gitlab.com/gitlab-com/support/internal-requests/issues/441`
