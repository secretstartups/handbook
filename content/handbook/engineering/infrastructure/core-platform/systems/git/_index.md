---
title: "Core Platform:Git Team"
---

**Mission**: Develop Git in accordance with the goals of the community and GitLab, and integrate it into our products.

[Responsibilities](/job-families/engineering/backend-engineer/#git) |
[In the product hierarchy](/handbook/product/categories/#git-group)

{{< team-by-departments "Git Team" >}}

## Workflow in upstream Git

Because the Git project is an upstream project, we must use a different workflow.

### Planning

The Git project has a different release schedule where a new release is published roughly every three months. The
schedule can be seen in the [Git project's calendar](http://tinyurl.com/gitcal). Furthermore, it is expected that most
topics will take significantly longer both to develop and to be merged upstream. As a consequence, our usual milestones
are not a good mechanism to properly track the target GitLab version in the context of upstream issues.

Instead, we use labels like `git-milestone::v2.42` to annotate our target Git version for open issues as well as the
actual version something has landed in for completed issues. These milestone labels are applied in addition to our
normal milestones.

This means that we assign milestones as a timeframe to schedule the implementation of the work by the Gitaly team
members, but this does not correspond to the timeframe when the work will be released by the Git project. Their meaning
is reduced to a planning tool such that Git issues continue to show up on usual issue boards and are readily
discoverable. Consequentially, our usual way of picking up new work applies to Git issues, as well.

### Differences to normal review process

When working with the upstream Git Project, we still use a simple workflow where the developer implements the issue in a
topic branch, creates a merge request, and assigns reviewers as usual, where issues and merge requests should be created
in our [mirror of the Git project](https://gitlab.com/gitlab-org/git). However, because the changes must undergo
upstream review, the workflow diverges from our normal workflow

- Changes may optionally undergo internal review.
- After the optional internal review, patches are sent to the Git mailing list.

The meaning of the merge requests thus gets reduced to be purely informational.

Developers are encouraged to skip the optional internal review and instead send their patches to the mailing list
directly. In that case, they should add a comment to the merge request that links to the mailing list thread on
<https://public-inbox.org/git/>. The review should then happen on the mailing list directly.

Encouraging developers to send patches to the mailing list directly has multiple benefits:

- Reviewers get exposure to the Git mailing list. This demonstrates to the wider Git community there is a whole team
  working on Git at GitLab while also building up credibility for the reviewer.
- Topics which may otherwise not get a lot of attention may get more when our own reviews are visible.
- We avoid having to do two sequential reviews, which would otherwise further delay topics.

The optional internal review is specifically with new internal contributors in mind. It should help to lower the bar for
entry and reduce the level of discomfort that wider exposure to the Git community may bring with it. In the same spirit,
reviewers may post review comments internally first before sending them to the Git mailing list. Ultimately, the goal
should be that we mentor these new contributors internally such that they eventually start to post to the Git mailing
list directly.

The following is a non-exhaustive list of exceptions where we prefer internal reviews:

- Security issues are implemented in our [private security mirror](https://gitlab.com/gitlab-org/security/git).
- Potentially controversial topics where we need to assess whether a proposed solution addresses our own usecases.

### Long-running topics

In some contexts it may be necessary to collaborate on long-running topics when it is infeasible to land changes in a
single release. Our usual iterative development approach does not always work well within the Git project. Most
importantly, for an open source project the assumption needs to be that contributors may go away in the middle of their
endeavour, leaving behind dangling pieces that might have complicated some of our architecture without actually reaping
the intended benefits. In contrast to company-led projects, the Git project has no way of ensuring that these would
eventually get finished.

For topics that span over multiple releases we are forced to use long-running feature branches until the topic becomes
upstreamable. The workflow here is thus different to normal upstream work and happens on a separate topic branch that
the developer creates from the current upstream `master` branch. From here on, the development of the topic happens
internally and follows our usual merge request workflow including internal reviews, where each of the merge requests
targets the topic branch.

One problem in this context is that the topic branch will eventually start to become outdated when the upstream `master`
branch progresses. While it would be possible to regularly merge from `master` into the topic branch, the end result
would not be in an upstreamable state. On the other hand, rebasing the topic branch on top of `master` would require
other contributors to adapt to the resulting forced update.

Instead, we use a combination of rebases and merges to update the topic branch with upstream's `master` branch:

1. The topic branch is fake-merged into the `master` branch, discarding all changes. The resulting tree is the same tree
   as the tree of `master`.
1. All commits of the topic branch are rebased on top of the fake merge.
1. Optionally, the rebased commits are squashed or reorganized so that the result becomes upstreamable.

While complicated, this workflow provides a bunch of benefits:

- We never need to force-update the topic branch.
- The topic branch remains in an upstreamable state.
- The history of the topic branch remains intact, which also means that individual contributions remain intact even if
  they are squashed into other commits.

This workflow is similar to what Git for Windows uses and can be implemented via its
[shears.sh](https://github.com/git-for-windows/build-extra/blob/5b12303a092b159a22a2640d7b8aee84715091de/shears.sh)
script:

```shell
## Update origin, pulling in new changes for origin/master
$ git fetch origin
## Switch to the topic branch
$ git switch topic
## Find the current root of the topic branch. This could either be the last fake-merge
$ base=$(git rev-parse ':/Start the merging-rebase')
## Or it could be the merge-base of origin/master and your topic branch
$ base=$(git merge-base origin/master topic)
## Rebase the topic branch onto origin/master
$ ./shears.sh --merging --onto origin/master $base
```
