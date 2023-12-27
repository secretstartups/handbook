---

title: Working on Zendesk automations, triggers, and macros
description: "How to collaborate on Zendesk automations, triggers, and macros"
category: Zendesk
---

## General process

To make it easier for Support Engineers to contribute to things that are managed by Support Operations, data and code have been separated for some items. A more detailed, technical explanation is available [in the Readiness handbook](../readiness/operations/docs/change_management/sync_repos/#v2). This approach removes the need for Support Operations to review every change proposed for Zendesk automations and triggers.

For any changes to Zendesk macros, triggers and automations consider their impact first. If your changes go beyond something like fixing a typo or updating a link and have broader repercussions for the team, follow the process to [Propose a change](./working_with_support_ops/#propose-a-change).

### Automations and Triggers

Refer to the corresponding projects and create a merge request with your changes:

 - https://gitlab.com/gitlab-com/support/zendesk-global/automations
 - https://gitlab.com/gitlab-com/support/zendesk-global/triggers

Whether you're proposing minor changes directly or something bigger following an RFC discussion, tag a Support Manager for review and ask them to merge the changes. Once changes have been merged in one of these projects, you'll notice a `Sync Stage` badge that says `Awaiting Deployment` on the project overview page. This indicates that there's changes in the project that will be rolled out during the next [regular deployment](../readiness/operations/docs/change_management/#standard-change-management).


### Macros

Macros are [deployed immediately](../readiness/operations/docs/change_managment/#zendesk-macros-change-management) and thus require review from Support Operations.

For information on macros, please see [Zendesk Global Macros](/handbook/support/readiness/operations/docs/zendesk/macros/).

## Previewing variable replacement

When using [variables](../readiness/operations/docs/zendesk/liquid/#common-variables) it can be useful to verify that they will be working as you expect them to. A simple way to do this is to create a test ticket, pasting the content of your automation, trigger, or macro in there and observing the outcome.