---
layout: handbook-page-toc
title: 'Zendesk Global Ticket Fields'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global ticket fields'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Ticket fields are the items within a ticket form that contains various metadata for the ticket.

## Ticket field management

Instead of managing Zendesk ticket fields via Zendesk itself, we instead use GitLab
itself via the
[ticket-forms-and-fields project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/ticket-forms-and-fields).
This allows us to have version-controlled ticket fields. For more information on
managing Zendesk via the various GitLab projects, please review
[Using the sync repos](sync_repos.html).

### Current active ticket fields

| ID | Name | Type | Purpose |
|:--:|------|------|---------|
| 23378203 | [Subject](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/23378203) | System | The subject of the ticket |
| 23378213 | [Description](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/23378213) | System | The description of the ticket |
| 23378223 | [Status](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/23378223) | System | The ticket's status |
| 23378233 | [Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/23378233) | System | The ticket's type |
| 23378243 | [Priority](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/23378243) | System | The ticket's priority |
| 23378253 | [Group](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/23378253) | System | The ticket's assigned group |
| 23378263 | [Assignee](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/23378263) | System | The ticket's assigned agent |
| 360009152259 | [Professional Services Issues Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360009152259) | Dropdown | The type of issue for ProServ tickets |
| 360005182220 | [Self-Managed Subscription](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360005182220) | Dropdown | The subscription of the SM customer |
| 4414446722578 | [SGG](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/4414446722578) | Dropdown | The support global group |
| 44087827 | [SaaS Problem Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/44087827) | Dropdown | The problem type for SaaS tickets |
| 360019182099 | [Disable Task Notifications](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019182099) | Checkbox | If the agent wants due date notifications disabled on the ticket |
| 360020614420 | [Area of Focus](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020614420) | Dropdown | The area of focus of the ticket |
| 360023727899 | [Using reference architecture?](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360023727899) | Dropdown | If the instance is using reference arch or not |
| 360020735259 | [Ticket Stage](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020735259) | Dropdown | The stage the ticket is at |
| 360019377180 | [Portal Problem Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019377180) | Dropdown | The type of issue for customerDot related tickets |
| 360021207840 | [GitLab Starting Version](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360021207840) | Regex | The version the instance is starting at |
| 24032033 | [GitLab Issues](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/24032033) | Textarea | gitlab.com issues involved with the ticket |
| 33257507 | [Document this](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/33257507) | Checkbox | Used in documentation issue generation |
| 360018253094 | [Preferred Region for Support](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360018253094) | Dropdown | The region the customer would prefer support in |
| 360017385259 | [Runner Version](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360017385259) | Regex | The version of the gitlab runner |
| 43970347 | [GitLab Version](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/43970347) | Regex | The version of the SM gitlab instance |
| 360005879599 | [Special GitLab Program inquiries](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360005879599) | Dropdown | The special program involved with the ticket |
| 360008828213 | [Reason For Refund](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360008828213) | Dropdown | The reason for the refund |
| 360005243959 | [Company Name](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360005243959) | Text | The customer's company's name |
| 360020614460 | [Confirm security risk](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020614460) | Checkbox | A checkbox for the user to confirm the security risks involved with shared orgs |
| 360004394559 | [GitLab Plan](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360004394559) | Dropdown | The plan of the ticket (derived from the organization) at the time of creation/association |
| 360021324099 | [Target GitLab Version](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360021324099) | Regex | The planned version to upgrade to |
| 360020735299 | [GitLab Learn subscription](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020735299) | Dropdown | The type of GitLab Learn subscription |
| 360005835080 | [True-up troubleshooting](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360005835080) | Dropdown | The type of true-up issue involved |
| 360005878859 | [L&R: License troubleshooting](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360005878859) | Dropdown | The type of license issue involved |
| 360005183820 | [Sales contact name](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360005183820) | Text | The sales person involved |
| 360005241679 | [SaaS Subscription](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360005241679) | Dropdown | The SaaS subscription as defined by the customer |
| 360020614480 | [Shared Org Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020614480) | Dropdown | The type of shared org desired |
| 360020735319 | [Customer Severity (maps to priority, do not change)](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020735319) | Dropdown | The ticket severity as defined by the customer |
| 360019755100 | [Product/process note](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019755100) | Textarea | Notes on the product/process involved |
| 360019949920 | [Unauthorized user](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019949920) | Text | The non-authorized user who replied on a ticket |
| 360020614500 | [Shared org user list](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020614500) | Textarea | The list of users for shared org requests |
| 360020464233 | [Product Stage](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020464233) | Multiselect Dropdown | The product stage of the ticket involves |
| 360020735339 | [Request for CCs](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020735339) | Textarea | The CCs a user wants on their ticket |
| 360011793260 | [SaaS Account Problem Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360011793260) | Dropdown | The problem type for SaaS Account tickets |
| 360019683440 | [Document Links Reviewed](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019683440) | Textarea | A list of documents reviews before contacting support (for partners) |
| 360019755120 | [Other (Licensing) Note](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019755120) | Textarea | A note about what other means on L&R tickets |
| 360004445300 | [Escalated to Sales](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360004445300) | Checkbox | If the ticket has been escalated to sales |
| 360020288373 | [Ticket ARR](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020288373) | Decimal | The ARR of the ticket at time of creation/association |
| 360017383799 | [Due Date Notes](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360017383799) | Textarea | Notes on what to do on the due date |
| 360017156474 | [Self-managed Problem Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360017156474) | Dropdown | The problem type for SM tickets |
| 360019377020 | [Invoice Problem Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019377020) | Dropdown | The type of problem with a invoice |
| 360004257919 | [Requested Namespace](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360004257919) | Text | The namespace desired for namesquatting requests |
| 360007406719 | [GitLab Install Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360007406719) | Dropdown | The install type for the gitlab instance |
| 360020735359 | [Billing/AR Team](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020735359) | Dropdown | If the ticket is for the Billing or AR team |
| 360019920259 | [AR Problem Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019920259) | Dropdown | The problem type for AR tickets |
| 360015181699 | [SaaS Runner Install Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360015181699) | Dropdown | The runner install type for SaaS tickets |
| 360019166340 | [System bugs & Incidents](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019166340) | Dropdown | Where the bug is stemming from |
| 360014776453 | [Customer Priority](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360014776453) | Dropdown | The priority the customer perceives the issue as |
| 360012167559 | [Organization Name (partners)](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360012167559) | Text | The customer's company's name for partners |
| 360020614540 | [Support Ops Problem Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020614540) | Dropdown | The problem type for Ops tickets |
| 360008812434 | [Subscription Number](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360008812434) | Text | The subscritpion number |
| 4413932829586 | [Impacted email address](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/4413932829586) | Text | The email address impacted by the issue of the ticket |
| 360015090839 | [Partner Organization Name](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360015090839) | Text | The name of the partner |
| 360012194200 | [Organization Email (partners)](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360012194200) | Text | The organization's email for partner tickets |
| 360012167579 | [Customer Name (partners)](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360012167579) | Text | The customer's name for partner tickets |
| 360012194220 | [Partner troubleshooting](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360012194220) | Textarea | Where a partner puts what troubleshooting they did |
| 360005878959 | [Trial - related inquiries](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360005878959) | Dropdown | The categorey of trial request |
| 360012882099 | [L&R Product Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360012882099) | Dropdown | The product type for L&R tickets |
| 360007388340 | [Self-Managed Runner Install Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360007388340) | Dropdown | The runner install type for SM tickets |
| 360005693879 | [Portal Bug](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360005693879) | Checkbox | If the ticket is about a portal bug |
| 360017323960 | [SaaS Free Problem Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360017323960) | Dropdown | The problem type for free SaaS tickets |
| 360005248199 | [Subscription Email](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360005248199) | Text | The email of the subscription |
| 360019506119 | [Billing Issue Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019506119) | Dropdown | The problem type for billing tickets |
| 360019378120 | [Credit Card Problem Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019378120) | Dropdown | The type of problem when using credit cards |
| 360023497420 | [2FA Confirmation](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360023497420) | Checkbox | A confirmation checkbox for 2FA tickets |
| 360017699279 | [Billing Problem Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360017699279) | Dropdown | The problem type for Billing tickets |
| 43892688 | [GitLab.com Username](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/43892688) | Regex | The gitlab.com username |
| 360005189080 | [Email associated with your GitLab instance](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360005189080) | Text | The email associated to the subscription |
| 360005248219 | [Sales contact email](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360005248219) | Text | The email of the sales person involved |
| 360019506139 | [Refund Problem Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019506139) | Dropdown | The reason for the refund request |
| 360020421853 | [Transactions Issue Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360020421853) | Dropdown | The problem type for L&R tickets |
| 360012705760 | [Product transfer request](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360012705760) | Dropdown | The product the ticket is about changing to |
| 360019507939 | [Complaint problem type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019507939) | Dropdown | If the billing complaint is external or internal |
| 360012709859 | [Sales assistance required](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360012709859) | Dropdown | If sales assistance is required for the ticket |
| 43891688 | [GitLab.com Project Path](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/43891688) | Regex | The namespace path on gitlab.com |
| 360019970799 | [Consumption Problem Type](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360019970799) | Dropdown | The problem type for consumption tickets |
| 45195248 | [Channel (Received at email)](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/45195248) | Dropdown | How the ticket was created |
| 360012709879 | [L&R: Documentation/Training](https://gitlab.zendesk.com/admin/objects-rules/tickets/ticket-fields/360012709879) | Checkbox | If the L&R ticket is about documentation or training |
