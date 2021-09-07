---
layout: handbook-page-toc
title: "Engineering Error Budgets"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Error Budgets for Stage Groups (worked example)

Error Budgets consist of two components: Apdex and Error Rate.

**Apdex**: The rate of operations that performed adequately.

The threshold for ‘performed adequately’ is different for each service. 

This is currently a global threshold per service, but stage groups will soon have the [ability to customise this by endpoint](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/525). 

**Error Rate**: The rate of operations that had errors. 

[The developer documentation](https://docs.gitlab.com/ee/development/stage_group_dashboards.html#check-where-budget-is-being-spent) contains detailed steps 
for how to check where budget is being spent.

## SLI, SLO, SLA?

These are Service Level Indicators, Objectives and Agreements. 

An SLA is an agreement that one group has set with another regarding the level of service that will be provided. 
We have an SLA with our customers to achieve a certain level of availability each month.

We use that agreement to set service-level objectives (SLOs). These are the standards we must meet each month in order to 
fulfil our agreements. 

Finally, the SLI is the indicator we use to determine if will meet our objective. It is the measure of how our systems are performing.  

### Storing the data to use in calculations

In this section, we talk about Apdex for Web and API endpoints. 

We record log information for each request. We store:
- the endpoint being requested
- the feature category that owned the endpoint at the time
- how long it took to generate and serve the response
- the status code for the response
- (a variety of other things)

Every endpoint is [associated with a feature category](https://docs.gitlab.com/ee/development/feature_categorization/index.html#feature-categorization). 
We use this to help with incident response as well as to attribute error budget spend to the right stage group. 

When we store how long it takes to generate the response, we can't store the exact duration due to size constraints. Instead we
use a histogram with buckets of `[0.1, 0.25, 0.5, 1.0, 2.5, 5.0]` which are [defined in the metrics catalog](https://gitlab.com/gitlab-org/gitlab/-/blob/master/lib/gitlab/metrics/web_transaction.rb#L9).
When a request takes 0.6s, we would use the 1s bucket because the request took longer than 0.5s, but less than 1s.

The highest granularity of data is stored in the logs, but we can't hold onto this data for long periods because we generate quite 
a lot of it. We retain this information for 7 days. Certain metrics are taken from this data and stored for a longer period. We do not retain 
request duration for longer than 7 days. In the long term data, we store only if the request completed within the duration threshold for that specific service.
In this case, the service is Puma.

When the duration threshold is changed, we need to be mindful of this in calculations because we don't store the exact duration of the request. 

When we have the ability to set the threshold per endpoint, we will use the configuration of that endpoint instead of the service.   

### Performing the calculations

When a person visits the stage group dashboards to see their Error Budget, we perform a calculation over the long-term data
we hold about how requests have been performing.

Using the formula on the previous page, we use the average for all requests across the previous 28 days.  

When changes are made to the thresholds used in this calculation, it takes 28 days for the effect to be seen because we are summing stored data for the whole period. 

This is different from how the Error Budget is calculated for services. For services, availability is calculated daily and then averaged.
 


 

 