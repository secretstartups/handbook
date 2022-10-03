---
layout: handbook-page-toc
title: "Supporting GitLab Community Programs"
category: License and subscription
description: Instructions for redirecting community programs subscription inquiries
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Overview

GitLab offers several programs to help introduce GitLab's most powerful features to communities who may not otherwise have the means to access them. These include:

* [GitLab for Education](/handbook/marketing/community-relations/community-programs/education-program/)
* [GitLab for Non-Profits](/handbook/marketing/community-relations/community-programs/education-program/#gitlab-for-non-profits)
* [GitLab for Open Source](/handbook/marketing/community-relations/opensource-program/)
* [GitLab for Startups](/handbook/marketing/community-relations/startups-program/)

GitLab does not offer non-profit discounts or programs; however, users can apply to these community programs to receive Ultimate benefits if they meet the requirements. [The Community Programs team](/handbook/marketing/community-relations/community-programs/) is the DRI for these programs.

Use the relevant workflows below when you receive a ticket about [GitLab for Education](https://about.gitlab.com/solutions/education/), [GitLab for Open Source](https://about.gitlab.com/solutions/open-source/) or [GitLab for Startups](https://about.gitlab.com/solutions/startups/).

**Note:** Program members receive only limited support with subscriptions granted through community programs. They are able to open a support ticket via the [GitLab Support Portal](/support/#issues-with-billing-purchasing-subscriptions-or-licenses) only for errors involving the Community Self-checkout Portal on CustomersDOT or for errors relating to their subscription. Internal escalations for all three of the programs can be made via Slack channel [`#community-programs`](https://join.slack.com/share/zt-op8hxhoy-V4TBiVh_r41H6uelJeCPfA).
{: .alert .alert-info}

## Workflows

### GitLab for Education (EDU)

When a customer seeks to apply or renew an existing subscription, send the [`General::EDU Response`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/General/EDU%20Response.yaml) macro.

### GitLab for Open Source (OSS)

When a customer seeks to apply or renew an existing subscription, send the [`General::OSS Response`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/General/OSS%20Response.yaml) macro.

### GitLab for Startups

When a customer seeks to apply or renew an existing subscription, send the [`General::Startup Response`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/General/Startup%20Response.yaml) macro.

## Troubleshooting

GitLab's Community Programs team processess program applications according to [an automated workflow](/handbook/marketing/community-relations/community-programs/automated-community-programs/). Review the handbook pages related to that workflow for additional details on how it works.

To troubleshoot errors during the registration process, follow the [Troubleshoot Errors While Making Purchases on CustomersDot document](/handbook/support/license-and-renewals/workflows/customersdot/troubleshoot_errors_while_making_purchases.html#getting-error-message-from-sentry).

**Note:** Since the customer has not signed up yet, there is no `user:customerID`. Use `user.ip:CustomerIP` instead.
{: .alert .alert-info}

You can retrieve `CustomerIP` by:

1. On Zendesk ticket, click on `Conversations`
1. Choose `Events` from the drop down
1. The IP is shown under every customer reply.

**Note:** The IP is only available when the customer is signed in on Zendesk. If the customer submits the ticket via email, and IP is not available, please ask the customer for the IP they used during the signup process.
{: .alert .alert-info}

## Example of previous cases

- [ZD Tiket 288871](https://gitlab.zendesk.com/agent/tickets/288871)
- [Related Sentry event 2575450](https://sentry.gitlab.net/gitlab/customersgitlabcom/issues/2575450/events/40335146/)
- [Bug issue](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4288)
