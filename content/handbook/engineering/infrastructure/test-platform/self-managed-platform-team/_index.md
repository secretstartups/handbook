---
title: "Self-Managed Platform team"
description: "Self-Managed Platform team in Test Platform sub-department"
---

## Common Links

| S.No 	| Section     	          |
|------	|-------------------------|
| **GitLab Team Handle** | [`@gl-quality/tp-self-managed-platform`](https://gitlab.com/gl-quality/enablement-qe) |
| **Slack Channel** | [#self-managed-platform-team](https://gitlab.slack.com/archives/CTP7N0PM4) |
| **Team Boards** | [Team Board](https://gitlab.com/groups/gitlab-org/-/boards/978354) |
| **Issue Tracker** | [quality/team-tasks](https://gitlab.com/gitlab-org/quality/team-tasks/issues/) |
| **Self-Managed Platform Projects** | [Tools Page](https://about.gitlab.com/handbook/engineering/infrastructure/test-platform/self-managed-excellence/) |

Engineers in this team support the product sections supported by the [Core Platform], [SaaS Platforms] along with maintaining the self managed platform tools.

## Team members

Engineering Manager: Kassandra Svoboda

| S.No 	| Section     	          | Stage/ Group/ Tool         | SET Counterpart    |
|------	|-------------------------|----------------------------|--------------------|
| 1    	| [Core Platform]    	  | [Data Stores]              | John McDonnell     |
| 2     | [Core Platform]         | [Tenant Scale]             | Andy Hohenner      |
| 3     | [Core Platform]         | [Systems]                  | Vishal Patel       |
| 4     | [Core Platform]         | [Geo]                      | Nick Westbury      |
| 5    	| [SaaS Platforms]        | [GitLab Dedicated]         | Brittany Wilkerson |
| 6    	| [SaaS Platforms]        | [US Public Sector Services] | Jim Baumgardner    |
| 7    	|          -              | [GitLab Environment Toolkit] & [Reference Architectures]  | Grant Young    |
| 8    	|          -              | [GitLab Performance Tool]   | Nailia Iskhakova    |

## OKRs

Every quarter, the team commits to [Objectives and Key Results (OKRs)](/company/okrs/). The below shows current quarter OKRs and is updated regularly as the quarter progresses.

Here is an [Overview](https://gitlab.com/gitlab-com/gitlab-OKRs/-/work_items/4938) of our current Self-Managed Platform team OKR.

## Quality Performance Indicators for Core Platform Section

(<a href="https://app.periscopedata.com/app/gitlab/736012/Quality-Embedded-Dashboard" target="_blank">Sisense↗</a>)
<embed width="100%" height="300" src="<%= signed_periscope_url({ dashboard: 736012, embed: 'v2', filters: [{name: 'Development_Section' , value: 'enablement' }]}) %>">

## Projects

* [GitLab Performance Tool]
* [GitLab Browser Performance Tool]
* [GitLab Environment Toolkit]
* [Performance Test Data]
* [Performance Docker Images]
* [Zero Downtime Testing Tool]
* [Reference Architectures]

## Test Platform process across product sections:

Overall we follow the same process as [defined](https://about.gitlab.com/handbook/engineering/infrastructure/test-platform/#how-we-work) in our Quality Engineering handbook across all groups in Enablement
except for a few exceptions curated to fit the needs of specific groups.

- [Test Platform in Distribution group](/handbook/engineering/infrastructure/test-platform/self-managed-platform-team/distribution/index.html)

[Core Platform]: /handbook/product/categories/#core-platform-section
[Systems]: /handbook/product/categories/#systems-stage
[Data Stores]: /handbook/product/categories/#data-stores-stage
[Geo]: /handbook/product/categories/#geo-group
[Tenant Scale]: /handbook/product/categories/#tenant-scale-group
[SaaS Platforms]: /handbook/product/categories/#saas-platforms-section
[SaaS Platforms]: /handbook/product/categories/#saas-platforms-stage
[GitLab Dedicated]: /handbook/product/categories/#gitlab-dedicated-group
[US Public Sector Services]: /handbook/product/categories/#us-public-sector-services-group
[GitLab Performance Tool]: https://gitlab.com/gitlab-org/quality/performance
[GitLab Browser Performance Tool]: https://gitlab.com/gitlab-org/quality/performance-sitespeed
[GitLab Environment Toolkit]: https://gitlab.com/gitlab-org/gitlab-environment-toolkit
[Performance Test Data]: https://gitlab.com/gitlab-org/quality/performance-data
[Performance Docker Images]: https://gitlab.com/gitlab-org/quality/performance-images
[Zero Downtime Testing Tool]: https://gitlab.com/gitlab-org/quality/zero-downtime-testing-tool
[Reference Architectures]: https://gitlab.com/gitlab-org/quality/reference-architectures
