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
    

### A time-consuming workflow is causing a dip in performance

#### Past Analysis
{:.no_toc}

#### [2020-09-01: FRT Hawks spending more time on needs-org tickets is causing a dip in performance](https://gitlab.com/gitlab-com/support/metrics/-/issues/6)
{:.no_toc}

**Evidence Gathered:**
  - Tickets opened by email that had no plan (that is: emails that might trigger the needs-org workflow)
  
**Approach:**
   - Examine number of tickets that might trigger the needs-org workflow
   - Understand which of these tickets actually triggered the workflow 
   - Determine amount of time we could save by adjusting the workflow

#### Shaping Actions
{:.no_toc}

If you suspect a time consuming workflow is causing a dip in performance:
 - Identify the number of tickets that would fall under the workflow
 - Verify that the workflow is being evenly applied to the set of tickets in question
 - See if there any efficiency gains to be made through automation

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


