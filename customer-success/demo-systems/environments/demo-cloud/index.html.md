---
layout: handbook-page-toc
title: "Omnibus-as-a-Service Demo Cloud"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

<div class="panel panel-info">
<div class="panel-heading">
Replacement for i2p
</div>
<div class="panel-body">
This environment provides a direct replacement for our legacy i2p (idea-to-production) demo systems that were deprecated in FY21-Q2.
</div>
</div>

The demo systems that we call the GitLab Demo Cloud provides a perpetual shared GitLab instance that is used for demos and collaborating with other team members with example projects that showcase the features and solutions that GitLab offers. The GitLab Demo Cloud is comparable to our hosted gitlab.com SaaS service, however it allows greater flexibility for demonstration and sandbox purposes without affecting our production environment.

The GitLab Demo Cloud provides you access to Ultimate license features with your own user account and an organizational group that you can use for creating projects and child groups. We also support integrations with Kubernetes, Jenkins, JIRA and other 3rd party integrations.

## Components

* Shared GitLab (Core) Instance
* Shared GitLab Runners
* Shared Kubernetes Cluster
* Jenkins Integration
* JIRA Integration

## Regions

We have two separate environments in different regions that provide redundancy in the event of maintenance issues, misconfiguration, or regional outages. It is recommended to use the region that is closest to you for the best performance (lowest latency) and since our resource availability and scaling is calibrated based on how many team members are in each geographic region.

As a rule of thumb, the US region will always have the full set of integrations and services. We will try to deploy the most popular integrations and services in the EU region, however we may limit what's available in the EU region to save on cloud compute costs. We are currently iterating on the design of the EU region and this is subject to evolve.

* US Region (`*.us.gitlabdemo.cloud` - GCP Iowa us-central1)
    * GitLab Instance - [https://gitlab-core.us.gitlabdemo.cloud](https://gitlab-core.us.gitlabdemo.cloud)
    * Jenkins Instance (GitLab OAUTH) - [https://jenkins.us.gitlabdemo.cloud](https://gitlab-core.us.gitlabdemo.cloud)
    * JIRA Instance - [https://jira.us.gitlabdemo.cloud](https://jira.us.gitlabdemo.cloud)
* EU Region (`*.eu.gitlabdemo.cloud` - GCP Belgium eu-west1)
    * Will be available shortly.

We have wishlist plans to deploy a demo environment in the Asia region (GCP Singapore asia-southeast1) when we have more demand for it in the region.

## Version Upgrades and Maintenance

We perform a zero downtime upgrade when upgrading to the latest GitLab version, however there is always a risk that we may experience an interruption for up to 24 hours after an upgrade is performed. We recommend that you subscribe to the Demo Systems calendar which includes all of our maintenance windows and all-day events for "risks" to help you when scheduling demo calls with our customers.

### 2020 and FY21 Upgrade Schedule

| GitLab Version | Release Date     | US Upgrade         | EU Upgrade        |
|----------------|------------------|--------------------|-------------------|
| v12.9          | 2020-03-22 (Sun) | 2020-03-23 (Mon)   | Not Deployed Yet  |
| v12.10         | 2020-04-22 (Wed) | 2020-04-22         | Not Deployed Yet  |
| v13.0          | 2020-05-22 (Fri) | Not Upgraded       | 2020-05-26 (Tue)  |
| v13.1          | 2020-06-22 (Mon) | 2020-06-22         | 2020-06-29        |
| v13.2          | 2020-07-22 (Wed) | 2020-07-22         | 2020-07-29        |
| v13.3          | 2020-08-22 (Sat) | 2020-08-24 (Mon)   | 2020-08-31        |
| v13.4          | 2020-09-22 (Tue) | 2020-09-22         | 2020-09-29        |
| v13.5          | 2020-10-22 (Thu) | 2020-10-22         | 2020-10-29        |
| v13.6          | 2020-11-22 (Sun) | 2020-11-23 (Mon)   | 2020-11-30        |
| v13.7          | 2020-12-22 (Tue) | 2020-12-22         | Not Upgraded (Holidays)    |
| v13.8          | 2021-01-22 (Fri) | 2021-01-25 (Mon)   | 2021-02-01        |

### Legacy Version Support

We keep our shared environment up-to-date with the latest versions to help showcase the value that the newest features and solutions offer.

For demo and sandbox use cases requiring an older version, you can deploy a GitLab instance in a container in the Container Sandbox or using Omnibus in the Compute Sandbox. We do not offer any data migration or parity configuration support.

### US Region Upgrades

The US region is upgraded on the 22nd of the month (the same day that the latest version of GitLab is released). The maintenance time window is being iterated upon and you can find the latest time on the Demo Systems calendar or in the `#demo-systems` Slack channel.

We have a self-imposed administrator sanity blackout window on Fridays, Saturdays, Sundays, and US Holidays ("weekends and holidays"). If the 22nd is on a weekend or holiday, we will upgrade on the following business day (Monday through Thursday).

From time to time, we may delay an upgrade by a few days for circumstances at the `@demo-systems-admins` discretion (ex. business impacts, unstable release, etc).

### EU Region Upgrades

To allow redundancy for any breaking changes during a version upgrade, we delay the EU region upgrade by one (1) week after the US region is upgraded. If a breaking change or version instability is discovered, the EU region will not be upgraded until the following month's release to ensure business continuity for demos.

We may also choose not to upgrade the EU region when we have limited support coverage due to holidays or conferences and want to ensure business continuity.

### Major Release Upgrades

Out of an abundance of caution, we will only upgrade one of the regions when a major version is released. GitLab product and engineering teams have scheduled this for May 22nd each year starting in 2020. We will upgrade both regions when the first minor version is released the following month.
