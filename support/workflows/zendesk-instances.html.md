---
layout: handbook-page-toc
title: Zendesk Support Instances
category: Zendesk
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Zendesk Support Instances

## GitLab Support Zendesk Instance: [gitlab.zendesk.com](https://gitlab.zendesk.com)

Our main GitLab Support Zendesk Instance is the instance where we receive and work on most of our customers' tickets. This instance is accessible to both, GitLab.com and Self-managed users. 

GitLab.com tickets are worked on by our Support Agents and Self-Managed tickets are worked on by our Support Engineers. All of our Support Managers, Support Engineers and Support Agents have access to this instance.

Tickets are accessed by different addresses for customers and for Support Agents, where `nnnnnn` is the ticket number:

* Customers: `https://support.gitlab.com/hc/requests/nnnnnn`
* Agents: `https://gitlab.zendesk.com/agent/tickets/nnnnnn`

## GitLab US Federal Support Zendesk Instance: [gitlab-federal-support.zendesk.com](https://gitlab-federal-support.zendesk.com)

Our Federal Instance is only accessible to our US Federal customers who require their tickets to be worked on exclusively by US Citizens. The US Federal Zendesk instance is only available to our Premium and Ultimate Customers and currently offers support during US Business Hours (6am PT to 5pm PT). Only our US Citizens Support Engineers have access to this instance because we don't accept tickets from GitLab.com customers. If a user who is not a Federal Customer submits a ticket to our Federal Instance, our engineers will let them know that their ticket must be submitted to our Main GitLab Support Zendesk Instance (gitlab.zendesk.com).

Our customers in the US Federal Zendesk Instance will receive the Tiered Support response times outlined in our [Support Page](/support/#priority-support) but the response times will be calculated on Business Hours instead of Calendar Hours from Monday to Friday.

The customer facing URL for the Federal Zendesk Instance is [federal-support.gitlab.com](https://federal-support.gitlab.com) which is a CNAME for [gitlab-federal-support.zendesk.com](https://gitlab-federal-support.zendesk.com).

#### Emergency Requests

Our US Federal Customers will be provided with an email address they can email to in case of emergency. The emergency email triggers an emergency page that our engineers will respond to within the time outlined in our Support Page. 

#### Working on US Federal Tickets

Tickets received within our US Federal Instance cannot be discussed about outside of the Federal Instance. If you need help with a ticket, please CC other engineers within Zendesk using Private Notes. 

You can still ask general questions to our Global Support Team regarding tickets to benefit from other team members' expertise, as long as you don't mention that a Federal customer is experiencing an issue related to the topic of your question and without mentioning the name of the Federal Customer experiencing the issue. No discussions regarding the ticket should happen in Slack or GitLab issues. 

If you need a managers' help with a ticket, please keep in mind that only US Citizens have access to our US Federal Instance, which means that some of our managers can help you with tickets. If you are a US Citizen and your manager isn't, please feel free to reach out to a different manager.

The volume of tickets in our US Federal Instance is way lower than our main instance, so we have set up a trigger that sends a Slack message to #feed_zd-federal whenever a new ticket is created, so that the instance doesn't have to be monitored by our engineers all the time. The Slack message doesn't contain any customer identifying information, just informs our team that a new ticket has been created and the name of the Technical Account Manager of the organization who created the ticket. 

