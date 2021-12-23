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

#### Incorrect initial form tickets

When a ticket is filed using the incorrect form, agents will use the
`General::Forms::Incorrect form used` macro. This will change the form to our
form, tag the ticket, and leave an internal note. From there, we are expected
to review the ticket and resolve the problem.

To do this, the best approach is often to create a new ticket for the customer
using the correct form. When doing this, review the original ticket to best
determine which form to use (if you are unsure, reach out to a Support Manager
or Support Ops Manager for assistance).

**Notes**: 

1. If the ticket needs to undergo the Needs-Org process, please do that
in the original ticket first. We want the new ticket to be as ready to be
worked as possible, and starting a new ticket we created for an end-user with
the Needs-Org process is not a great customer experience.
1. If you determine the ticket is from a free or community user, there is no need to create a new ticket. Instead, simply change the form to the appropriate support form and ensure the SaaS/Self-managed Subscription is set to 'Free User'. This will ensure the ticket will have no SLA and will be visible in the [Free user tickets](https://gitlab.zendesk.com/agent/filters/360038103100) view. 

Once you determine the correct form, you should review what ticket fields that
form uses and what information is missing. In the original ticket, leave an
internal comment saying which form needed to be used and what data is missing.
Any of the data you can determine based on the original ticket is a
plus, as it will skip needing to ask the customer to reply with that
information in the new ticket. An example note could be:

> The correct form should have been Self-Managed.
> 
> The missing data is:
>
> * Self-Managed Problem Type
> * GitLab Install Type
> * GitLab Version

Once you have noted the original ticket, create the new ticket using the
correct ticket form. Make sure to file the ticket using
https://support.gitlab.com/hc/en-us/requests/new (you may need to use a
different browser or an incognito window) so the first reply is from the
original requester and not an agent (this ensures it gets the FRT SLA). Make
sure to fill in as much of the information as is possible. For any information
you do not readily know, do your best to guess for the time being.

Some notes to help in filing the ticket properly:

* The subject of the ticket should be the _exact_ same as the original ticket.
* The description should be in the format:
  > Greetings <NAME_OF_ORIGINAL_REQUESTER>,
  >
  > Recently you filed ticket #<ID_OF_ORIGINAL_TICKET> with us. Sadly, it was
  > using the incorrect form and was filed incorrectly on our end. To help
  > clear that up and get you working with the correct team, we are filing this
  > new ticket on your behalf.
  >
  > During our review of ticket #<ID_OF_ORIGINAL_TICKET>, we did find some
  > needed information was missing. Please comment back as soon as possible
  > with the following information:
  >
  > <LIST_OF_MISSING_DATA>
  >
  > While we review your ticket, here is some other data you could also send
  > that is often helpful to us:
  >
  > * A GitLabSOS report (https://gitlab.com/gitlab-com/support/toolbox/gitlabsos/) if you are using Omnibus
  > * A KubeSOS report (https://gitlab.com/gitlab-com/support/toolbox/kubesos/) if you are using Kubernetes
  >
  > Your original request's ticket description was as follows:
  >
  >
  > <DESCRIPTION_FROM_ORIGINAL_TICKET>
* Markdown does not work for customer filed tickets. Try to limit the markdown
  used to markdown that will still render properly in plaintext

Once the new ticket is created, notate the original ticket and send the
following reply:

> Greetings {{ticket.requester.first_name}},
>
> Sadly, this ticket was filed using the incorrect form and was routed
> incorrectly on our end. To help clear that up and get you working with the
> correct team, we have filed a new ticket on your behalf: #<ID_OF_NEW_TICKET>
>
> To avoid confusion, we will be closing this ticket out.

After doing so, mark the original ticket as solved.
