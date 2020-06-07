---
layout: handbook-page-toc
title: "Deltas: Self-Managed and GitLab.com"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

As GitLab's largest instance in operation, **GitLab.com is at the forefront of pushing GitLab's scalability limits**.

**GitLab.com** is the first production instance to run newer versions of GitLab and do so at scale. Thus, most scalability issues will usually manifest themselves on GitLab.com first. Its *always-on* nature coupled with its scale and our [committed availability objectives](/company/okrs/), drive GitLab.com to operate on **extremely tight time scales**: 

- GitLab.com will approach and potentially breach scalability walls before any other instance in operation
- Incidents have an immediate effect on our users, which is rapidly visible to the rest of the world. 

The repercussions are swift: our highest concern, first and foremost, is user service disruption. We also care deeply about negative network effects on our reputation.

**GitLab.com's availability is thus our primary concern**, and we spend significant amounts of effort protecting it. Time and scale factors require rapid response to issues that arise during its lifetime and operation. Additionally, we also focus on finding potential sources of trouble, and we strive to address them before they become an active threat to GitLab.com's availability.

### Infrastructure or Features

As **GitLab.com** pushes against the boundaries of GitLab's capabilities, we must face choices on **how** and, just as importantly, **when** to address them. We are limited by the output of our people, and time is an important variable whenever resource limitations come into play.

As we operate on tighter time scales, we sometimes find issues that do not align well with our development cycle or our [roadmap](/direction/) priorities. Furthermore, we must contend for Engineering time: the management of **GitLab.com** is driven more by infrastructure needs than feature development. And yet, we aim to [build features](/direction/) and make them available to our entire customer base, which of course includes self-managed instances.

These drivers (infrastructure and features) are aligned at separate ends of our product roadmap, which places significant demands on Engineering priorities. We must thus make conscious choices between infrastructure drives and feature implementation.

### Branching, not Forking 

We must sort these contrasting priorities within the framework set by [GitLab's values](/handbook/values/), and do so as a compromise and a commitment that allows us to continue implementing new features and ensure GitLab.com's availability, while at the same time guaranteeing that the output of both will benefit self-managed customers as well. The analogy is clear: we need to be able to branch, but we will never fork.

## Deltas

Deltas (or exceptions) are deviations from standard configuration on GitLab.com that are applied outside established
change channels in order to address issues that are causing or have the potential to cause instability in the
environment.

Delta Management is owned by the [Reliability Engineering teams](/handbook/engineering/infrastructure/team/reliability/).

## Delta Severities

Delta severities encapsulate the impact of a delta. Delta management uses our standarized severity definitions, which can be found under [`CONTRIBUTION.MD`](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/CONTRIBUTING.md#severity-impact-guidance).


### Workflow

Deltas, which introduce deviations from the product into GitLab.com, are taken very seriously and must only be used as a last resort in addressing issues that affect GitLab.com. In particular, no delta will be created unless not implementing it poses a direct threat to GitLab.com's availability and/or security. Deltas are to be avoided if at all possible, and they are evaluated on a case by case basis to ensure GitLab.com stays closely in sync with GitLab.

To that end, all deltas must follow a strict implementation workflow:

* Deltas originate from one or more incidents in the production environment, or from the identification of threats to its availability and/or security.
	* Hotpatches are, by definition, deltas.
* Deltas must always have [design](/handbook/engineering/infrastructure/design/) associated with them
* Deltas are [tracked in the `production` queue](/handbook/engineering/infrastructure/delta-management/) and reviewed in the weekly Infrastructure call.
* Deltas must eventually be eliminated when they are implemented in the product, so we must work closely with Product and Engineering development teams to implement them into the product.
