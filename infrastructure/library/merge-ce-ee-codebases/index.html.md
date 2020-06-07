---
layout: handbook-page-toc
title: "Merging CE and EE codebases"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Resources

Blueprint: [Working in CE and EE codebases]

Related issues:

* [gitlab-ee/2952]
* [quality/team-tasks/81]
* [framework/114]

## Overview

In Blueprint: [Working in CE and EE codebases], we have the current development
workflow described using the graph:

![CE-EE-Development-and-Release](/handbook/engineering/infrastructure/blueprint/ce-ee-codebases/CE-EE-development-release.png)

In this document we will look into what steps are necessary to get CE and EE codebases merged
into one, to simplify the workflow to:

![Single-Codebase](img/Single-codebase.png)

From all the discussions points raised in related issues and the blueprint, several items are worth highlighting:

1. Backend code requires some work to separate licensed and unlicensed code
1. Work on the frontend code requires vast amount of work
1. Merging two sets of documentation
1. There needs to be a clear single owner coordinating this effort with the stakeholders
1. Transparent communication with the wider community and customers about the pending codebases merge is required
1. Preparing the projects structure to allow for seamless releases and possibly project containing only FOSS code

Work on the first three items would be beneficial to reducing merge conflicts,
regardless of whether the codebases get merged.

### Backend code changes

[Backend epic](https://gitlab.com/groups/gitlab-org/-/epics/557) is describing current work requirements.

[Yorick Peterse](/company/team/#yorickpeterse) worked on number of items in 11.6, 11.7 and 11.8 milestones, reducing the remaining work.

Based on the rough estimates Yorick made in the individual issues, *one* experienced Backend developer would need to spend approximately:

* 1 month moving and testing the EE specific code in `/lib` directory to `/ee/lib`
* Up to 1 month for moving and testing code in `/config` to `/ee/config`
* 0.5 month for moving and testing code in `/app/services` to `/ee/app/services`
* Up to 2 months for moving specs in `/spec` to `/ee/spec`

This work is only a rough estimate but in general we could expect that one experienced Backend developer would need up to 4.5 months to complete the work necessary to separate EE proprietary backend code alone.

### Frontend code changes

[Frontend epic](https://gitlab.com/groups/gitlab-org/-/epics/601) covers some details on
what is required to create a separation between the CE and EE code for all frontend assets.
The effort does not appear to be small:

* Including EE only files would require special webpack configuration to include separate bundle files. This could in theory also reduce the bundle size.
* Vue files seem to be a larger challenge as they can't be easily extendable. Extracting EE code appears to be a road to duplicating code between CE and EE files, or a bigger frontend refactor is needed.

Frontend team has [architecture guide](https://docs.gitlab.com/ee/development/fe_guide/architecture.html) which mentions architecture experts. Having an architecture expert who is also familiar with releases, such as [Filipa Lacerda](/company/team/#FilipaLacerda) dedicated
to scoping and defining the challenge for at least one release cycle would help us better at understanding the required work.

Licensing all [frontend assets under MIT license](https://gitlab.com/gitlab-org/gitlab-ce/issues/55519) would however, potentially
reduce the amount of work as there would be no need to make architectural changes as all
frontend assets could be freely used even in a FOSS repository.

### Merging documentation

Documentation is [licensed under CC-BY-SA](https://gitlab.com/gitlab-org/gitlab-ce/issues/42891).

The idea of merging documentation is not new, it was [raised in gitlab-ce/22617](https://gitlab.com/gitlab-org/gitlab-ce/issues/22617) and once more
in [gitlab-ce/53367](https://gitlab.com/gitlab-org/gitlab-ce/issues/53367).

Last time some investigation was done, a [test MR was created](https://gitlab.com/gitlab-org/gitlab-ce/merge_requests/21089).
This will need to be done once more to have a more up-to-date status, but based on the previously mentioned MR it appears that the vast majority of the work is going to be:

* Removing duplicate documentation and resolving possible conflicts
* Ensuring that the EE features have clear note in the documentation to avoid user confusion
* API docs would require more attention because there are differences in response examples
due to EE specific features

[Achilleas Pipinellis](/company/team/#_axil) has started
towards this goal in [gitlab-org&199](https://gitlab.com/groups/gitlab-org/-/epics/199)
so moving towards documentation merge could be accelerated by continuing/building on this work with higher priority.

### Create new project structure and tooling

Number of tools we use day to day to develop and release GitLab are tied to the
two project system that we have in GitLab CE and EE.
It is necessary to start working on strategy and orchestrate changes the
tooling we use for releases.
A plan on releasing a FOSS project derived from a single codebase should also be
considered to ensure that the possible community expectation of FOSS only project is satisfied.

[Douwe Maan](/company/team/#DouweM) had [a good suggestion](https://gitlab.com/gitlab-org/gitlab-ee/issues/2952#note_41141339) in
how the new project structure could look like. The scope of that suggestion
could be reduced however, or possibly iterated on:

* [gitlab-org/gitlab-ee](https://gitlab.com/gitlab-org/gitlab-ee) should be renamed to just `gitlab-org/gitlab`. `gitlab-org/gitlab-ce` would be deprecated, issues moved to `gitlab-org/gitlab` and any usable MR's ported
* Keep shipping two sets of packages, `gitlab-ee` and `gitlab-ce`
  * Users installing using the official installation methods would see no changes
  * Changes would need to be done in projects such as `omnibus-gitlab` where proprietary code would need to be removed when packaging `gitlab-ce`
  * Release tooling would require a change to reflect the lack of two stable branches
  * This work should take roughly 1 month to fully complete
  * When the time comes, if necessary, discuss renaming the package to just `gitlab` and the transition
* Create a pipeline running continuously with proprietary code removed to ensure that open source project is still behaving as expected

### Coordination

As shown in [gitlab-ee/2952] and above, we have a lot of interest in resolving this challenge.
One of the biggest challenges when tackling an important change such as this, is having
a single point of contact to coordinate the efforts.

Coordination needs to happen between:

* Development teams working on making code changes, ensuring that there are no roadblocks
* Teams responsible for communication with the public (blog posts, customer and community relations)
* Legal department for any license challenges and questions

#### Customer and Community relations

Merging open source codebase with a proprietary codebase is likely to generate a lot of publicity. There are ways in which this change could be considered a move against the FOSS  philosophy so it is necessary to gather feedback and listen to the trends that this change could bring. Regular communication will be the key for having a seamless change.

Initial blog post can reuse the related blueprint and this design document:

* Explain the challenges we are encountering daily working on the two dependent codebases
* Discuss possible existing open source projects that are dual licensed
* Proposal for the new code structure
* How licensing will be handled
* How contributions are going to be handled
* Ask for feedback

### Starting the work

In conclusion, to start this work we need to:

* Name the person responsible for leading this effort
* Dedicate 2 full time backend developers towards backend code changes
* Get a confirmation from Legal and Frontend on the decision with licensing frontend code
* Dedicate 1 full time technical writer to work on merging the documentation
* Dedicate 1 full time Ruby developer that would work on release and build pipeline changes

## Open source repo

We run a periodic job that does a git subtree on the main repository to extract a pure open source version that is available to clone from.

[gitlab-ee/2952]: https://gitlab.com/gitlab-org/gitlab-ee/issues/2952
[quality/team-tasks/81]: https://gitlab.com/gitlab-org/quality/team-tasks/issues/81
[framework/114]: https://gitlab.com/gitlab-com/gl-infra/delivery/issues/114
[Working in CE and EE codebases]: /handbook/engineering/infrastructure/blueprint/ce-ee-codebases/
