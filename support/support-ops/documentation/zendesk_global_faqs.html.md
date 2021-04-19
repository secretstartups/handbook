---
layout: handbook-page-toc
title: 'Zendesk Global FAQs'
category: 'FAQs'
description: 'Zendesk Global frequently asked questions'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This is a compilation of frequently asked questions (FAQs) for Zendesk Global.

### What to do when Zendesk is not connecting at all?

In the case where you cannot connect to Zendesk, it is best to alert Support-Ops
immediately. It could be a localized problem or a problem with the nodes our
instance lives on!

### I am unable to access part of Zendesk Support for example, Explore?

This is likely a permission issue. It is best to either ping Support-Ops via
slack or via an issue so we can look into this. If you are needing elevated
permissions, an Access Request and manager approval will be required.

### What kind of API limits exist for Zendesk?

Zendesk does have some limits to API, both in terms of rates and endpoints.

For rates, it is limited to 700 requests per minute. This is instance wide.
Keep in mind that when using pagination, each page is a request. For more info
on Zendesk API limits, see their
[Rate limiting documentation](https://developer.zendesk.com/rest_api/docs/support/introduction#rate-limits).

For the endpoints, it varies from endpoint to endpoint. These are pre-determined
by Zendesk, so it is best to review their
[API endpoint limits](https://developer.zendesk.com/rest_api/docs/support/introduction#endpoint-specific-rate-limits).

### I'm removing tags but they keep coming back in a ticket, why is that?

There is likely a trigger, automation, etc. that is adding the tag right back.
To be sure, check the `Events` on the ticket to see what is modifying the tags
after you make your changes. In cases where you cannot determine what is doing
it, hit up Support-Ops so they can dig into it!

### Is there a limitation to the number of personal views I can add and use?

There is, stemming from Zendesk itself. The first 8 personal views are
accessible in the Views list. You can have more, but only the first (top) 8 will
be displayed.

### Is there a way to automatically CC an end-user to all tickets created by an organization?

It is not possible to configure a trigger or automation to automatically CC end users. As an alternative, we can either: 

1. Set up [Shared Organizations](https://about.gitlab.com/handbook/support/support-ops/workflows/shared_organizations.html) to allow all users within an organization to view their organization’s tickets. 
1. We can add in the request to automatically CC another user in the [organization notes](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Add%20Zendesk%20Organization%20Notes%20or%20Tags%20Request) so anyone handling the ticket can see that has been requested. 
1. End-users can request the names/emails to CC on every ticket they raised so agents can manually add them in the CC. 
1. They setup a shared group on their email provider and use that to submit tickets. 

