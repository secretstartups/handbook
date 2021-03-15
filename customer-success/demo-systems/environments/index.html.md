---
layout: handbook-page-toc
title: "Demo Systems Environments"
description: "The GitLab Demo Systems environments handbook pages provides an overview of how our infrastructure is configured and has answers to frequently asked questions."
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

We offer different environments ranging from fully managed turn key environments to self-managed compute or containers. We recommended our Omnibus-as-a-Service "Demo Cloud" for most users unless you have use cases that require root access or specific architectural deployments.

Our goal is to make infrastructure provisioning and support easy and allow you to get started quickly and provide you as much admin rights as you need, while centrally managing our cloud provider usage and costs across the team.

##### Comparison of Environment Types

| Type of Environment                   | Difficulty to Use | Support Provided | Access Provided                     |
|---------------------------------------|-------------------|------------------|-------------------------------------|
| Omnibus-as-a-Service ("Demo Cloud")   | Easy to Moderate  | Dedicated Staff  | GitLab instance user and group      |
| Container Sandbox                     | Moderate to Hard  | Slack Community  | Cluster with `kubectl` rights       |
| Sandbox Cloud                         | Moderate to Hard  | Slack Community  | AWS/GCP IAM user with dedicated VPC |

## Access Request

You do not need to create an access request issue to access the demo systems. We have automated the provisioning of our systems with self-service registration on our demo portal.

To access the demo systems, you can self-register at [https://gitlabdemo.com](https://gitlabdemo.com).

### Who Can Access the Demo Environment?

We currently allow registration for all GitLab team members with a `@gitlab.com` email address. This environment is designed for Customer Success team members, however all GitLab organization team members are welcome to use our environment.

We offer restricted access to specific demo environments using an invitation code redemption system that is used by customers and partners that are enrolled in some of our training classes or workshops.

## Omnibus-as-a-Service Environment ("Demo Cloud")

The demo systems that we call the GitLab Demo Cloud provides a perpetual shared GitLab Omnibus instance that is used for demos and collaborating with other team members with example projects that showcase the features and solutions that GitLab offers. The GitLab Demo Cloud is comparable to our hosted gitlab.com SaaS service, however it allows greater flexibility for demonstration and sandbox purposes without affecting our production environment.

The GitLab Demo Cloud provides you access to Ultimate license features with your own user account and an organizational group that you can use for creating projects and child groups. We also support integrations with Kubernetes, Jenkins, JIRA and other 3rd party integrations.

[Learn more about the Omnibus-as-a-Service Environment ("Demo Cloud")](/handbook/customer-success/demo-systems/environments/demo-cloud/)

## Training and Workshop Environment ("Training Cloud")

The GitLab Training Cloud uses similar functionality to the Demo Cloud and allows for short-lived environments for training classes and workshops. We use invitation codes for managing self-service registration and the generation of anonymous user accounts for personal data privacy.

[Learn more about the Training Cloud](/handbook/customer-success/demo-systems/environments/training-cloud/)

## Container Sandbox Environments

We offer easy provisioning of Kubernetes clusters in AWS or GCP for sandbox purposes.

[Learn more about the EKS Container Sandbox](/handbook/customer-success/demo-systems/environments/container/eks)
[Learn more about the GKE Container Sandbox](/handbook/customer-success/demo-systems/environments/container/gke)

## Sandbox Cloud Environments

When you need many cloud provider services to accomplish your goals, our Sandbox Cloud provides you with access to a GCP and/or AWS account to deploy the compute resources, serverless or other managed services that you need.

You are responsible for all resources that you create and the demo systems team offers minimal to no support for the compute environments aside from access control and cost controls.

As a rule of thumb, this is a "do whatever you need to" environment, with a few "rules of the road" for cost management and security controls.

[Learn more about the Sandbox Cloud](/handbook/infrastructure-standards/realms/sandbox/) 

## Frequently Asked Questions

**Can I use my own cloud provider account and expense it?**

The rule of thumb is that you should use our managed environment if it serves your needs, and use your own environment for any gaps or use cases that we cannot support. We try to serve 95% of the needs of the team, and encourage you to make a judgement call for the 5% of other use cases.

If there is something that you cannot do with our managed environments, it is best practice to discuss your needs in `#demo-systems` on Slack or by [creating an issue](https://gitlab.com/gitlab-com/sandbox-cloud/issue-tracking/-/issues) so that we can document and understand your use case to help improve our offerings. We may have a workaround or recommended alternative solution or infrastructure script that is easier than creating something from scratch.

We don't want to get in the way of you being able to do your job, so if we aren't able to reasonably support you, you can "do your own thing" without needing approval from `@demo-systems-admins`.

To help our accounting team and avoid expense reports on your end, we encourage you to use our Sandbox Cloud environments when possible for centralized billing and expense reasons. If there are restrictions on our environments that you cannot work around, you can use your own cloud provider account and add your (reasonable) monthly bill to an expense report.

If you're not sure, simply ask in `#sandbox-cloud-questions` and we'll be happy to help.

**Can I buy a home server and expense it for demo purposes?**

No, this is against our efficiency value. We provide access to AWS and GCP cloud providers for you to provision resources that are not available as part of our Demo Cloud offerings.

If you buy a home server using your own money, that's your business, however you cannot store any RED, ORANGE, or YELLOW data on the server per GitLab's data security policies.

In short, this is a headache that's not worth it for work purposes, however it's perfectly fine for open source and home projects.

Please ask on `#demo-systems` for advice on how to accomplish what you're trying to do. We're happy to point you in the right direction to stick with the company values of efficiency and helping maintain a strong security posture, even if it's not using our managed environments.

**Can I use a VM or container on my laptop?**

Yes, however your mileage may vary and you should know what you're doing. Naturally we are not able to offer any support for what you do with your own environment.
