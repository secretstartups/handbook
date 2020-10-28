---
layout: handbook-page-toc
title: Zendesk Automations
category: Zendesk
description: Automations are similar to triggers because both define conditions and actions that modify ticket properties and optionally send email notifications to customers and agents.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Zendesk Automations

[Automations](https://support.zendesk.com/hc/en-us/articles/203662236-About-automations-and-how-they-work) are similar to triggers because both define conditions and actions that modify ticket properties and optionally send email notifications to customers and agents. Where they differ is that automations execute when a time event occurs after a ticket property was set or updated, rather than immediately after a ticket is created or updated.

Our automations can be categorized under:

- **Ticket lifecycle**
    - Follow up with pending tickets
    - Solve pending tickets
    - Send satisfaction survey to solved tickets
    - Close solved tickets
    - Re-open on-hold tickets
- **Notifications**
    - Send notification to teams before a ticket breaches
    - Send notification to teams about tickets that haven't been updated
- **Reminders**
    - Remind agent of assigned ticket
    - Remind agent of open ticket
    - Remind agent of on-hold ticket

### Creating automations

Something to keep in mind when dealing with automations is that automations run every hour, but not necessarily top-of-the-hour; they start at some point during the hour. So if you have an automation that is supposed to alert you 2 hours before a ticket breaches, the alert might not come exactly 2 hours before the ticket breaches. It can come at some point during the 2 hours before the event.

It is a good idea to follow [Zendesk best practices ](https://support.zendesk.com/hc/en-us/articles/360001996987-Fine-Tuning-How-to-build-your-ideal-workflow) when creating automations. Also, triggers should always be considered before automations as they are more reliable for high priority updates. 
