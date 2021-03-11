---
layout: handbook-page-toc
title: 'Using the sync repos'
category: 'GitLab.com'
description: 'An overview of using the sync repos'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Support Ops firmly believes that we should 
[dogfood everything](/handbook/product/product-processes/#dogfood-everything).
In this belief, we utilize GitLab itself to handle updating many aspects of
Zendesk. Through the use of GitLab, we:

* have the ability to rollback changes made to Zendesk quickly and easily
* enable everyone to contribute to changes (instead of just admins)
* encourage transparency in how Zendesk works

## Creation via the repo

To create a new object (macro, trigger, form, etc.) via the repo, you would
want to use the styling from a different file in the same repo. You then modify
the YAML coding in the file, leaving the `id` value blank (as it doesn't exist
yet). If the object requires a position, you also want to leave that blank.
Once you are done editing, commit the changes to a new branch and generate a
merge request.

From there, the CI/CD scripts will run, comparing what is in the repo to what
is in Zendesk. It will then generate a report via the `compare` job that
details what changes need to be made (how many creates, how many updates, etc.).

From there, you have two options:

1. Create the object manually in Zendesk, then edit the branch to use the newly
   created values
1. Merge the changes to create the object, then make a followup merge request
   to add the missing values (normally `id` and `position`).

## Updates via the repo

To update an object via the repo, you simply edit the corresponding YAML file
in the repo to use the desired changes. Once done, commit the changes to a new
branch and generate a merge request.

From there, the CI/CD scripts will run, comparing what is in the repo to what
is in Zendesk. It will then generate a report via the `compare` job that
details what changes need to be made (how many creates, how many updates, etc.).

From there, you have two options:

1. Update the object manually in Zendesk, then re-run the pipeline to confirm
   there are no no changes being made (since the repo and zendesk would then be
   the same).
1. Merge the changes to update the object.

## Need more guidance?

Reach out to the Support Operations Manager! They will also be willing to walk
you through using the sync repos!
