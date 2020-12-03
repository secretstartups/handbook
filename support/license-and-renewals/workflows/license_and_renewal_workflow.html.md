---
layout: handbook-page-toc
title: License and Renewal Queue Workflow
category: Working L&R requests
description: This page details how GitLab Support works the License and Renewals queue (L&R) and how other teams can escalate those tickets should it be needed.

---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This page details how GitLab Support works the License and Renewals queue (L&R) and how other teams can escalate those tickets should it be needed.

## What is in the scope of L&R work in Support?

The L&R queue is for customer tickets and internal issues relating to licensing and subscription. This might include topics like:

* Troubleshooting LicenseDot and subscription association issues
* Generalized license queries from a user
* Assisting Sales/CS with requests related to licensing, subscriptions, CustomersDot capabilities, trials and EULA requests.

## What is **not in the scope** of L&R work in Support?

The L&R queue should not be used for the following:

* Billing related matters, such as payments, invoice generation, refunds, etc.
* Product related questions
* [New business requests](https://about.gitlab.com/sales/)
* Requests related to the
  [education program](https://about.gitlab.com/solutions/education/)
* Requests related to the
  [open source program](https://about.gitlab.com/solutions/open-source/join/)
  
## How does this queue align with the "Fulfillment" Stage?

The [Fulfillment](https://about.gitlab.com/direction/fulfillment/) Stage manages Purchasing and Provisioning, CustomersDot Usage, and Subscription Management. These teams own responsibilities that align with the types of requests we generally see in the L&R queue.

## How does this queue align with the "Growth" Stage?

When we look at the product [Growth](/handbook/product/categories/#growth-stage) stage, we can see that the team owns responsibilities that align with some of the types of requests we generally see in the L&R queue, in particular the `Conversion` group.

- Activation Group: [New Group Namespace Verify Stage Adoption Rate](https://about.gitlab.com/handbook/product/performance-indicators/#new-group-namespace-verify-stage-adoption-rate) 
- Adoption Group: [New Group Namespace Create Stage Adoption Rate](https://about.gitlab.com/handbook/product/performance-indicators/#new-group-namespace-create-stage-adoption-rate)
- Expansion Group: [New Group Namespace with at least two users added](https://about.gitlab.com/handbook/product/performance-indicators/#new-group-namespace-with-at-least-two-users-added)
- Conversion Group:[New Group Namespace Trial to Paid Conversion Rate](https://about.gitlab.com/handbook/product/performance-indicators/#new-group-namespace-trial-to-paid-conversion-rate) 

## Working the L&R Queue

### Training

- Complete the License and Renewals Training Module. This will give you confidence to handle most of the tickets in this queue.

### Workflows

- Generally speaking, [Subscription and billing issues](license_troubleshooting.html) will cover the majority of issues you will encounter. For those not detailed there, it is recommended to either talk to an Escalation Point about the issue or make a MR to add the details to that page.
- All our documented L&R workflows can be found [in this section](https://about.gitlab.com/handbook/support/workflows/#License%20and%20subscription)
- As you work through the queue and on issues, if you spot something in the [Fulfillment backlog](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=group%3A%3Afulfillment) that would makes things better for customers and Support, please don’t forget to label it with `Support Priority` - this helps the product team in prioritising for the next milestone.

#### [GitLab.com Billable Members List](https://gitlab.com/gitlab-com/support/internal-requests/-/blob/master/.gitlab/issue_templates/Billable%20Members.md)

Use the [rollcall script](https://gitlab.com/gitlab-com/support/toolbox/glgl#rollcall) and obtain a list of members for the group. If the script doesn’t work, or shows discrepancies, involve someone with console escalation access by applying the `Console escalation::GitLab.com` label in the issue.

#### Assistance with License & SaaS Subscription Issues

Checkout the relevant topics in our [L&R internal wiki](https://gitlab.com/gitlab-com/support/license-and-renewals/-/wikis/home) for assistance with these internal requests.

## For Other GitLab Team Members

### Where do licensing questions go?

- For generalized license related questions, you can ask via the `#questions` channel in slack.
- For issues relating to the product that handles licensing, redirect them to `#s_fulfillment` channel in slack.
- If the question pertains to a specific customer issue and the circumstances are such that you do not want to ask the customer to [open a support ticket](https://support.gitlab.com/hc/en-us/requests/new?ticket_form_id=360000071293), you can [open an internal issue](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=Plan%20Change%20Request) using the `License Issue` template for assistance.

### How/when do I escalate an L&R ticket?

You can escalate an L&R ticket or issue using our [Ticket/Issue escalation workflow](https://about.gitlab.com/handbook/support/internal-support/#other). Usually, L&R tickets are able to wait until one of our Support Engineers is able to work through the ticket. Please mention the reason for escalation when using the above workflow to help us understand any history/context on why the ticket/issue cannot wait.
