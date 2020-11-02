---
layout: handbook-page-toc
title: Zendesk Triggers
category: Zendesk
description: Triggers are business rules we have defined to run immediately after tickets are created or updated.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Zendesk Triggers

[Triggers](https://support.zendesk.com/hc/en-us/articles/203662246-About-triggers-and-how-they-work) are business rules we have defined to run immediately after tickets are created or updated.

Triggers include:

- **Autoresponders**
    - Tickets created by Customer
    - Tickets created by Agents
    - 2FA Recovery
    - Adding private comments to a ticket
- **Change ticket information**
    - Changing Priority 
    - Changing Form
    - Changing Assignee
    - Changing Custom Fields (such as received at email, GitLab Plan)
    - Adding/removing tags
- **Notification triggers**
    - Notify requester of comments
    - Notify assignee of updates, assignment, reopened tickets, rating submitted.
- **Assignment triggers** 
    - Assign on-hold tickets to last replying agent
    - Remove assignee
- **GitLab issues**
    - Create issues for negative CSAT
    - Create issues for topics that need to be documented

Triggers can only be changed by administrators. For a full list of triggers or to file an issue, please see the [ZenDesk Triggers project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-triggers).

### Creating triggers

When creating triggers, please make sure to follow [Zendesk Best Practices](https://support.zendesk.com/hc/en-us/articles/360001996987-Fine-Tuning-How-to-build-your-ideal-workflow) as much as possible.

- Make sure to use a pretty clear and intuitive name, which summarizes what the trigger is doing.
- Make sure to *never* use the `Set Tags` action, as setting tags removes all other tags from a ticket and we heavily rely on tags for our workflows and reporting. Only use `Add tags`.
- Make sure to always [add a nullifying condition](https://support.sweethawk.co/hc/en-us/articles/115000727492-Nullifying-conditions-for-your-triggers) to all triggers, so that they only run once per ticket. This can be done by adding a tag to the ticket once the trigger runs. 
