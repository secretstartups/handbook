---
layout: handbook-page-toc
title: Ensuring correct SLA and Zendesk views
description: "A walk through of verifying and if needed, correcting the SLA on tickets, and visibility in the correct Zendesk view."
category: Handling tickets
subcategory: Triaging
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Purpose of this page

Assuming a ticket has:

- been [triaged](ticket_triage.html), and
- has [the correct org associated](associating_needs_org_tickets_with_orgs.html),

then we need to ensure the ticket:

- has the correct SLA, and
- shows in the correct Zendesk (ZD) view.

## Appropriate SLA by plan

Tickets should have the appropriate SLA according to the [support service levels](/support/#gitlab-support-service-levels).

Some values for `GitLab Plan` for ZD organizations (called `Support Level` in SFDC)
do not receive a SLA if they are linked to a service level. These are not expected to have SLA:

- `Community`. [EDU](/solutions/education/) and [OSS program](/solutions/open-source/) do not include Support, but are in SFDC and synced.
- `Expired`. Former customer with expired subscription. If you believe this is incorrect, see [Handling customers with incorrect expired support](#handling-customers-with-incorrect-expired-support).
- `Hold`. This is rarely used and indicates delayed payment or another issue with the sales process.
Consider contacting the Account Owner (Manager) to clarify the customer's status.

![Checking the value of GitLab Plan](/images/handbook/support/zendesk_check_org_fields.gif)

### Organization exists in SFDC but support level does not match Zendesk

Note that we have [an ongoing issue](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/634)
that causes a lot of accounts to be incorrectly shown as `Expired` in SFDC.
See the [Handling customers with incorrect expired support](#handling-customers-with-incorrect-expired-support) section for these cases.

In other cases where there is a mismatched `Support Level` in SFDC and `GitLab Plan` in Zendesk,
you can follow a similar process as the [expired support process](#handling-customers-with-incorrect-expired-support).

However, if you're unsure, it may indicate a potential problem with the SFDC -> ZD sync.
Open an issue in the
[support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/issues/new).

### Handling customers with incorrect expired support

If you believe a customer marked as `Expired` support and `Former Customer` is in fact a current paying customer,
follow this process to verify and fix the issue.

1. Open [Salesforce](/handbook/support/workflows/looking_up_customer_account_details.html#within-salesforce) and find the customer in question.
1. Click `Show feed` button at the upper part of the page.

  ![SFDC show feed](/images/handbook/support/sfdc_show_feed.png)

1. Send a message there asking to clarify the customer's status and mention
  `@Sales-Support` username in SFDC, they should be able to help with such cases.
  Make sure that `@Sales-Support` is converted into clickable username, otherwise
  Sales Support team will not get your message (see the GIF below):

  ![Pinging Sales-Support in SFDC](/images/handbook/support/sfdc_sales_support.gif)

  Example of the message:

  ```plaintext
  John Doe (Support Engineer): @Sales-Support, this organization has
  Support Level set to Expired, and they opened a new ticket. Can you clarify if
  the support is really expired and if we should decline support for this customer, or
  this is some kind of error and Support Level should be updated? Customer also
  provided screenshot of their license and it seems valid.
  ```

  Prepending your message with your name and role (e.g. `John Doe (Support Engineer):`
  helps as everyone in Support is using a shared account so it is not possible to
  deduce who sent which message.
1. Once you follow the above procedure, mention that in the internal note of the
ticket (with SFDC link) so that others can pick up from where you
left off.

**Note:** the same workflow applies if you notice that customer-related
information is not up-to-date on SFDC side and you are not able to update it
using our generic `Support Admin` account.

#### Fixing tags for tickets with `Expired` organization

This part should be done in combination with the above section to fix future tickets.

If data in SFDC or
[CustomersDot](looking_up_customer_account_details.html#within-customersgitlabcom) show
that the customer has a valid subscription you should update the ticket in Zendesk side.

For the specific ticket:

1. Find `Tags` field where all the tags are listed.
1. Click `x` next to `former_customer` and `expired` tags to remove them.
1. Start typing the appropriate tag name and select the appropriate tag.
  - For example, if it is a customer with Bronze subscription, type `bronze` in `Tags` field.
1. After making sure that tags are updated correctly, submit the ticket to apply the changes.

![Updating tags in a ticket](/images/handbook/support/zendesk_updating_tags.gif)

**Note**: When you assign a tag, there is a chance that the ticket will breach immediately.
It is not strictly necessary but, if possible, send a public reply before
you assign tags to prevent breach. Or, write your public reply and apply the tags,
to submit the ticket with both changes at the same time.

#### Verifying that the ticket now has the proper SLA applied

Now that you've added the appropriate domain, head back to your original ticket
and verify that it is associated with the appropriate organization and SLA.

![Verifying SLA](/images/handbook/support/zendesk_needs_org-verifying-sla.png)

#### Example: full sequence of actions that should be done to fix incorrectly expired organization

- A ticket comes to Zendesk and you spot that `GitLab Plan` is shown as `Expired`.
- First, search for [any info about this organization](looking_up_customer_account_details.html) in SFDC and CustomersDot.
- If you found that they have a valid license or subscription i.e. it is not expired, you are likely facing [this issue](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/634).
- Fix SFDC side first by following [the steps above](#handling-customers-with-incorrect-expired-support).
  Sales Support will usually reply to your message in SFDC, and you will be able to see it in the feed at the organization's page there.
  `GitLab Plan` value on Zendesk side will change from `Expired` to the valid one after the sync is done.
  After that new tickets from this organization will be shown correctly.
- Fix the tags in the ticket you are working using [these steps](#fixing-tags-for-tickets-with-expired-organization). Note that
  you do not need to wait for fix on SFDC side, you may fix the tags right away. SLA will appear in the ticket after doing it.
- Update the ticket with the internal comment describing what was done.

## No SLA

Check the [SLA by plan](#appropriate-sla-by-plan) for a list of types that do not receive SLA.
Otherwise, the lack of SLA may be one of the following cases.

### Last public reply by agent

Tickets do not have a SLA if the latest public reply is from a Zendesk Agent (Support member).
The ticket should be assigned to someone, and there should be nothing to fix.

### Customer reply from email address not associated with ticket

When a customer responds to a ticket from an email address that is not included in CC or is not the original requester, the customer's response is recorded as internal.
There is a [trigger](https://gitlab.zendesk.com/agent/admin/triggers/360019008340/revisions/3)
which sends an internal note to remind people to do it, see [this issue](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/1581) for more details.

If the email is obviously the original requester, you can [merge the users](https://support.zendesk.com/hc/en-us/articles/203690896-Merging-a-user-s-duplicate-account).

Alternatively, add the email of the customer to CC.

Please reply (or let the assignee know), including a note to let the customer that a CC has been added to the ticket. For example:

> We got a note from John with email address john@domain.org. From the context it looks like they should be included in the ticket, so for convenience I added them to the CC list. If they shouldn't be included, please let us know so we can remove them.`

After that, the cc'ed user's next replies will not be marked as internal anymore.

## Ticket views

Tickets should show in the [appropriate view(s)](/handbook/support/support-ops/documentation/zendesk_global_views.html).

### Organizations with multiple subscriptions

When a ticket is initially created or an org is first tied, the ticket will receive all tags associated with the org.

This means that orgs with multiple subscription related SLA tags (such as `silver` and `premium`),
the ticket will show up in multiple views.

Remove the [SLA tag](/handbook/support/support-ops/documentation/zendesk_global_tags.html) that does not apply for the ticket.

If you find an org with multiple active subscriptions and it's missing the appropriate tag(s):

1. File an issue to [edit the org tags and note](/handbook/support/support-ops/documentation/zendesk_global_organizations.html#what-if-an-organization-has-multiple-subscriptions).
1. Manually change the ticket's tags to have the correct [SLA tag](/handbook/support/support-ops/documentation/zendesk_global_tags.html).
1. Link the support ops issue and note the manual change as an internal note on the ticket.

### Priority prospects showing in multiple views

By default, `priority_prospect` tagged tickets will be shown in both SM and GitLab.com views.

To make it visible only in the appropriate view, add either `prospect_saas` or `prospect_sm` tag to the ticket.

### Wrong queue

In cases where a ticket is showing in the wrong queue:

1. Ensure that the ticket has [the correct form](ticket_triage.html).
1. If the [priority prospect tag is present, follow instructions above](#priority-prospects-showing-in-multiple-views).
1. If it looks to be a valid customer or there are multiple [SLA tags](/handbook/support/support-ops/documentation/zendesk_global_tags.html),
follow the [multiple subscription org instructions](#organizations-with-multiple-subscriptions).
1. If the customer only has a single subscription and *not* one related to the form they selected:
  1. Remove the [SLA tag](/handbook/support/support-ops/documentation/zendesk_global_tags.html).
  1. Follow the [identifying customers instructions](associating_needs_org_tickets_with_orgs.html#identifying-customers) and treat as a `prospect`.

## Get help

If there's anything that doesn't fit in the relevant workflows, you can investigate and try to fix it.

> **Important**: Always leave internal comments when doing something on the SFDC side or modifying some tags in Zendesk.
It will help the next engineer to understand what was done in the ticket.

If you have any questions, please ask in the #support_operations Slack channel.
