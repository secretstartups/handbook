---
layout: handbook-page-toc
title: Buyer Experience Repository
description: >-
  Learn more about the Buyer Experience repository.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Overview

### Purpose

*Why the repository exist*

The Buyer Experience repository will be the SSoT for the GitLab maketing website. 

### Vision

*Where we’re going*

A future where **everyone can contribute**, consumers become contributors and we greatly increase the rate of human progress.

### Mission

*What we do*

We drive continual improvement to GitLab’s marketing website.

### Objectives

1. Improve Buyer Experience of the Marketing Site
2. Improve Information Architecture of the Marketing Site
3. Increase Time to Production (pipeline times)
4. Improve Developer Experience
5. Improve Content Editing Experience

### Strategy

1. **Nuxt.js:** A vue.js static site generated
    - 
2. **Slippers Design System Integration:** SSoT for vue.js components:
    - 
3. **Focus Resources:** Devoted to two repositories
    - Digital Experience focused resources on the [Buyer Experience](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience) and [Slippers repositories](https://gitlab.com/gitlab-com/marketing/digital-experience/slippers-ui). 

# Content Editing Experience 

### Where Content Exists

All content is stored as `yml` with in the [/content](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content) directory.

### How to Edit Content

Edit `yml` content directly in the browser using [GitLab Web Editor](https://docs.gitlab.com/ee/user/project/repository/web_editor.html). Editing this content using GitLab editor tools will open a merge request for you! 

Here are the steps: 
1. Open your `yml` file in the browser from the [/content](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content) directory
2. Click the arrow next to the "Edit in Web IDE" button and choose "edit this file only" for the GitLab Web Editor. 
3. Make changes to the `yml`
4. Complete the commit message field at the bottom with a description of what changed and why. Link to any relative issues or merge requests.
5. Push that commit changes button! 
6. What for GitLab to create a merge request for you with your changes
7. Assign the merge request to yourself so it's shows up in your merge requests tab
8. Wait for the pipeline to finsh, check the review app URL to make your changes render as expected. Its the same URL as production.. except with your branch name prepended  to about.gitlab.com. For example: 
  1. Editing the /terms page
  2. Review app URL: `some-super-long-branch-name.about.gitlab-review.app/terms`
9. Fill your merge request description out with what changed, why, and link to any related issues or merge requests.
10. Assign a reviewer. 




# Developer Experience 

### Where Developer Documentation Exists

The [README.md](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience) at the repository root and our [/docs](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/docs) directory. 

### How It Works with www-gitlab-com

See [/docs/deployments.md](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/docs/deployments.md). More info comming. 



