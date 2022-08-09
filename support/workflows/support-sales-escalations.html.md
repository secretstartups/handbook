---
layout: markdown_page
title: Sales and Customer Success Escalations
description: "How to escalate from Support to GitLab Sales or Customer Success"
category: Handling tickets
---

## Purpose

There will be instances when Support will need to escalate a ticket to Sales/Customer Success, or bring it to their attention. This page list some of these common scenarios and workflows.

> Note: If you are from Sales/CS and looking to escalate a ticket to Support Management, please use the [`I want to escalate a ticket`](/handbook/support/internal-support/#i-want-to-escalate-a-ticket) workflow instead.

## Escalation Scenarios Mapping

### **Role: Account Owner (AO)**

An Account Owner is usually the customer's main point of contact for any renewal and expansion discussions.

Use the [finding the customer’s account owner](/handbook/support/workflows/looking_up_customer_account_details.html#finding-the-customers-account-owner) workflow to locate the account owner. If there is no one listed, check to see if you can find the latest opportunity owner instead. If neither are available, reach out in the relevant channel without tagging anybody.

|Escalation Scenario|Channel|Relevancy|
|--|--|--|
|[Add a customer to an organization](/handbook/support/workflows/associating_needs_org_tickets_with_orgs.html#adding-a-customer-to-an-organization-all-zendesk-users)|Slack: `#account-management`|Needs Org Workflow|
|[Pass a lead to Sales](/handbook/support/license-and-renewals/workflows/working_with_sales.html#specific-workflows-to-pass-to-sales)|Zendesk: cc @AM, Slack: `#sales` for new business, `#account-management` for renewals|Ticket Workflow: License and Renewals queue|
| [Professional Services engagement request](https://about.gitlab.com/services/)|Slack: `#account-management` @mention AO | Ticket Workflow: All queues|

### **Role: Technical Account Manager (TAM)**

A Technical Account Manager typically manages the customer’s relationship with GitLab. A comprehensive list of services provided by them is listed [here](/handbook/customer-success/tam/services/#responsibilities-and-services).

Since TAMs are assigned based on [certain criteria](/handbook/customer-success/tam/services/#tam-alignment), you might not find a TAM listed for every customer. For those that do have a TAM assigned, follow the same process as above on SFDC, but look at the `Technical Account Manager` field instead.

|Escalation Scenario|Channel|Relevancy|
|--|--|--|
|Make TAM aware of Emergency and/or High Priority tickets|Zendesk: cc @TAM, Slack: @mention TAM|Ticket Workflow: All queues|
|Involve TAM if a customer requested an escalation on the ticket|Zendesk: cc @TAM, Slack: @mention TAM|Ticket Workflow: All queues|
|Involve TAM if a customer files a ticket requesting [upgrade assistance](/handbook/support/workflows/upgrade-assistance.html#the-process) but there is no corresponding internal issue|Zendesk: cc @TAM, Slack: @mention TAM|Ticket Workflow: Self Managed|
|Involve TAM if we identify a need for training a user from customer’s end, or, if customer requests for it directly|Zendesk: cc @TAM, Slack: @mention TAM|Ticket Workflow: All queues|
|Make TAM aware of tickets which require managing customer relationship due to expectations mismatch|Zendesk: cc @TAM Slack: @mention TAM|Ticket Workflow: All queues|
|[Add a customer to an organization](/handbook/support/workflows/associating_needs_org_tickets_with_orgs.html#adding-a-customer-to-an-organization-all-zendesk-users)|Slack: #account-management|Needs Org Workflow|

#### Resources

- [TAM Responsibilities and Services](/handbook/customer-success/tam/services/#tam-alignment)
- [Customer Success Escalations Process](/handbook/customer-success/tam/escalations/index.html)
