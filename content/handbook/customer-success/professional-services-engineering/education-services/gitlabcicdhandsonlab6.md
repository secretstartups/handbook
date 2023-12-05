---
aliases: /handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandsonlab6.html
title: "GitLab CI/CD Hands-On Guide: Lab 6"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---

# GitLab CI/CD Hands-On Guide: Lab 6


## LAB 6: JOB POLICY PATTERN

1. Go to the [snippets page](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo/-/snippets) of the **CICD Hands On Demo** project.
1. Open the `ci-structure` snippet and select the **Copy file contents** icon in the upper right corner of the file.
1. Open your **CICD Demo** project from previous labs.
1. Select your `.gitlab-ci.yml` file to view its contents. Select **Edit** (use the dropdown if needed to select **Edit this file only**). Paste the snippet's contents at the end of the file.
1. At the top of `.gitlab-ci.yml`, in the `stages` section, add `review` and `deploy` stages.
1. In the **Commit message** field, type `Add CI structure job definitions`, ensure the **Target Branch** is set to `main`, and select **Commit changes**.
1. In the left-hand navigation pane, select **CI/CD > Pipelines** and select the status icon next to the most recent pipeline run.
1. Select the widgets to see what environment the pipeline is deploying the code to. In the left sidebar, select **Deployments > Environments** to see the environments that have been created.
1. **Optional:** Experiment with triggering pipelines using different branches and tags. Can you get different pipeline runs to execute the **deploy release**, **deploy review**, and **deploy staging** jobs?
> Hint: Look at the `rules` keyword in the relevant `.gitlab-ci.yml` job definitions.

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
