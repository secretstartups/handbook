---
layout: handbook-page-toc
title: "Service Levels and Error Budgets"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}
## Overview

**GitLab.com** has a stated goal of **99.95% uptime**, intended to support mission-critical workloads. In pursuing this goal, Infrastructure is focused on [**observable availability**](/handbook/engineering/infrastructure/blueprint/2018-q4/); we are also tasked with performing attribution as part of root cause analysis and carrying out the necessary accounting on error budgets. The [first iteration on error budgets](/handbook/engineering/#error-budgets) took place on 2018-Q3, and there is work currently underway on issue [`infrastructure/5323`](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5323) to define an uptime SLA.

While [we are arguably improving](/blog/2018/10/11/gitlab-com-stability-post-gcp-migration/), this improvement is difficult to measure and quantify, and potentially open to interpretation. These objectives and initiatives are, at this stage, somewhat abstract, acting primarily as goal markers, effected mostly independently. 

Availability is not simply an uptime goal depicted as a number. It is a way to measure our ability to drive change through the environment, which requires us to **manage risk**.

As noted on chapter 3 of the *Site Reliability Engineering* book, *Embracing Risk*:

> Site Reliability Engineering seeks to balance the risk of unavailability with the goals of rapid innovation and efficient service operations, so that users’ overall happiness—with features, service, and performance—is optimized. [...] Our goal is to explicitly align the risk taken by a given service with the risk the business is willing to bear.

We embrace risk by striving to manage it, and we must do so in **a structured, data-driven fashion** to achieve an **optimal, predictable, sustainable and safe speed of change**, tying together our availability and feature development  commitments to our users with our organizational ability to execute on those commitments.

We must properly define the actual **meaning of *uptime***, and we have to implement **the framework** through which said metric is calculated, tracked and evaluated. This is meaningless unless we also define the associated agreements on how we dial the speed of change to meet our availability objectives. This represents a company-wide commitment to the framework.

**Service levels** and **error budgets** provide this framework.

## Service Levels

In order to implement service levels, we must first understand which behaviors are important for our users and how we measure and evaluate the performance of said behaviors. We will start by defining *service level indicators* and specify *service level objectives* on said metrics. We can then create *service level agreements* to ensure we are committed to our availability objectives. In summary:

- **Service Level Indicators** (SLIs) define the metrics we use to measure service levels.
- **Service Level Objectives** (SLOs) is a target value for a service level as measured by an SLI.
- **Service Level Agreements** (SLAs) are commitments to our SLOs in a contractual fashion.

##### Time Window

The business has indicated that we must achieve **an availability SLA on GitLab.com of 99.95%**, which is roughly 22 minutes of unplanned downtime per month. We have selected the monthly time frame for this definition for two main reasons:

- It is aligned with the company rhythm, which is very much driven by monthly product release cycles
- It can be easily aggregated to overlap with quarterly OKRs

In order to define our next iteration on service levels, we are going to select five SLIs and set the corresponding SLOs per business requirements. This is a fairly coarse, but will serve its purpose as a first step towards the establishment of the framework. Future refinements will break down SLIs and SLOs per service, set specific goals per service criticality tiers, define a documented formula for calculating an admittedly oversimplified, easy-to-consume uptime number, and explore using a four-week rolling window complemented with weekly summaries and quarterly summarized reports to track, calculate and evaluate error budgets in conjunction with incident data.

### SLIs

Our initial batch of SLIs will be focused on availability (success rates) and latency on HTTP and SSH requests against GitLab.com from both an overall point of view and through three specific user paths  (`clone`, `pull` and `push`).

| SLI Type     |                                                              |
| ------------ | ------------------------------------------------------------ |
| Availability | Number of successful HTTP requests over total HTTP requests  |
| Availability | Number of successful SSH requests over total SSH requests    |
| Availability | Number of successful HTTP requests for `clone`, `pull` and `push` operations over total HTTP requests for sid operations |
| Availability | Number of successful SSH requests for `clone`, `pull` and `push` operations over total HTTP requests for sid operations |
| Latency      | Proportion of requests faster than {latency} as a function of payload size for `clone`, `pull` and `push` operations |

### SLOs

The proposed SLO for each of the SLIs is set by the business at 99.95%.

## Error Budgets

Error budgets can be calculated from the defined SLOs. We will deprecate the arbitrary severity-based point system error budget definitions and implement time-based error budgets. We also need to define an error budget policy that the entire company adheres to so we can agree to operate at an optimal change speed.

### The Production Queue

We need to track changes and incidents in production (as defined by incident and change management). As we make progress with our service levels and error budgets, most of this will be automated away. But we still need to keep an audit of recorded incidents, which aid during the transition in order to ensure our service level coverage and help us prioritize further developments in this area. We do want to reduce the effort on analyzing this data, and thus the queue must adhere to the *label schema*.

#### Issue Types

The production queue supports four types of issues: `changes`, `incidents`, `deltas` and `hotspots`.

#### Severities

We [standardize on the use of severity levels](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/development/contributing/issue_workflow.md#severity-labels): `S1`, `S2`, `S3 ` and `S4`.

#### Services

We have started to create [structured service definitions](https://gitlab.com/gitlab-com/runbooks/tree/master/services).

Service labels (`service:<service>[.<service>]`) are used to associate services with production issues.

#### Attribution

Incidents must be attributed to specific teams so that error budgets can be properly accounted for.

## Commit

Rather than putting together a grand plan to implement the service levels and error budgets framework, let's deploy our [values](/handbook/values/) to help us navigate through this transition:

* **Results: Write Promises Down** Let's commit [OKRs](/company/okrs/) on the development and use of service levels and error budgets. Over time, staying within error budgets becomes an implicit OKR.
* **Results: Tenacity** Let's commit to this transition, as it provides a structured path to track and evaluate GitLab.com's availability.
* **Results: Ambitious** This is a significant change to our development and infrastructure culture, a worthy challenge to pursue as we scale GitLab and GitLab.com.
* **Results: Bias for Action** We have already started to work on this, but we need to make progress.
* **Efficiency: Boring Solutions** Service levels and error budgets are industry-wide best practices.
* **Efficiency: Minimum Viable Change** Let's identify and deliver on MVCs.
* **Iteration: Make a Proposal** [Recursive](./).
* **Transparency: Public by Default** [Also recursive](./).



