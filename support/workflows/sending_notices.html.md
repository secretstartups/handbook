---
layout: handbook-page-toc
title: Sending Notices
category: GitLab.com
description: How to send notices out to GitLab.com users and customers to inform them of various actions on namespaces under their control
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

From time to time we'll be asked by various teams within GitLab to send notices out to GitLab.com users and customers to inform them of various actions that we've either taken or will be taking on namespaces under their control.

We may also occasionally need to do this to inform certain users of a feature that will be deprecated that they're taking advantage of. This workflow details the various macros that we currently have in use to inform users of these specific situations and the steps that you, as a GitLab.com Support Engineer, should take to use them.

### Blocked Accounts

**Macro:** [`GitLab.com::Notices::Account Blocked`](https://gitlab.zendesk.com/agent/admin/macros/360096829593)

We may be asked by infrastructure either through an issue or Slack to notify a user or customer that their account has been temporarily blocked for some reason. In these cases, do the following:

1. Copy the link to the issue where it's mentioned that the user was blocked. If none exists, create one in [internal-requests](https://gitlab.com/gitlab-com/support/internal-requests/issues) with the details.
1. Create a new ticket in Zendesk with the requestor as the **primary email address** of the user in question and apply the macro.
1. Supplement the response provided by the macro with the specific reasoning for the block and send it.
1. Add a note to the ticket that contains a link to the issue.
1. Add an [admin note](admin_note.html) to the blocked account that links to the issue.

### Mirror Abuse

**Macros:**

- [`GitLab.com::Notices::Mirror Abuse - Personal Namespace`](https://gitlab.zendesk.com/agent/admin/macros/360079851114)
- [`GitLab.com::Notices::Mirror Abuse - Group`](https://gitlab.zendesk.com/agent/admin/macros/360079650593)

Infrastructure may ask us to notify a particular user or group that the mirror of either [`gitlab-ce`](https://gitlab.com/gitlab-org/gitlab-ce) or [`gitlab-ee`](https://gitlab.com/gitlab-org/gitlab-ee) that they've recently created with the `Trigger pipelines for mirror updates` option enabled has caused extreme load on our shared runner fleet. In these cases, do the following:

1. Create a new ticket in Zendesk with the requestor set to one of the following:
    - For **personal namespaces:** set it to the **primary email address** of the user.
    - For **groups**: set it to the **primary email address** of any user in the group with `Owner` permissions.
        - Add each other `Owner` of the group as a CC to the ticket.
1. Apply the appropriate macro, either `Mirror Abuse - Personal Namespace` **or** `Mirror Abuse - Group`.
1. Replace any placeholder information in the response provided by the macro and send it.
1. Provide a link as an internal note in the ticket to the issue where this was brought to our attention.
1. Provide a link to the ticket in the issue where this was brought to our attention.
1. Be prepared to follow up with infrastructure if necessary should the user(s) respond back with any questions or comments.

### MailChimp Notices

Outside of Zendesk we may be asked to be involved in the process of sending mass notices to users via MailChimp. In these cases, do the following:

1. [Open an issue](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/issues/new?issuable_template=Email-Request-mpm) in the [marketing/digital-marketing-programs](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs) issue tracker using the `Email-Request-mpm` template.
1. Fill the template out in its entirety.
1. Submit the issue and be ready to adjust the subject and/or body of the notice based on feedback.
