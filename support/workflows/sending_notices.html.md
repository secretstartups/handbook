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

Support may be asked by various teams within GitLab to send notices out to GitLab.com users and customers, to inform them of actions that we have taken (or will be taking) on namespaces under their control.

We may also occasionally need to inform certain users of a feature they use that will be deprecated. This workflow describes the various [Zendesk macros](https://about.gitlab.com/handbook/support/support-ops/documentation/zendesk_global_macros.html) that we can use to inform users, and the steps that a GitLab.com Support Engineer must take.

**NOTE:** If none of the below situations apply, you can use the generic [`Support::SaaS::Notices::General Contact Request`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360013369860) macro in Zendesk. Leave an internal note (with a link to any relevant [internal-request issue](https://about.gitlab.com/handbook/support/workflows/internal_requests.html#contact-request)).

### Blocked Accounts

**Macro:** [`Support::SaaS::Notices::Account Blocked`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros/-/blob/master/macros/active/Support/SaaS/Notices/Account%20Blocked.yaml)

We may be asked by infrastructure either through an issue or Slack to notify a user or customer that their account has been temporarily blocked for some reason. In these cases, do the following:

1. Copy the link to the issue where it's mentioned that the user was blocked. If none exists, create one in [internal-requests](https://gitlab.com/gitlab-com/support/internal-requests/issues) with the details.
1. Create a new ticket in Zendesk with the requestor as the **primary email address** of the user that is being blocked and apply the macro.
1. If the user has a subscription, review the organization notes and check for alternate contacts that should be added as a CC to the case.
1. If the organization has a TAM, reach out to the TAM on Slack to inform them of the blocked user, and add them as a CC on the ticket.
1. Supplement the response provided by the macro with the specific reasoning for the block and send it.
1. Add a note to the ticket that contains a link to the issue.
1. Add an [admin note](admin_note.html) to the blocked account that links to the issue. If you do not have GitLab.com admin access, you may [use ChatOps to do this](https://gitlab.com/gitlab-com/chatops/-/blob/master/lib/chatops/commands/user.rb) instead.

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

1. [Open an issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=email-request) in the [marketing/demand-generation/campaigns](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns) issue tracker using the `Email-Request-mpm` template.
1. Fill the template out in its entirety.
1. Submit the issue and be ready to adjust the subject and/or body of the notice based on feedback.
