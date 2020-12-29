---
layout: handbook-page-toc
title: License & Renewals
description: License & Renewals (L&R) comprises efforts to resolve problems customer face when they purchase or renew a license (self-managed) or subscription (GitLab.com).
---

## Introduction

When customers purchase or renew a license (self-managed) or subscription
(GitLab.com), they sometimes run into problems applying or making use of their
purchase. License & Renewals (L&R) comprises efforts to resolve these problems.

L&R work generally involves collaborating with customers and other GitLab teams,
as well as checking internal GitLab systems and data validation.

In July 2020, [a decision was made](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/96#note_384760742)
for L&R work to be handled by Support for the foreseeable future. The reasons
are:

1. Sales should not have access to generate [paid](https://gitlab.com/gitlab-com/internal-audit/internal-audit/-/issues/210)
   or [trial](https://gitlab.com/gitlab-com/internal-audit/internal-audit/-/issues/212)
   licenses for SOX compliance purposes.
1. [Business-critical priorities](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/96#note_384808050)
   mean that the [Fulfillment product section](https://about.gitlab.com/handbook/product/categories/#fulfillment-section)
   will not have sufficient capacity to address and resolve major pain points
   within the next 12 months.
1. The effort to stand up an entirely new team would be considerable; Support
   was already doing this work and was in a position to quickly scale up to meet
   customer needs.

Support is currently figuring out how best to meet customer needs around L&R
while not creating a separate team to do the work. The support engineering
managers currently actively involved are:

* Shaun McCann (Overall DRI)
* Ronnie Alfaro
* Wei-Meng Lee

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Systems you'll need access to

To be effective with L&R work, you'll need access to systems and tools which you
might not otherwise encounter working other Support problem types. This list
supplements the baseline entitlements for the Support Engineer job family.

### Salesforce

A Salesforce.com (SFDC) account makes collaboration with Sales team members more
efficient, primarily because you'll be able to receive notifications when you're
tagged in a Chatter message (see the [working with Sales workflow](/handbook/support/licence-and-renewals/workflows/working-with-sales.html)).

When creating an individual/bulk access request, use the following information:

* System name:
  > SalesForce, Role: Executive - No View All, Profile: Read Only GitLab
* Justification for this access:
  > Support Engineers need their own Salesforce accounts to better collaborate
  > with Sales team members as they work on customer licensing issues. For more
  > information, see https://about.gitlab.com/handbook/support/license-and-renewals/index.html#salesforce

### Zuora

Zuora is considered the [single source of truth](/handbook/handbook-usage/#single-source-of-truth)
or [system of record](https://about.gitlab.com/handbook/handbook-usage/#system-of-record)
for many L&R-related items, such as product SKUs, subscriptions and invoices
(see the [Transition to Zuora as the SSOT issue](https://gitlab.com/groups/gitlab-org/-/epics/4664)
for more information).

Having access to Zuora will help with troubleshooting in situations where a
customer's CustomersDot and Salesforce records present conflicting or confusing
information.

When creating an individual/bulk access request, use the following information:

* System name:
  > Zuora READ-ONLY access
* Justification for this access:
  > Support Engineers need read-only Zuora access to troubleshoot License and
  > Renewal customer issues and support requests. For more information, see
  > https://about.gitlab.com/handbook/support/license-and-renewals/index.html#zuora

## Workflows

* [License & renewals workflows](workflows/index.html)
* [Internal policies and procedures wiki](https://gitlab.com/gitlab-com/support/license-and-renewals/-/wikis/home)

## Useful links

### Product documentation

* [GitLab subscription](https://docs.gitlab.com/ee/subscriptions/)

### Marketing pages

* [Support L&R SLAs](https://about.gitlab.com/support/#issues-with-billing-purchasing-subscriptions-or-licenses)
* [Licensing and subscription FAQ](https://about.gitlab.com/pricing/licensing-faq/)

### Handbook pages

* [CustomersDot Admin Docs](/handbook/internal-docs/customers-admin/)
* [Business Ops](/handbook/business-ops/)
  * [Business Systems: Enterprise Applications, Integrations, and Flow](/handbook/business-ops/enterprise-applications/applications/)
  * [Troubleshooting: True Ups, Licenses + EULAs](/handbook/business-ops/enterprise-applications/applications/troubleshooting/)
* [Sales](/handbook/sales/)
  * [Sales Segmentation](/handbook/sales/field-operations/gtm-resources/#segmentation)
  * [Sales Territories](/handbook/sales/territories/#territories)
* [Marketing](/handbook/marketing/)
  * [Sales Enablement: GitLab.com subscriptions](/handbook/marketing/strategic-marketing/enablement/dotcom-subscriptions/)

### Issue trackers

| Issue tracker | Use Case |
| ------------- | -------- |
| [GitLab Issue Tracker](https://gitlab.com/gitlab-org/gitlab/issues) | Issues related to self-managed or GitLab.com functionality or backend processing  |
| [CustomersDot](https://gitlab.com/gitlab-org/customers-gitlab-com/issues) | Issue is caused specifically by something within the CustomersDot    |
| [LicenseDot](https://gitlab.com/gitlab-org/license-gitlab-com/issues) | Issue is affecting self-managed license generation or generated licenses |
