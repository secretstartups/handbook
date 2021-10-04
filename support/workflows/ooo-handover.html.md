---
layout: handbook-page-toc
title: OOO Handover
category: Handling tickets
description: How to handover tickets when going on scheduled PTO
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This workflow covers how support engineers can asynchronously handover tickets within Zendesk when they go on PTO. It is recommended to follow this workflow if 3 days or more of PTO is taken.

As part of the workflow, the support engineer going on leave will leave notes on currently Open/Pending/On-Hold tickets for the next engineer with a macro. This macro will unassign the ticket so that it goes back to the `Needs assignee` view, CCs the support engineer onto the ticket, and adds the `ooo_handover` tag onto the ticket.

## Workflow

Go to the [My Assigned Tickets](https://gitlab.zendesk.com/agent/filters/360062369834) view in Zendesk. For each ticket you wish to handover in your view, do the following:

1. Use the [OOO Ticket Handover](https://gitlab.com/search?search=360080271299&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar) macro.
1. Fill in the sections of the internal note with details for the next support engineer. It is important to leave a summary of what has happened in the ticket so far, and for the potential next steps. If you are uncertain what the next steps are, note that down so the team is at least aware.

Feel free to also ask team members if they can pickup tickets in [other forms of communication](https://about.gitlab.com/handbook/communication/#multimodal-communication), such as Slack, but Zendesk should remain as the single source of truth for tickets that need attention from other team members.

## Finding your handed over tickets

If you are about to go on PTO and have unassigned your tickets, but want to track which tickets still need to be assigned, use the following search string in the Zendesk search bar to look for tickets you updated in the last 8 hours: `tags:ooo_handover cc:me updated>8hours assignee:none`

If you want to find the tickets you handed over after coming back from PTO, start with this search: `tags:ooo_handover cc:me updated>2021-09-01`. Replace `2021-09-01` with the date **before** you went on leave. This may not be 100% accurate as someone else may have handed over a ticket you happened to be CCed on, but it helps you to filter out most tickets.
