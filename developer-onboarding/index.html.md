---
layout: handbook-page-toc
title: "Developer Onboarding"
description: "Awesome! You're about to become a GitLab developer! Here you'll find everything you need to start developing."
---

Awesome! You're about to become a GitLab developer!
Make sure you've checked out our [handbook] beforehand, so you get a feeling
of how we work at GitLab. Below you'll find everything you need to start developing.
If something is missing, add it (as goes with everything at GitLab)!

### On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## GitLab Environments

We have multiple [GitLab environments](/handbook/engineering/infrastructure/environments/).

On those instances, please enable the
[performance bar](https://docs.gitlab.com/ee/administration/monitoring/performance/performance_bar.html)
by pressing <kbd>p</kbd> then <kbd>b</kbd> (even on production.)

Then, read how to use and enable the
[production Canary](/handbook/engineering/#canary-testing)
on GitLab.com.

## Getting started with GitLab development

To start development, follow the instructions for the
[GitLab Development Kit](https://gitlab.com/gitlab-org/gitlab-development-kit).

## GitLab Repositories

GitLab consists of many subprojects. A curated list of GitLab Repositories
can be found at the [GitLab Engineering Projects](/handbook/engineering/projects/) page.

Almost all repositories are available on both GitLab.com and dev.gitlab.org. We
also mirror to dev.gitlab.org for availability reasons and [GitHub](https://github.com/gitlabhq)
for historical reasons.

All issues should be filed on GitLab.com.

## Infrastructure

For everything related to infrastructure, check out the
[Infrastructure handbook](/handbook/engineering/infrastructure/).
In particular [production architecture](/handbook/engineering/infrastructure/production/architecture/) might be useful for onboarding.

If you need a VPS for any reason, it's probably easiest to set one up at DigitalOcean. Ask another developer for access.

## Basics of GitLab development

### Workflow

Please see the [engineering workflow document][eng-wf] in the handbook and read
the [developer documentation][dev-doc].

[eng-wf]: /handbook/engineering/workflow/
[dev-doc]: http://docs.gitlab.com/ee/development/README.html

### Security

Read the [developer security documentation][sec-doc] prior to working on a security issue.

[sec-doc]: https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/developer.md

### Quality

One of GitLab's strengths is its high quality of software. To achieve this we've
introduced some requirements to all source code that is contributed. All
requirements are mentioned in [the Contribution guide][contrib-guide].
Make sure you read and follow it.

### Dependencies

GitLab can be installed through an Omnibus package or from source on different
Linux distributions and macOS. In order to maintain portability, we need to
avoid adding extra dependencies and use of exotic database extensions. Every
time you choose between changes in the application code or adding new
dependencies, you should give priority to the first because this is easier to
maintain and set up. If you still need to bring new dependencies to GitLab, ask
another developer or the CTO for advice.

### Submit your code

In GitLab all code should go through a review process before it can be merged.
Make sure you submit a merge request for any changes you've made.
When the merge request is ready, it should be assigned to [someone else on the team](/handbook/engineering/workflow/code-review/).
This person is then responsible for reviewing your code and merging it.
Optionally, you can request another developer to help or review by writing a comment.
If a merge request is not assigned, it will probably be ignored and create
unnecessary delays.

Don't work on one task for multiple days before submitting a merge request.
Even the biggest task can be split into smaller tasks.
Try to submit a merge request for each part of the functionality.
This means that we expect multiple merge requests per week from you.
Smaller merge requests are more likely to receive good feedback and will get
merged sooner.

Unless the change is very minor, or is fixing a bug that was introduced in the
same version, create a changelog entry using the
[`bin/changelog` script][changelog-script].
Do not include your name in the entry as we only do that to give recognition to
volunteer contributors.

[changelog-script]: https://docs.gitlab.com/ee/development/changelog.html

### Working on GitLab EE

GitLab EE requires a license key to be used.

To be able to run your own instances for development,
[open an issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=GitLab_Team_Member_License_request)
using the `GitLab_Team_Member_License_request` template. In the issue, request for a license that is valid for a year, and provide "Developer on-boarding"
as the reason for a longer expiration.

[Learn more about working with licensing and subscriptions internally.](https://about.gitlab.com/handbook/support/internal-support/#regarding-licensing-and-subscriptions)

### Ruby Gems

When building and publishing Gems for GitLab be sure to add [`gitlab-qa`](https://rubygems.org/profiles/gitlab-qa) to the
[Gem Owners](https://guides.rubygems.org/managing-owners-using-ui), to ensure that the gem doesn't end up orphaned or
unable to be published for any reason.

You can additionally add some, or all of the following as co-owners, and other
relevant developers as well:

* [Dmitriy Zaporozhets](https://rubygems.org/profiles/dzaporozhets)
* [Marin Jankovski](https://rubygems.org/profiles/marinjankovski)
* [Rémy Coutable](https://rubygems.org/profiles/rymai)
* [Robert Speicher](https://rubygems.org/profiles/rspeicher)
* [Stan Hu](https://rubygems.org/profiles/stanhu)
* [Yorick Peterse](https://rubygems.org/profiles/YorickPeterse)

[handbook]: /handbook
[in the open]: /2015/08/03/almost-everything-we-do-is-now-open/
[contrib-guide]: https://about.gitlab.com/community/contribute/

## Relevant links

- [Engineering Handbook](/handbook/engineering/)
- [Engineering Workflow](/handbook/engineering/workflow/)
- [Product Handbook](/handbook/product/)
