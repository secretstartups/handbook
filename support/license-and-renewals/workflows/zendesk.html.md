---
layout: handbook-page-toc
title: Zendesk Workflows
category: General
description: This page is about Zendesk workflows for L&R.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

This page outlines workflows relevant to folks using the `L&R` form in Zendesk. 

## Working on tickets

### Assignment and hot queue model

We accept that tickets in the L&R queue may require a different approach than tickets in other queues. Acknowledging and drawing inspiration from the [existing Working on Tickets workflow](/handbook/support/workflows/working-on-tickets.html), we have opted to adopt a "hybrid model". The hybrid model has an emphasis on assignment of tickets, while also allowing a "hot queue" (i.e taking the next-to-breach ticket from the top of the queue) methodology.

### The workflow

1. Start at the top of your own view and work on next-to-breach tickets that are assigned to you
1. Check the main view for New tickets in your region or all regions of preferred support
1. If you are able to make a public reply on the ticket, do so, assign the ticket to yourself, and complete the form data
1. If there is a New ticket that will breach in your timezone, but it is not in your region or all regions of preferred support, make a public reply if you can and leave the ticket unassigned
1. If there are Open tickets that are unassigned, with all regions or your region of preferred support, assign to yourself, complete the form data, and make a public reply if you can
1. If you are not able to make a public reply, please ask for assistance from your colleagues to drive the ticket forward
1. If there is an Open ticket that is assigned to someone outside of your timezone and the ticket will breach before the start of their working hours, make a public reply if you can and let them know if you have done so via Slack

## Zendesk form data overview

On the left sidebar in Zendesk in the ticket view, every form has data fields unique to that form. These data fields tell us more about the ticket, from the tags to the ticket type, the ARR and the information the customer filled out when submitting the ticket.

In L&R, the tickets that come into our queue are of interest to teams outside of Support. Therefore, it's important that we gather accurate data about the tickets that we interact with. The form data completed on each ticket is taken into account for existing metrics dashboards and for any future data queries we may want to make. For examples of metrics dashboards that rely on L&R ticket data see the [L&R Dashbaord](https://gitlab.zendesk.com/explore/dashboard/CE496B0DE0C45903F2C8FFEE0ABA251DE82217E689B59F3FC62A23D3E7C592AD) and the [Support Metrics Dashboard](https://gitlab.zendesk.com/explore/dashboard/36925DBD1F5E3C7BA541DB38D11AC51E0EAAFDD30DCB63FDE83CF1389E555D96/tab/10638812).

## Zendesk form data guideline

Completing ticket data can be a very subjective process - the ticket might arguably be about two different things and it's up to the engineer to decide how to best categorise the ticket. It's more important to complete the data than to be objectively correct about what type of ticket it is.  

Two ways of thinking about ticket data selection:

1. What is the reason this ticket exists? i.e why did the customer create this ticket? Example reasons could be: system bug, needs assistance to complete provisioning, has inquiry about payment.
1. What would have prevented the ticket from existing? For example, if they knew how to reset their password or manage their account (ticket type: account management), or if they knew who their Sales rep was and was able to contact the rep (ticket type: Sales assistance required), the customer wouldn't have needed to submit a ticket.

Please also see the table below as a guideline on what `Transaction issue type` can be selected for scenarios:

| Transaction issue type | Sub-type | Scenario
| ---- | ----- | ----- |
| Billing & Payment (refunds, cancellations, payment questions) |  | Requests for refunds or cancellations + questions about payment and billing |
| EDU/OSS/Startups | EDU account inquiries | Requests/inquiries for the Education team. Follow [workflow](/handbook/support/workflows/special-programs.html) |
| EDU/OSS/Startups | OSS account inquiries | Requests/inquiries for the OSS team. Follow [workflow](/handbook/support/workflows/special-programs.html) |
| Sales-assistance required | Alternate payment method (Wire Transfer) | Customer wants to pay via wire transfer |
| Sales-assistance required | Order form / PO | Customer wants to pay via Order form or purchase order | 
| Sales-assistance required | Reseller | Request is from a reseller or reseller customer |
| Sales-assistance required | Discount request | Customer inquires about a discount |
| Sales-assistance required | New business | No prior purchases and needs a sales quote |
| Sales-assistance required | Trueups | Customer has to pay for trueups via sales |
| Sales-assistance required | Other | Request requires Sales assistance for another reason |
| Trial-related inquiries | Trial start | Ticket is about starting a trial |
| Trial-related inquiries | Trial extension | Ticket is about extending a trial |
| Trial-related inquiries | Trial cancellation | Ticket is about cancelling a trial or downgrading to Free plan |
| Trial-related inquiries | Trial downgrade | Ticket is about downgrading a trial plan (from Ultimate to Premium) |
| Product or Process question | Free form | Please describe the ticket type in the text field. Any questions about how our products or processes work (except for questions about billable members and seat usage) |
| License troubleshooting (SM only) | Trueup | Self-managed license issue is caused by trueups |
| License troubleshooting (SM only) | Prior user count | Self-managed license issue is caused by previous user count |
| License troubleshooting (SM only) | Never generated | Self-managed license was never generated (and it should have been) |
| License troubleshooting (SM only) | Active users | Self-managed license issue is caused by active users count |
| License troubleshooting (SM only) | Multi-year license| Self-managed license is a multi-year license |
| License troubleshooting (SM only) | Not received | Self-managed license was not received by the requestor |
| License troubleshooting (SM only) | Other | Self-managed license issue is caused by another reason not listed |
| Associate namespace (Gitlab.com only) | | Use when we have to help with [provisioning of gitlab.com subscription](/handbook/support/license-and-renewals/workflows/saas/associate_subscription_and_namespace.html) | 
| Account management (reset password, update details) |  | Account-related requests or questions like how to get into an account or update the payment method |
| Contact management |  | Requests or questions about changing the contact for an account or namespace |
| End of Availability (EOA) | | Any questions or requests relating to the end of the Bronze/Starter tier and the offers for the [new subscription model](https://about.gitlab.com/pricing/faq-new-product-subscription-tiers/) |
| System bugs & incidents | CustomersDot | Bug or error is caused by an issue in our CustomersDot application |
| System bugs & incidents | GitLab.com | Bug or error is caused by an issue in our gitlab.com application |
| System bugs & incidents | License app | Bug or error is caused by an issue in our License application |
| System bugs & incidents | GitLab version | Bug or error is caused by an issue in the version of Gitlab running on the SM instance |
| Plan Change (upgrade, downgrade, product transfer) | | Request to change a subscription by upgrade, downgrade or switching from self-managed to SaaS (or vice-versa) |
| Consumption (Compute credits, Storage) | Compute credits | Any questions or requests about compute credits in gitlab.com |
| Consumption (Compute credits, Storage) | Storage | Any questions or requests about Storage in gitlab.com |
| Billable members and seats related question | | Questions specifically related to billable members and seat usage |
| Other | Free form | Please describe the ticket type in the text field |

### The `GitLab Issues` field

The `GitLab Issues` text field is available on all L&R tickets and should be completed whenever applicable. The purpose of this field is to capture links to existing issues. This field is specifically relevant to Fulfillment PMs who will be able to see an overview of any repeating or high volume issues, which they can then prioritise in upcoming milestones. Examples of when to use the field: 

1. There is a feature issue that, if implemented, would have prevented this ticket from being created.
1. There is a bug issue that can be replicated on the ticket.

This is a great way to log and get metrics for bugs and features that might need more attention from the product team as we can see numbers climb for an issue in real time. **Please complete this field with a link to an issue whenever possible.**

