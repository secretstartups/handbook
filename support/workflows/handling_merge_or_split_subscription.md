---
layout: handbook-page-toc
title: Handling Mergeing or Splitting Subscription Request
category: License and subscription
--

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

This is a detail guide of how to handle requests to merge or split subscription(s).

**Short answer: No, support do not merge or split subscription(s). We cannot even if we want to.**

### Merging subscriptions

Generally, we do not support mixed license or multiple subscriptions for a single GitLab instance or GitLab.com group. Only one license can be used on a GitLab instance at a time; similarly, only one subscription can be associated to a GitLab.com group namespace at a time. If customers have multiple subscriptions and they wish to use the subscription on a GitLab instance/GitLab.com group, the latest subscription needs to be submitted as add-on to the existing subscription.

It's not possible to merge the subscriptions if the opportunity in SFDC were both submitted as `New Business`.

[Opportunity Type](/images/support/opportunity_type.png)

If there are two opportunity for two separate subscriptions and the customer requires one license for both of the opportunity, the latest opportunity will need to be credited via a credit opportunity and a new opp will need to be submitted as an add-on to the already existing opportunity for the already existing subscription. For any further questions around the opportunities please reach out to the Sales Support team.

Example case: https://gitlab.zendesk.com/agent/tickets/162478 (internal)

### Splitting subscription

This is quite similar but reverse to merging the subscriptions. If customer purchase multiples seats and wish to use those seats in a subscription to multiple GitLab instances or multiple GitLab.com groups, they would need two different subscriptions.

Example case: https://gitlab.zendesk.com/agent/tickets/126634 (internal)
More context: https://gitlab.com/gitlab-com/support/internal-requests/-/issues/450#note_192403894

### How to move the ticket forward

To move the ticket forward:
1. Search for the relevant Opportunity Owner in SFDC
1. Let the customer that we are handling the issue internally while copying the account owner (Opportunity Owner) on the ticket
1. Ping the Opportunity Ower in [#support_sales_escalation](https://gitlab.slack.com/archives/C011JT165J5)
