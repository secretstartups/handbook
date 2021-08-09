---
layout: handbook-page-toc
title: 'Zendesk Sync Repo Training'
category: Zendesk
description: 'Training documentation concerning Zendesk sync repos'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what Zendesk sync repos are
* Why we use Zendesk sync repos
* How Zendesk sync repos work
* Creating a new item in a sync repo
* Updating existing items in a sync repo
* Deactivating items in a sync repo

## What are Zendesk sync repos

Zendesk sync repos refer to various projects (see useful links) GitLab utilizes
to manage the various components of Zendesk. Utilizing scripting and CI/CD,
changes to these projects are synced to Zendesk.

## Why we use Zendesk sync repos

Using sync repos with Zendesk enhances the capabilities of Zendesk primarily by:

* making it easier to manage changes.
* making rolling back changes quick and easy.
* ensuring a review process is in place.
* creating a version-controlled environment.

Zendesk natively supports versioning for triggers, however, we found we desired
a version-controlled environment for as many aspects of Zendesk as was possible.
To this end, we created the sync repos.

## How the Zendesk sync repos work

While there is some variance between the repos, in general, the process goes as
follows:

1. A JSON file is generated containing all the information from the sync repo.
1. A JSON file is generated containing all the information from Zendesk.
1. The two JSON files are compared. Results form two files, an updates file and
   a creates file.
1. The creates file is parsed and new items are created in Zendesk.
1. The updates file is parsed and existing items are updated in Zendesk.

For a more in-depth look at how they work on the code level, please check out
the below video:

<figure class="video_container">
    <iframe src="https://www.youtube.com/embed/eVonmvvqtjs" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

## Creating a new item

While the scripts can handle creation (to a degree), we prefer to
[update an existing item](#updating-an-existing-item) instead. That section and
its video will cover creating a new item.

## Updating an existing item

<figure class="video_container">
    <iframe src="https://www.youtube.com/embed/vpc6pkcK1KU" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

When the item already exists in the sync repo, you simply edit the file and
create a merge request. Once reviewed, approved, and merged, this will sync the
changes over to Zendesk.

When the item does not exist, we still use the "updates" approach of the script.
To do this, first copy an existing item in Zendesk and then deactivate it. This
new item will have a Zendesk ID. From there, you can generate the file in the
sync repo using that item's Zendesk ID. The scripts will see this as an
"update", but in reality, you are creating a new item.

In the case where you are trying to do this without an ID, you can still create
the file and leave the `id:` line blank. Doing so might make the scripts fail
during testing, but someone with admin access to Zendesk will assist from there.

## Deactivating items in a sync repo

<figure class="video_container">
    <iframe src="https://www.youtube.com/embed/WaFaZT4efuw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To deactivate an item in the sync repo (as we avoid deletion when at all
possible), you need to follow specific steps:

1. Move the file to the `inactive` folder.
1. Edit the file to change `active: true` to `active: false`.

Doing it outside of that order can result in it not actually committing the file
change. By doing it in that specific order, you ensure the item is fully
deactivated in the sync repo and will therefore sync properly to Zendesk.

## Useful links

* Zendesk Global sync repos
  * [zendesk-automations](https://gitlab.com/gitlab-com/support/support-ops/zendesk-automations)
  * [zendesk-macros](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros)
  * [zendesk-organizations](https://gitlab.com/gitlab-com/support/support-ops/zendesk-organizations)
  * [zendesk-ticket-forms-and-fields](https://gitlab.com/gitlab-com/support/support-ops/zendesk-ticket-forms-and-fields)
  * [zendesk-triggers](https://gitlab.com/gitlab-com/support/support-ops/zendesk-triggers)
  * [zendesk-views](https://gitlab.com/gitlab-com/support/support-ops/zendesk-views)
* Zendesk US Federal sync repos
  * [zendesk-automations](https://ops.gitlab.net/gitlab-com/support/zendesk-automations)
  * [zendesk-macros](https://ops.gitlab.net/gitlab-com/support/zendesk-macros)
  * [zendesk-ticket-forms-and-fields](https://ops.gitlab.net/gitlab-com/support/zendesk-ticket-forms-and-fields)
  * [zendesk-triggers](https://ops.gitlab.net/gitlab-com/support/zendesk-triggers)
  * [zendesk-views](https://ops.gitlab.net/gitlab-com/support/zendesk-views)
