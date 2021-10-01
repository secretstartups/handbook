---
layout: handbook-page-toc
title: Support Ops Responsibilities
description: The Support Operations team maintains the day-to-day operations and software systems used by GitLab’s global Technical Support team.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The Support Operations team maintains the day-to-day operations and software systems used by GitLab’s global Technical Support team.


## Support Satisfaction Survey (SSAT)

At GitLab, SSAT is a measure of how satisfied our customers are with their interaction with the GitLab Support team. This is based on survey responses from customers after each ticket is solved by the Support team, using a Good or Bad rating.

*Note:* We use the term SSAT, but another common term for what we do is CSAT (Customer Satisfaction).

The target is 95% satisfaction. The definition of the KPI is:

```
Satisfied [total good scores]  / Total Survey Responses [good scores + bad scores]
```

This calculation excludes cases where a survey was not offered or where it was offered but no score was provided.

The survey is sent out 24 hours after a ticket is solved. The tag `csat_survey_sent` is added to a ticket as soon as a survey is sent out.

#### SSAT in numbers

- Our average response rate is 24%.
- On average, 90% of our tickets receive a Survey.

There are a few reasons why a customer wouldn’t receive a Survey after a ticket has been solved:

- Ticket was merged into another ticket, and subsequently closed (tag `close_by_merge`).
    - If a customer follows up on a ticket that was closed by merge, the tags of the original ticket are copied over to the new ticket, therefore not all tickets which contain this tag haven't been sent the Survey.
- Ticket was received through mail-list@gitlab.com (tickets received through this channel are automatically closed).
- Ticket was submitted by a member of the GitLab team (‘GitLab’ Organization). If a member of other GitLab Zendesk organizations submits a ticket, they will receive a survey (ie GitLab Inc., GitLab BV, GitLab Ltd).

#### Managing Negative Feedback

Starting July 9th, 2019, in order to learn about the reasons behind a Bad satisfaction rating, we ask any customer who gives a negative Survey response to select a reason for their dissatisfaction. This feedback is shared with the Product team and the Support Managers, depending on which reason is chosen. The dropdown options are:

- GitLab doesn't meet my needs (Product Team)
- The answer wasn't delivered in a timely manner (Support Managers)
- My issue was not resolved (Support Managers)
- The answer wasn't helpful (Support Managers)
- Some other reason

All negative and positive feedback with comment is exported to an internal repository. Once the feedback has been submitted, an Issue is created and the Support Engineering Managers are tagged when a negative rating has been submitted. [It is the responsibility of the Support Engineering Managers](/handbook/support/support-ops/#ssat-reviewing-manager) to investigate the feedback and ensure appropriate actions are taken to either resolve the root cause of the negative experience or reduce the likelihood of it recurring.

## Shared Organizations in Zendesk

We have the option of allowing all of the end-users in an organization to see each other's tickets. This is referred to as a shared organization in Zendesk.

There are a few different options available for our customers:

- Users can view and edit their own tickets only
- All users can view all tickets but not add comments
- All users can view all tickets and add comments to all tickets

When a request is received from a customer, any member of the Customer Success or Support teams can create a request in the [Support Ops project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/issues/new?issuable_template=Shared%20Organization%20Request) using the `Shared Organization Request` template.  The Support Ops team will confirm with the customer and [action](/handbook/support/support-ops/workflows/shared_organizations.html) these requests.


## Salesforce - Zendesk sync

### Ticket sending to Salesforce

We have enabled Zendesk to send all ticket information to Salesforce using a
target. Currently, we create a  Salesforce Zendesk Ticket record whenever a
ticket is created created and when it is either:

* Solved by one of our agents or an automation
* Merged into another ticket

Once the information is received in Salesforce, a notification is sent from SFDC
to the Technical Account Managers so they are aware of the issues their accounts
are experiencing.

To troubleshoot any issues with this functionality, we need to make sure that:

- The [Salesforce target and trigger in Zendesk](https://support.zendesk.com/hc/en-us/articles/203660006-Salesforce-Setting-up-sending-Zendesk-tickets-into-Salesforce/#ariaid-title3) are properly configured.
- The [matching criteria for ticket requester and ticket organization](https://support.zendesk.com/hc/en-us/articles/203660006-Salesforce-Setting-up-sending-Zendesk-tickets-into-Salesforce/#ariaid-title2) is set to `Use auto-matching criteria for searching Salesforce records`
- The Field Level Security for the Objects `Zendesk Support Ticket` and `Zendesk Support Ticket Comment` is visible to the `System Administrator`

When working on the Salesforce side of this configuration, make sure to always communicate with the Sales Systems and Operations team about any inconsistencies you find and request their help to troubleshoot any issues.

### Account - Organization sync from Salesforce

To ensure the data in SFDC is synced with Zendesk, we utilize two methods:

* [Zendesk for Salesforce Integration](https://support.zendesk.com/hc/en-us/articles/360038232533)
  * Syncs on account creation and update
* GitLab built CI/CD sync script
  * Runs every 4 hours, syncing/creating all accounts matching our preset search
    parameters

Currently, it syncs based on the Salesforce ID (18) value for all accounts that
have a type of `Customer` or `Former Customer` and do not meet the US Federal
criteria.

Accounts are synced with Organizations as long as:

- The `Salesforce ID (18)` in SFDC matches the one `Salesforce ID` in Zendesk

We have configured the following to sync:

- Name
- Account Owner
- ARR
- Salesforce ID
- Number of Seats
- Sales Segmentation
- GitLab Plan
- Technical Account Manager
- Account type

If you encounter issues with the SFDC<>Zendesk sync, please create an issue via
the
[support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/issues/new).

## SFDC<>US Federal Zendesk sync

This is handled via a scheduled pipeline running from the ops instance. It
handles the syncing of Federal Accounts and Contacts from SFDC. This runs every
4 hours. It syncs based on the `Salesforce ID (18)` value. As per Zendesk rules,
every `Account Name` and `Contact Email` must be unique so that it can be synced.

The criteria for the federal sync determines what is and is not synced.
Currently, it must meet all of the following criteria:

* The account has an Account Territory starting with 'US-PUB-FED'.
* The account has a Type of `Customer`, `Former Customer`, or `Prospect`
* The account meets one of the following criteria:
  * The `Support Level` is either `Premium` or `Ultimate`.
  * The `Support Level` is `Basic` and the `Number of Licenses (This Account)` is
    2000 or more.

If you encounter issues with the SFDC<>US Federal Zendesk sync, please create an
issue via the
[support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/issues/new).

## Other tools
{: #other-tools}

### Calendly

[Calednly](https://calendly.com/) is how we managed our meetings with
customers (as well as one another). Support-ops manages the team
calendly, used for scheduling meetings with our customers to work
further on tickets.

Issues for GitLab Support Calendly related matters should be created via the
[Calendly project](https://gitlab.com/gitlab-com/support/support-ops/calendly).

### PagerDuty
PagerDuty is how we dispatch emergencies and handle scheduling for different roles.

#### PagerDuty Services
A service in PagerDuty usually represents a component a team monitors. For Support's purposes, however, it's just
something you'd go on call for. Services interact with `/chatops oncall` commands to display who is currently on-call
in Slack.

##### Customer Support
The [Customer Support Service](https://gitlab.pagerduty.com/services/PL3TX00) is the service we use to track who is
on-call for [Emergency Support](https://about.gitlab.com/support/#priority-support).

For more information, read more about [how being on-call works](/handbook/support/on-call/#how-it-works).

This service is driven by Support Engineers participating in the [Customer Emergency Rotation](#customer-emergency-rotation)

An incident can be generated by:
- Email
- ZenDesk
- API

When an incident occurs, it will alert in `#support_self-managed` on Slack.

##### Customer Support - US Federal
The [Customer Supoprt - US Federal Service](https://gitlab.pagerduty.com/services/P8K2XHK) is the service we use to track
who is on-call for [Emergency Support](https://about.gitlab.com/support/#priority-support) for US Federal Customers.

This service is driven by US Citizens participating in the [US Federal Customer Emergency Rotation](#us-federal-customer-emergency-rotation)

An incident can be generated by:
- Email

When an incident occurs, it will alert in `#feed_zd-federal` on Slack

##### Incident Management - CMOC
The [Incident Management - CMOC Service](https://gitlab.pagerduty.com/service-directory/P1PRQ6J) is the service we use to track who is on-call for the role of [Communications Manager on Call](/handbook/engineering/infrastructure/incident-management/#communications-manager-on-call-cmoc-responsibilities) during GitLab.com operational emergencies.

This service is driven by Support Engineers participating in the [Incident Management - CMOC Rotation](#incident-management---cmoc-rotation).

An incident can be generated by:
- [Declaring an incident using Slack](/handbook/engineering/infrastructure/incident-management/#report-an-incident-via-slack)

##### Support Managers
The [Support Managers Service](https://gitlab.pagerduty.com/services/PTFI8XR) is what we use to track
which Support Manager is on-call.

For more information, read about [what a Support Manager On-call does](/handbook/support/on-call/#manager-on-call)

This service is driven by Support Manager participating in the [Support Managers Rotation](#support-managers-1).

An incident can be generated by:
- running `/pd-support-manager` in Slack

When an incident occurs, it will alert in `#support_escalations` in Slack.

##### SSAT Reviewing Manager
The [SSAT Reviewing Manager Service](https://gitlab.pagerduty.com/schedules#P9UIIDY) is a tracking only rotation indicating the Support Manager who will review the SSAT feedback for that week.

For more information, read about [Responding to SSAT Feedback](/handbook/support/workflows/how-to-respond-to-feedback.html)

#### PagerDuty Escalation Policies
An escalation policy is built out of PagerDuty Schedules with rules that define when things should be moved to the next layer.

##### Customer Emergency Rotation
The [Customer Emergency Rotation](https://gitlab.pagerduty.com/escalation_policies#PKV6GCH) defines who should be paged in the event of a customer emergency.

>
**Immediately after an incident is triggered, notify:**
- Customer Emergencies - AMER
- Customer Emergencies - APAC
- Customer Emergencies - EMEA

>
**Escalate after 10 minutes**:
- Support Manager - AMER
- Support Manager - APAC
- Support Manager - EMEA

>
**Escalate after 5 minutes**:
- Customer Emergencies EMEA Escalation
- Drew, Arihant, Harish, Cindy, Athar, Aric, Davin, Adam

>
**Repeat 5 times if no one acknowledges incidents**


##### US Federal Customer Emergency Rotation
The [US Federal Customer Emergency Rotation](https://gitlab.pagerduty.com/escalation_policies#PNPWBEW) defines who should be paged in the event of a US Federal customer emergency.

>
**Immediately after an incident is triggered, notify:**
- US Federal On-Call

>
**Escalate after 15 minutes**:
- Support Manager - AMER

>
**Escalate after 20 minutes**:
- Lyle, Lee, Jason

##### Incident Management - CMOC Rotation
The [Incident Management - CMOC Rotation](https://gitlab.pagerduty.com/escalation_policies#PNH1Z1L) defines who should be paged in the event of a GitLab.com incident.

>
**Immediately after an incident is triggered, notify:**
- Incident Management - CMOC (AMER)
- Incident Management - CMOC (APAC)
- Incident Management - CMOC (EMEA)
- _(Optional)_ CMOC Shadow

>
**Escalate after 5 minutes**
- Support Manager - AMER
- Support Manager - EMEA
- Support Manager - APAC
- SRE Managers Americas
- SRE Managers EMEA
- SRE Managers Weekends

>
**Escalate after 5 minutes:**
- Anthony, Dave, Brent (Infrastructure)

##### Support Managers
The [Support Managers Escalation Policy](https://gitlab.pagerduty.com/escalation_policies#PGNLUZ1) defines which Support Manager is on call.

>
**Immediately after an incident is triggered, notify:**
- Support Manager - AMER
- Support Manager - EMEA
- Support Manager - APAC


#### PagerDuty Schedules
PagerDuty schedules drive the actual rotations of individuals and track overrides.

##### Regional hours of operation
For ease, we define the hours of on-call duty per region as follows:
- **AMER**: 15:00 - 23:00 UTC
   - **US Federal**: 8:00 - 20:00 US Central Time (13:00 - 01:00 UTC)
- **APAC**: 23:00 - 07:00 UTC
- **EMEA**: 07:00 - 15:00 UTC


**Hand-off:** Monday at 07:00 UTC.

At writing (2019-10-04) there are no further subdivisions per region.

The following schedules are used:

**Customer Emergencies**
- [Customer Emergencies - AMER](https://gitlab.pagerduty.com/schedules#PIQ317K)
- [Customer Emergencies - APAC](https://gitlab.pagerduty.com/schedules#P3UR3IV)
- [Customer Emergencies - EMEA](https://gitlab.pagerduty.com/schedules#P9SV029)
- [Customer Emergencies EMEA Escalation](https://gitlab.pagerduty.com/schedules#P8N34WC)

**US Federal Customer Emergencies**
- [US Federal On-Call](https://gitlab.pagerduty.com/schedules#P89ZYHZ)

US Federal Customer Emergencies is split into two layers:
- US Federal AM: 08:00 - 14:00 (US Central Time)
- US Federal PM: 14:00 - 20:00 (US Central Time)

**Support Managers**
- [Support Manager - AMER](https://gitlab.pagerduty.com/schedules#PTI56V1)
- [Support Manager - APAC](https://gitlab.pagerduty.com/schedules#PWBXTYX)
- [Support Manager - EMEA ](https://gitlab.pagerduty.com/schedules#PXQ2ZAZ)

##### Subscribing to a Schedule
You can subscribe to a WebCal feed, suitable for viewing in Google Calendar.

From any of the above links you can subscribe to the whole schedule by clicking **Schedule Info** and then **WebCal feed**.
Alternatively you can pull just your schedule from general [Schedules page](https://gitlab.pagerduty.com/schedules) by clicking **Export** then **Just my calendar** in the _WebCal Feed_ section.

If you want just one calendar for _all_ of your on-call, you can grab a WebCal feed by clicking on your profile picture, going to
**My Profile** and then **On-Call Shift**, then clicking the **Export** button to reveal the link.

### Slack notifications

#### Premium Breach Notifications
{: #premium-breach-notifications}

The premium breach notifications is a webhook that is triggered by a ZenDesk automation titled `Premium important ticket slack notification`. The trigger looks for any
high premium tagged tickets that have less than 2 hours left on the breach clock.
The automation [runs at the top of every hour](https://support.zendesk.com/hc/en-us/articles/203662236-About-automations-and-how-they-work)
and due to this limitation, it does not run at the exact hour the ticket is less than 2 hour from breaching.

Once the ticket is updated, a trigger sends a webhook to slack which is configured on the slack side.

#### #feed_zd-self-managed and #feed_zd-gitlab-com
{: #feed_zd-self-managed}

The `#feed_zd-self-managed` channel is updated by a webhook that's triggered whenever a Self-Managed ticket is created or updated. The Zendesk trigger is called "Slack Support Live Feed (With Organization names)"
The `#feed_zd-self-managed` channel does not display tickets addressed to GitLab.com

The `#feed_zd_gitlab-com` channel is updated by a webhook that's triggered whenever a GitLab.com ticket is created or updated. The Zendesk trigger is called "Slack Services Live Feed". This channel does not display EE tickets.

#### Support Bot

The [Supportbot](https://gitlab.com/gitlab-com/support/support-ops/gitlab-support-bot/tree/master) shares status of Zendesk views and number of tickets in Slack when invoked.
