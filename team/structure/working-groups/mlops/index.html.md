---
layout: markdown_page
title: "MLOps Working Group"
description: "Learn more about the GitLab MLOps Working Group attributes, goals, roles and responsibilities."
canonical_path: "/company/team/structure/working-groups/mlops/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property        | Value           |
|-----------------|-----------------|
| Date Created    | 2021-08-04 |
| Target End Date | - |
| Slack           | #wg_mlops (only accessible from within the company) |
| Google Doc      | [MLOPs Working Group Agenda](https://docs.google.com/document/d/18iOB05cFxS5to1eT55GwsENirBfVSjHCQJ2ostoY3cw/edit?usp=sharing) (only accessible from within the company) |
| Issue Label | ~WorkingGroup::MLOps  |

## Goals

This Working Group has the following goals:

1. Formalize the processes related to provenance, storage and access of GitLab.com production data for the purpose of model training.
    - Determine how to build a GitLab asynchronous event stream for the purposes of getting data for pre-processing and training
1. Share knowledge and determine best practices for hyper-parameter tuning, retraining, versioning, and deploying new ML models
1. Determine best practices for benchmarking models built by different frameworks/libraries for different use cases in terms of accuracy and performance, and how to do it in a continuous basis.
1. Determine how to distribute machine learning models on self-hosted instances
1. Define a security/legal process for security-related ML models and data pre-processing

## Definitions

### What is MLOps?

As per Wikipedia, **MLOps** or **ML Ops** is a set of practices that aims to deploy and maintain machine learning models in production reliably and efficiently.

![](image.png)

Read more about the topic area from the links below:

  - [MLOps Wikipedia](https://en.wikipedia.org/wiki/MLOps)
  - [MLOps: Continuous delivery and automation pipelines in machine learning](https://cloud.google.com/architecture/mlops-continuous-delivery-and-automation-pipelines-in-machine-learning)
  - [Machine Learning Operations](https://ml-ops.org/)
  - [MLOps Slack Group](https://mlops.community/)

### Related GitLab Documentation

  - [MLOps Single-Engineer Group](https://about.gitlab.com/handbook/engineering/incubation/mlops/)
  - [MLOps Primer](https://about.gitlab.com/handbook/engineering/incubation/mlops/modelops-primer.html)
  - [MLOps Exploration](https://gitlab.com/groups/gitlab-org/incubation-engineering/mlops/-/epics/1)
  - [Product Stage Direction - ModelOps](https://about.gitlab.com/handbook/engineering/development/modelops)
  - [Draft Group Direction - MLOps](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/source/direction/modelops/mlops/index.html.md.erb)
  - [Group Direction - Applied ML](https://about.gitlab.com/direction/modelops/applied_ml/)
  - [Applied ML Group](https://about.gitlab.com/handbook/engineering/development/modelops/appliedml/)

### Related GitLab projects

  - [Spamcheck](https://gitlab.com/gitlab-org/spamcheck)
  - [Tanuki-Stan](https://gitlab.com/gitlab-org/ml-ops/tanuki-stan)
  - [UnReview](https://about.gitlab.com/handbook/engineering/development/modelops/appliedml/projects/unreview/)

### Related ML Slack channels
 - #g_applied_ml
 - #g_machine-learning
 - #feed_tanuki-stan
 - #security-ml

## Exit Criteria 

The charter of this working group is to bridge the gap between different teams that are building ML products at GitLab by discussing overlapping architectural concerns:

1. Create a handbook page discussing a deep analysis of the tooling for ML out there and a proof-of-concept framework using an ideal pathway that GitLab teams can refer to and easily extend when kicking off ML-related projects.
1. Creation of helpers/libraries (presumably in Python) that can be shared across teams and used for the purposes of similar tasks e.g. data access and storage, data pre-processing.
1. Define a system architecture for incorporating an event stream for asynchronous processing and storage of events for training ML models.

## Roles and Responsibilities

| Working Group Role    | Person                | Title                                           |
|-----------------------|-----------------------|-------------------------------------------------|
| Executive Sponsor     | Laurence Bierner      | Director, Security Engineering & Research       |
| Facilitator           | Alex Groleau          | Security Automation Manager |
| Functional Lead                | Roger Ostrander       | Senior Security Engineer, Trust & Safety        |
| Functional Lead                | Alexander Chueshev         | Senior Backend Engineer, Applied ML |
| Functional Lead                | Taylor McCaslin         | Principal Product Manager, Secure |
| Functional Lead                | Ethan Urie            | Senior Backend Engineer, Security Automation    |
| Functional Lead                | Jayson Salazar        | Senior Security Engineer, Security Automation   |
| Functional Lead                | Juliet Wanjohi        | Security Engineer, Security Automation          |
| Functional Lead                | Eduardo Bonet         | Staff Full Stack Engineer - MLOps, SEG |
| Member                | Alexander Dietrich    | Senior Security Engineer, Security Automation   |
| Member                | Charl De Wit            | Security Manager, Trust & Safety |
| Member                | Wayne Haber         | Engineering director |
| Member                | Bartek Marnane         | VP, Incubation Engineering |

