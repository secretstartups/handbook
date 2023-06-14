---
layout: handbook-page-toc
title: GitLab Dedicated Logs
category: GitLab Dedicated
description: "Gitlab Dedicated Support - Working with logs"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Working with logs

Support can access tenant logs through [OpenSearch](https://opensearch.org/).

[OpenSearch](https://opensearch.org/) can be used similar to [Kibana](./kibana.html).

## Identifying tenants

Credentials needed for examining logs are stored in the `GitLab Dedicated - Support` vault. Each customer is noted by a customer number in the vault, so you must refer to the `<tenant name>` to identify the proper credentials to use for a customer. This is used as part of the accessible URL, such as: `opensearch.<tenant name>.gitlab-dedicated.com`.

## Accessing logs

To access the logs for a specific tenant find the credentials stored in the `GitLab Dedicated - Support` Vault, and access the corresponding tenant URL listed there.
Once in the tenant's OpenSearch site:

1. Select "Global" tenant
1. Choose "Discover" at the sidebar under OpenSearch Dashboards
1. On the next screen, you should see logs. Make sure that index `gitlab-*` is selected.

**NOTE:** Logs are rotated weekly. Copy and paste relevant logs into the ticket and/or issues. Screenshots of frequently occurring errors over time are also helpful.

## Searching logs

Since GitLab Dedicated uses [Cloud Native Hybrid reference architecture](https://docs.gitlab.com/ee/administration/reference_architectures/10k_users.html#cloud-native-hybrid-reference-architecture-with-helm-charts-alternative), searching logs on OpenSearch is a bit different from [Kibana](./kibana.html).

- Terms can be freely typed in the search bar
- Fields can also be used as filters, similarly to [Kibana](./kibana.html).

### Fields and Filters

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
