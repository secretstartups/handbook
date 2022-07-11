---
layout: handbook-page-toc
title: 'Zendesk US Federal SLA Policies'
category: 'Zendesk US Federal'
description: 'An overview of the Zendesk Federal SLA policies'
noindex: true
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/204770038-Defining-and-using-SLA-policies):

> A Service Level Agreement, or SLA, is an agreed upon measure of the response
> and resolution times that your support team delivers to your customers.
> Providing support based on service levels ensures that you're delivering
> measured and predictable service. It also provides greater visibility when
> problems arise.

Keep in mind only 1 SLA policy can be in place for a ticket. As such, it will
use the top most SLA based on the list of our SLAs (see below).

**NOTE**: What appears here is all titled SLA, but many of these are internal
SLOs instead (For example, the Next response time is an SLO while the First response time is an SLA). They are titled SLA because that is what Zendesk calls the
setting.


## Changing SLA Policies

This requires an exact process, which is detailed via the
[SLA Change Process workflow](../workflows/sla_change_process.html)

## Current SLA Policies

### Premium/Ultimate

* Conditions
  * Matches ALL of:
    * `Tags` contains at least one of `starter premium ultimate prospect`
  * Matches ANY of:
    * Form is Support
    * Form is Triage
    * Form is Upgrade Assistance
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 30m | 4h | 8h| 12h |
| Next reply time | 4h | 4h | 8h | 12h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Emergency SLA

* Conditions:
  * Matches ALL of:
    * Form is Emergency
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 30m | 30m | 30m| 30m |
| Next reply time | 4h | 4h | 4h | 4h |
| Hours of operation | Calendar hours | Calendar hours | Calendar hours | Calendar hours |

### L&R

* Conditions
  * Matches ALL of:
    * Form is L&R
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 8h | 8h | 8h| 8h |
| Next reply time | 24h | 24h | 24h | 24h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Support Ops

* Conditions
  * Matches ALL of:
    * Form is Shared Organization Request
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24h | 24h | 24h| 24h |
| Next reply time | 24h | 24h | 24h | 24h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Missing SLA

* Conditions:
  * Matches ALL of:
    * `Tags` contains at least one of `missing_sla_tag`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24h | 24h | 24h| 24h |
| Next reply time | 24h | 24h | 24h | 24h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

<!--

## Special Situations

There are special situations in which the SLA clock will not behave as we would
like. We have implemented custom solutions for these situations, as follows.

-->
