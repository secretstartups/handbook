---
layout: handbook-page-toc
title: "Engineering Error Budgets"
---

As part of [our strategy][strategy] to reinforce GitLab SaaS as an enterprise grade platform ready for mission critical workloads, GitLab.com has [specific Availability][availability] and [Performance][performance] targets.

These targets give our users indication of the platform reliability.

Additionally, [GitLab.com Service Level Availability](SLA) is also a part of our contractual agreement with platform customers. The contract might define a specific target number, and not honouring that agreement can incur significant financial and reputational burdens on the company.

## Error Budgets according to Google

The Google SRE book is generally a recommended read, but specifically [the Embracing Risk chapter][embracing risk] covers in great detail the topic this page is aiming to cover.

> Extreme reliability comes at a cost: maximizing stability limits how fast new features can be developed and how quickly products can be delivered to users, and dramatically increases their cost, which in turn reduces the numbers of features a team can afford to offer

The above mentioned balance is what we are aiming to achieve at GitLab with the process change explained on this page.

In the same chapter, under the ["Motivation for Error Budgets"][motivation] section, it states:

> The error budget provides a clear, objective metric that determines how unreliable the service is allowed to be within a single quarter. This metric removes the politics from negotiations between the SREs and the product developers when deciding how much risk to allow.

This is the goal we are striving for too, while also acknowledging that in order to arrive at the same level of sophistication, we need to take into account our specific situation, maturity and additional requirements.


## GitLab organizational requirements

At the moment of writing this document in Q2 FY21, GitLab has several organizational specificities that create additional requirements:

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

[Infradev process][infradev] was created to prioritize resolving an issue after an incident or degradation has happened. While the process has proven to be successful, it is _event-focused and -driven_.

In reality, the events causing reliability issues are often a culmination of a trend; this can be driven by the complexity of the feature but also by lack of insight into how the feature performs.

Each of the teams at GitLab have a specific set of metrics on which team performance is measured on. This can often create differing short-term goals, which in turn can cause prioritization disagreements.

Assigning error budgets to the teams responsible for specific feature categories can create greater insight of how the feature is performing over a longer period of time, and can be used by the organization to correctly allocate focus. This in turn can ensure that the risk is well balanced and that the system as a whole remains healthier over a longer period of time.

# Error Budgets at GitLab

Initial iteration of error budgets at GitLab aims to introduce and establish a system that will create a new dynamic between the feature development and feature reliability, and tie it with existing workflows.

This process can complement the [Engineering Architecture evolution process][architecture] in that:

1. Error budgets show trends focused on the specific feature
1. Architecture evolution proposes a fundamental change spanning one or more of affected features
1. Both in turn drive the prioritization process based on the existing need to improve reliability
1. The outcome of improvement reinstates the spent budget allowing for new feature development

The error budgets process has a few distinct items:

1. Budget stakeholders
1. Budget allocation
1. Budget spend
1. Budget accounting
1. Communication between stakeholders

## Budget stakeholders

Rollout of the initial process identifies the following stakeholders:

1. Stage teams (Product and supporting Engineering teams represented on the [product categories page][categories]) - Budget beneficiaries
1. Infrastructure teams (Teams represented on the [infrastructure team page][infra teams]) - Budget allocation and attribution


## Budget allocation

Each stage team has an allocated initial budget of **30 points per quarter**.

This budget does not take into account the number or complexity of the features owned by the team, existing product priorities, or the team size. The budget is initially set equally for each team, and will be changed as the process is put in place, with this section reflecting the changes.

The budget is allocated at the beginning of each quarter of [the fiscal year][fiscal year], and the budget spend is attributed at the end of the quarter in which the budget was used.


## Budget spend

Allocated budget is spent in two ways:

1. Incidents - Availability source
1. [Apdex and Error rate by Feature Category](https://dashboards.gitlab.net/d/general-error-budgets/general-feature-category-detail-error-budgets?orgId=1) - Performance source

Points from the availability source are spent with the following scale, based on the established [severity] definitions:

| Severity | Cost     |
| -------- | -------- |
| ~S1      | 30 points|
| ~S2      | 15 points|
| ~S3      | 5 points |
| ~S4      | 2 points |

Points from the performance source are spent with the following scale:

| Type        | Threshold | Cost    |
| ----------- | --------- | ------- |
| Apdex       | Below SLO | 1 point |
| Error Ratio | Above SLO | 1 point |

## Budget accounting

The Infrastructure department calculates the budget expenditure at the end of each month.

_NOTE_ The location where the budget spend is shared will be announced when the process is ready for rollout.

When updating the budgets, the infrastructure teams will set a course expectations:

1. Adjust course - When error budgets are between 0 and -15 points
1. Change course - When error budgets are below -15 points

Teams needing to adjust course, it is expected that they take 20% of their quarterly planning capacity to address corrective actions that affected availability and performance.

For teams that need to change course, it is expected that 50% of their quarterly planning capacity accounts for improvements towards availability and performance. This number might seem high, but addressing the running feature cost frees up more time and reduces complexity of new feature development in the medium term.

The Infrastructure team provides the error budget numbers to the EVPE of Engineering before the end of the quarter, who is then able to work with other executive stakeholders in adapting the prioritization through the existing [OKR process][okr].

If the team addresses all corrective actions prior to the end of the quarter, their planning capacity is restored at that point.

### Examples

#### No impact

Team FOO error budget is 30 points. A S1 incident is attributed to the feature owned by Team FOO and 30 points are deducted from their budget. Team FOO now has 0 points to spend for the rest of the quarter. The feature categories owned by Team FOO have no performance issues and owned features did not cause any further incidents for the rest of the quarter, Team FOO gets new budget assigned for the next quarter and they can continue working per their team processes.

#### Course adjustment

Team FOO with 5 engineers has an error budget of 30 points. A S1 and a S2 incidents are attributed to features owned by Team FOO. The points are deducted from their quarterly budget for the end total of -15. Team FOO gets new budget assigned for the next quarter, and the team has assigned 1 engineer (20% of their planning capacity) towards addressing the corrective actions causing the budget spend in the quarter.

#### Course change

Team FOO with 5 engineers has an error budget of 30 points. Two S1 incidents are attributed to the features owned by the team, for the total of -30 points for their team error budget at the end of the quarter. Team FOO is assigned new budget of 30 points for the next quarter, but the team needs to assign 2.5 engineers (50% of their planning capacity) towards addressing the corrective actions causing the budget spend in the quarter.

[strategy]: /direction/#3-year-strategy
[availability]: /handbook/engineering/infrastructure/performance-indicators/#gitlabcom-availability
[performance]: /handbook/engineering/infrastructure/performance-indicators/#gitlabcom-performance
[SLA]: /handbook/engineering/monitoring/#gitlabcom-service-level-availability
[embracing risk]: https://landing.google.com/sre/sre-book/chapters/embracing-risk/#id-AnCDFmtB
[motivation]: https://landing.google.com/sre/sre-book/chapters/embracing-risk/#id-na2u1S2SKi1
[infradev]: /handbook/engineering/development/#continuous-delivery-infrastructure-and-quality-collaboration
[architecture]: /handbook/engineering/architecture/workflow/
[categories]: /handbook/product/product-categories
[infra teams]: /handbook/engineering/infrastructure/team/
[fiscal year]: /handbook/finance/#fiscal-year
[severity]: /handbook/engineering/quality/issue-triage/#availability
[okr]: /handbook/engineering/#engineering-okr-process
