---
layout: handbook-page-toc
title: "Integrations Change Management"
description: "The integrations change management process is an extension of the Business Technology Change Management process which is tailored to the SDLC of the integrations team."
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The integrations change management process is an extension of the [Business Technology Change Management process](/handbook/business-technology/change-management/) which is tailored to the SDLC of the integrations team.

The team develops integrations with two tools; Workato and Nestjs and the change management process currently differs between them.

## Workato changes
Workato is a tool that helps you manage your integrations. It is a web application that allows you to manage integrations, environments, and deployments. All of this is done using a drag and drop interface which makes it an easy tool to quickly get started with, however it also makes change management more difficult. The current process for change management is this;

1. Follow the [BT change management process](/handbook/business-technology/change-management/#business-technology-change-request-workflow) but create the change issue within the [Platypus project](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/platypus/-/issues?sort=created_date&state=opened).
1. Add the appropriate [change management label](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=CMT%3A%3A) to the issue using the [approval matrix](/handbook/business-technology/change-management/#approval-matrix). If the change is comprehensive, add the `Business Owner Approval::Needs Approval` label.
1. Receive approval from the business owners of any affected systems in the change and have them comment their approval and add the `Business Owner Approval::Approved` label to the issue.
1. Once the change is made in development, link the relevant recipes and changes in a comment on the issue and request peer approval from someone else on the integrations team. Have them comment with their approval and add the label `Peer Approval::Approved` to the issue.

## Nestjs changes
For Nestjs the process is the same, except that for peer approvals, we utilize Merge Request approvals instead of labels. The merge request template will guide devs through applying the right labels and linking the relevant change management issue.

To ensure that we don't have long lived merge requests, we have the option to use feature flags to toggle the change / feature. That way we can maintain the prior functionality in production until the business owner has approved the change management issue. The benefit of doing this is that we reduce the need for constant conflict resolution and peer reapproval due to MR approval resets on all commits. Feature flag toggling should be performed by a different person to the author of the MR.
