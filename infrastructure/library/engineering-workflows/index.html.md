---
layout: handbook-page-toc
title: "GitLab Engineering Workflows"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Resources

Epics:

* [`gitlab-org/release/epics`](https://gitlab.com/groups/gitlab-org/release/-/epics/)

Blueprints:

* [Working in CE and EE codebases]

Designs:

* [Release process design](/handbook/engineering/infrastructure/design/releases/)
* [Merging CE and EE codebases](/handbook/engineering/infrastructure/design/merge-ce-ee-codebases/)

# Introduction

GitLab (the company) has two equally important goals:

* Ship GitLab (the product) to self managed customers to resolve user/customer needs
* Ship GitLab (the product) to GitLab.com while maintaining stability of the platform

Both goals have the same requirement of exposing new features, resolving bugs and providing timely security fixes.

The difference between the two comes in timing, namely GitLab.com receives the
latest code before the release is publicised.

More details about GitLab.com and releases can be found in the [CI/CD blueprint].

## Terminology

* GitLab product - GitLab (CE/EE) codebase with its components and dependencies
* Developer - Backend and Frontend engineers working on GitLab product
* GitLab.com environment - Any of the environments ran by GitLab Inc., (such as: gstg and gprd) and their stages (staging, canary and production)
* Code freeze - End of the 7th in the month after which release branches are not receiving new features(features behind the feature flags are excluded from this requirement)

## Idea/Problem Statement

To get GitLab.com to a CI/CD deployment model as mentioned in the [CICD blueprint],
there are a number of items that need to happen first to ensure the stability of
GitLab.com as a service **and** preserve the public release for self-managed users.

This requires a shift in processes that the engineering teams are using, and
can roughly be divided into the following:

* Development
* Quality assurance
* Non-customer facing deployment
* Fault tolerance and recovery
* GitLab.com rollout
* Public release

[Delivery team](/handbook/engineering/infrastructure/team/delivery/) has been tasked with
driving this effort, **with the help from the rest of the engineering**.

# Process overviews

All of the individually listed processes are equally important. The required work to
make a change differs based on the amount of people affected by it.

It is simple to get lost in the amount of details each of these processes brings,
so the aim of this document is to target the processes with the least amount of work/highest impact first, before addressing the rest.

This is the reason why we will start with the current release process.

[Release process design](/handbook/engineering/infrastructure/design/releases/)

<!-- Links -->

[CI/CD blueprint]: /handbook/engineering/infrastructure/blueprint/ci-cd/
[Working in CE and EE codebases]: /handbook/engineering/infrastructure/blueprint/ce-ee-codebases/
[Scheduled daily deployments in GitLab.com environments]: /handbook/engineering/infrastructure/design/201902_Scheduled_Daily_Deployments.html)
