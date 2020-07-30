---
layout: handbook-page-toc
title: "Engineering Error Budgets"
---

As part of [our strategy][strategy] to reinforce GitLab SaaS as an enterprise grade platform ready for mission critical workloads, GitLab.com has [specific Availability][availability] and [Performance][performance] targets.

These targets give our users indication of the platform reliability.

Additionally, [GitLab.com Service Level Availability](SLA) is also a part of our contractual agreement with the platform customers. The contract might define a specific target number, and not honouring that agreement can incur significant financial burden on the company.

## Error Budgets according to Google

The Google SRE books is generally a recommended read, but specifically [the Embracing Risk chapter][embracing risk] covers in great detail the topic this page is aiming to cover.

> Extreme reliability comes at a cost: maximizing stability limits how fast new features can be developed and how quickly products can be delivered to users, and dramatically increases their cost, which in turn reduces the numbers of features a team can afford to offer

The above mentioned balance is what we are aiming to achieve at GitLab with the process change explained on this page.

In the same chapter, under the "Motivation for Error Budgets" section:

> The error budget provides a clear, objective metric that determines how unreliable the service is allowed to be within a single quarter. This metric removes the politics from negotiations between the SREs and the product developers when deciding how much risk to allow.

This is the goal we are striving for too, while also acknowledging that in order to arrive to the same level of sophistication, we need to take into account our specific situation, maturity and additional requirements.


## Error Budgets at GitLab

At the moment of writing this document in Q2 FY21, GitLab has several organizational specificities that create additional requirements:

1. GitLab operates publicly and transparently
1. GitLab delivers both open source and a proprietary product
1. GitLab is a monolithic application
1. GitLab ships both a SaaS version and a self-managed installation methods for both types of product
1. GitLab SaaS is using the same codebase as GitLab self-managed
1. GitLab SaaS is deployed using unmodified deployment versions
1. Product function is exclusively responsible for development prioritisation for both SaaS and self-managed
1. Infrastructure department is responsible for SaaS availability

All of the above items contribute to the complexity of already complex task of
delivering a highly available SaaS platform. Over the years, several processes were introduced to

Infradev process is there to prioritize resolving an issue after an incident or degradation has happened. It is often unclear what is causing an incident, or what is causing a performance regression. This also means that we spend a lot of time trying to find the right team to help out, and we often don't have an insight into what features or parts of the codebase are in need of a higher focus. This can create a disbalance as explained in the introduction. Namely, if availability/performance of a certain feature category is much lower than the set targets, it can indicate that features need to be depreioritized in favour of increased stability.

## Team budgets

Each team in the stage group has an allocated initial budget of **30 points per quarter**.

### Points

Points are deducted from the team budget, after being gathered from two sources:

1. Incidents (Availability source)
1. [Apdex and Error rate by Feature Category](https://dashboards.gitlab.net/d/general-error-budgets/general-feature-category-detail-error-budgets?orgId=1) (Performance source)

Points from the availability source will be deducted with the following scale:

| Severity | Cost     |
| -------- | -------- |
| ~S1      | 30 points|
| ~S2      | 15 points|
| ~S3      | 5 points |
| ~S4      | 2 points |

Points from the performance source are deducted with the following scale:

| Type | Threshold | Cost |
| ----------- | --------- | ------- |
| Apdex       | Below SLO | 1 point |
| Error Ratio | Above SLO | 1 point |

Points are calculated at the end of the calendar month, and added to the existing budget. This allows teams to anticipate changes in their prioritization process.

### Priority scale

As mentioned before, the goal of this process is to ensure the balance between feature velocity and feature reliability. This process is setting up two levels of expectations at the end of the quarter for teams to:

1. Adjust course - With error budgets between 0 and -15 points
1. Change course - With error budget below -15 points

For teams that need to adjust course, it is recommended that they take 20% of their monthly planning to address technical debt that affects availability and performance.

For teams that need to change course, it is strongly recommended that 80% of their monthly planning accounts for improvements towards availability and performance. This number might seem high, but arguably the features that are being shipped are not producing desired outcome from their release.

### Examples

#### No impact

Team FOO error budget is 30 points. A S1 incident is attributed to the feature owned by Team FOO and 30 points are deducted from their budget. Team FOO now has 0 points to spend for the rest of the quarter. The feature categories owned by Team FOO have no performance issues and owned features did not cause any further incidents for the rest of the quarter, Team FOO gets new budget assigned for the next quarter and they can continue working per their team processes.

#### Course adjustment

Team FOO error budget is 30 points. A S1 and a S2 incidents are attributed to features owned by Team FOO. The points are deducted from their quarterly budget for the end total of -15. Team FOO gets new budget assigned for the next quarter, and the team has assigned 20% of their monthly planning towards ensuring that their budget does not get spent again.

#### Course change

Team FOO error budget is 30 points. Two S1 incidents are attributed to the features owned by the team, for the total of -30 points for their team error budget at the end of the quarter. Team FOO is assigned new budget of 30 points for the next quarter, but the team needs to assign 80% of the their monthly planning towards ensuring that their budget is not spent again.

[strategy]: /direction/#3-year-strategy
[availability]: /handbook/engineering/infrastructure/performance-indicators/#gitlabcom-availability
[performance]: /handbook/engineering/infrastructure/performance-indicators/#gitlabcom-performance
[SLA]: /handbook/engineering/monitoring/#gitlabcom-service-level-availability
[embracing risk]: https://landing.google.com/sre/sre-book/chapters/embracing-risk/#id-na2u1S2SKi1
