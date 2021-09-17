---
layout: markdown_page
title: "Event Stream Working Group"
description: "Develop a plan to implement a system-wide event stream for GitLab"
canonical_path: "/company/team/structure/working-groups/event-stream/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property        | Value           |
|-----------------|-----------------|
| Date Created    | 2021-09-20 |
| Target End Date | - |
| Slack           | #wg_event-stream (only accessible from within the company) |
| Google Doc      | [Event Stream Working Group Agenda]() (only accessible from within the company) |
| Issue Label | ~WorkingGroup::EventStream |

## Goals

This Working Group has the following goals:

 1. Determine if an Event Stream is necessary and feasible for Saas _and_ on-prem

## Definitions

### What is an Event Stream?

An event stream is simply a stream of events that occur within the product. More specifically, for us at GitLab, it will involve the software changes we need to make in the product, event schemas and protocols, and infrastructure.

### Potential Tools/Services
There are some tools/services that other companies are using for this 
  1. [Kafka](https://kafka.apache.org)
  1. [NSQD](https://nsq.io)
  1. [RabbitMQ](https://rabbitmq.com)
  1. [GCP PubSub](https://cloud.google.com/pubsub)

### Related GitLab Documentation


### Related GitLab projects

  - [Spamcheck](https://gitlab.com/gitlab-org/spamcheck)
  - [UnReview](https://about.gitlab.com/handbook/engineering/development/modelops/appliedml/projects/unreview/)

## Exit Criteria 
If it is decided that an Event Stream should be implemented, our exit criteria should be:
 1. Define the tool(s)/service(s) we should use for SaaS and on-prem (they might be different)
 1. Define system architecture
 1. Define an implementation plan and philosophy
 1. Define event structure


The charter of this working group is to bridge the gap between different teams that are building ML products at GitLab by discussing overlapping architectural concerns:

1. Creation of a mission statement that the MLOps Working Group operates under, added to the handbook.
1. Create a handbook page discussing a deep analysis of the tooling for ML out there and a proof-of-concept framework using an ideal pathway that GitLab teams can refer to and easily extend when kicking off ML-related projects.
1. Creation of helpers/libraries (presumably in Python) that can be shared across teams and used for the purposes of similar tasks e.g. data access and storage, data pre-processing.
1. Define a system architecture for incorporating an event stream for asynchronous processing and storage of events for training ML models.

## Roles and Responsibilities

| Working Group Role | Person             | Title                                           |
|--------------------|--------------------|-------------------------------------------------|
| Executive Sponsor  | Laurence Bierner   | Director, Security Engineering & Research       |
| Facilitator        | Alex Groleau       | Security Automation Manager                     |
| Functional Lead    | Juliet Wanjohi     | Security Engineer, Security Automation          |
| Functional Lead    | Ethan Urie         | Senior Backend Engineer, Security Automation    |
| Functional Lead    | Jayson Salazar     | Senior Security Engineer, Security Automation   |
| Functional Lead    | Alexander Chueshev | Senior Backend Engineer, Applied ML             |
| Member             | David DeSanto      | Senior Director, Product Management - Dev & Sec |
| Member             | Taylor McCaslin    | Principal Product Manager, Secure               |
| Member             | Alexander Dietrich | Senior Security Engineer, Security Automation   |
| Member             | Wayne Haber        | Engineering director                            |
| Member             | Bartek Marnane     | VP, Incubation Engineering                      |
| Member             | Roger Ostrander    | Senior Security Engineer, Trust & Safety        |
| Member             | Shawn Sichak       | Senior Security Engineer, Trust & Safety        |
