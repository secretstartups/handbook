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

---
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
    
---
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

---
### Dedicating resources to a specfic set of tickets has reduced the overall capacity of the team

#### Past Analysis
{:.no_toc}

##### [2020-09-01: Adding resources more dedicated to US Federal has reduced the overall capacity of the team](https://gitlab.com/gitlab-com/support/metrics/-/issues/7)
{:.no_toc}
**Evidence Gathered:**
 - [YTD Incoming Tickets by Priority](https://gitlab-federal-support.zendesk.com/explore/dashboard/5D43737D8DD3E9472A3B176CE984ADCA2391368E94E7F578AE97B14D39152F96)
 - Team size (Global and in AMER)
 - Ticket resolution target

**Approach:**
 - Examined theoretical capacity loss by looking at tickets/engineer reduced from "general" queues.
 - Looked at AMER and Global theoretical loss
 - Examined theoretical capacity loss by repeating the above caluclation with "actual" close rates.
 - Examined "worst case" capacity loss by assuming 100% of productivity taken by this queue.

##### [2020-09-01: Adding L&R has drawn resources away from the rest of the queues that haven’t been replenished.](https://gitlab.com/gitlab-com/support/metrics/-/issues/5)
{:.no_toc}
**Evidence Gathered:**
 - [Public and internal comments per form among L&R focused engineers](https://docs.google.com/spreadsheets/d/1Zbfq--98a_PIazUi-8jMcFzT4znXEav8S42caeAuZyc/edit?usp=sharing)
 - Prior engineer experience (self-managed or SaaS) for L&R focused engineers
 - [Public and internal comments per form among engineers not focused on L&R](https://docs.google.com/spreadsheets/d/1Zbfq--98a_PIazUi-8jMcFzT4znXEav8S42caeAuZyc/edit#gid=1091975505)

**Approach:**
 - Examined capacity loss by looking at effort toward L&R tickets that reduced effort in engineer experience areas
 - Compared effort toward L&R tickets with effort in general queues for engineers with experience in those queues (e.g L&R ticket effort is ~10% of total SaaS ticket effort)
 - Examined "worst case" capacity loss by assuming 100% of effort/productivity taken by this queue.

#### Shaping Actions
{:.no_toc}

If dedicating team-members to a specific set of tickets has reduced capacity:
 - hire
 - look for efficiency gains through better workflows, processes and automation
 - determine if there are any gains to be made through engineering effort and communicate the impact

---
### Tickets have increased in difficulty
#### Past Analysis
{:.no_toc}

##### [2020-09-01: SaaS Tickets have gotten harder](https://gitlab.com/gitlab-com/support/metrics/-/issues/9)
{:.no_toc}
**Evidence Gathered:**
 - [Requestor Wait Time](https://gitlab.zendesk.com/explore/dashboard/36925DBD1F5E3C7BA541DB38D11AC51E0EAAFDD30DCB63FDE83CF1389E555D96/tab/10100682)
 - [Time to Resolve](https://gitlab.zendesk.com/explore/dashboard/36925DBD1F5E3C7BA541DB38D11AC51E0EAAFDD30DCB63FDE83CF1389E555D96/tab/10200712)
 - [Anecdotes from ICs](https://gitlab.com/gitlab-com/support/metrics/-/issues/1#note_413985941) and data from raised points:
   - [Integrated Cluster growth per month](https://docs.google.com/spreadsheets/d/17nib0Q8Db6E-Ppa2VWjmpmuhBWf0yr5kBEHpnR1eCpI/edit#gid=0)
   - [Package Registry Growth](https://docs.google.com/spreadsheets/d/17nib0Q8Db6E-Ppa2VWjmpmuhBWf0yr5kBEHpnR1eCpI/edit#gid=1324848180)
   - [Internal Issues Per Month](https://docs.google.com/spreadsheets/d/17nib0Q8Db6E-Ppa2VWjmpmuhBWf0yr5kBEHpnR1eCpI/edit#gid=1918925639)

**Approach:**
  - Examine data that correlate with difficulty (TTR and Requestor Wait Time)
  - Examine anecodotal data about ticket subjects, assuming that these areas may be underserved by experts.
 
**Notes:**
   - The data gathered while examining this hypothesis generated additional falsifiable explanations

#### Shaping Actions
{:.no_toc}

If tickets have increased in difficulty:
 - Determine if additional headcount can be applied to this area (temporarily)
 - Examine specific areas of challenge and develop training and workflows
 - See if there are possibly gains in efficiency through macros, tooling or workflow improvements
 - Identify product issues or feature requests that will reduce the impact of challenging ticket areas
 - Examine documentation for problem areas, and additional content to help customers self-serve answers

---
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


