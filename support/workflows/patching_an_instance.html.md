---
layout: markdown_page
title: Patching an instance
category: Self-managed
description: How to patch GitLab (Rails application) manually
---

## Patching an instance

Sometimes, we need to ask a customer to patch their systems manually. This may
be because:

1. The customer can't upgrade to the newest version, but needs a fix from that
   version.
2. We have a fix merged, but not yet in a release.
3. The fix for their issue is still in development, but we'd like to verify that
   it resolves the customer's problem.

For Omnibus installs on a single server, this is fairly straightforward. Replace
`$mr_iid` below with the IID of the merge request, or change the URL to point to
a raw snippet.

```shell
$ curl -o /tmp/$mr_iid.patch https://gitlab.com/gitlab-org/gitlab/-/merge_requests/$mr_iid.patch
$ cd /opt/gitlab/embedded/service/gitlab-rails
$ patch -p1 -b -f < /tmp/$mr_iid.patch
$ gitlab-ctl restart
```

To revert the patch, use the `.orig` files the `patch` program generates.

Please note that if GitLab is upgraded, the patch will need to be reapplied.

**Note**: this process only applies to the Rails application ([the GitLab 
repository](https://gitlab.com/gitlab-org/gitlab)). Other components may need additional steps.
