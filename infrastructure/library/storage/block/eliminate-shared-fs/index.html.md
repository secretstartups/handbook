---
layout: handbook-page-toc
title: "Design :: Eliminate Shared File Server"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Idea/Problem Statement

As of May 2019, `share-01`, an NFS file server that's meant for sharing files 
between different parts of the fleet, is a SPOF for GitLab.com. If the server was
taken down accidentally or for maintenance, GitLab.com would incur downtime until it is up and
running again. Most of the application features that were using `share-01` primarily
(uploads, LFS objects, artifacts) have been migrated to allow for using a cloud storage 
instead, however, there are still a few features that still needs similar 
migration before we can drop using `share-01` altogether.

The following mount points are mounted for each client (web, api, git, sidekiq) in our fleet,
only the first 3 are no longer being used for sharing purposes and can be unmounted safely:

* `/var/opt/gitlab/gitlab-rails/shared/lfs-objects`
* `/var/opt/gitlab/gitlab-rails/shared/artifacts`
* `/var/opt/gitlab/gitlab-rails/shared/tmp`
* `/var/opt/gitlab/gitlab-rails/uploads`
* `/var/opt/gitlab/gitlab-rails/shared/cache`
* `/var/opt/gitlab/gitlab-ci/builds`

## Design

The following features still use `share-01`, and for each one we would implement
a solution to allow using a cloud storage.

### Personal snippets uploads

*Mount point*: `/var/opt/gitlab/gitlab-rails/uploads`

Attachments to personal snippets are only uploaded to `share-01`, 
unlike attachments to personal snippets comments, which are uploaded to cloud 
storage. The progress for this is being tracked in an [issue][snippet-temp-uploads].

### Caching of repository archives

*Mount point*: `/var/opt/gitlab/gitlab-rails/shared/cache`

This feature will not necessarily be broken with the absence of a shared file 
server, but it means that Gitaly would generate an archive every time one is 
requested, which can be put some Gitaly nodes under stress for large and popular
repositories. An effort to improve NGINX caching and/or serve immutable objects
(e.g. a repository archive at certain SHA1, a raw blob) from a CDN is being tracked
in an [issue][nginx-caching].

### Uploading archived CI traces

*Mount point*: `/var/opt/gitlab/gitlab-ci/builds`

This feature already has already a [cloud storage 
implementation][live-traces], but it is currently disabled behind a feature
flag due to some complications which are being tracked in an
 [issue][disable-feature-flag].

### Implementation Considerations

#### Testing

As this is an application change, it will be tested using application specs and 
further verified by QA tests.

#### GitLab.com and Self-managed

As there are no infrastructure changes involved in this design, it is expected 
to work the same for GitLab.com and self-managed installations.

### Alternatives

With availability as the main motivation behind this design, there are 
highly-available alternatives that we could use instead of self-managed file 
server. [Cloud Storage FUSE][fuse] 
and [Cloud Filestore][filestore] are both provided by 
GCP and allows us not to change the application right away while still having 
high-availability guarantees. Such solutions, however, pose some disadvantages 
as some self-managed clients may not have access to such products in their 
hosting environment. Also, using such solutions may complicate our move
towards Kubernetes.

[live-traces]: https://docs.gitlab.com/ee/administration/job_traces.html#new-live-trace-architecture
[fuse]: https://cloud.google.com/storage/docs/gcs-fuse
[filestore]: https://cloud.google.com/filestore/
[disable-feature-flag]: https://gitlab.com/gitlab-org/gitlab-ce/issues/51496
[nginx-caching]: https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/4454
[snippet-temp-uploads]: https://gitlab.com/gitlab-org/gitlab-ce/issues/62663