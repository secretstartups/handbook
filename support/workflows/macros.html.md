---
layout: markdown_page
title: Macros
description: "How to create Zendesk Macros using GitLab CI/CD, and categorization guide"
category: Zendesk
---


We use Zendesk Macros as a tool to help support common workflows and allow us to
support our customers faster. It's important to find a balance of when and where
to use a macro as too many macro responses and the support process becomes
robotic and canned. Nobody likes cans.

## Who can create a Macro?

Macros can be created by engineers and managers in Zendesk. They should
be used for matters that require a rigid process (2FA re-auth/DMCA) or when we 
_need_ to provide a template response (Holiday Coverage). If you need to create
a macro that adds tags to tickets, make sure to get approval the Support
Operations team beforehand.

## How do I create a Macro?

Macros are version controlled and implemented via CI/CD using the
[zendesk-macros](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros)
project. To create a macro, you would create a new JSON file in the
[macros folder](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros/-/tree/master/macros).
When you make the commit, it will have you create a branch to apply it. From
there, you will use a Merge Request and get approval. Once merged, CI/CD will
handle any updates/creations needed on the Zendesk side.

If you are unsure of the syntax or wording to use for the JSON file, feel free
to
[create an issue](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros/issues/new)
in the project. Assign it to a member of Support Operations to get assistance in
generating the file.

## Where Macros Live

Macros are namespaced with a `::` which nests them in the bottom of Zendesk
Dropdown. The current top level headings are below:

* General - General Cannery, used by both the GitLab.com and Self-Managed teams.
* DMCA - Responses for the DMCA process.
* Security - Related to security questions.
* Self-Managed - Responses specific to Self-Managed inquiries.
* GitLab.com - Responses specific to GitLab.com inquiries.

