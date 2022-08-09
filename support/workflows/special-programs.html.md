---
layout: handbook-page-toc
title: "GitLab Special Programs: EDU, OSS and GitLab for Startups"
category: License and subscription
description: Redirecting EDU, OSS or Startups subscription inquiries.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

##### Overview

We do not offer any non-profit discounts or programs, but users can apply for our special programs if they meet the requirements.

Use the relevant workflow below when there's a ticket about [GitLab for Education](https://about.gitlab.com/solutions/education/), [GitLab for Open Source](https://about.gitlab.com/solutions/open-source/) or [GitLab for Startups](https://about.gitlab.com/solutions/startups/).

Note that our special programs do not include support, but support can be purchased additionally for the Open Source and Startups programs. Internal escalations for all three of the programs can be made via Slack channel [#community-programs](https://join.slack.com/share/zt-op8hxhoy-V4TBiVh_r41H6uelJeCPfA).

---

##### GitLab for Education (EDU) Workflow

1. When a customer is looking to apply or renew their existing EDU subscription, send the [`General::EDU Response`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/General/EDU%20Response.yaml) macro.

##### GitLab for Open Source (OSS) Workflow

1. When a customer is looking to apply or renew their existing OSS subscription, send the [`General::OSS Response`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/General/OSS%20Response.yaml) macro.

##### GitLab for Startups Workflow

1. When a customer is looking to apply or renew their existing Startup subscription, send the [`General::Startup Response`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/General/Startup%20Response.yaml) macro.


### Troubleshooting

[GitLab for Open Source](https://about.gitlab.com/solutions/open-source/) uses an automated [application process](https://about.gitlab.com/solutions/open-source/join/) that emails an instruction and link, to claim the OSS plan, to the qualified organization.

After being approved, users must sign up on the GitLab Customers Portal before they can claim their plan.

To troubleshoot errors during the sign up process, follow the [Troubleshoot Errors While Making Purchases on CustomersDot document](/handbook/support/license-and-renewals/workflows/customersdot/troubleshoot_errors_while_making_purchases.html#getting-error-message-from-sentry). **NOTE:** Since the customer has not signed up yet, there is no `user:customerID`. Use `user.ip:CustomerIP` instead.

You can retrieve `CustomerIP` by:

1. On Zendesk ticket, click on `Conversations`
1. Choose `Events` from the drop down
1. The IP is shown under every customer reply.

**NOTE:** The IP is only available when the customer is signed in on Zendesk. If the customer submits the ticket via email, and IP is not available, please ask the customer for the IP they used during the signup process.

**example of previous cases**

- [ZD Tiket 288871](https://gitlab.zendesk.com/agent/tickets/288871)
- [Related Sentry event 2575450](https://sentry.gitlab.net/gitlab/customersgitlabcom/issues/2575450/events/40335146/)
- [Bug issue](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/4288)

