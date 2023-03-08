---
layout: handbook-page-toc
title: Licensing & Renewals
description: Licensing & Renewals (L&R) comprises efforts to resolve problems customers face when they purchase or renew their GitLab subscription.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

L&R Support Engineers help resolve problems encountered by customers in the
process of purchasing or renewing a GitLab subscription.

L&R work generally involves collaborating with customers and other GitLab teams, primarily Sales and Fulfillment,
as well as checking internal GitLab systems and performing data validation. Some examples:

* Answering general queries from a user about purchasing and managing a subscription
* Troubleshooting license upload errors and subscription association issues
* Assisting Sales team members with requests related to L&R

### History

In July, 2020, [a decision was made](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/96#note_384760742)
for L&R work to be handled by Support for the foreseeable future. At the time,
[business-critical priorities](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/96#note_384808050)
prevented the [Fulfillment product section](/handbook/product/categories/#fulfillment-section)
from having sufficient capacity to address and resolve the major L&R-related issues.
And whereas creating an entirely new team for this work would have been
difficult, Support was already engaged and was in a position to scale up
quickly to meet customer needs.

## Contacts

### Support Management contacts

* Overall DRI: Shaun McCann
* Regional DRIs: Mike Dunninger, John Lyttle, Ket Slaats
* Coordinating Mechanizer maintenance: Ronnie Alfaro

### Support Stable Counterparts

See the [Fulfillment section description](/handbook/product/categories/#fulfillment-section)
in the Product Handbook to learn who our current Support Stable Counterparts are. If you are
interested in being an L&R SSC, please talk with your manager and one of the
[Regional DRIs](#support-management-contacts).

## Direction

In collaboration with Sales, Fulfillment and other teams we aim to improve the customer
experience related to managing subscriptions. We achieve this by:

- automating processes
- suggesting improvements to processes
- reporting and fixing bugs
- meeting our Service Level Objectives to external and internal customers

## Regional L&R Teams

- AMER Team [Page](amer-region.html)
- APAC Team Page
- EMEA Team Page

---

## Information for Support Engineers with L&R responsibilities

Before starting to work L&R tickets, be sure you complete the
[L&R / Subscriptions training module](https://gitlab.com/gitlab-com/support/support-training/-/blob/master/.gitlab/issue_templates/Subscriptions%20License%20and%20Renewals.md).

### What you'll be working on

* Tickets in the L&R queue (see
  [Zendesk Global Views](../support-ops/documentation/zendesk_global_views.html)
  for more information on locating these) in Zendesk. The queue will contain
  tickets from customers as well as from GitLab Team Members (Sales, CSMs,
  etc.). The tickets from team members are called "internal requests," and
  information about those is available on the
  [working internal requests workflow page](/handbook/support/license-and-renewals/workflows/working_internal_requests.html).
* Creating and/or updating [marketing pages](#marketing-pages),
  [product documentation](#product-documentation) and the
  [GitLab Handbook](#handbook-pages) and [workflows](#workflows) around
  subscriptions, licensing and renewal-related topics.
* Identifying product issues that are important to customers, Support or both,
  and coordinating with the entire L&R Support Team and the Fulfillment Product
  Management Team to prioritize them for Engineering.

### Systems you'll need access to

To be effective with this work, you'll need access to systems and tools which you
might not otherwise encounter working other Support problem types. This list
supplements the baseline entitlements for the Support Engineer job family.

#### CustomersDot
{:.no_toc}

CustomersDot is the common name for the web application built by GitLab and found at
https://customers.gitlab.com. All license and subscription management is conducted
on this site. You will need access to this to generate, forward and modify customer
license and subscription information. When submitting an access request (AR) for
CustomersDot, use this information:

* System name:
  > CustomersDot - admin
* Justification for this access:
  > L&R Support Engineers need CustomersDot admin access to work on customer licensing
  > and subscriptions issues and to debug issues on the application itself.

#### Salesforce
{:.no_toc}

A Salesforce.com (SFDC) account makes collaboration with Sales team members more
efficient, primarily because you'll be able to receive notifications when you're
tagged in a Chatter message (see the [working with Sales workflow](/handbook/support/license-and-renewals/workflows/working_with_sales.html)).

When creating an individual/bulk access request, use the following information:

* System name:
  * If you are a US citizen:
    > SalesForce, Role: Executive - No View All, Profile: Read Only GitLab,
    > with US public sector record visibility
  * If you are not a US citizen:
    > SalesForce, Role: Executive - No View All, Profile: Read Only GitLab
* Justification for this access:
  > L&R Support Engineers need their own Salesforce accounts to better collaborate
  > with Sales team members as they work on customer licensing issues. 

#### Slack
{:.no_toc}

Discussion of Licensing & Renewals tickets and customer issues occurs in the
[#support_licensing-subscription](https://gitlab.slack.com/archives/C018C623KBJ)
channel in Slack. This ensures: 

> - L&R team members will have one channel in which to collaborate
> - Increased visibility in queries and shared knowledge
> - Increased cohesion in the L&R team regardless of region

At the commencement of the APAC region's Support Hours (23:00 UTC) there is a 
[Daily Stand-up Bot for Licensing and Renewals in APAC](/handbook/support/support-global-groups/#daily-stand-up-bot-for-licensing-and-renewals-in-apac)
post which tags all Support Engineers who have some responsibility for L&R
tickets. This thread notifies the team of who is away for the current week, and
allows team members to provide updates to each other about when they're working
on the queue. This helps ensure coverage reliability of the L&R tickets across
the APAC region's support hours. 

#### Zuora
{:.no_toc}

Zuora is considered the [single source of truth](/handbook/handbook-usage/#single-source-of-truth)
or [system of record](/handbook/handbook-usage/#system-of-record)
for many subscription and renewal-related items, such as product SKUs,
subscriptions and invoices. See the
[Transition to Zuora as the SSOT issue](https://gitlab.com/groups/gitlab-org/-/epics/4664)
for more information.

Having access to Zuora will help with troubleshooting in situations where a
customer's CustomersDot and Salesforce records present conflicting or confusing
information.

When creating an individual/bulk access request, use the following information:

* System name:
  > Zuora READ-ONLY access
* Justification for this access:
  > L&R Support Engineers need read-only Zuora access to troubleshoot Licensing and
  > Renewal customer issues and support requests.

### Workflows

* [License & renewals workflows](workflows/index.html)

### Useful tools

* [license decoder](https://gitlab.com/gitlab-com/support/toolbox/license-decoder)
  -- Ruby script to decode `.gitlab-license` files.
* [slic - Subscription and License Information Copier](https://gitlab.com/rverschoor/punk/-/tree/main/slic)
  -- browser userscript to copy and format CustomersDot information
  into internal notes.

### Teams you'll be working with

#### Product
{:.no_toc}

As you work through the queue and on issues, if you spot something in the
[Fulfillment backlog](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=group%3A%3Afulfillment)
that would makes things better for customers and Support, please label it with
`Support Interest::Categorize`. See [Support's issue list for Fulfillment](./workflows/managing_product_issues.html.md/#supports-issue-list-for-fulfillment) for more information.

##### Fulfillment stage
{:.no_toc}

The [Fulfillment](https://about.gitlab.com/direction/fulfillment/) Stage manages
Purchasing and Provisioning, CustomersDot Usage, and Subscription Management.
These teams own responsibilities that align with the types of requests we
generally see in the queue.

`#s_fulfillment` channel in Slack

##### Growth stage
{:.no_toc}

When we look at the product [Growth](/handbook/product/categories/#growth-stage)
stage, we can see that the team owns responsibilities that align with some of
the types of requests we generally see in the queue, in particular the
`Conversion` group.

- Activation Group: [New Group Namespace Verify Stage Adoption Rate](/handbook/product/performance-indicators/#new-group-namespace-verify-stage-adoption-rate)
- Adoption Group: [New Group Namespace Create Stage Adoption Rate](/handbook/product/performance-indicators/#new-group-namespace-create-stage-adoption-rate)
- Expansion Group: [New Group Namespace with at least two users added](/handbook/product/performance-indicators/#new-group-namespace-with-at-least-two-users-added)
- Conversion Group:[New Group Namespace Trial to Paid Conversion Rate](/handbook/product/performance-indicators/#new-group-namespace-trial-to-paid-conversion-rate)

## What is **not in the scope** of L&R work in Support?

The queue should not be used for the following:

* Billing related matters, such as payments, invoice generation, refunds, etc.
* Product related questions
* [New business requests](https://about.gitlab.com/sales/)
* Requests related to the
  [education program](https://about.gitlab.com/solutions/education/)
* Requests related to the
  [open source program](https://about.gitlab.com/solutions/open-source/join/)
  
## Useful links

### Product documentation

* [GitLab subscription](https://docs.gitlab.com/ee/subscriptions/)

### Marketing pages

* [Support SLAs for billing, purchasing, subscriptions or licenses](https://about.gitlab.com/support/#issues-with-billing-purchasing-subscriptions-or-licenses)
* [Licensing and subscription FAQ](https://about.gitlab.com/pricing/licensing-faq/)

### Handbook pages

* [CustomersDot Admin Docs](/handbook/product/fulfillment-guide)
* [Business Ops](/handbook/business-technology/)
  * [Business Systems: Enterprise Applications, Integrations, and Flow](/handbook/business-technology/enterprise-applications/integrations/)
  * [Troubleshooting: True Ups, Licenses + EULAs](/handbook/business-technology/enterprise-applications/quote-to-cash/troubleshooting//)
* [Sales](/handbook/sales/)
  * [Sales Segmentation](/handbook/sales/field-operations/gtm-resources/)
  * [Sales Territories](/handbook/sales/territories/)
* [Marketing](/handbook/marketing/)
  * [Sales Enablement: GitLab.com subscriptions](/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/enablement/dotcom-subscriptions/)

### Issue trackers

| Issue tracker | Use Case                                                                                                                           |
| ------------- |------------------------------------------------------------------------------------------------------------------------------------|
| [GitLab Issue Tracker](https://gitlab.com/gitlab-org/gitlab/issues) | Issues related to self-managed or GitLab.com functionality or backend processing                                                   |
| [CustomersDot](https://gitlab.com/gitlab-org/customers-gitlab-com/issues) | Issues caused specifically by something within CustomersDot or affecting self-managed license generation, generated licenses |
