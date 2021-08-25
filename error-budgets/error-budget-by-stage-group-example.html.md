---
layout: handbook-page-toc
title: "Engineering Error Budgets"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Error Budgets for Stage Groups (worked example)

The budget is calculated based on indicators per component. Each component can have 2 indicators:

**Apdex**: The rate of operations that performed adequately.

The threshold for ‘performed adequately’ is different for each service. 

This is currently a global threshold per service, but stage groups will soon have the [ability to customise this by endpoint](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/525). 

**Error rate**: The rate of operations that had errors. 

[The developer documentation](https://docs.gitlab.com/ee/development/stage_group_dashboards.html#check-where-budget-is-being-spent) contains detailed steps 
for how to check where budget is being spent.

## SLI, SLO, SLA?

These are Service Level Indicators, Objectives and Agreements. 

An SLA is an agreement that one group has set with another regarding the level of service that will be provided. 
We have an SLA with our customers to have a certain level of availability each month.

We use that agreement to set service-level objectives (SLOs). These are the standards we must meet each month in order to 
fulfil our agreements. 

Finally, the SLI is the indicator we use to determine if will meet our objective. It is the measure of how our systems are performing. 

### An example using web requests 

#### Storing the data to use in calculations

We record log information for each request. Amongst other things we store:
- the endpoint being requested
- the feature category that owned the endpoint at the time
- how long it took to generate and serve the response
- the status code for the response

Every endpoint is [associated with a feature category](https://docs.gitlab.com/ee/development/feature_categorization/index.html#feature-categorization). We use this to attribute the error budget to the right category.

When we store how long it takes to generate the response, we can't store the exact duration due to size constraints. Instead we
use a histogram with buckets of `[0.1, 0.25, 0.5, 1.0, 2.5, 5.0]` which are [defined in the metrics catalog](https://gitlab.com/gitlab-org/gitlab/-/blob/master/lib/gitlab/metrics/web_transaction.rb#L9).
When a request takes 0.6s, we would use the 1s bucket because the request took longer than 0.5s, but less than 1s.

The highest granularity of data is stored in the logs, but we can't hold onto this data for long periods because we generate quite 
a lot of it. We retain this information for 7 days. Certain metrics are taken from this data, and we store those metrics 
for a much longer period. We do not retain request duration for longer than 7 days. In the long term data, we store only if the request 
completed within the duration threshold for that specific service.  


#### Performing the calculations

When a person visits the stage group dashboards to see their Error Budget, we perform a calculation over the long-term data
we hold about how requests have been performing. 


 

 