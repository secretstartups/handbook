---
title: "Supporting GitLab Community Programs"
category: General
description: Instructions for redirecting community programs subscription inquiries
---

GitLab offers several programs to help introduce GitLab's most powerful features to communities who may not otherwise have the means to access them. These include:

- [GitLab for Education](/handbook/marketing/developer-relations/community-programs/education-program/)
- [GitLab for Open Source](/handbook/marketing/developer-relations/community-programs/open-source-program/)
- [GitLab for Startups](/handbook/marketing/developer-relations/community-programs/startups-program/)

[The Community Programs team](/handbook/marketing/developer-relations/community-programs/) is the DRI for these programs.

For registered non-profit organizations, GitLab also offers discounts. Contact GitLab's [Environmental, Social, and Governance (ESG) team](/handbook/legal/esg/#faq) for more information regarding this program.

Use the relevant workflows below when you receive a ticket about [GitLab for Education](https://about.gitlab.com/solutions/education/), [GitLab for Open Source](https://about.gitlab.com/solutions/open-source/) or [GitLab for Startups](https://about.gitlab.com/solutions/startups/).

{{% alert title="Note" color="info" %}}
Program members receive only limited support with subscriptions granted through community programs. They are able to open a support ticket via the [GitLab Support Portal](https://about.gitlab.com/support/#issues-with-billing-purchasing-subscriptions-or-licenses) only for errors involving the Community Self-checkout Portal on CustomersDOT or for errors relating to their subscription. Internal escalations for all three of the programs can be made via Slack channel [`#community-programs`](https://join.slack.com/share/zt-op8hxhoy-V4TBiVh_r41H6uelJeCPfA).
{{% /alert %}}

## Workflows

### Applications and renewals

#### GitLab for Education (EDU)

When a customer seeks to apply or renew an existing subscription, send the [`General::EDU Response`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/General/EDU%20Response.yaml) macro.

#### GitLab for Open Source (OSS)

When a customer seeks to apply or renew an existing subscription, send the [`General::OSS Response`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/General/OSS%20Response.yaml) macro.

#### GitLab for Startups

When a customer seeks to apply or renew an existing subscription, send the [`General::Startup Response`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/General/Startup%20Response.yaml) macro.

### Product Transfer

While redeeming a community program coupon customers may select the wrong product type by accident (SaaS instead of Self-Managed, or vice-versa).

In this case, please direct customers to contact the appropriate inbox under the ['Program-specific contact inboxes' section](#program-specific-contact-inboxes)

#### Example Tickets

- [ZD#382970](https://gitlab.zendesk.com/agent/tickets/382970)

### Organisation not appearing in SheerID list

Please direct customers to contact the appropriate inbox under the ['Program-specific contact inboxes' section](#program-specific-contact-inboxes).

If after several days the customer reports they have not heard back from the Community Programs team, please reassure them and raise the ticket in `#community-programs` (ideally providing the email address the customer contacted the team with).

#### Example Tickets

- [ZD#375293](https://gitlab.zendesk.com/agent/tickets/375293)

### "This code has already been used." error when attempting to redeem coupon

Please raise the ticket in `#community-programs` as the coupon may have been erroneously issued.

#### Example Tickets

- [ZD#379559](https://gitlab.zendesk.com/agent/tickets/379559)

### Customer is concerned by their seat usage or true-ups

While applying, customers are asked to provide their desired seat count - during their subscription term they can exceed this and then upon renewal the true-up cost will be zero (and the overage seats will be added to the renewal term).

## Program-specific contact inboxes

For enquiries relating to specific programs (that aren't otherwise handled by the workflows above), please direct customers to contact:

 1. EDU: `education@gitlab.com`
 1. OSS: `opensource@gitlab.com`
 1. Startups: `startups@gitlab.com`

## Troubleshooting

GitLab's Community Programs team processess program applications according to [an automated workflow](/handbook/marketing/developer-relations/community-programs/community-programs-workflows/#automated-applications-workflow-overview). Review the handbook pages related to that workflow for additional details on how it works.

To troubleshoot errors during the registration process, follow the [Troubleshoot Errors While Making Purchases on CustomersDot document](/handbook/support/license-and-renewals/workflows/customersdot/troubleshoot_errors_while_making_purchases#getting-error-message-from-sentry).

{{% alert title="Note" color="info" %}}
Since the customer has not signed up yet, there is no `user:customerID`. Use `user.ip:CustomerIP` instead.
{{% /alert %}}

You can retrieve `CustomerIP` by:

1. On Zendesk ticket, click on `Conversations`
1. Choose `Events` from the drop down
1. The IP is shown under every customer reply.

{{% alert title="Note" color="info" %}}
The IP is only available when the customer is signed in on Zendesk. If the customer submits the ticket via email, and IP is not available, please ask the customer for the IP they used during the signup process.
{{% /alert %}}

## Example of previous cases

- [ZD Ticket 288871](https://gitlab.zendesk.com/agent/tickets/288871)
- [Related Sentry event 2575450](https://sentry.gitlab.net/gitlab/customersgitlabcom/issues/2575450/events/40335146/)
- [Bug issue](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4288)

## See Also

- [Collaborating with Community Programs (Sales Training)](/handbook/sales/training/sales-enablement-sessions/enablement/collaborating-community-programs/)
