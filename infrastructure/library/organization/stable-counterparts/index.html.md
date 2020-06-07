---
layout: handbook-page-toc
title: "Stable Counterparts"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}
## Overview

[Stable counterparts](https://about.gitlab.com/handbook/leadership/#stable-counterparts) are an integral aspect of GitLab's leadership strategy by *facilitating cross-functional connections in the hope that working with the same people would increase the speed of communication, build trust, and encourage iteration*. 

As we work towards maturing as a SRE organization, we must engage with Development teams in order to successfully onboard and support services in pursuit of our integrity and availability objectives for GitLab.com. Stable counterparts provide an existing, widely-used framework within GitLab to foster this engagement.

While we use *versioning* in this document, this is done to provide a sense of our first attempt at implementing stable counterparts and what this new iteration entails. We wont' be using them going forward.

## Stable Counterparts, v1

In late 2018, early 2019, we added stable counterparts in Infrastructure. This first iteration was reflected in SRE titles, but, realistically, it yielded no palpable results. We believe this was due to the following issues:

* organizationally, we lacked the team scale to provide comprehensive coverage for all Development teams
* workload-wise, we were extremey busy with a variery of projects, and, starting around May 2019, we entered a long period of instability on GitLab.com that kept interrupt levels high
* logistically, we did not define the meaning and expected outcome of stable counterparts in Infrastructure

By the end of 2019, we abandoned the stable counterpart model.

## Stable Counterparts, v2

As we enter 2020, in order to achieve our integrity and availability goals, we must mature as a SRE organization, and one of the first steps is to define and foster our [SRE engagement model](https://landing.google.com/sre/sre-book/chapters/evolving-sre-engagement-model/), adapting it to our unique context at GitLab. Said context includes, for instance, GitLab as a monolith, which prevents a clear-cut service approach. Still, we need to find a way to start carving a path for proper SRE support for the product beyond our current practices. Additionally, as the company continues to grow, we must work to streamline information distribution, which implies better filtering: it is not only unfeasible but highly innefficient for managers to be the only conduits for information exchange netween Development and Infrastructure.

As always, we use our [values](https://about.gitlab.com/handbook/values/) to map this process, and do so prioritizing them according to their established [hierarchy](https://about.gitlab.com/handbook/values/#hierarchy).

1. **Results**: we must outline the expected outcomes from this iteration and measure progress
2. **Iteration**: we must make small, concrete progress by achieving results in short order
3. **Transparency**: we must leverage our transparency to enhance the engagement model

This new iteration will again be driven organizationally, outlining the logistics and outcomes involved.

#### Managers

* Create epics and issue outlining the process of implementing the SRE engagement model at GitLab
  * Define objective and timelines
  * Outline expected outcomes
  * Retros to course-correct and fine-tune as necessary, thus updating epics.

#### Individual Contributors

* This iteration likely entails about 1-2 hours a week per SRE
* We aim to built strong, bi-directional bridges to Development teams through stable counterparts at the IC level
  * to create awareness of what Development teams are working on and their effect on Infrastructure
  * to drive awareness into Development teams and evangelize collaboration with Infrastructure
* Some logistical suggestions:
  * Attending Development team staff meeting and/or keep up with asynchronous agendas
  * Having ongoing awareness of current and near-term future work (epics): does said work entail Infrastructure work?
  * Providing, as necessary, team-wide highlights about the needs of Development teams (at Reliability Staff meeting, Infrastructure Call and/or DNA meeting)
  * Developing a sense for a team's feature category/service maturity as it pertains to onboarding the service (or in our case, the most important fearures): common operations the team is responsible for in the GitLab workflows, defined service levels and error budgets, and appropriate dashboards, etc.

## The Long View

A separate blueprint will flesh out our long view on the SRE engagement model as it applies to GitLab.

