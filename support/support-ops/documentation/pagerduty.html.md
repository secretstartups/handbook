---
layout: handbook-page-toc
title: 'Pagerduty'
category: 'Other Software'
description: 'An overview of our use of Pagerduty'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

PagerDuty is how we dispatch emergencies and handle scheduling for different
roles.

## PagerDuty services

As per
[Pagerduty](https://support.pagerduty.com/docs/services-and-integrations):

> A technical service reflects a discrete piece of functionality that is wholly
> owned by one team. One or more technical services combine to deliver
> customer-facing or business capabilities.

Services interact with `/chatops oncall` commands to display who is currently
on-call in Slack.

### Customer Support

* [Service link](https://gitlab.pagerduty.com/service-directory/PL3TX00)
* Escalation policy: Customer Emergency Rotation
* Integrations
  * Zendesk
  * API
  * Customer Emergency Escalation Channel
* Extensions and Add-Ons
  * Slack V2

### Incident Management - CMOC

* [Service link](https://gitlab.pagerduty.com/service-directory/P1PRQ6J)
* Escalation policy: Incident Management - CMOC Rotation
* Integrations
  * Slack to PagerDuty
  * Pingdom to CMOC
  * woodhouse
* Extensions and Add-Ons
  * Slack V2

### Support Managers

* [Service link](https://gitlab.pagerduty.com/service-directory/PTFI8XR)
* Escalation policy: Support Managers
* Integrations
  * Slack
* Extensions and Add-Ons
  * Slack V2

### AMER Response Crew

* [Service link](https://gitlab.pagerduty.com/service-directory/PZLOI4B)
* Escalation policy: Support Managers
* Integrations
  * Email
* Extensions and Add-Ons
  * Slack V2

### Customer Support - US Federal

* [Service link](https://gitlab.pagerduty.com/service-directory/P8K2XHK)
* Escalation policy: US Federal Customer Emergency Rotation
* Integrations
  * N/A
* Extensions and Add-Ons
  * N/A

## Pagerduty escalation policies

As per
[Pagerduty](https://support.pagerduty.com/docs/escalation-policies):

> Escalation policies connect services to individual users and/or schedules and
> they ensure the right people are notified at the right time.

### Customer Emergency Rotation
 
* [Escalation policy link](https://gitlab.pagerduty.com/escalation_policies#PKV6GCH)
* Level 1
  * Notify the following users or schedules
    * Customer Emergencies - AMER Group 1
    * Customer Emergencies - AMER Group 2
    * Customer Emergencies - AMER Group 3
    * Customer Emergencies - EMEA
    * Customer Emergencies - APAC Group 1
    * Customer Emergencies - APAC Group 2
    * Shadow - Customer Emergenices - APAC 1
    * Shadow - Customer Emergenices - APAC 2
    * Shadow - Customer Emergencies - EMEA
  * Escalates after 10 min
* Level 2
  * Notify the following users or schedules
    * Support Manager - AMER
    * Support Manager - APAC
    * Support Manager - EMEA
  * Escalates after 5 min
* Level 3: 
  * Notify the following users or schedules
    * Shaun McCann
    * Lee Matos
    * Lyle Kozloff
    * Val Parsons

### Customer Support SSAT

* [Escalation policy link](https://gitlab.pagerduty.com/escalation_policies#P0DPFUO)
* Level 1
  * Notify the following users or schedules
    * SSAT Reviewing Manager

### Incident Management - CMOC Rotation

* [Escalation policy link](https://gitlab.pagerduty.com/escalation_policies#PNH1Z1L)
* Level 1
  * Notify the following users or schedules
    * Incident Management - CMOC (AMER)
    * Incident Management - CMOC (EMEA)
    * Incident Management - CMOC (APAC Group 1)
    * Incident Management - CMOC (APAC Group 2)
    * Shadow - Incident Management - CMOC (AMER)
    * Shadow - Incident Management - CMOC (APAC 1)
    * Shadow - Incident Management - CMOC (APAC 2)
    * Shadow - Incident Management - CMOC (EMEA)
  * Escalates after 10 min
* Level 2
  * Notify the following users or schedules
    * Support Manager - AMER
    * Support Manager - APAC
    * Support Manager - EMEA
  * Escalates after 5 min
* Level 3: 
  * Notify the following users or schedules
    * Shaun McCann
    * Lee Matos
    * Lyle Kozloff
    * Val Parsons

### Support Managers

* [Escalation policy link](https://gitlab.pagerduty.com/escalation_policies#PGNLUZ1)
* Level 1
  * Notify the following users or schedules
    * Support Manager - AMER
    * Support Manager - APAC
    * Support Manager - EMEA

### US Federal Customer Emergency Rotation

* [Escalation policy link](https://gitlab.pagerduty.com/escalation_policies#PNPWBEW)
* Level 1
  * Notify the following users or schedules
    * US Federal On-Call
    * US Federal On-Call - Shadow
  * Escalates after 15 min
* Level 2
  * Notify the following users or schedules
    * Support Manager - AMER
  * Escalates after 20 min
* Level 3
  * Notify the following users or schedules
    * Lyle Kozloff
    * Lee Matoes
    * Jason Colyer

## Pagerduty schedules

As per
[Pagerduty](https://support.pagerduty.com/docs/schedules):

> On-call schedules are used to map out your coverage needs, and determine who
> will be notified when an incident is triggered.

### Customer Emergencies - AMER Group 1

This rotation is used for emergencies filed by customers during AMER hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#PBLAHV7)
* Timezone: UTC
* Layer 1
  * Rotation type: weekly
  * Handoff time: Monday 1600
  * Hours:
    * Sunday:    1600-2200
    * Monday:    1600-2200
    * Tuesday:   1600-2200
    * Wednesday: 1600-2200
    * Thursday:  1600-2200
    * Friday:    1600-2200
    * Saturday:  1600-2200

### Customer Emergencies - AMER Group 2

This rotation is used for emergencies filed by customers during AMER hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#P9FKYZC)
* Timezone: UTC
* Layer 1
  * Rotation type: weekly
  * Handoff time: Monday 1700
  * Hours:
    * Sunday:    1700-2300
    * Monday:    1700-2300
    * Tuesday:   1700-2300
    * Wednesday: 1700-2300
    * Thursday:  1700-2300
    * Friday:    1700-2300
    * Saturday:  1700-2300

### Customer Emergencies - AMER Group 3

This rotation is used for emergencies filed by customers during AMER hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#PP28N7L)
* Timezone: UTC
* Layer 1
  * Rotation type: weekly
  * Handoff time: Monday 1800
  * Hours:
    * Sunday:    1800-0000
    * Monday:    1800-0000
    * Tuesday:   1800-0000
    * Wednesday: 1800-0000
    * Thursday:  1800-0000
    * Friday:    1800-0000
    * Saturday:  1800-0000

### Customer Emergencies - APAC Group 1

This rotation is used for emergencies filed by customers during the first half
of APAC hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#PQB9Q6K)
* Timezone: UTC
* Layer 4
  * Rotation type: weekly
  * Handoff time: Tuesday 0000
  * Hours:
    * Sunday:    0000-0400
    * Monday:    0000-0400
    * Tuesday:   0000-0400
    * Wednesday: 0000-0400
    * Thursday:  0000-0400
    * Friday:    0000-0400
    * Saturday:  0000-0400

### Customer Emergencies - APAC Group 2

This rotation is used for emergencies filed by customers during the second half
of APAC hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#PKPXM8K)
* Timezone: UTC
* Layer 4
  * Rotation type: weekly
  * Handoff time: Tuesday 0400
  * Hours:
    * Sunday:    0400-0800
    * Monday:    0400-0800
    * Tuesday:   0400-0800
    * Wednesday: 0400-0800
    * Thursday:  0400-0800
    * Friday:    0400-0800
    * Saturday:  0400-0800

### Customer Emergencies - EMEA

This rotation is used for emergencies filed by customers during EMEA hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#P9SV029)
* Timezone: UTC
* Layer 2 Hours:
  * Rotation type: daily
  * Handoff time: 0800
  * Hours:
    * Sunday:    N/A
    * Monday:    0800-1600
    * Tuesday:   0800-1600
    * Wednesday: 0800-1600
    * Thursday:  0800-1600
    * Friday:    0800-1600
    * Saturday:  N/A
* Layer 3
  * Rotation type: weekly
  * Handoff time: Monday 0800
  * Hours:
    * Sunday:    0800-1600
    * Monday:    N/A
    * Tuesday:   N/A
    * Wednesday: N/A
    * Thursday:  N/A
    * Friday:    N/A
    * Saturday:  0800-1600

### Incident Management - CMOC (AMER)

This rotation is used for Communications Manager on Call duties during AMER
hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#PG0SHU2)
* Timezone: UTC
* Layer 1
  * Rotation type: weekly
  * Handoff time: Monday 1600
  * Hours:
    * Sunday:    1600-0000
    * Monday:    1600-0000
    * Tuesday:   1600-0000
    * Wednesday: 1600-0000
    * Thursday:  1600-0000
    * Friday:    1600-0000
    * Saturday:  1600-0000

### Incident Management - CMOC (APAC Group 1)

This rotation is used for Communications Manager on Call duties during the
first half of APAC hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#PGUP5OB)
* Timezone: UTC
* Layer 7
  * Rotation type: weekly
  * Handoff time: Tuesday 0000
  * Hours: 
    * Sunday:    0000-0400
    * Monday:    0000-0400
    * Tuesday:   0000-0400
    * Wednesday: 0000-0400
    * Thursday:  0000-0400
    * Friday:    0000-0400
    * Saturday:  0000-0400

### Incident Management - CMOC (APAC Group 2)

This rotation is used for Communications Manager on Call duties during the
second half of APAC hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#PMPKHZN)
* Timezone: UTC
* Layer 5
  * Rotation type: weekly
  * Handoff time: Tuesday 0400
  * Hours: 
    * Sunday:    0400-0800
    * Monday:    0400-0800
    * Tuesday:   0400-0800
    * Wednesday: 0400-0800
    * Thursday:  0400-0800
    * Friday:    0400-0800
    * Saturday:  0400-0800

### Incident Management - CMOC (EMEA)

This rotation is used for Communications Manager on Call duties during AMER
hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#P59382D)
* Timezone: UTC
* Layer 3
  * Rotation type: weekly
  * Handoff time: Monday 0800
  * Hours: 
    * Sunday:    0800-1600
    * Monday:    0800-1600
    * Tuesday:   0800-1600
    * Wednesday: 0800-1600
    * Thursday:  0800-1600
    * Friday:    0800-1600
    * Saturday:  0800-1600

### US Federal On-Call

This rotation is used for emergencies filed by US Federal customers.

* [Schedule link](https://gitlab.pagerduty.com/schedules#P89ZYHZ)
* Timezone: Pacific Time (US & Canada)
* Layer 1
  * Rotation type: custom
    * Shift length: 3 days
  * Handoff time: 1100
  * Hours: 
    * Sunday:    0500-1100
    * Monday:    0500-1100
    * Tuesday:   0500-1100
    * Wednesday: 0500-1100
    * Thursday:  0500-1100
    * Friday:    0500-1100
    * Saturday:  0500-1100
* Layer 2
  * Rotation type: custom
    * Shift length: 3 days
  * Handoff time: 1100
  * Hours: 
    * Sunday:    1100-1700
    * Monday:    1100-1700
    * Tuesday:   1100-1700
    * Wednesday: 1100-1700
    * Thursday:  1100-1700
    * Friday:    1100-1700
    * Saturday:  1100-1700

### Support Manager - AMER

This rotation is used for Support Managers during AMER hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#PTI56V1)
* Timezone: UTC
* Layer 1
  * Rotation type: weekly
  * Handoff time: Monday 1600
  * Hours: 
    * Sunday:    1600-0000
    * Monday:    1600-0000
    * Tuesday:   1600-0000
    * Wednesday: 1600-0000
    * Thursday:  1600-0000
    * Friday:    1600-0000
    * Saturday:  1600-0000

### Support Manager - APAC

This rotation is used for Support Managers during APAC hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#PWBXTYX)
* Timezone: UTC
* Layer 3
  * Rotation type: weekly
  * Handoff time: Tuesday 0000
  * Hours: 
    * Sunday:    0000-0800
    * Monday:    0000-0800
    * Tuesday:   0000-0800
    * Wednesday: 0000-0800
    * Thursday:  0000-0800
    * Friday:    0000-0800
    * Saturday:  0000-0800

### Support Manager - EMEA

This rotation is used for Support Managers during EMEA hours.

* [Schedule link](https://gitlab.pagerduty.com/schedules#PXQ2ZAZ)
* Timezone: UTC
* Layer 1
  * Rotation type: weekly
  * Handoff time: Monday 0800
  * Hours: 
    * Sunday:    0800-1600
    * Monday:    0800-1600
    * Tuesday:   0800-1600
    * Wednesday: 0800-1600
    * Thursday:  0800-1600
    * Friday:    0800-1600
    * Saturday:  0800-1600

### SSAT Reviewing Manager

This rotation is used for assigning Support Managers SSAT reviewing duties.

* [Schedule link](https://gitlab.pagerduty.com/schedules#P9UIIDY)
* Timezone: UTC
* Layer 1
  * Rotation type: weekly
  * Handoff time: Tuesday 0000
  * Hours: Not restricted to specific times

### Shadow - Customer Emergenices - APAC 1

* [Schedule link](https://gitlab.pagerduty.com/schedules#PY3KXMC)
* Timezone: UTC
* Layer 1
  * Rotation type: weekly
  * Handoff time: Tuesday 0000
  * Hours
    * Sunday:    N/A
    * Monday:    0000-0400
    * Tuesday    0000-0400
    * Wednesday: 0000-0400
    * Thursday:  0000-0400
    * Friday:    0000-0400
    * Saturday:  N/A

### Shadow - Customer Emergenices - APAC 2

* [Schedule link](https://gitlab.pagerduty.com/schedules#P6HFQDO)
* Timezone: UTC
  * Rotation type: weekly
  * Handoff time: Tuesday 0400
  * Hours
    * Sunday:    N/A
    * Monday:    0400-0800
    * Tuesday    0400-0800
    * Wednesday: 0400-0800
    * Thursday:  0400-0800
    * Friday:    0400-0800
    * Saturday:  N/A

### Shadow - Customer Emergencies - EMEA

* [Schedule link](https://gitlab.pagerduty.com/schedules#PGS0SE3)
* Timezone: UTC
  * Rotation type: weekly
  * Handoff time: Monday 0800
  * Hours
    * Sunday:    N/A
    * Monday:    0800-1600
    * Tuesday    0800-1600
    * Wednesday: 0800-1600
    * Thursday:  0800-1600
    * Friday:    0800-1600
    * Saturday:  N/A

### Shadow - Incident Management - CMOC (AMER)

* [Schedule link](https://gitlab.pagerduty.com/schedules#PLI1F7W)
* Timezone: UTC
  * Rotation type: weekly
  * Handoff time: Monday 1600
  * Hours
    * Sunday:    N/A
    * Monday:    1600-0000
    * Tuesday    1600-0000
    * Wednesday: 1600-0000
    * Thursday:  1600-0000
    * Friday:    1600-0000
    * Saturday:  N/A

### Shadow - Incident Management - CMOC (APAC 1)

* [Schedule link](https://gitlab.pagerduty.com/schedules#PD1A89Z)
* Timezone: UTC
  * Rotation type: weekly
  * Handoff time: Monday 0000
  * Hours
    * Sunday:    N/A
    * Monday:    0000-0400
    * Tuesday    0000-0400
    * Wednesday: 0000-0400
    * Thursday:  0000-0400
    * Friday:    0000-0400
    * Saturday:  N/A

### Shadow - Incident Management - CMOC (APAC 2)

* [Schedule link](https://gitlab.pagerduty.com/schedules#PV4W0FH)
* Timezone: UTC
  * Rotation type: weekly
  * Handoff time: Monday 0400
  * Hours
    * Sunday:    N/A
    * Monday:    0400-0800
    * Tuesday    0400-0800
    * Wednesday: 0400-0800
    * Thursday:  0400-0800
    * Friday:    0400-0800
    * Saturday:  N/A

### Shadow - Incident Management - CMOC (EMEA)

* [Schedule link](https://gitlab.pagerduty.com/schedules#PNB4FM1)
* Timezone: (UTC+02:00) Amsterdam
* Timezone: UTC
  * Rotation type: weekly
  * Handoff time: Monday 0800
  * Hours
    * Sunday:    N/A
    * Monday:    0800-1600
    * Tuesday    0800-1600
    * Wednesday: 0800-1600
    * Thursday:  0800-1600
    * Friday:    0800-1600
    * Saturday:  N/A

## Subscribing to a Schedule

You can subscribe to a WebCal feed, suitable for viewing in Google Calendar.

From any of the above links you can subscribe to the whole schedule by clicking
**Schedule Info** and then **WebCal feed**.

Alternatively you can pull just your schedule from general
[Schedules page](https://gitlab.pagerduty.com/schedules) by clicking **Export**
then **Just my calendar** in the _WebCal Feed_ section.

If you want just one calendar for _all_ of your on-call, you can grab a WebCal
feed by clicking on your profile picture, going to **My Profile** and then
**On-Call Shift**, then clicking the **Export** button to reveal the link.
