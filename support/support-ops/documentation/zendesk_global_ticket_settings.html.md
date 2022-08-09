---
layout: handbook-page-toc
title: 'Zendesk Global Ticket Settings'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global ticket settings'
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
  * Enable CCs on tickets
  * Enable CCs for end users on Help Center
  * CC blacklist: noreply@google.com
  * CC email subject: `[{{ticket.account}}] Update: {{ticket.title}}`
  * CC email text:
    > You are registered as a CC on this support request ({{ticket.url}}). Reply
    > to this email to add a comment to the request.
    >
    > {{ticket.comments_formatted}}
    >
    >
* Assignment
  * Auto-assign tickets upon solve
  * Allow re-assignment back to the general group
* Suspended Ticket Notifications
  * How often you want to receive email about new suspended tickets. `Never`
* Ticket IDs: 161869
* Side conversations
  * Enable Slack
