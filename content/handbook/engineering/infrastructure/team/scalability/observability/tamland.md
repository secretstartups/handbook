---
aliases: /handbook/engineering/infrastructure/team/scalability/observability/tamland.html

title: "Capacity Planning: Tamland"
---


## Tamland: Saturation forecasting

[Tamland](https://gitlab.com/gitlab-com/gl-infra/tamland) is a saturation forecasting tool we use for capacity planning purposes. The Scalability:Observability team develops and releases Tamland.

This page details how we organize development efforts around Tamland.

## GitLab Projects and Capacity Planning Trackers

The main development project for Tamland is [gitlab.com/gitlab-com/gl-infra/tamland](https://gitlab.com/gitlab-com/gl-infra/tamland).

Feature requests, improvements and bug reports can be filed in [Tamland's issue tracker](https://gitlab.com/gitlab-com/gl-infra/tamland/-/issues).

Aside from development, we operate Tamland forecasting and reporting components through a number of rather operational projects. Those are geared towards their respective environment's needs:

1. [`gitlab-com`](https://gitlab.com/gitlab-com/gl-infra/capacity-planning-trackers/gitlab-com) - operates forecasting and reporting for GitLab.com capacity planning purposes,
2. [`gitlab-dedicated`](https://gitlab.com/gitlab-com/gl-infra/capacity-planning-trackers/gitlab-dedicated) - orchestrates reporting needs for GitLab Dedicated tenant environments and their forecasting data,
3. [`tamland-staging`](https://gitlab.com/gitlab-com/gl-infra/capacity-planning-trackers/tamland-staging) - based on GitLab.com saturation data, this is a staging environment for Tamland itself.

Refer to the linked projects' README information for more detail on the configuration details and how components interact.
