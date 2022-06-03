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
| Google Doc      | [Event Stream Working Group Agenda](https://docs.google.com/document/d/1unlrVd1M1N-d3GI2DP7R9gXJxBXHjY2rOKR5hsGHuKI/edit?usp=sharing) (only accessible from within the company) |
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

### Related GitLab Documentation or Issues
 * https://gitlab.com/gitlab-org/gitlab/-/merge_requests/34042
 * https://gitlab.com/gitlab-org/gitlab/-/issues/338454
 * [Streaming Audit Events](https://gitlab.com/groups/gitlab-org/-/epics/5925)


## Exit Criteria 
If it is decided that an Event Stream should be implemented, our exit criteria should be:
 1. Define the tool(s)/service(s) we should use for SaaS and on-prem (they might be different)
 1. Define system architecture
 1. Define an implementation plan and philosophy
 1. Define event structure

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
| Member             | Chad Woolley       | Senior Backend Engineer, Create::Editor         |
