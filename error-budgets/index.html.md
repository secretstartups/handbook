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

The Google SRE book is generally a recommended read, but specifically [the Embracing Risk chapter][embracing risk] covers in great detail the topic this page is aiming to cover.

> Extreme reliability comes at a cost: maximizing stability limits how fast new features can be developed and how quickly products can be delivered to users, and dramatically increases their cost, which in turn reduces the numbers of features a team can afford to offer

At GitLab, we are already highlighting [the Importance of Velocity][velocity].

In the same chapter of the Google SRE book, under the ["Motivation for Error Budgets"][motivation] section, it states:

> The error budget provides a clear, objective metric that determines how unreliable the service is allowed to be within a single quarter. This metric removes the politics from negotiations between the SREs and the product developers when deciding how much risk to allow.

This is the goal we are striving for too, while also acknowledging that in order to arrive at the same level of sophistication, we need to take into account our specific situation, maturity and additional requirements.
Our initial approach will directly tie Error Budget SLO with our existing approach to availability. However, in future iterations we look to further develop the importance of the Product Manager in setting SLO. The above-mentioned clarity between developers and SRE is achieved by the right SLO target which balances the importance of new feature work with the ongoing service expectations of users.

## GitLab organizational requirements

At the moment of writing this document in Q3 FY21, GitLab has several specific organizational requirements:

1. GitLab operates publicly and transparently
1. GitLab delivers both open source and a proprietary product
1. GitLab is a monolithic application
1. GitLab ships both a SaaS version and a self-managed installation methods for both types of product
1. GitLab SaaS is using the same codebase as GitLab self-managed
1. GitLab SaaS is deployed using unmodified deployment versions
1. Product function is exclusively responsible for development prioritisation for both SaaS and self-managed
1. Infrastructure department is responsible for SaaS availability

All of the above items contribute to the complexity of the already complex task of
delivering a highly available SaaS platform. Over the years, several processes have been introduced to address some of the challenges of maintaining feature delivery velocity while ensuring that the SaaS reliability continues to increase.

The `Infradev Process` (now deprecated), was created to prioritize resolving an issue after an incident or degradation has happened. While the process has proven to be successful, it is _event-focused_ and _event-driven_.

In reality, the events causing reliability issues are often a culmination of a trend; this can be driven by the complexity of the feature but also by lack of insight into how the feature performs.

Each of the teams at GitLab have a specific set of metrics on which team performance is measured on. This can often create differing short-term goals, which in turn can cause prioritization challenges.

Assigning error budgets down to the feature category sets a baseline for specific features, which in turn should ensure alignment on prioritizing what's important for GitLab SaaS.

The initial iteration of error budgets at GitLab aims to introduce and establish a system that will create greater insight into how individual features are performing over a longer period of time. This can be used by the organization to correctly allocate focus, ensure that the risk is well balanced and that the system as a whole remains healthier for extended periods of time.

# The Error Budget Policy for GitLab.com

The error budgets process has a few distinct items:

1. Budget stakeholders
1. Budget allocation
1. Budget spend
1. Budget accounting
1. Communication between the stakeholders

## Budget stakeholders

Rollout of the initial process identifies the following stakeholders:

1. Stage teams (Product department and the supporting Engineering teams represented on the [product categories page][categories])
1. Infrastructure teams (Teams represented on the [infrastructure team page][infra teams])
1. Infrastructure organization and [VP of Infrastructure](https://about.gitlab.com/handbook/engineering/infrastructure/#mstaff) (Responsible for the implementation, maintenance, and overall effectiveness of Error Budget programs and policy)

Both the Stage teams as well as Infrastructure may contribute to budget spend.

## Budget allocation

Error budget is calculated based on the [availability] targets.

With the current target of `99.95%` availability, allowed unavailability window is `21.6 minutes per month`.

As our availability targets are reported on calendar months, error budgets are reported on calendar months.

The budget is set on the SaaS platform and is shared between stage and infrastructure teams. Service Level Availability calculation methodology is covered in details at [the GitLab.com SLA page][SLA methodology].

This budget does not take into account the number or complexity of the features owned by a team, existing product priorities, or the team size.

## Budget spend

The current budget spend can be found on the [general SLA dashboard][SLA dashboard].

Spent budget is the time (in minutes) during which user facing services have experienced a percentage of errors below the specified threshold and latency is above the specified objectives for the service. The details on how SLA is calculated can be found at [the GitLab.com SLA page][SLA methodology].

The budget spend is currently aggregated at the primary service level.

![Complete budget](img/complete-budget.png)

![Spent budget](img/spent-budget.png)

Details on what contributed to the budget spend can be further found by examining the raised incidents, and exploring the specific service dashboard (and its resources).

## Budget accounting

The Infrastructure department announces the budget spend at the end of each month in [the relevant Engineering communication channels][eng comms].

The budget spend is also announced in [the weekly GitLab SaaS call](/handbook/engineering/infrastructure/#gitlab-saas-infrastructure).

## Current State and Future Intent

This process complements the [Engineering Architecture evolution process][architecture] in that:

1. Error budgets show trends focused on the specific feature category.
1. Architecture evolution proposes a fundamental change spanning one or more of affected features.
1. Both in turn drive the prioritization process based on the existing need to improve reliability.
1. The outcome of improvement reinstates the spent budget allowing for new feature development.

This initial error budget instrumentation, tracking, and reporting is meant to provide insight into future product prioritization process changes. We recognize that it is rarely easy to implement the changes which allow for "switch to reliability focus" upon the depletion of an error budget. We will seek to learn through this initial implementation and continue to iterate to make error budgets an effective influence to continuing reliability of GitLab.com SaaS services.

Notable items to be addressed in future iterations include:

1. Definition, description, process, and collaboration on what is expected by teams in response to the depletion of an error budget. We're focusing on visibility now, but we need to decide together and in a detailed way how we respond to this in the future.
1. De-coupling Error Budgets direct availability measurement. SLOs are meant to inform SLAs and we shouldn't aim to consistently exceed SLOs. However, for this to work they must not be the same value.

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
[categories]: /handbook/product/product-categories/
[infra teams]: /handbook/engineering/infrastructure/team/
[severity]: /handbook/engineering/quality/issue-triage/#availability
[okr]: /handbook/engineering/#engineering-okr-process
[eng comms]: /handbook/engineering/#keeping-yourself-informed
[SLA dashboard]: https://dashboards.gitlab.net/d/general-slas/general-slas?orgId=1&from=now-30d&to=now
