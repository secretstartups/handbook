---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 3"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands-On Guide: Lab 3
{:.no_toc}

## LAB 3: CREATE A BASIC CI CONFIGURATION

1. Open the [snippets page](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo/-/snippets) of the **CICD Hands On Demo** project in a seperate window or tab.
1. Open the **ci-starter** snippet. Click the **Copy file contents** icon in the upper right corner of the file.
1. Open your **CICD Demo** project from the last lab.
1. Click on your `.gitlab-ci.yml` file to view its contents, click the **Edit** button, and replace the code in `.gitlab-ci.yml` with the snippet that you copied. You should now have a basic CI configuration with only `build` and `test` stages.  
1. In the **Commit message** field, type `Add CI starter` and click **Commit changes**.
1. Refresh the page to make the pipeline status icon appear. Validate that the configuration is valid and that the pipeline is running by hovering over the **Pipeline: running** icon or the **Pipeline: passed** icon in the upper right corner of the page, to the left of the commit's SHA.
1. When the pipeline status changes to the **Pipeline: passed** icon, click it to review the pipeline graph for your CI configuration.

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
