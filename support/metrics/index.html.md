---
layout: handbook-page-toc
title: Support Engineering Parameters and Metrics
description:
---

## Purpose

This page documents various planning parameters and metrics which Support team
members use when doing planning and analysis.

It serves as a repository for:

* What's being used and the purpose for it.
* Who's responsible for it.

The goal is to provide visibility into planning and analysis efforts undertaken
by Support team members, form a basis for coordination, and reduce duplication
of efforts.

### How do these metrics differ from Performance Indicators?

The [Customer Support Deparment Performance Indicators](../performance-indicators/)
are formal metrics used to keep track of how well the Support team is doing as a
whole.

The planning parameters and metrics included in this page are for exploratory
and internal planning purposes and should not be used for reporting on
performance.

## Parameters

### Support time segments

A common set of time segments Support team members can refer to when discussing
topics which are bound to specific periods of the global day, such as support
engineer availability and workload.

* DRI: Wei-Meng Lee ([@weimeng](https://gitlab.com/weimeng))

The support time segments are based on each region's business hours as defined
in [Preferred Region for Support](/support/#effect-on-support-hours-if-a-preferred-region-for-support-is-chosen)
and were chosen to maximise overlap between region's segments, and to align with
periods of high customer messages received per hour.

![Support time segments](support_time_segments.png)

Note that these are time segments and not geographical segments. What's
important is that we have folks available and actively working Support these
hours. For this reason, the time segments were named "Early", "Middle" and
"Late" instead of "East", "Central" and "West" to avoid any association with
geographic locations.

Here are the time segments in tabular form:

| Region      | Anchor TZ | Local start | Local end | UTC start | UTC end | Length  |
|-------------|-----------|-------------|-----------|-----------|---------|---------|
| AMER-Early  | PT        | 05:00       | 09:00     | 13:00     | 17:00   | 4 hours |
| AMER-Middle | PT        | 09:00       | 13:00     | 17:00     | 21:00   | 4 hours |
| AMER-Late   | PT        | 13:00       | 17:00     | 21:00     | 01:00   | 4 hours |
| APAC-Early  | AEST      | 09:00       | 12:00     | 23:00     | 02:00   | 3 hours |
| APAC-Middle | AEST      | 12:00       | 16:00     | 02:00     | 06:00   | 4 hours |
| APAC-Late   | AEST      | 16:00       | 22:00     | 06:00     | 12:00   | 6 hours |
| EMEA-Early  | CET       | 08:00       | 14:00     | 07:00     | 13:00   | 6 hours |
| EMEA-Late   | CET       | 14:00       | 18:00     | 13:00     | 17:00   | 4 hours |

## Metrics

None documented yet.
