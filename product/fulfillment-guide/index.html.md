---
layout: handbook-page-toc
title: Fulfillment Guide
description: "The Fulfillment Sub-department is responsible for the infrastructure between the systems which affect the user purchasing process."
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

The Fulfillment Sub-department is responsible for the infrastructure between the systems which affect the user purchasing process, as well as being the primary caretakers of the CustomersDot](/handbook/engineering/development/fulfillment/#customersdot) system.

We frequently collaborate with other teams. For example if we are making a change which will affect [usage ping](https://docs.gitlab.com/ee/user/admin_area/settings/usage_statistics.html#usage-ping) we collaborate with the [Product Intelligence group](/handbook/product/categories/#product-intelligence-group). When our work involves or affects any backend enterprise application, we collaborate with the [Sales Systems team](/handbook/sales/field-operations/sales-systems/).

## Customer subscription lifecycle

Customers interact with GitLab throughout the trial and purchasing journey in a variety of ways.  This section will capture that journey, which will evolve over time.  

### Current processes

#### Trial

- [SaaS subscription purchase, documented by UX](https://www.figma.com/file/DCq7K8Srsv79tbH1yRkGbl/Document-user-flows-gitlab-org-epics-3603?node-id=138%3A97)
- [Self-managed subscription purchase, documented by UX](https://www.figma.com/file/DCq7K8Srsv79tbH1yRkGbl/Document-user-flows-gitlab-org-epics-3603?node-id=143%3A0)

#### New

- [SaaS subscription purchase, documented by UX](https://www.figma.com/file/DCq7K8Srsv79tbH1yRkGbl/Document-user-flows-gitlab-org-epics-3603?node-id=302%3A5577)
- [Self-managed subscription purchase, documented by UX](https://www.figma.com/file/DCq7K8Srsv79tbH1yRkGbl/Document-user-flows-gitlab-org-epics-3603?node-id=252%3A242)

#### Additional seat purchase

- [SaaS subscription purchase, documented by UX](https://www.figma.com/file/DCq7K8Srsv79tbH1yRkGbl/Document-user-flows-gitlab-org-epics-3603?node-id=626%3A134)
- [Self-managed subscription purchase, documented by UX](https://www.figma.com/file/DCq7K8Srsv79tbH1yRkGbl/Document-user-flows-gitlab-org-epics-3603?node-id=626%3A222)

#### Renewal

- [SaaS subscription purchase, documented by UX](https://www.figma.com/file/DCq7K8Srsv79tbH1yRkGbl/Document-user-flows-gitlab-org-epics-3603?node-id=96%3A59)
- [Self-managed subscription purchase, documented by UX](https://www.figma.com/file/DCq7K8Srsv79tbH1yRkGbl/Document-user-flows-gitlab-org-epics-3603?node-id=72%3A35)
- [Renewal Emails, documented by UX](https://www.figma.com/file/DCq7K8Srsv79tbH1yRkGbl/Document-user-flows-gitlab-org-epics-3603?node-id=202%3A27)

#### Cancelation

- [UX flow documentation](https://www.figma.com/file/DCq7K8Srsv79tbH1yRkGbl/Document-user-flows-%5Bgitlab-org%2F-%2Fepics%2F3603%5D?node-id=28%3A28)

### License Expiration
- [What happens when the license expires](https://docs.gitlab.com/ee/user/admin_area/license.html#what-happens-when-your-license-expires)
- [Process for extending licenses during renewal, trial extensions, etc](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/self-managed/trials.html)
- [Internal process for creating a trial license (for extension)](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/self-managed/creating_licenses.html#trial-license)

### Future iterations

We will be making updates to the current processes as the business needs evolve, and we learn from our customers' experiences. Here are some new projects that we are looking forward to:

1. [Updates to renewal customer messaging](https://gitlab.com/gitlab-org/gitlab/-/issues/322674)
1. Quarterly co-terms
1. Auto-renewals

## CustomersDot Admin Panel

The target audience is the internal GitLab team, and covers the [admin panel](https://customers.gitlab.com/admin/) of the [CustomersDot](https://customers.gitlab.com). Customers or subscription managers should refer to the [Customers](https://docs.gitlab.com/ee/subscriptions/index.html) section of GitLab's user documentation for help in using the portal, or the [licensing FAQ](https://about.gitlab.com/pricing/licensing-faq/) for questions on subscriptions such as how users are counted.

### Searching

When using the admin panel search, be aware that results will be based on searching only one field at a time. For example, entering a person's full name will likely provide no results because the system will not search first and last name at the same time, only one or the other.

We recommend searching by email address, partial email address (e.g. company domain), or company name. When searching by name, enter only first *or* last name.

### Account

#### Adding another account to manage subscription

1. Find existing customer and click on `Edit`.
1. Copy the Zuora and SFDC IDs.
1. Paste the IDs into the same fields for the requesting customer.

#### GitLab Groups

If an account has a connected GitLab.com user account, then a list of namespaces will show with relevant information including current plan.

The list of namespaces are:

- personal namespace
- top level group namespaces where user is `Owner`

### Trials

#### Check, change, or extend trial expiry date

> **Note:** Until [customers #973](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/973) and [customers #1643](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1643) are resolved, this is unlikely to be available.

1. Find the customer who initiated the trial.
1. Click on the `GitLab Groups`.
1. If the trial is expired and needs to be extended, click on the `Renew Trial` button.
1. Change the trial date as necessary and click on `Update`. **Warning:** Do not change the date to a date prior to today's date in UTC timezone.

## How to connect with us

* For help with a license error, resending a license or other support requests, [create an internal issue for the support team](/handbook/support/internal-support).
* For general product questions, try the [#Questions](https://gitlab.slack.com/archives/C0AR2KW4B) Slack channel.
* Reach out to [#s_fulfillment](https://gitlab.slack.com/archives/CMJ8JR0RH) with non-customer specific purchasing or provisioning questions, or to escalate an outage in our purchasing workflow.
* To raise awareness or request elevated priority of an issue, mention [@amandarueda](https://gitlab.com/amandarueda) in the issue and provide relevant information.

## Links

To be added

