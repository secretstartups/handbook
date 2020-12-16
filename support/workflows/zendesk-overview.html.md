---
layout: handbook-page-toc
title: Zendesk Overview for Support
category: Zendesk
description: Overview of how Support has set up Zendesk includes Apps, Business Rules, Emails, Organizations, Macros, Reporting and many more.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Zendesk Overview

## Apps

- Public Apps

    - [Unbabel for Zendesk](/handbook/support/workflows/unbabel_translation_in_zendesk.html)
    - [Salesforce](/handbook/support/support-ops/#salesforce---zendesk-sync) - Two-way integration between Zendesk Support ticket data and Salesforce CRM customer data.
    - Advanced Search - Provides a simple visual interface for constructing complex search queries against tickets.
    - Show Related Tickets - Analyzes the ticket subject, searches against all other tickets, and returns any tickets with matching terms.
    - Slack App - Designed to bring all of our customer support interactions into a single place
    - Tag Locker - Allows an administrator to manage and limit which tags can be used by agents or admins on tickets.
- Private Apps
    - 2FA Check
    - Architecture Diagrams
    - Email Supressions
    - Add Issue Comment

All apps can be found on the left-hand nav bar when you view a ticket. The apps order can be changed if needed.

## Business Rules

- [Triggers](/handbook/support/workflows/zendesk-triggers.html)
- [Automations](/handbook/support/workflows/zendesk-automations.html)
- [Service Level Agreements](/handbook/support/workflows/zendesk_admin.html#service-level-agreements)


## Emails

- support@gitlab.zendesk.com (Zendesk Support main address)
- support@gitlab.com
- Emergency email
- renewals@gitlab.com
- security@gitlab.com
- subscribers@gitlab.com
- subscribers@gitlab.zendesk.com
- trials@gitlab.zendesk.com

## Organizations

[Organizations](/handbook/support/workflows/zendesk_organizations_and_users_overview.html) are collections of your users (both customers and Zendesk agents). Users can belong to multiple organizations, up to 300. Organizations help us keep track of what our customers are requesting. We can also enable users within an organization to see each other’s tickets.

## Macros

We use Zendesk Macros as a tool to help support common workflows and allow us to support our customers faster. It's important to find a balance of when and where to use a macro. Read more about how we use macros at GitLab in our [Macros](/handbook/support/workflows/macros.html) page

## Reporting

We currently have 3 reporting tools available:

- Sisense - We use [Sisense](/handbook/business-ops/data-team/platform/periscope/) mostly to track our KPIs
- Explore - Newest Zendesk Reporting tool. Customer analytics toolkit that helps us measure and optimize every interaction a customer has with GitLab.
- Insights/GoodData - Zendesk Legavy reporting tool. Insights is an analytics offering with data and best-practice dashboards. It will be discontinued in the future in favour of Explore, no specific date has been announced.

## Support Operations
- [Customer Satisfaction Survey(CSAT)](/handbook/support/support-ops/#customer-satisfaction-survey-csat)
- [Shared Organizations in Zendesk](/handbook/support/support-ops/responsibilities.html#shared-organizations-in-zendesk)
- [Salesforce - Zendesk sync](/handbook/support/support-ops/responsibilities.html#salesforce---zendesk-sync)
- [PagerDuty](/handbook/support/support-ops/responsibilities.html#pagerduty)
- [Slack Notifications](/handbook/support/support-ops/responsibilities.html#slack-notifications)

## Ticket Fields

Ticket fields are used to gather more information about the support issue. They can be either: Editable by agents only, editable by end-users and agents, and required by end-users.

Most of our ticket fields are filled out by the customer before submitting an issue, however when we receive tickets through email or when the ticket fields are not required, we need to [fill out fields manually](/handbook/support/workflows/working-on-tickets.html#filling-out-fields-on-tickets) before solving them.

The system ticket fields are:

- Name
- Email address
- Subject
- Description
- Priority
- Assignee
- Group
- Type
- Status
    - [Using On-Hold Status](/handbook/support/workflows/working-on-tickets.html#using-on-hold-status)

Our custom ticket fields are:

- GitLab issues
- [Document this](/handbook/support/workflows/improving-documentation.html)
- GitLab.com Email address
- GitLab.com Project Path
- GitLab.com Username
- Hosted Instance Type
- GitLab Version
- GitLab.com Problem Type
- Channel (received at email)
- Subscription Number
- Reason for refund
- Customer Priority
- Self-Managed Problem Type
- Preferred Region for Support
- ARR
- Product Stage
- Transactions and Licensing Issue Type
- Transactions and Licensing - Product
- Requested Dormant username
- GitLab Plan
- Escalated to Sales
- Escalated to Education
- Tell us about your GitLab Subscription
- Tell us about your GitLab Subscription (SM)
- Free Problem Type
- Sales Contact Name
- Company Name
- Company Name (SM)
- Email associated with your GitLab instance
- Email associated with your subscription
- Sales contact email
- Portal bug

## Ticket Forms

A ticket form is a set of predefined ticket fields for a specific support request. The ticket form determines the fields and data a ticket contains. We have different forms:

- GitLab.com
- Self-Managed
- License Renewals and Upgrades
- Accounts Receivable/Refunds
- Security Issue
- Other Request
- GitLab Community Edition (CE) - *Agent only*

## Views

Views help us organize tickets by grouping them into lists based on certain
criteria. The views use are:

* My Assigned Tickets
* Needs Org & Triage
* .com Needs Assignee: MY_REGION+All Regions
* .com with SLA
* .com Accounts, Groups, Login
* Free/Self-Provisioned Trial Support
* SM Needs Assignee: MY_REGION+All Regions
* SM with SLA
* Prospects
* License & Renewals
* First Respnose Hawk
* Areas of Focus Placeholder
* Security
* Suspended Tickets
* Deleted Tickets

Agents and administrators can create their own [personal views](https://support.zendesk.com/hc/en-us/articles/203690806-Creating-views-to-manage-ticket-workflow#topic_vcr_xfp_ec) (up to 8).

## Zendesk Instances

Read more about our Zendesk Instances in this [handbook page](/handbook/support/workflows/zendesk-instances.html).

## Zendesk Administrator

[Zendesk Admin Handbook page](/handbook/support/workflows/zendesk_admin.html)
