---
layout: handbook-page-toc
title: "Iteration"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

In order to provide the changes in an [iterative](/handbook/values/#iteration) and [incremental manner](/handbook/product/product-principles/#iteration), complex changes should be [split into smaller ones](/handbook/values/#make-small-merge-requests) to simplify the review process. As a result, more people are involved in the particular feature development as a whole that helps to receive [diverse](/handbook/values/#diversity-inclusion) feedback. Meanwhile, fewer people are involved in one particular merge request that makes the [collaboration](/handbook/values/#collaboration) more effective and scoped to a particular piece of functionality.

## How to split a merge request

- Responsibility sections are usually the hints to identify the split. A merge request which contains ~frontend and ~backend labels requires at least 4 people to review it from 2 different perspectives. In this case, the review process is not only slowed down by back and forth, but also contains the discussions which are useful for one section, but not for another. A huge drawback of combining these sections, is that portions could be approved, but the whole thing slips because there are changes required on 1 of the sections. A merge request should contain non-trivial changes from only one section to ask for a quick review for the auxiliary section and continue with the detailed review for the main one. However, since changes to ~database (ie. database migrations written) are tightly coupled to the related ~backend changes (the code which queries the new database columns/tables etc.), it is still preferable to ensure they are part of the same MR as both the ~database reviewer and ~backend reviewer will need to review both of those code changes in order to provide meaningful feedback.

- A functionality behind a feature flag is a great candidate for being split into multiple merge requests because in this case even an imperfect piece of functionality can be introduced without breaking the existing one. For example, if ~frontend work is behind a feature flag, it can be merged separately without waiting for backend changes; otherwise, it can be still provided in a separate merge request on top of the WIP ~backend changes and merged just after those API changes are introduced.

- Consider extracting edge-cases that aren't an impediment to introducing the smallest working piece of functionality into follow-ups. That will save the merge request from growth during a review. The follow-ups are also useful for distributing the work among the team when the issue turned out to be more complex than expected.

- Refactorings that require a complex approach can be introduced separately either before the actual changes or as a follow-up in case the quality doesn’t suffer from the introduced changes.

- If your issue/merge request description or comment says "First we should do this, make sure that works, refine this", it is also a sign of a possible split that happens before work even begins. In general, if an engineer is following the "one commit, one logical change" model, then each commit can potentially be a separate merge request.

- Introducing the changes that don't interact with the existing codebase, make sure that you have a clear plan of how that code will be used in the follow up issues in order to avoid creating blocks of unused code. Consider explaining the reason in comments or commit messages.

- Consider marking blocking merge requests as [merge request dependencies](https://docs.gitlab.com/ee/user/project/merge_requests/merge_request_dependencies.html#merge-request-dependencies)

- When a change involves separate ~backend and ~frontend merge requests, include [unit](https://docs.gitlab.com/ee/development/testing_guide/testing_levels.html#unit-tests) and [integration](https://docs.gitlab.com/ee/development/testing_guide/testing_levels.html#integration-tests) tests in the merge request with the code they're testing. Include [feature specs](https://docs.gitlab.com/ee/development/testing_guide/testing_levels.html#white-box-tests-at-the-system-level-formerly-known-as-system--feature-tests) in the ~frontend merge request so that when the ~backend changes are merged, the feature specs can run against the combined changes before they're merged and exposed to users. On the other hand, [end-to-end (QA) tests](https://docs.gitlab.com/ee/development/testing_guide/testing_levels.html#black-box-tests-at-the-system-level-aka-end-to-end-tests) can be introduced separately.
