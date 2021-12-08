---
layout: handbook-page-toc
title: 'Working Support Ops Tickets'
category: Zendesk
subcategory: Tickets
description: 'Details on working with the tickets we get in the Support Ops queue'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Support Operations has a public form that end-users can use to submit tickets.
These go directly to us. Currently, we have 6 problem types:

* [First time setup](#first-time-setup)
* [Manage my organization's contacts](#manage-my-organizations-contacts)
* [Shared organization requests](#shared-organization-requests)
* [Support portal questions](#support-portal-questions)
* [Support portal issues](#support-portal-issues)
* [Other](#other)

### First time setup

This is for user's who have not been setup in the support portal previously (ie
new customers). Here they should detail what user's they'd like setup and any
important details we should note for working with their organization.

### Manage my organization's contacts

This is for existing, associated users who wish to manage the list of users in
their organization. They should present you with the changes to do. As long as
they are verified to the organization, you should make these changes for them.
Some things to keep in mind while doing the changes:

* If you add any new users, make sure to mention those users will need to do a
  password reset.
* Do not delete users, suspend them! They might get re-added by the ZD<>SFDC
  sync, Zapier auto-association, etc.

### Shared organization requests

These are requests for shared organization setup/management. See the
[Shared Organizations workflow](shared_organizations.html) for more details.

### Support portal questions

These are were general questions about the support portal should go. Do your
best to answer the questions presented in a timely manner.

### Support portal issues

These are reports of issues within the support portal. While each issue can
present unique challenges, the common troubleshooting guide for these would be:

1. Ask the user for commonly needed info:
  * Ask the user to confirm their browser is not blocking third party cookies
    * They might need to whitelist these values:
      * `[*.]zendesk.com`
      * `[*.]zdassets.com`
      * `[*.]gitlab.com`
  * Ask the user to confirm they have deleted all cookies and cache (and
    re-logged in).
  * Ask the user for the browser type being used.
  * Ask the user for the browser version being used.
  * Ask the user for a list of browser plugins being used.
  * Ask the user for a list of browser themese being used.
  * Ask the user for a list of browser extensions being used.
  * Ask the user for the JS Console output.
  * Ask the user for a HAR file.
1. Speak with the rest of the Support Ops team about the ticket.
1. Escalate the issue to Zendesk Support.

### Other

This is a catchall field, meaning there is no specific workflow for requests
using this problem type.
