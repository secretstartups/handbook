---
layout: handbook-page-toc
title: Secure Workflow Drafts
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

To keep a stable version of the Secure Workflow for a quarter, we work on a draft to discuss and integrate changes.
This allows to continuously push and merge independent MRs to improve the worfklow without changing the current version that stays applicable until the next quarter starts.

NB: the drafts must only be used for substantive changes that we want to be rolled out when the next cycle starts.
Updates such as grammatical fixes, typos, and clarifications are welcome at any time on the current version.

## How to use the draft?

1. If no draft exists yet, add one.
    1. Create a new folder named after the upcoming quarter (e.g. `FY21-Q3`) within this `drafts` folder.
    1. Copy the content of the `workflow` folder within that new folder,
1. Improve continuously during the quarter.
    1. add modifications to the draft version by creating independent MRs.
    1. fill the [summary of changes for the upcoming version](#changes-summary) when submitting modifications.
    1. review and merge MRs independently as changes are approved.
1. When the new quarter starts:
    1. merge the content of the draft into the current version.
    1. create a new draft and update the [Upcoming version](#upcoming-version) section accordingly.

## Upcoming version

The upcoming version is the [FY21-Q3 DRAFT](./FY21-Q3/), which will be rolled out on August 2020.

### Changes summary

- Integrate the **refinement** step (with the `workflow::refinement` label) between **planning breakdown** and **scheduling**.
- Clarify **planning breakdown** vs **refinement**.
- Expand each workflow step into its own section with detailed description.
- Add sections and videos about how to work with issues board.
