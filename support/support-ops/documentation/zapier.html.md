---
layout: handbook-page-toc
title: 'Zapier'
category: 'General'
description: 'An overview of how we use Zapier'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

To help provide the best support possible, we often use
[Zapier](https://zapier.com/) in conjunction with our other systems to enhance
our automation capabilities. This allows us to perform more tasks and
automations based on specific events.

## Permissions

To ensure we follow security best practices, the zaps we utilize are all kept
within folders accessible only to those they are shared with and the account
owner. This is because they often involve using credentials we do not want
shared with the entire organization.

The folders we currently use are:

* Support Ops - GitLab.com
* Support Ops - Support Calendars
* Support Ops - Zendesk Global
* Support Ops - Support US Federal

If you do not have access to these, please consider opening an
[access request issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues)
requesting they be shared with you. The provisioner for these would be a
Support Operations Manager.

## How we do it

The process can vary from situation to situation. A video detailing how we did
it for
[Manage internal requests for license issues](#manage-internal-requests-for-license-issues)
can be found [here](https://youtu.be/CbonOpLRB_0).

## Zaps we use

### Support Ops - GitLab.com

#### Usage ping request

* Zap: [125573569](https://zapier.com/app/zap/125573569)
* Owner: Jason Colyer
* What it does: This processes requests from the usage ping form and generates
  usage ping issues.

### Support Ops - Support Calendars

#### US Federal Support Team Calendly Integration

* Zap: [125573569](https://zapier.com/app/zap/117557205)
* Owner: Jason Colyer
* What it does: This integrates with Calendly to create Google Calendar events
  on the US Federal Support calendar.

### Support Ops - Zendesk Global

#### Auto-associating Users (ZD main)

* Zap: [109488472](https://zapier.com/app/zap/109488472)
* Owner: Jason Colyer
* What it does: This attempts to locate a user in Salesforce and associate them
  to the correct organization in Zendesk. This runs via the Zendesk Global
  production instance.

#### Auto-associating Users (ZD sandbox)

* Zap: [106940826](https://zapier.com/app/zap/106940826)
* Owner: Jason Colyer
* What it does: This attempts to locate a user in Salesforce and associates them
  to the correct organization in Zendesk. This runs via the Zendesk Global
  Sandbox.

#### Light Agent Provisioning

* Zap: [104514510](https://zapier.com/app/zap/104514510)
* Owner: Jason Colyer
* What it does: This automatically provisions Light Agents in Zendesk Global
  for GitLab employees.

### Support Ops - Zendesk US Federal

#### Auto-associating Users (ZD US Federal Sandbox)

* Zap: https://zapier.com/app/zap/114457142
* Owner: Jason Colyer
* What it does: This attempts to locate a user in Salesforce and associate them
  to the correct organization in Zendesk. This runs via the Zendesk US Federal
  Sandbox.

#### Auto-associating Users (ZD US Federal)

* Zap: https://zapier.com/app/zap/115672971
* Owner: Jason Colyer
* What it does: This attempts to locate a user in Salesforce and associates them
  to the correct organization in Zendesk. This runs via the Zendesk US Federal
  Sandbox.

#### Federal ticket update notification

* Zap: https://zapier.com/app/zap/105528348
* Owner: Jason Colyer
* What it does: This pings on-call Support Engineers via Slack for soon to
  breach tickets in Zendesk US Federal.

#### Manage internal requests for license issues

* Zap: https://zapier.com/app/zap/127101263
* Owner: Jason Colyer
* What it does: This creates/maintains/closes internal request issues based on
  License Issue tickets in Zendesk US Federal.
