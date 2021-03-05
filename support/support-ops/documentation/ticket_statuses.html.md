---
layout: handbook-page-toc
title: 'Ticket Statuses'
category: 'General'
description: 'An overview of ticket statuses'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/212530318-Updating-and-solving-tickets#topic_i3y_np1_vt):

| Status | Definition |
|---|---|
| New | indicates that no action has been taken on the ticket. Once a New ticket's status has been changed, it can never be set back to New. |
| Open | indicates a ticket is waiting for action by the agent. You can view all open tickets using the Open tickets view. |
| Pending | indicates the agent is waiting for more information from the requester. You can view all pending tickets using the Pending tickets view. When the requester responds and a new comment is added, the ticket status is automatically reset to Open. |
| On-hold | indicates the agent is waiting for information or action from someone other than the requester. It is similar to the Pending status in that you as an agent can't proceed with resolving the ticket until you receive more information from someone else. However, the On-hold is an internal status that the ticket requester never sees. While a ticket is set to On-hold, the requester sees the status as Open. |
| Solved | indicates the agent has submitted a solution or the end-user has marked it as such. A solved ticket can still be edited or re-opened |
| Closed | indicates the ticket is in a state where it can no longer receive updates. Replying to a closed ticket opens a follow-up ticket, which contains all previous tags and links to the previous ticket |


## Ticket Statuses as GitLab uses them

| Status | Meaning |
|---|---|
| New | This is a new ticket. This means it has not yet been worked by GitLab. |
| Open | This means the ticket is awaiting our reply. |
| Pending | This means we are waiting on the end-user to reply. |
| On-hold | This means the end-user is waiting on us, but we are waiting on something that is blocking us from replying. We should only be using this in situations where we are waiting on something such as a different department, time to pass (namesquatting requests as an example), or some other criteria that fits along the same concept. |
| Solved | This means the ticket has been resolved, but the end-user might come back to us. |
| Closed | We use them exactly as Zendesk defines them |
