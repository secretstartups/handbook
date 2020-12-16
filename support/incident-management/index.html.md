---
layout: handbook-page-toc
title: Incident Management for Self-Managed Customers
category: Support Workflows
description: How to manage high level incidents for self-managed customers.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Incident Management


In order to effectively manage the various elements during an Incident (both internal and customer specific), it is necessary to define the roles and responsibilities of the participants. Having a clear set of guidelines to facilitate the management of the incident reduces confusion and improves the effectiveness of communication. This is the first iteration of a high level Incident Management process for GitLab. This is loosely based on ITIL and ISO 20000, but will not adopt these methodologies in their entirety.


## Roles and Responsibilities of Incident Team

**Incident Manager** - responsible for ensuring the Incident Team adheres to the Incident Management framework and involves appropriate teams/team members in the Incident Analyst/Group for technical troubleshooting and Service Restoration.

**Incident Coordinator**  - facilitates communication between the Incident Team and the business as well as ensuring SLA’s are met at all stages of the Incident. Also provides updates to the affected customer/customers through the appropriate channel.

**Incident Analyst/Group**  - responsible for technical troubleshooting and returning the service to normal operation as quickly as possible. Initial focus is on Service Restoration, not Root Cause Analysis nor Service Improvement.

**Executive Sponsor** - where necessary, a member of leadership who will engage with customers’ leadership team/point of contact.


## High Level Process

**Severity 0** - multiple customers experiencing severe or total service degradation, unable to perform basic functionality with no workaround.

**Severity 1** - single customer experiencing severe or total service degradation, unable to perform basic functionality with no workaround.


**Sev0:** 
1. Once a Severity 0 Incident has been identified, the Incident Notification Slack channel is pinged to gather participants from appropriate teams. 
2. A dedicated Slack channel is created by the Incident Manager and the Incident Analyst/Group ONLY join the channel for briefing of current state. 
3. Once next steps are identified, the Incident Coordinator updates the General Slack channel with current state and commits to when the next update will be broadcast. 
4. Affected customers are notified through a ticket that an Incident is currently underway with the current symptoms and when the next update will be communicated. 
5. Updates are provided to customers and the business hourly until the Incident has been resolved.



**Sev1:** 
1. Once a Severity 1 Incident has been identified, the Support Incident Notification Slack channel is pinged to identify the Incident Analyst/Group.
2. The Incident Manager creates a dedicated Slack channel.
3. The Incident Analyst/Group joins the dedicated Slack channel created by the Incident Manager. 
4. The Incident Coordinator is responsible for updating the Support Team Chat Slack channel with current state. 
5. The Incident Analyst will provide updates to the customer on the ticket.



## Requirements

- Dedicated Slack channel for notification of appropriate groups when an Incident is initiated
- Coverage of on-call by appropriate groups to ensure participation in Incidents
- Ability to mass update customers with permissions for team members to send updates


## Templates

**Internal Executive Summary (to be sent to GitLab Executive team)**

Current Status of Incident:  
Current Actions being performed:  
Next steps:  
Next Update:  
Link to Slack channel:  
