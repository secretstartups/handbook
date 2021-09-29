---
layout: handbook-page-toc
title: 'Zendesk US Federal Ticket Settings'
category: 'Zendesk US Federal'
description: 'An overview of the Zendesk US Federal ticket settings'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Tickets are the core part of what we use Zendesk for.

## Ticket Settings

* Comments
  * Formatting options for agents: Markdown
  * Enable emoji text replacement
  * Agent comments via web are public by default
  * Agent comments via email are public by default
* Attachments
  * Customers can attach files
  * Require authentication to download
* Tags
  * Enable tags on tickets
* CCs
  * Enable followers
  * Follower email subject: {{ticket.title}}
  * Follower email template
    > You are a follower on this request ({{ticket.id}}).
    > {{ticket.follower_reply_type_message}}
    >
    > {{ticket.comments_formatted}}
* Requester
  * Agents can change requester
* Assignment
  * Auto-assign tickets upon solve
  * Allow re-assignment back to the general group
* Suspended Ticket Notifications
  * How often you want to receive email about new suspended tickets. `Never`
* Ticket IDs: 627
