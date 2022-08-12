---
layout: handbook-page-toc
title: GitLab Dedicated Handbook
category: GitLab Dedicated
description: "Gitlab Dedicated handbook."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

[GitLab Dedicated](https://docs.gitlab.com/ee/subscriptions/gitlab_dedicated/), from support perspective, works as a combination of SaaS and SM. Customers have full Admin access to the instance, but no access to the infrastructure, nor to the backend configurations. This workflow captures the differences, and details of providing support for GitLab Dedicated.

### Working with logs

Support can access tenant logs through [OpenSearch](https://opensearch.org/).

[OpenSearch](https://opensearch.org/) can be used similar to [Kibana](./kibana.html.md).

#### Accessing logs

To access the logs for a specific tenant find the credentials stored in the `GitLab Dedicated - Support` Vault, and access the corresponding URL listed there.
Once in the tenant's OpenSearch site:

1. Select "Global" tenant
1. Choose "Discover" at the sidebar under OpenSearch Dashboards
1. On the next screen, you should see logs. Make sure that index `gitlab-*` is selected.

#### Searching logs

Since GitLab Dedicated uses [Cloud Native Hybrid reference architecture](https://docs.gitlab.com/ee/administration/reference_architectures/10k_users.html#cloud-native-hybrid-reference-architecture-with-helm-charts-alternative), searching logs on OpenSearch is a bit different from [Kibana](./kibana.html.md).

- Terms can be freely typed in the search bar
- Fields can also be used as filters, similarly to [Kibana](./kibana.html.md).

##### Fields and Filters

General fields:

- `host:` The GitLab host of the log. It can be `<tenant name>-gitaly-*`  or  `<tenant name>-consul-2`, etc.
- `referrer:` holds the project path. `https://tenant.gitlab-dedicated.com/example-group/test123`
- `message:` is the message that would be seen in the logs of a self-managed instance.  `xxx.xxx.xxx.xxx - - [08/Jul/2020:13:24:43 +0000] "GET /assets/webpack/commons-pages.projects.show-pages.projects.tree.show.21909065.chunk.js HTTP/1.1" 200 9316 "https://tenant.gitlab-dedicated.com/example-group/test123" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36" 1343 0.001 [default-gitlab-webservice-default-8181] [] xxx.xxx.xxx.xxx:8181 9309 0.000 200 fe130eac78314cwf352g3762397572cb`
- `kubernetes.labels.app:` used to filter Kubernetes pods. `nginx-ingress`, `webservice`, etc.

Gitaly related fields:

- `grpc.request.glProjectPath:` The actual GitLab path project path.
- `grpc.request.repoPath:`  Project hash id path.

SAML related fields:

- `action:saml`
- `path: /users/auth/saml/callback`
- `controller: OmniauthCallbacksController`
- `location: https://tenant.gitlab-dedicated.com/`

### Configuration changes

GitLab Dedicated uses the [Cloud Native Hybrid reference architecture](https://docs.gitlab.com/ee/administration/reference_architectures/10k_users.html#cloud-native-hybrid-reference-architecture-with-helm-charts-alternative). Instance implementation and changes are done via the [instrumentor project](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/instrumentor)

When any changes to the tenant instance are required, please contact the GitLab Dedicated infrastructure team on Slack, using channel [`#g_dedicated-team`](https://gitlab.slack.com/archives/C025LECQY0M)

### Filing issues

In cases where Customer Support needs to interact with GitLab Dedicated engineers to gather information or similarly debug a problem at tenant's request (when Grafana or OpenSearch does not suffice), raise an issue in the [GitLab Dedicated issue tracker] using a [Support Request template](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team/-/issues/new?issuable_template=support_request).

### Escalating an Emergency issue

Emergencies from GitLab Dedicated will come through the [Customer Emergencies On-call Rotation](https://about.gitlab.com/handbook/support/workflows/customer_emergencies_workflows.html) as with other emergency types.

The GitLab Dedicated Infrastructure team has a 24/7 PagerDuty rotation: [GitLab Dedicated Platform Escalation](https://gitlab.pagerduty.com/schedules#PE57MNA). To [manually create a PD Incident](https://about.gitlab.com/handbook/support/workflows/support_manager-on-call.html#manually-triggering-a-pagerduty-notification_) use the [Dedicated Platform Service](https://gitlab.pagerduty.com/service-directory/P1H70IW) or use the Slack command `/pd` trigger and choose "Dedicated Platform Service" as the Impacted Service to escalate an emergency to an SRE after initial triage and analysis.

### Troubleshooting tips

#### Tagging logs while running tests

Customers can add a custom identifier, such as the ticket ID, to the `user-agent` field when testing. This makes it easier to filter logs related to the test.

For example:

```bash
curl -k -vvv -A"GitLabSupport012345" "https://tenant.gitlab-dedicated.com/users/sign_in"
```
