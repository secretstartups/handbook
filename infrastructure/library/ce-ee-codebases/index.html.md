---
layout: handbook-page-toc
title: "Blueprint: Working in CE and EE codebases"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Resources

Blueprint: [Engineering workflows](/handbook/engineering/infrastructure/blueprint/engineering-workflows/)

Design: [Releases overview](/handbook/engineering/infrastructure/design/releases/)

Issues:

* [`framework/114`](https://gitlab.com/gitlab-com/gl-infra/delivery/issues/114)
* [`gitlab-ee/2952`](https://gitlab.com/gitlab-org/gitlab-ee/issues/2952)


## Overview

GitLab is released as two flavors to the public, Enterprise Edition (EE) and Community Edition (CE).
EE has a proprietary licence while CE has an open (MIT) licence.
EE is a superset of CE and all CE code gets consumed into EE.
Each of these two editions has its own project repositories, with separate codebases.

By the end of reading this page, you should have an understanding of:

* Challenges in development when working on two separate highly dependent codebases
* What was done to improve the situation
* What is the cost of maintaining a custom tool to manage two repositories
* What is the cost of merging two repositories
* What can be done as a first step towards resolving this challenge

## Features development and release

All GitLab Inc. developers work in both CE and EE when developing features.
CE also receives community contributions.

A common development flow is represented in the table below:

| Feature                            | Development            | Release   |
| ---------------------------------- | ---------------------- | --------- |
| CE feature                         | CE repository          | CE and EE |
| EE only feature                    | EE repository          | EE        |
| EE feature expanding on CE feature | CE and EE repositories | CE and EE |

For example, for a feature available in CE, development is carried out in the CE repository
but the release needs to be done for both CE and EE to make the same feature available in both editions.
Furthermore, to release EE all changes from CE need to be brought in before the release. These workflows are represented with the following diagram:

![CE-EE-Development-and-Release](CE-EE-development-release.png)

This presents some challenges in both the development speed and release.
Let's take a look at required time for a CE feature to land in EE:

* In majority of cases, full CE pipeline will take **45 minutes** to run
* Assuming that the Merge Request(MR) was set to Merge When Pipeline Succeeds(MWPS), the automatic job for merging CE and EE `master` branches will run for **20 minutes** (job runs every 15 minutes + 5 minutes to finish the merge job)
* Assuming that there were _no merge conflicts_, EE pipeline needs to run which usually takes around **60** minutes

This would mean that, based on current pipeline size and runtime, the best case scenario
when there are no flaky specs or other failures, we take **125 minutes** for every commit
created.

## What was done to improve the situation?

We've invested time in speeding up the specs and significant effort went into automating merges between CE and EE codebases.

In CY18, we went from a daily manual task to merge one days worth of work, to
automated CE-to-EE merge requests that would run every 3 hours (and ultimately every hour).

This attempt, while a huge improvement overall, was still fraught with challenges:

* Modifying and adding code in EE and adding to and modifying code from CE leads to merge conflicts
* Periodic CE to EE merge request could take hours or even days to resolve
* Flaky specs in these MRs could further delay anyone working on resolving the conflicts

In response to these challenges, Delivery team created the [Merge Train](https://gitlab.com/gitlab-org/merge-train). The guiding idea was that we need to automate the task to remove human manual participation and run the tool more frequently.
This tool merges changes automatically and resolves conflicts by throwing away CE changes in favour of EE changes. This process works somewhat as long as developers setup an EE counterpart in case their code conflicts.  

However, the Merge Train tool is also not without its challenges:

* Changes to locale/gitlab.pot in CE sometimes require you to regenerate this file for EE. Right now this is handled by requiring EE MRs, but it's very time consuming: [gitlab-org/gitlab-ce#55379](https://gitlab.com/gitlab-org/gitlab-ce/issues/55379)
* Ignoring conflicting CE changes in favour of the EE changes is risky, and can sometimes lead to weird cases: [framework/105](https://gitlab.com/gitlab-com/gl-infra/delivery/issues/105#note_128983501)
* Every 15-20 minutes we pull a cached clone of both CE and EE, which we then update. This is around 1GB of data, excluding the various dependencies the container itself might need. While the costs of this may be very low, it's still a waste of both bandwidth and time. It also means that we can't run the job more than every 10 minutes.
* Due to the time between changes landing in CE master and being merged into EE master, merging changes into a stable branch could result in CE having changes not yet present in EE; without this being obvious. This could result to us announcing feature X, only to realise it's not available in EE.

At its core, the problem is that we have two different repositories with similar (but not identical) code. As long as this split exists, getting your CE changes into EE is painful and time consuming. As such, we seem to be down to only two possible solutions:

* Continue working on improving the Merge Train tool while working towards resolving conflicts
* Merge the two codebases

## Improving Merge Train

As previously mentioned, [Merge Train](https://gitlab.com/gitlab-org/merge-train) is a custom
one-off tool made by Delivery team to try and resolve the challenges of merging two codebases. As is often the case with one-off tools, investing time and effort in them is
only worthy up until one point.

The tool took some time to [think through the problem and develop](https://gitlab.com/gitlab-com/gl-infra/delivery/issues/49), and also taught us some [painful lessons](https://gitlab.com/gitlab-com/gl-infra/delivery/issues/49#note_122469318).

While it helped us merge CE commits into EE commits faster, it is still not resolving a few
larger issues:

* Frontend code is still prone to conflicting because there is no clear separation between EE and CE code
* Backend code can also periodically conflict (eg. db/schema.rb conflicts)
* Translation file is an auto-generated single file for both CE and EE, making it [very difficult to resolve conflicts](https://gitlab.com/gitlab-org/gitlab-ce/issues/55379)

Due to the above, more work is required in Merge Train but also in both codebases to support
quicker merging of codebases:

* Separating [EE specific backend code](https://gitlab.com/groups/gitlab-org/-/epics/557)
* Separating [EE specific frontend code](https://gitlab.com/groups/gitlab-org/-/epics/601)
* Improving the [translation file](https://gitlab.com/gitlab-org/gitlab-ce/issues/55379)
* [Create notifications and process](https://gitlab.com/gitlab-com/gl-infra/delivery/issues/105) when conflicting changes are silently discarded

Based on the above, we can make some conclusions about investing time in this solution:

* Changes in both codebases are required
* Investing development/maintenance time in custom tooling
* Even with all improvements, minimum of 10 minutes of delay between merging CE commit into EE (excluding spec runtime)

## Merge CE and EE codebases A.K.A Single codebase

Whenever development time suffers due to working on two dependent separate codebases,
the topic of merging two codebases is raised.

There were number of discussions raised about this, most notable ones are in:

* [gitlab-ee/2952]
* [quality/team-tasks/81]
* [framework/114]

Based on the discussions in issues listed above, we created a [design document on merging the two codebases].

## Applying GitLab values

Let's try to apply [GitLab Values](/handbook/values/) to
the problem described above:

* Efficiency: Both solutions (single codebase and improve custom tooling) have two items in common; changes to backend and frontend code with an orchestrated effort is required
* Iteration: We can start with the task that has to be resolved in both solutions
* Transparency: In parallel to code changes, we can gather feedback from rest of community by being open with our intentions. The [design document on merging the two codebases] can be used as a reference and single point for communication with all stakeholders

[gitlab-ee/2952]: https://gitlab.com/gitlab-org/gitlab-ee/issues/2952
[quality/team-tasks/81]: https://gitlab.com/gitlab-org/quality/team-tasks/issues/81
[framework/114]: https://gitlab.com/gitlab-com/gl-infra/delivery/issues/114
[design document on merging the two codebases]: /handbook/engineering/infrastructure/design/merge-ce-ee-codebases/
