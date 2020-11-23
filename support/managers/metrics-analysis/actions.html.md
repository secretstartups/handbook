---
layout: handbook-page-toc
title: Metrics Analysis - Hypothesis and Actions
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Purpose

This page documents hypothesis for metrics dips and techniques for evaluating them.
Additionally it includes specific actions that might be used to shore lagging metrics up.

## FRT is below target

### Ticket volume is too high

#### Past Analysis
{:.no_toc}

##### [2020-09-01](https://gitlab.com/gitlab-com/support/metrics/-/issues/1)
{:.no_toc}
**Evidence Gathered:**
 - Historical FRT achievement from 
    - [Support KPIs - SM => FRT SM](https://gitlab.zendesk.com/explore/dashboard/593393F9EDD57F39F9745F442B691EEAD106AA49B6C907D3D50046FBB4AC151E/tab/12396242)
    - [Support KPIs - SaaS => FRT SaaS](https://gitlab.zendesk.com/explore/dashboard/593393F9EDD57F39F9745F442B691EEAD106AA49B6C907D3D50046FBB4AC151E/tab/12396192)
 - Headcount by month from [Support Hiring Reports](https://drive.google.com/drive/search?q=support%20hiring%20reports)
 - Ticket count by month

**Approach:**
 - Examined historical achievement by area to see if a specific type of tickets is behind the dip in performance
 - Took a look at historical and current ticket volume to see if there are any outliers (e.g. a large increase in tickets over the past period)
 - Peered into the ratio of tickets / engineer over the past year 


#### Shaping Actions
{:.no_toc}

If ticket volume is too high:
 - Determine what is driving that volume. If it's: 
    - a specific problem type, investigate automation or clarifying workflows to increase efficiency for these problem types.
    - a specific incident, shape macros or workflows to increase efficiency, consider assigning a specific set of engineers to focus on these types of tickets.
    - a lack of headcount, focus on hiring and shape onboarding to increase the speed at which engineers can answer certain ticket problem types.
    - a general increase, focus on "burst mode" workflows; arrange groups of individuals to focus on first responses and setting customer expecations.
    

### Hypothesis 2 for FRT 
#### Past Analysis
{:.no_toc}

#### Shaping Actions
{:.no_toc}

## SSAT is below target

### Hypothesis 1 for SSAT

#### Past Analysis
{:.no_toc}

#### Shaping Actions
{:.no_toc}

## NRT is below target
### Hypothesis 1 for NRT

#### Past Analysis
{:.no_toc}

#### Shaping Actions
{:.no_toc}

### Hypothesis 3 for Time-Off impacting performance

#### Past Analysis
{:.no_toc}

##### [2020-09-14: Folks on PTO over summer and F&F days have caused lags in performance](https://gitlab.com/gitlab-com/support/metrics/-/issues/3)
**Evidence Gathered:**
 - [Ticket update volume](https://gitlab.zendesk.com/explore#/pivot-table/connection/10438872/query/41841912)
 - [Summary spreadsheet showing active contributions to ZD tickets (over 20 ticket updates per engineer per month)](https://docs.google.com/spreadsheets/d/1vEJ2ks8pNeR2HVUn1actQcGEHH1ERxct7_kIDasOWDo/edit#gid=960486526)
 - [Zapier enabled PTO calcualtor spreadsheet](https://docs.google.com/spreadsheets/d/1EFpF6_ixLtxaffd9hurvtnbXGpZuXrYAYx-5U4u3M40/edit#gid=1429709856)
 
**Approach:**
- Examine SLA performance indicators such as FRT/NRT achievement rate and median response times and identify the months or weeks where there was a downward trend.
- Narrow down the performance decline using ticket forms and other attributes.
- Using the Ticket update volume report 
   - Correlate the dates with the number of active engineers that were shown to be active that month/week (for example 20 tickets worked on per month per engineer can be considered the target volume).
- Using the Zapier enabled PTO calculator spreadsheet
   - Correlate the dates with the number of IC's on PTO
#### Shaping Actions
{:.no_toc}
