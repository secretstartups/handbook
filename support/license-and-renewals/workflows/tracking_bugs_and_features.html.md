---
layout: handbook-page-toc
title: Tracking Bugs and Feature Requests
category: General
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The Fulfillment Product team has been improving and evolving the purchasing and subscription-related experience at a rapid pace. As the systems we support are changing, new bugs and use-cases emerge. Ideally, we want to keep dilligent track of the bugs and feature opportunities we encounter through tickets and internal support requests. This allows easy prioritisation for the fulfillment team, as they know which bugs we want resolved and which features we want implemented in the product.  

### Notice Board

The [Notice Board](https://gitlab.com/gitlab-com/support/license-and-renewals/-/issues/1) is a boring solution for tracking the issues that we need to be aware of. This is essentially an issue that has a list of links to other issues in other locations.

Workflow for Notice Board:

1. When you come across a bug, check the Notice Board to see if the bug has been logged before.
1. If the issue is on the board, go to it and log your ticket number in the `Examples` section of the issue description (if applicable).
1. Look at how the issue is prioritised on the Notice Board and move it up or down the list depending on what priority you think it should have.
1. Copy the issue link and paste it into the `Gitlab issues` field on the ticket.
1. If the issue is not on the Notice Board, add it in the relevant section and decide what priority the issue should be listed as.

When a bug is resolved or a feature has been implemented, you can:

1. Move the issue into the `Features implemented` or the `Bugs fixed` section.
1. Add the date the fix or feature was live next to the issue name.

### Support Priority Label

The [Support Priority label](https://gitlab.com/gitlab-org/gitlab/-/labels?utf8=%E2%9C%93&subscribed=&search=support+priority) is available to use in the [GitLab project](https://gitlab.com/gitlab-org/gitlab/-/issues?label_name[]=Support%20Priority). Issues with this label indicate the to the Product Manager, that the issue is important for the Support team. Good candidates for the label are issues that will reduce ticket volume when implemented or issues that will greatly improve efficiency for the Support team.

Before applying the label to an issue, consider the [severity](https://about.gitlab.com/handbook/engineering/quality/issue-triage/#severity) the issue might have (useful if issue is a bug) or how many customers will benefit from the feature.

Product Managers should be actively looking at and prioritising issues with the Support Priority label. If you're unsure about adding the label, please check in with your fellow team members before applying the label.
