---
layout: handbook-page-toc
title: NFR Internal Requests
category: Working L&R requests
description: Describes how to service NFR license/trial request
---

{:.no_toc}

----


## Overview

[NFR (Not For Resale)](https://about.gitlab.com/handbook/resellers/#nfr-programpolicy) license requests are common in [internal reqeust issue tracker](https://gitlab.com/gitlab-com/support/internal-requests/-/issues). Currently, an official way to deal with the NFR request hasn't been established yet. Please follow the following discussion for latest update:

- [[L&R] Generating NFR licenses](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3336)
- [Help Setting Up Criteria for GitLab.com 1 year NFR trial requests for Channel Partners](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3769)

Before the we can establish a better workflow. We can do the following:

### NFR Self-Managed license request

All NFR requested licenses are Trial license at the moment.

1. Find the existing license for the provided parter email domain (i.e @example.com) in [CustomerDot License search](https://customers.gitlab.com/admin/license)
   - If there's no existing license or the existing license is expired, let the the requestor know and proceed with the license generation
   - If there's already an active license, let the requestor know and wait for further confirmation before proceeding
1. Create a new license by clicking on `Add new offline license` and use the information provided by the requestor for the license
   - Use the generation date as the Start date and the same date the following year as the End date 
   - Make sure the `Trial` box is checked
   - Add the internal request link to `Notes` field
   - Leave the `Zuora subscription ID`, `Zuora subscription name`, `Previous users count`, `Trueup count` fields empty
1. Let the requestor know the license has been generated, provide a link the license, and license information in the comment
1. Close the issue

### NFR SaaS subscription

Until [Help Setting Up Criteria for GitLab.com 1 year NFR trial requests for Channel Partners](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3769) is finalized, we use the following workaround:

- If you don't have customerDot console access, add `/label ~"Console Escalation::Customers"` to the issue
- If you have customerDot console access, use one of the following:
   - https://gitlab.com/gitlab-com/support/toolbox/console-training-wheels/-/merge_requests/84/diffs
   - https://gitlab.com/gitlab-com/support/internal-requests/-/issues/10796#note_731004103
