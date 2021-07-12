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

This is the goal we are striving for too, while also acknowledging that in order to arrive at the same level of sophistication, we need to take into account our specific situation, maturity and additional requirements.
Our initial approach will directly tie Error Budget SLO with our existing approach to availability. However, in future iterations we look to further develop the importance of the Product Manager in setting SLO. The above-mentioned clarity between developers and SRE is achieved by the right SLO target which balances the importance of new feature work with the ongoing service expectations of users.

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
1. Infrastructure organization and [VP of Infrastructure](https://about.gitlab.com/handbook/engineering/infrastructure/#mstaff) (Responsible for the implementation, maintenance, and overall effectiveness of Error Budget programs and policy)

Both the Stage teams as well as Infrastructure may contribute to budget spend.

## Budget allocation

Error budget is calculated based on the [availability] targets.

With the current target of `99.95%` availability, allowed unavailability window is `20 minutes per 28 day period`.

We elected to use the 28 day period to match Product reporting methods. 

The budget is set on the SaaS platform and is shared between stage and infrastructure teams. Service Level Availability calculation methodology is covered in details at [the GitLab.com SLA page][SLA methodology].

This includes all Rails Controllers, API Endpoints, Sidekiq workers, and other SLIs defined in the service catalog. This is attributed to groups by defining a feature category. Documentation about feature categorisation is available in the [developer guide](https://docs.gitlab.com/ee/development/feature_categorization/index.html#feature-categorization).

This budget does not take into account the number or complexity of the features owned by a team, existing product priorities, or the team size.


## Budget spend(by service)

The current budget spend can be found on the [general SLA dashboard][SLA dashboard].

Spent budget is the time (in minutes) during which user facing services have experienced a percentage of errors below the specified threshold and latency is above the specified objectives for the service. The details on how SLA is calculated can be found at [the GitLab.com SLA page][SLA methodology].

The budget spend is currently aggregated at the primary service level.

![Complete budget](img/complete-budget.png)

![Spent budget](img/spent-budget.png)

Details on what contributed to the budget spend can be further found by examining the raised incidents, and exploring the specific service dashboard (and its resources).

### Budget accounting

The Infrastructure department announces the budget spend at the end of each month in [the relevant Engineering communication channels][eng comms].

The budget spend is also announced in [the weekly GitLab SaaS call](/handbook/engineering/infrastructure/#gitlab-saas-infrastructure).

## Budget spend (by stage group)

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

### Budget accounting

The budget spend on each stage group dashboard shows the value for the previous 28 days. 

Each week, budget spend information is added to the Engineering Allocation meeting agenda.

Top-level error budget spend information is available in Sisense on the [Error Budgets Overview Dashboard](https://app.periscopedata.com/app/gitlab/891029/Error-Budgets-Overview)

Guidance for stage groups is:

|**Monthly Spend** |**Action**|
|------------------|----------|
| < 10 minutes     | Understand your spend - no further action required. |
| > 10 minutes     | Increase focus on performance and availability, reach out to Scalability for guidance via [review request issue](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=). |

#### How to change error budget attribution

Error budget events are attributed to stage groups via [feature categorization](https://docs.gitlab.com/ee/development/feature_categorization/index.html#feature-categorization). Updates to this mapping can be managed via merge requests if ownership of a part of the platform moves from one feature category to another.

Updates to feature categories only change how future events are mapped to stage groups. Previously reported events will not be retroactively updated and will continue to count against stage group error budgets.

# Current State and Future Intent

This process complements the [Engineering Architecture evolution process][architecture] in that:

1. Error budgets show trends focused on the specific feature category.
1. Architecture evolution proposes a fundamental change spanning one or more of affected features.
1. Both in turn drive the prioritization process based on the existing need to improve reliability.
1. The outcome of improvement reinstates the spent budget allowing for new feature development.

This initial error budget instrumentation, tracking, and reporting is meant to provide insight into future product prioritization process changes. We recognize that it is rarely easy to implement the changes which allow for "switch to reliability focus" upon the depletion of an error budget. We will seek to learn through this initial implementation and continue to iterate to make error budgets an effective influence to continuing reliability of GitLab.com SaaS services.

Notable items to be addressed in future iterations include:

1. Definition, description, process, and collaboration on what is expected by teams in response to the depletion of an error budget. We're focusing on visibility now, but we need to decide together and in a detailed way how we respond to this in the future.
1. De-coupling Error Budgets direct availability measurement. SLOs are meant to inform SLAs and we shouldn't aim to consistently exceed SLOs. However, for this to work they must not be the same value.
1. We will create a more gradual scale and tighten the budgets as we start seeing budgets used more widely for prioritization decisions.

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

### Error Budget DRIs 

| Role | K/PI | Target | Current Tracking Status |
| --- | --- | --- | --- |
| Product Management | [Maintaining the Spend of the Error Budget](https://dashboards.gitlab.net/d/general-slas/general-slas?orgId=1&from=now-30d&to=now) | 20 minutes over 28 days (equivalent to 99.95% availability) | In progress - In Grafana<br/>Working to add per Stage data to Sisense [gitlab#1033](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/1033) |
| Infrastructure | [Setting the Error Budget Minutes and Availability Target](/handbook/engineering/infrastructure/performance-indicators/#gitlabcom-availability) | 99.95% (20 minutes over 28 days Error Budget) | Complete - In Grafana |


### More information

1. [Error Budget AMA](https://docs.google.com/presentation/d/1yYnLlTN8KOYNHww91nJgnbFK7l2xf3Cy1mRvUAxHa08/edit)
1. [Understanding Stage Level Error Budget Dashboards](https://docs.gitlab.com/ee/development/stage_group_dashboards.html#error-budget)
