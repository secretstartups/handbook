---
layout: handbook-page-toc
title: 'Zendesk Global Schedules'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global schedules'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Schedules in Zendesk are like schedules in most other things: windows of time.
We use these to determine business hours and various regional working hours.

## GitLab Schedules

### [Business Hours](https://gitlab.zendesk.com/agent/admin/schedules/91387)

* Timezone: Pacific Time (US & Canada)
* Sunday: 1500-2400
* Monday: 0000-2400
* Tuesday: 0000-2400
* Wednesday: 0000-2400
* Thursday: 0000-2400
* Friday: 0000-1700
* Saturday: Closed

### [Regional hours - EMEA](https://gitlab.zendesk.com/agent/admin/schedules/360000029879)

* Timezone: Amsterdam
* Sunday: Closed
* Monday: 0800-1800
* Tuesday: 0800-1800
* Wednesday: 0800-1800
* Thursday: 0800-1800
* Friday: 0800-1800
* Saturday: Closed

### [Regional hours - AMER](https://gitlab.zendesk.com/agent/admin/schedules/360000029899)

* Timezone: Pacific Time (US & Canada)
* Sunday: Closed
* Monday: 0500-1700
* Tuesday: 0500-1700
* Wednesday: 0500-1700
* Thursday: 0500-1700
* Friday: 0500-1700
* Saturday: Closed

### [Regional hours - APAC](https://gitlab.zendesk.com/agent/admin/schedules/360000029919)

* Timezone: Brisbane
* Sunday: Closed
* Monday: 0900-2100
* Tuesday: 0900-2100
* Wednesday: 0900-2100
* Thursday: 0900-2100
* Friday: 0900-2100
* Saturday: Closed

Note: Brisbane was chosen as the reference timezone for APAC as daylight saving
time is not observed there.

### [Low Priority Tickets](https://gitlab.zendesk.com/agent/admin/schedules/360000044539)

* Timezone: Pacific Time (US & Canada)
* Sunday: 1500-2400
* Monday: 0000-2400
* Tuesday: 0000-2400
* Wednesday: 0000-2400
* Thursday: 0000-2400
* Friday: 0000-1700
* Saturday: Closed

## Holidays

All schedules should utilize the same holidays. The ones we currently put into
Zendesk are:

* Easter (this is a "movable feast" holiday, so it changes each year)
* Christmas (December 25th)
* New Years Day (January 1st)

On those day, the schedules "stop", which results in the SLA clock not moving.
This allows for Support to actually have those holidays "off".
