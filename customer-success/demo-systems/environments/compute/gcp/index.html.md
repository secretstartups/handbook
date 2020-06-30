---
layout: handbook-page-toc
title: "GCP Compute Sandbox"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview 

We have a GCP project (`group-cs`) for all Customer Success team members that is part of the GitLab consolidated billing organization.

This is a shared account that provides a free-for-all environment for you to test most GCP services in a sandbox environment. No customer or production data is allowed.

### Access Requests for GCP

To request access to the Customer Success GCP account, please request an account in `#demo-systems`.

The account provisioning process will be changing in the coming months.

## Rules of the Road

Please be sure to review and comply with the rules of the road.

### Creating Resources

<div class="panel panel-warning">
<div class="panel-heading">
Golden Rule - Tag it or we'll destroy it after 14 days
</div>
<div class="panel-body">
If you do not tag your resources, we will consider it an ephemeral resource and automatically destroy it after 14 days.
</div>
</div>

1. **Resource Names** - All resource names should have your username prefixed (Ex. `jmartin-gl-omnibus-acme` or `jmartin-rds-psql1`). Username tags are also required, however tags are not easily accessible when looking at a list of resources in the cloud console.
1. **Tags - `owner`** - All resources that support tags should have a `owner` tag with your first initial and last name (Ex. `jmartin`).
1. **Tags - `purpose`** - Optional: Set to a few word description of the project or purpose, so it's easy to identify what it relates to. No naming convention standards, just make it self-evident. Customer names or SFDC opportunity ID's can be helpful here.

We are also evaluating cost center tags, however this may not be possible.

### Managing Resources and Costs

<div class="panel panel-warning">
<div class="panel-heading">
Golden Rule - Turn the lights off when you leave the room
</div>
<div class="panel-body">
After you're done testing or if you need to step away for more than 5 days, please power off, snapshot, or terminate any compute instances or managed services.

Let's not pay for more than 5 days away.
</div>
</div>

1. Please use snapshots instead of leaving instances running (if possible).
2. Do what you need to do for short-term projects and experiments, but be prepared to justify long-running resources. The `Purpose` tag usually helps us determine this without bothering you.
3. Turn the lights off when you leave the room by powering off or terminating compute resources.

