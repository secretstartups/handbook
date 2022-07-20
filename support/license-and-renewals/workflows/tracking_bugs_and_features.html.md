---
layout: handbook-page-toc
title: Tracking Bugs and Feature Requests
description: "How to track Fulfillment bugs and feature requests"
category: General
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The Fulfillment Product team has been improving and evolving the purchasing and subscription-related experience at a rapid pace. As the systems we support are changing, new bugs and use-cases emerge. Ideally, we want to keep diligent track of the bugs and feature opportunities we encounter through tickets and internal support requests. This allows easy prioritisation for the fulfillment team, as they know which bugs we want resolved and which features we want implemented in the product.  

### Notice Board

The [Notice Board](https://gitlab.com/gitlab-com/support/license-and-renewals/-/issues/1) is a boring solution for tracking the issues that we need to be aware of. This is essentially an issue that has a list of links to other issues in other locations.

Workflow for Notice Board:

1. When you come across a bug, check the Notice Board to see if the bug has been logged before.
1. If the issue is on the board, go to it and log your ticket number in the `Examples` section of the issue description (if applicable).
1. Look at how the issue is prioritised on the Notice Board and move it up or down the list depending on what priority you think it should have.
1. Copy the issue link and paste it into the `Gitlab issues` field on the ticket.
1. If the issue is not on the Notice Board, then proceed to the section below [Creating a Bug or Feature Request](#creating-a-bug-or-feature-request)

When a bug is resolved or a feature has been implemented, you can:

1. Move the issue into the `Features implemented` or the `Bugs fixed` section.
1. Add the date the fix or feature was live next to the issue name.


### Creating a Bug or Feature Request

The workflow for submitting a new bug or feature request is as follows.

1. Search [Fulfillment Meta](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues) and [GitLab.org Fulfillment Section](https://gitlab.com/gitlab-org/gitlab/-/issues/?state=opened&label_name%5B%5D=section%3A%3Afulfillment) and check if there is an existing matching issue.
1. If there is an existing issue, then add a link to the Zendesk ticket or internal issue so that we can continue track the impact of the issue, also ensure to include any relevant information which will help with prioritisation. 
1. If there is no pre-existing issue then:
   1. For a new bug, open an issue in the relevant project using the following templates: 
      1. [customers.gitlab.com (including /Admin)](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/new?issue&issuable_template=Bug)
      1. [GitLab product issues](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issue&issuable_template=Bug)
   1. For a new feature or tooling request, create a new [Fulfillment meta intake request](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/new?issue&issuable_template=intake) and complete all of the relevant fields. A Fulfillment PM will review the request and, if accepted for work, move the request to the relevant team and trackers. 
1. For general guidance on adding comments and required labels for issues, please see the [Working with issues workflow](../../workflows/working-with-issues.html#adding-comments-on-existing-issues).
1. Add the appropriate label to the issue
   - If the issue has been identified by support add the label "Support Efficiency"
   - If the issue is impacting a customer's ability to use the GitLab licensing functionality successfully then add the label "Customer::Impact" and "UX" 
   - If the issue is impacting L&R supports ability to serve our customers then add the label "Support::Impact"
   - For [Group Provision Issues](https://about.gitlab.com/direction/fulfillment/#provision-group) add the label "Group::Provision"
   - For [Group utilization Issues](https://about.gitlab.com/direction/fulfillment/#utilization) add the label "Group::Utilization"
   - For [Group Purchase Issues](https://about.gitlab.com/direction/fulfillment/#purchase) add the label "Group::Billing and subscription management"
1. If you believe a high priority issue is not getting adequate traction then please make [Omar Fernandez](https://gitlab.com/ofernandez2) and [John Lyttle](https://gitlab.com/jlyttle) aware.


### Support Priority Label

The [Support Priority label](https://gitlab.com/gitlab-org/gitlab/-/labels?utf8=%E2%9C%93&subscribed=&search=support+priority) is available to use in the [GitLab project](https://gitlab.com/gitlab-org/gitlab/-/issues?label_name[]=Support%20Priority). Issues with this label indicate the to the Product Manager, that the issue is important for the Support team. Good candidates for the label are issues that will reduce ticket volume when implemented or issues that will greatly improve efficiency for the Support team.

Before applying the label to an issue, consider the [severity](/handbook/engineering/quality/issue-triage/#severity) the issue might have (useful if issue is a bug) or how many customers will benefit from the feature.

Product Managers should be actively looking at and prioritising issues with the Support Priority label. If you're unsure about adding the label, please check in with your fellow team members before applying the label.
