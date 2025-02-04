---
title: "Data Access Durability Team"
---

## Mission

The mission of the Durability team is dedicated to safeguarding and securing customer data that is stored by the GitLab application and set guidelines for data access.
We strive to build and maintain resilient infrastructure and improve the management of Redis, Sidekiq, and Gitaly.

### Ownership

The team has ownership over the following areas of the GitLab product:

1. Reliable backup and restore solutions for all environments where GitLab is deployed.
2. Data management and performance for Sidekiq and Redis.
3. Infrastructure support for the Gitaly service.

### Services

Durability is responsible for infrastructure that supports the following GitLab application services:

1. Sidekiq
2. Redis
3. Gitaly

## Getting Assistance

Should you require assistance from the Durability team, please reference [getting assistance in Infrastructure](/handbook/engineering/infrastructure/getting-assistance/#durability)

We also have team handles that ping the full team:

- Slack: `@infra-durability`
- GitLab: `@gitlab-org/data-access/durability`

### Priority Levels for Requests

The Durability uses a single priority label `~"Durability::P1"` for very urgent work that is blocking significant other work.
For issues with this label we aim to engage within 24 hours.

## Team Members

{{< team-by-manager-slug "jarv" >}}

## Common Links

- [Durability Top Level Epic](https://gitlab.com/groups/gitlab-com/gl-infra/data-access/durability/-/epics/1)
- [#g_durability](https://gitlab.enterprise.slack.com/archives/C07U8G0LHEH) - work related discussions, external requests, etc

## How We Work

### Project Management

The Durability team [has a single top level Epic](https://gitlab.com/groups/gitlab-com/gl-infra/data-access/durability/-/epics/1) that links sub-epics for all projects the team is working on.
Every sub-epic has a completion date and a DRI for providing a weekly status update.
We follow Platforms Project Management practices as outlined in the [Handbook](/handbook/engineering/infrastructure/platforms/project-management/).

### Issues

Issues for work performed by the Durability team is located in the [Durability team issue tracker](https://gitlab.com/gitlab-com/gl-infra/data-access/durability/team/-/issues).
The exception to this is work that is part of the Rails, these issues should be opened in the [GitLab Rails issue tracker](https://gitlab.com/gitlab-org/gitlab/-/issues).
