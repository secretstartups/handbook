---
layout: handbook-page-toc
title: "Demo Cloud Omnibus-as-a-Service"
description: "The GitLab Demo Systems Demo Cloud handbook page provides an overview of how our Omnibus-as-a-service infrastructure is configured and has answers to frequently asked questions."
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

The demo systems that we call the GitLab Demo Cloud provides a perpetual shared GitLab instance that is used for demos and collaborating with other team members with example projects that showcase the features and solutions that GitLab offers. The GitLab Demo Cloud is comparable to our hosted gitlab.com SaaS service, however it allows greater flexibility for demonstration and sandbox purposes without affecting our production environment.

The GitLab Demo Cloud provides you access to Ultimate license features with your own user account and an organizational group that you can use for creating projects and child groups. We also support integrations with Kubernetes, Jenkins, JIRA and other 3rd party integrations.

## Version 1

The Demo Cloud v1 shares the [gitlab-core.us.gitlabdemo.cloud](https://gitlab-core.us.gitlabdemo.cloud) Omnibus instance with our Training Cloud.

* Shared GitLab (Core) Instance
* Shared GitLab Runners
* Shared Kubernetes Cluster
* Jenkins Integration
* JIRA Integration

### How It Works

* [Creating and accessing your account](/handbook/customer-success/demo-systems/tutorials/getting-started/creating-accessing-your-account)
* [Configuring GitLab with group-level Kubernetes cluster](/handbook/customer-success/demo-systems/tutorials/getting-started/configuring-group-cluster)
* [Using project templates and sample projects](/handbook/customer-success/demo-systems/tutorials/getting-started/using-templates-sample-projects)
* [Using the demo designer for creating sample data](/handbook/customer-success/demo-systems/tutorials/getting-started/using-demo-designer)
* [Create a Jenkins pipeline](/handbook/customer-success/demo-systems/tutorials/integrations/create-jenkins-pipeline)

## Version Upgrades and Maintenance

We perform version upgrades on the weekend following the 22nd of each month. The weekend upgrades are performed at a random time on Saturday or Sunday based on engineer availablility and lasts for approximately 30 minutes.

We delay the upgrade window for updates that we consider risky or occur during holidays. This occurs during May each year when the major version of GitLab is released and usually aligns with the US Memorial Day holiday, in December around the Christmas Holiday, and in January at the end of the fiscal year when we have a configuration freeze until sales demos are completed. 

For patch and security updates, we will usually only perform upgrades for critical updates and will announce maintenance windows in the `#demo-systems` channel on Slack.

### FY22 Upgrade Schedule

| GitLab Version | Release Date     | Upgrade Window (Sat to Sun) |
|----------------|------------------|-----------------------------|
| v13.9          | 2021-02-22 (Mon) | 02-27 to 02-28              |
| v13.10         | 2021-03-22 (Mon) | 03-27 to 03-28              |
| v13.11         | 2021-04-22 (Thu) | 04-24 to 04-25              |
| v14.0          | 2021-05-22 (Sat) | 06-05 to 06-06 (delay)      |
| v14.1          | 2021-06-22 (Tue) | 06-26 to 06-27              |
| v14.2          | 2021-07-22 (Thu) | 07-24 to 07-25              |
| v14.3          | 2021-08-22 (Sun) | 08-28 to 08-29              |
| v14.4          | 2021-09-22 (Wed) | 09-25 to 09-26              |
| v14.5          | 2021-10-22 (Fri) | 10-23 to 10-24              |
| v14.6          | 2021-11-22 (Mon) | 11-27 to 11-28              |
| v14.7          | 2021-12-22 (Wed) | 01-01 to 01-02 (delay)      |
| v14.8          | 2022-01-22 (Sat) | 02-05 to 02-06 (delay)      |

### Legacy Version Support

We keep our shared environment up-to-date with the latest versions to help showcase the value that the newest features and solutions offer.

For demo and sandbox use cases requiring an older version, you can deploy a GitLab instance in a container in the Container Sandbox or using Omnibus in the Compute Sandbox. We do not offer any data migration or parity configuration support.
