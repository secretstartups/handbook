---
layout: handbook-page-toc
title: "GitLab Dedicated SLAs"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# GitLab Dedicated Service Level Availability
Service Level Availability (SLA) is the percentage of time during which the platform is in an available state. This document defines how Availability is calculated in GitLab Dedicated.

## Scope
The customer-facing services that are considered when calculating Availability include:

| Service | Features |
| ------ | ------ |
| webservice | GitLab Issues, Merge Requests, CI Job Logs Page; GitLab API; Git Push, Pull, Clone Operations over HTTPS |
| registry | Container Registry HTTPS requests |
| gitlab-shell | Git Push, Git Pull, Clone Operations over SSH|

## Availability Score Calculation
For each customer-facing service above we measure two SLIs, as described in https://gitlab.com/gitlab-com/runbooks/-/tree/master/reference-architectures/get-hybrid#service-level-indicators:
1. The **Error SLI** is an indication of requests that are successful, (i.e. not returning a 5xx error).
1. The **Apdex SLI** in an indicator of requests that complete with a satisfactory latency. Apdex is defined using the [industry definition](https://en.wikipedia.org/wiki/Apdex) with two latency thresholds: _satisfactory_ and _tolerable_. For Dedicated, satisfactory requests take less than 1s to complete, tolerable requests take less than 10s to complete.

Combining these two SLIs, we score each request as follows:

| Server Error? | Latency <= 1s | Latency <= 10s | Latency > 10s | 
| --- | --- | ------ | ------ |
| No | 1 | 0.5 | 0 |
| Yes | 0 | 0 | 0 |

The availability of the service is calculated using the following measurement:

For each calendar month, we calculate the sum of the combined SLI scores for all requests in that month, excluding any requests made during maintenance windows, and divide this by the total number of requests during that period (again, excluding maintenance windows).

Availability = sum(qualifying SLIs for the entire month)/total(qualifying requests for the entire month). This availability should exceed the Current Service Level Objective.

## Current Service Level Objective
GitLab's current monthly service level objective for GitLab Dedicated is 99.5% (the "Service Level Objective").

## Exclusions
Service Level Availability (SLA) does not include failures resulting from misuses or misconfiguration of the applicable Service, customer activity outside our terms of service, components or services not defined in the Scope section, factors outside of GitLab’s control such as force majeure events, Customer’s or selected Cloud hosting providers services, equipment or other technologies. Also not included in SLA are any scheduled maintenance or urgent unscheduled maintenance necessary to address critical issues (e.g. security vulnerabilities, data consistency issues, etc).

# GitLab Dedicated Disaster Recovery Plan

## Scope
This recovery plan is scoped to the following scenarios:
1. Partial region outage (e.g. AZ failure)
1. Complete outage to primary region

Events that have a more severe impact such as loss to both primary and secondary regions, global internet outages, or data corruption issues are out of scope from this plan.

The recovery time objective ("Recovery Time Objective" or "RTO") for this plan will be based on how long it takes to re-provision the required infrastructure and restore from the most recently available backup. 

The recovery point objective ("Recovery Point Objective" or "RPO") is based on the frequency of snapshots across our data sources.

In order to receive RPO and RTO targets, customers must specify a primary and secondary region upon onboarding. For customers who have only specified a primary region, we will still make an effort to recover, but will not offer any commitments around timing.

We will regularly test this plan and take all commercially reasonable efforts to ensure its success within the below RTO/RPO goals.

## Current RTO Target
8 hours

## Current RPO Target
4 hours
