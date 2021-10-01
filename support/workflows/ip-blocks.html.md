---
layout: handbook-page-toc
title: Identifying the Cause of IP Blocks on GitLab.com
description: "Workflow to try to determine what caused an IP address block and relay that information back to the user."
category: GitLab.com
subcategory: Troubleshooting
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

At times, users of GitLab.com can find that their IP address has been blocked due to rate limiting. Currently, rate limit parameters on GitLab.com are best described on the [GitLab.com settings docs page](https://docs.gitlab.com/ee/user/gitlab_com/#gitlabcom-specific-rate-limits). When this happens we *may* be able to determine what caused a block and relay that information back to the user.

## Responding

A standard response is available as a macro: [`Support::SaaS::Temp IP Ban`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360045599533))

Please also see [the log requests workflow](/handbook/support/workflows/log_requests.html) for what information we can provide when responding.

## Searching

### Search Condition

Start by adding a positive filter on `json.remote_ip` for the IP address provided by the user:

![Add remote_ip filter](/images/support/ipblocks_add_remoteip_filter.png)

You can then drill down from there with positive and negative filters on [fields](#fields) to get the best results.

### Checking for Rack Attack Blocks

It can sometimes be unclear if a user has actually been blocked by our end or not. If they've been blocked by [Rack Attack](https://docs.gitlab.com/ee/security/rack_attack.html), we should be able to locate requests in Kibana that were blocked because of it.

To do so, enter the IP address into the main search field and set a positive filter on `json.message` for `Rack_Attack`.

![Searching for an IP](/images/support/ipblocks_rack_attack_search.png)

You should see results similar to the following:

![Checking Rack Attack results](/images/support/ipblocks_rack_attack_results.png)

The existence of these results tells us that this user was blocked by Rack Attack and we can add the `json.fullpath` field to see which exact path on GitLab.com each request tried to access.

Rack Attack can also _throttle_ traffic. This is recognizable by the HTTP 429 response code. The preferred solution to this is to have the user make fewer requests. If that is not possible you can create an infrastructure issue with [this template](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/new?issuable_template=request-rate-limiting).

### Fields

#### Primary

The following fields are the best to add to your search query in order to get the most important details on multiple requests at a glance.

- `json.status` - Outputs the HTTP status code that was returned for the request. We're usually looking for `401` (Unauthorized) and/or `403` (Forbidden).
- `json.path` - The path on GitLab.com that was accessed by the request or the API endpoint that was hit.
- `json.method` - Can be either `GET`, `POST`, `PUT`, `PATCH`, or `DELETE`. The first three are the most common.
- `json.env` - Can be `blocked`, `throttle` or `track`. `track` is used for diagnostics when changing rate limiting settings and does not affect users: from a support perspective, ignore `track`. `blocked` happens in reaction to too many failed authentication attempts, for example with automated Git HTTP traffic. `throttle` means a user or IP is making too many requests per minute.

#### Secondary

These fields can be helpful but aren't essential.

- `json.controller` - Gives you a clue as to what part of GitLab.com was being accessed by a particular request.
- `json.params` - Shows what user made the request, what action was taken, and on what resource it was taken on. This field shows what repository was targeted for requests to the container registry.
- `json.matched` - This is the name of the Rack Attack rule used to limit this request (when `json.env` is `throttle`). This can help you find out which of the [current limits](https://docs.gitlab.com/ee/user/gitlab_com/#gitlabcom-specific-rate-limits) the request surpassed.

## Common Causes

### Container Registry

Numerous failed pushes or pulls to `registry.gitlab.com` can result in an IP block.

You can list all log results for hits on the container registry by searching for the provided IP address and setting a positive filter on `json.path` for `/jwt/auth`.

#### Useful Fields

- `json.status`
- `json.path`
- `json.params`
- `json.controller`

#### Failed Push and Pull Examples

##### Push
{:.no_toc}

Failed pushes to the registry will always have `JwtController` for the `json.controller` field and `/jwt/auth` for the `json.path` field. Watch for `:push,pull` in the `json.params` field, indicating that the request is for a push.

A failed push will look like the following in Kibana.

![Failed Push](/images/support/ipblocks_registry_failed_push.png)

##### Pull
{:.no_toc}

Similar to a push, failed pulls from the registry will always have `JwtController` for the `json.controller` field and `/jwt/auth` for the `json.path` field. However, in `json.params` only `:pull` will be present.

A failed pull will look like the following in Kibana.

![Failed Pull](/images/support/ipblocks_registry_failed_pull.png)

#### `gitlab-ci-token` Pulls

Users can also become blocked due to registry pulls from the user `gitlab-ci-token` making (normal) unauthed requests to `jwt/auth`.  This user may be exempted from rate limiting in the future, it's being discussed in [this issue](https://gitlab.com/gitlab-org/gitlab-ce/issues/49392).

An example request looks like:

![gitlab-ci-token registry pull request](/images/support/ipblocks_gitlab_ci_token_pull.png)

To filter for these types of requests specifically, add the `json.params` field.

### LFS

Pushes or pulls to repositories containing LFS objects can result in an IP block if the user is unauthorized.

#### Useful Fields

- `json.action`
- `json.controller`
- `json.method`
- `json.status`

#### Examples

##### Push
{:.no_toc}

Failed LFS pushes will always have `upload_authorize` in the `json.action` field, `Projects::LfsStorageController` for the `json.controller` field, and `PUT` for `json.method`.

A failed LFS push will look like the following in Kibana.

![Failed LFS Push](/images/support/ipblocks_lfs_failed_push.png)

### Cloning Fails

An IP can become blocked if a repository is cloned via HTTPS without authentication enough times.

The request will look like this:

![Log results for a failed clone](/images/support/ipblocks_failed_clone.png)

#### Useful Fields

- `json.status`: `401`

- `json.controller`: `Projects::GitHttpController`

- `json.action`: `info_refs`

- `json.path`: `/namespace/project.git/info/refs`

- `json.ua`: If the request did not come from a browser this will reveal the operating system of the machine that attempted the clone along with the version of Git installed on it. Examples: `git/2.11.1.windows.1`, `git/2.17.2 (Apple Git-113)`, `git/2.17.1` (Ubuntu 18.04 LTS), etc.

You should also see `git-upload-pack` in the `json.params` field.

### Project Export Rate-Limiting

An IP can become rate-limited if a customer attempts to export or download project exports too rapidly. See [Project Import/Export](https://docs.gitlab.com/ee/user/project/settings/import_export.html#rate-limits)

#### Useful Fields

- `json.method`: `Application_Rate_Limiter_Request`

- `json.controller`: `ProjectsController`

- `json.action`: `download_export`

- `json.path`: `/namespace/project/download_export`

### Handling Gitlab.com "Access Denied" errors 

As noted above IP addresses are typically blocked due to rate limiting and are usually released after a few hours however there may be some instances where IP addresses remain blocked. If this occurs then please contact the customer and request a screenshot of the “Access Denied” page. This will contain two relevant pieces of data, the “Ray ID” and the “Timestamp” as shown below.

![Access Denied erorr](/images/support/AccessDenied.png)

Once you obtain information you should either consult the #infrastructure-lounge slack channel for further assistance or open a [Cloudfare Firewall issue](https://gitlab.com/gitlab-com/gl-infra/cloudflare-firewall/-/issues) providing the “Ray ID” and the “Timestamp” to request that the IP address block is removed. 



