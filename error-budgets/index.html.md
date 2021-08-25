---
layout: handbook-page-toc
title: "Engineering Error Budgets"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

As part of [our strategy][strategy] to [reinforce GitLab SaaS][product strategy] as an enterprise grade platform ready for business critical workloads, GitLab.com has specific [Availability][availability] and [Performance][performance] targets.

These targets give our users indication of the platform reliability.

Additionally, [GitLab.com Service Level Availability][SLA methodology] is also a part of our contractual agreement with platform customers. The contract might define a specific target number, and not honouring that agreement may result in financial and reputational burdens.

## What are error budgets?

The Google SRE book is generally a recommended read and under the ["Motivation for Error Budgets"][motivation] section, it states:

> The error budget provides a clear, objective metric that determines how unreliable the service is allowed to be within a single quarter. This metric removes the politics from negotiations between the SREs and the product developers when deciding how much risk to allow.

This is the goal we are striving for too, while also acknowledging that in order to arrive at the same level of sophistication, we need to take into account our specific situation, maturity and additional requirements. Our **initial approach** will directly tie Error Budget SLO with our existing approach to availability. 

Future iterations of our error budgets will seek to further develop the importance of the Product Manager in balancing risk tolerance with feature velocity. The above-mentioned clarity between developers and SRE is achieved by establishing the appropriate measures and targets for each service or area of product.  Ultimately this balances the importance of new feature work with the ongoing service expectations of users.

## What are the components of error budgets?

Error Budgets first depend on establishing an SLO (Service Level Objective). SLOs are made up of an objective, and SLI (Service Level Indicator), and a timeframe.
- **Objective**: The desired level of succcess, noted as a percentage
- **SLI**: an evaluation used to distinguish number of failed events
- **Timeframe**: enforcing a recency bias to the SLI

Here is an example of these elements:
- **Objective**: 99.95% 
- **SLI**: 95th percentile latency of api requests over 5 mins is < 100ms
- **Timeframe**: previous 28 days

Taken all together, the above example SLO would be: **_99.95% of the 95th percentile latency of api requests over 5 mins is < 100ms over the previous 28 days_**

The Error Budget is then 1 - Objective of the SLO, in this case (1 - .9995 = .0001).  Using our 28 day timeframe, **the "budget" for errors is 20.16 minutes** (.0001 * (28 * 24 * 60))

While the above example shows the SLI as a latency measurement, it is important to note that other measurements (such as % errors) are also good elements to use for SLIs.

GitLab's current implementation of Error Budgets is only using some of the above sophistication of SLOs and Error Budgets, but as we continue with the roadmap we look to incorporate more into our approach. Additionally, it is expected that the practices of SLOs and Error Budgets evolve to have **_both_** the objective and the SLI vary (appropriately) based on the criticality of the service as well as the resiliency of other services and components which depend on it.

## Why are we using error budgets?

GitLab is a complex system that needs to be delivered as a highly available SaaS platform. Over the years, several processes have been introduced to address some of the challenges of maintaining feature delivery velocity while ensuring that the SaaS reliability continues to increase.

The [Infradev Process](/handbook/engineering/workflow/#infradev) was created to prioritize resolving an issue after an incident or degradation has happened. While the process has proven to be successful, it is _event-focused_ and _event-driven_.

The [Engineering Allocation Process](/handbook/engineering/#engineering-allocation) was created to address long term team efficiency, performance and security items. 

The initial iteration of error budgets at GitLab aims to introduce objective data and establish a system that will create greater insight into how individual features are performing over an extended period of time. This can be used by the organization to correctly allocate focus, ensure that the risk is well balanced and that the system as a whole remains healthier for extended periods of time.

Assigning error budgets down to the feature category sets a baseline for specific features, which in turn should ensure alignment on prioritizing what's important for GitLab SaaS.  

# The Error Budget Policy for GitLab.com

The error budgets process has a few distinct items:

1. Budget stakeholders
1. Budget allocation
1. Budget spend and accounting
1. Communication between the stakeholders

## Budget stakeholders

The stakeholders in the Error Budget process are:

1. Stage teams (Product department and the supporting Engineering teams represented on the [product categories page][categories])
1. Infrastructure teams (Teams represented on the [infrastructure team page][infra teams])
1. [VP of Infrastructure and Infrastructure Leadership](https://about.gitlab.com/handbook/engineering/infrastructure/#mstaff)
1. VP of Development and VP of Product 


## Budget allocation

Error budget is calculated based on the [availability] targets.

With the current target of `99.95%` availability, allowed unavailability window is `20 minutes per 28 day period`.

We elected to use the 28 day period to match Product reporting methods. 

The budget is set on the SaaS platform and is shared between stage and infrastructure teams. Service Level Availability calculation methodology is covered in details at [the GitLab.com SLA page][SLA methodology].

This includes all Rails Controllers, API Endpoints, Sidekiq workers, and other SLIs defined in the service catalog. This is attributed to groups by defining a feature category. Documentation about feature categorisation is available in the [developer guide](https://docs.gitlab.com/ee/development/feature_categorization/index.html#feature-categorization).

This budget does not take into account the number or complexity of the features owned by a team, existing product priorities, or the team size.

## Budget spend announcements

On the 4th of each month, the following announcements are made:

- Budget Spend by Service 
- Budget Spend by Stage Group 

The announcements appear in `#product`, `#eng-managers`, `#f_error_budgets` and `#development`

Feature categories with monthly spend above the allocated budget for three consecutive months are reported as part of the Engineering Allocation meeting.

## Budget spend(by service)

The current budget spend can be found on the [general SLA dashboard][SLA dashboard].

Spent budget is the time (in minutes) during which user facing services have experienced a percentage of errors below the specified threshold and latency is above the specified objectives for the service. The details on how SLA is calculated can be found at [the GitLab.com SLA page][SLA methodology].

The budget spend is currently aggregated at the primary service level.

![Complete budget](img/complete-budget.png)

![Spent budget](img/spent-budget.png)

Details on what contributed to the budget spend can be further found by examining the raised incidents, and exploring the specific service dashboard (and its resources).

## Budget spend (by stage group)

There is [an example available](error-budget-by-stage-group-example.html) with a more detailed look at how this is built. 

The current [28 day](/handbook/business-technology/data-team/programs/data-for-product-managers/#usage_ping_metric_count-snippet) budget spend can be found on each [stage group dashboard][stage group dashboards]. Feature categories for that stage group are rolled up to a single value. 

Stage groups can use their dashboards to explore the cause of their budget spend. The process to investigate the budget spend is described in [the developer documentation](https://docs.gitlab.com/ee/development/stage_group_dashboards.html#check-where-budget-is-being-spent)

The formula for calculating availability:
```
the number of operations with a satisfactory apdex + the number of operations without errors    
/
the total number of apdex measurements + the total number of operations
```

This gives us the percentage of operations that completed successfully and is converted to minutes:
```
(1 - stage group availability) * (28 * 24 * 60)
```

Apdex and Error Rates are explained in more detail on [the handbook page](https://about.gitlab.com/handbook/engineering/monitoring/#gitlabcom-service-level-availability).  

Error Budget Spend information is available on the [Error Budgets Overview Dashboard](https://app.periscopedata.com/app/gitlab/891029/Error-Budgets-Overview) in Sisense.

### How to change error budget attribution

Error budget events are attributed to stage groups via [feature categorization](https://docs.gitlab.com/ee/development/feature_categorization/index.html#feature-categorization). Updates to this mapping can be managed via merge requests if ownership of a part of the platform moves from one feature category to another.

Updates to feature categories only change how future events are mapped to stage groups. Previously reported events will not be retroactively updated and will continue to count against stage group error budgets.

### Contract

All feature categories are expected to perform within their Error Budget regardless of traffic share. This ensures a consistent approach to prioritization of reliability concerns.  

Error Budgets should be reviewed monthly as part of the [Product Development Timeline](https://about.gitlab.com/handbook/engineering/workflow/#product-development-timeline). 

The balance between feature development and reliability development for a feature category should be as follows:

|**Monthly Spend**               |**Action**|
|------------------------------  |----------|
| <= 20 minutes                   | Understand your spend - no further action required. |
| > 20 minutes                   | Commitment to [reliability/availability improvements](https://about.gitlab.com/handbook/product/product-processes/#prioritization), feature development is secondary. |

Feature categories with monthly spend above the allocated budget for three consecutive months may have additional feature development restrictions put in place.    
_This is subject to change as Error Budget spend across feature categories decreases._

### Error Budget DRIs 

| Role | K/PI | Target | Current Tracking Status |
| --- | --- | --- | --- |
| Product Management | [Maintaining the Spend of the Error Budget](https://app.periscopedata.com/app/gitlab/891029/Error-Budgets-Overview) | 20 minutes over 28 days (equivalent to 99.95% availability) | Complete - In Sisense |
| Infrastructure | [Setting the Error Budget Minutes and Availability Target](/handbook/engineering/infrastructure/performance-indicators/#gitlabcom-availability) | 99.95% (20 minutes over 28 days Error Budget) | Complete - In Grafana |

* For groups with engineering allocations, the responsibility to maintain the spend of error budget is with the development team instead of the product management team.

# Current State and Future Intent

## Current State

1. Error budgets exist for each feature category and incorporate a standard apdex threshold and error rate.
1. Error budgets are published for stage groups and stages through Grafana and Sisense Dashboards.
1. Contributing factors are explorable through links available on the Grafana Dashboards.
1. Error budgets are included in the [Product Prioritization process]((https://about.gitlab.com/handbook/engineering/workflow/#product-development-timeline).). 

## Roadmap

The changes below aim to increase the maturity of the Error Budgets. 

#### 1. Increase precision of Error Budget calculations (apdex portion)

**Improvements**

- _**Cancelled**_ The SLO targets originally used for Error Budgets are coupled with the alerting used for Infrastructure monitoring. We [proposed to use Sisense to be able to set targets by stage group](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/1236), but this approach was not favoured. We found a method to use separate targets for the Infrastructure monitoring and the Error Budgets, but the decision was taken to keep the targets the same and adjust the default latency threshold for the apdex portion of the Error Budgets (see next item).
- _**Completed**_ SLI calculations used request duration threshold which was not appropriate for all endpoints. [The threshold was increased to 5s](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/1243) on the 21st of Sept and it will take 28 days for the full effect to be shown in the Error Budgets. 
- Stage groups will next be enabled to set their own SLI per endpoint by expanding on the configurability of SLI request duration threshold. [epic](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/525). 
- Endpoints that are currently `not_owned` will be attributed to the correct feature category. This will be addressed by [using caller information for Sidekiq](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/1200)
and having [graphQL query-to-feature correlation](https://gitlab.com/gitlab-org/gitlab/-/issues/328535).
- The [impact of system-wide outages on Error Budgets should be more clear](https://gitlab.com/gitlab-com/Product/-/issues/2884).
- Provide guidance for PM's who report on both Error Budgets and Service Availability. (Such as Runner and Pages). 

**Product Development Activities**

Product Development teams are encouraged to:
- Continue working on [Rapid Action][rapid action], [Infradev][infradev], [Corrective Actions][corrective action], [Security][security vulnerabilities], and [Engineering Allocation][engineering allocation] issues per our [Prioritization guidelines][engineering prioritization]
- Propose SLOs for their endpoints
- Provide further feedback for future improvements to Error Budgets

#### 2. Increase visibility into Error Budgets (error portion)

- Stage groups are provided with error count information. This can be supplemented with further detail by [making error information
explorable with Sentry](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/396). 

#### 3. Tune the scope of Error Budgets

- Consider incorporating P1/S1 incidents into the Error Budget Calculation.  

## More information

- [Error Budget AMA](https://docs.google.com/presentation/d/1yYnLlTN8KOYNHww91nJgnbFK7l2xf3Cy1mRvUAxHa08/edit)
- [Understanding Stage Level Error Budget Dashboards](https://docs.gitlab.com/ee/development/stage_group_dashboards.html#error-budget)

[strategy]: /direction/#3-year-strategy
[product strategy]: /direction/enablement/dotcom/
[availability]: /handbook/engineering/infrastructure/performance-indicators/#gitlabcom-availability
[performance]: /handbook/engineering/infrastructure/performance-indicators/#gitlabcom-performance
[SLA methodology]: /handbook/engineering/monitoring/#gitlabcom-service-level-availability
[embracing risk]: https://landing.google.com/sre/sre-book/chapters/embracing-risk/#id-AnCDFmtB
[velocity]: /handbook/engineering/#the-importance-of-velocity
[motivation]: https://landing.google.com/sre/sre-book/chapters/embracing-risk/#id-na2u1S2SKi1
[infradev]: /handbook/engineering/workflow/index.html#availability-and-performance-refinement
[architecture]: /handbook/engineering/architecture/workflow/
[categories]: /handbook/product/categories/
[infra teams]: /handbook/engineering/infrastructure/team/
[severity]: /handbook/engineering/quality/issue-triage/#availability
[okr]: /handbook/engineering/#engineering-okr-process
[eng comms]: /handbook/engineering/#keeping-yourself-informed
[SLA dashboard]: https://dashboards.gitlab.net/d/general-slas/general-slas?orgId=1&from=now-30d&to=now
[stage group dashboards]: https://dashboards.gitlab.net/dashboards/f/stage-groups/stage-groups
[rapid action]: /handbook/engineering/development/#rapid-action
[infradev]: /handbook/engineering/workflow/#infradev
[corrective action]: /handbook/engineering/infrastructure/incident-review/#incident-review-issue-creation-and-ownership
[security vulnerabilities]: /handbook/engineering/security/vulnerability_management/#vulnerability-management-overview
[engineering allocation]: /handbook/engineering/#engineering-allocation
[engineering prioritization]: /handbook/engineering/#prioritizing-technical-decisions
