---
layout: handbook-page-toc
title: Working with federal tickets
category: Handling tickets
description: "Support Engineering workflow detailing how to work on US Federal Tickets"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Working on US Federal Tickets

Support Engineers with [access](#access-limited-to-us-citizens) to the
[US Federal Zendesk Instance](/handbook/support/workflows/zendesk-instances.html)
should monitor the Slack channel `#feed_zd-federal` for a feed of tickets that need
to be addressed. When a ticket has been addressed, please consider leaving a checkmark
on the feed notification on that ticket.

When a Support Engineer is working an on-call shift for the US Federal Zendesk Instance,
that Engineer should monitor the instance during that shift. 

## Access limited to US Citizens

Only our US Citizen Support Engineers have access to the
[US Federal Zendesk Instance](/handbook/support/workflows/zendesk-instances.html). 

## Communication Guidelines

Issues relating to tickets received in the US Federal Zendesk Instance may be discussed outside of the federal instance with caveats.  Identifying information that includes system names, organisation names, customer names, specific infrastructure details and logfiles should be limited to internal tickets. Technical problem specifics are fine to discuss in chat or forums. When in doubt, ask a manager or the customer's TAM if the information is acceptable to be communicated to non-US citizens. 

For any assistance with log review or confidential information within a ticket please CC other engineers with access to the federal instance within Zendesk using an internal comment.

When pairing over video chat, be sure you only pair with engineers that have access to the federal
instance and avoid screensharing.

## Getting help with a ticket

To quickly draw attention to a US Federal Instance ticket, locate the ticket in the Slack channel
`#feed_zd-federal` and ping the Support Engineers that have access with the Slack alias `@support-us-federal-team`
in a thread.

You can still ask general questions to our Global Support Team regarding tickets to benefit from other team members'
expertise, as long as you don't mention that a Federal customer is experiencing an issue related to the topic of your
question and without mentioning the name of the Federal Customer experiencing the issue. No discussions regarding the
ticket should happen in Slack or GitLab issues.

If you need a manager's help with a ticket, please keep in mind that only US Citizens have access to our US Federal
Instance, which means that some of our managers cannot help you with tickets. If you are a US Citizen and your manager
isn't, please feel free to reach out to a different manager.

The volume of tickets in our US Federal Instance is way lower than our main instance, so we have set up a trigger that
sends a Slack message to `#feed_zd-federal` whenever a new ticket is created, so that the instance doesn't have to be
monitored by our engineers all the time. The Slack message doesn't contain any customer identifying information. It just
informs our team that a new ticket has been created and gives the name of the Technical Account Manager of the organization
that created the ticket.
