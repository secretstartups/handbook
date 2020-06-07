---
layout: handbook-page-toc
title: "Self-service for Redirects on about.gitlab.com"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Design

Issues:

* [Enable 301 Redirects on about.gitlab.com for Marketing (gitlab-com/www-gitlab-com#3952)](https://gitlab.com/gitlab-com/www-gitlab-com/issues/3952)
* [Enable 301 Redirects on about.gitlab.com for Marketing (infrastructure project) (gitlab-com/gl-infra#6432)](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6432)
* [setup staging environment for about.gitlab.com (gitlab-com/gl-infra#6433)](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6433)

# Blueprint

## Idea/Problem Statement

The Marketing team needs to be able to configure 301 redirects when paths change on the `about.gitlab.com`. Until now this was done by creating issues in the infrastructure project and then someone from the infrastructure team had to edit a role in the chef-repo and apply the change. This is manual, slow and laborsome.

A solution to this would be to automate this process, [see](https://gitlab.com/gitlab-com/www-gitlab-com/issues/3952)

approaches that were considered:
- set up a reverse proxy (e.g. HAProxy) in front of `about.gitlab.com` and write a script that would dynamically reconfigure the proxy
- reconfigure Fastly to return to the user a 301 response. Use ruby, golang (`go run`) or serverless (GCP cloud function or knative)

Regardless of which direction we decide to go, the solution needs to be tested in a staging environment. Thus the need to create `about.staging.gitlab.com`

The current configuration of `about.gitlab.com` is described [here](https://gitlab.com/gitlab-com/runbooks/tree/master/howto/about-gitlab-com.md)

## Reverse proxy in front of about.gitlab.com ##

At the moment there is no reverse proxy in front of `about-src.gitlab.com`. Traffic from Fastly as well as from the Internet goes directly to nginx.

We would need to set up the proxy and implement something that would reconfigure it dynamically.

### ingress controller ###

This idea is mentioned here for brainstorming, it's here because functionally reconfiguring dynamically proxies is exactly what ingress controller is doing. Using a yml file user defines configuration that is then translated into proxy config and applied instantaneously. It's not relevant since we're not using Kubernetes at the moment.

## reconfigure Fastly ##

This approach is much simpler (no need to configure another service) and faster (301s from the backend are not cached by Fastly). It also doesn't involve expiration of the existing cache (we use ETags with long expiration times so an introduction of a 301 would not be reflected in Fastly without dumping the cache).

see below for the work that would be involved

### use Ruby ###

implement using Ruby. There are already scripts written in Ruby in `www-gitlab-com` repo in the `bin/` directory.

### use Golang ###

functionally the same as Ruby
CI job in a Golang docker container, use `go run`

### serverless ###

the function invocation would have to send the contents of the yml file from the repository to the function. The function itself would have to be managed separately, e.g. using terraform or manually over a WebUI. So there would have to be two runtimes with two sets of credentials: one for triggering the function and another for the execution of it. It's easier to set this up as a CI job - the yml file is already there, there are less moving parts.

### what needs to be done ###

* [ ] create a yaml file with redirects definitions: `www-gitlab-com/data/redirects.yml` , start with the following [content](https://ops.gitlab.net/gitlab-cookbooks/chef-repo/blob/master/roles/about-gitlab-com.json#L21) and use this format:

```
- sources: /some-old-path/ 
  target: /some-new-path/
- sources:
    - /another-old-path/
    - /another-old-path-as-well/
  target: /some-other-new-path/
```

* [ ] add a CI job in the build stage that validates the yml file:
  * [ ] no source path appears twice in the collection
  * [ ] no target path appears twice in the collection
  * [ ] no target path appears as a source path
* [ ] create manually within Fastly:
  * [ ] An edge dictionary named `redirects`
  * [ ] Create a custom VCL snippet which references the edge dict and does 301 redirects
* [ ] write a script that will:
  * [ ] pull the edge dict from Fastly
  * [ ] process the yml file
  * [ ] compare the two
  * [ ] apply the necessary change in Fastly, remove or add redirects, use [batch updating](https://docs.fastly.com/guides/edge-dictionaries/working-with-dictionary-items-using-the-api#batch-updating-dictionary-items) and [upserts](https://docs.fastly.com/guides/edge-dictionaries/working-with-dictionary-items-using-the-api#upserting-dictionary-items)
* [ ] add a protected env var with an API key to Fastly API tied only to the `about.gitlab.com` Fastly Project
* [ ] add a CI job in the build stage that validates the script
* [ ] add a CI job in the deploy stage that triggers the script
* [ ] after all this work is done, confirm redirects in Fastly are fully operational
* [ ] remove redirects from Chef and chef-repo


## staging for about.gitlab.com ##

### what needs to be done ###

* [ ] create a VM in Azure
* [ ] create a DNS entry for the VM
* [ ] run Chef on it
* [ ] create a separate role, similar to `about-gitlab-com.json` and apply it
* [ ] create a service in Fastly
* [ ] create DNS entries for Fastly

### FAQ ###

#### why not create the VM in GCP? ####

the purpose of staging is to mirror prod as close as possible, for that reason, if we wanted to deploy staging on GCP we would have to move prod as well. That's not within the scope of this work

#### why not in Kubernetes? ####

we are still in the process of formulating our approach for switching to Kubernetes. This change has to happen fast. Once it's deployed and we stop blocking the Marketing team, we can look into moving to k8s. We are not cutting ourselves from switching with this work. The change would be fairly easy, it would be a matter of updating config in Fastly and pointing it to a new backend service

what would have to be done if we wanted to do it in Kubernetes:
- write terraform to create prod and staging GKE clusters (examples are available), automate deployment using CI
- deploy a kubernetes gitlab-runner to both clusters
- write a Kubernetes deployment yaml/helm chart for running the about.gitlab.com, automate deployment using CI
- deploy Prometheus Operator (it manages some exporters out of the box), add some more exporters like nginx exporter, define alerting rules, configure Prometheus instance to send alerts to our alertmanager
- probably deploy some other ops related tooling

