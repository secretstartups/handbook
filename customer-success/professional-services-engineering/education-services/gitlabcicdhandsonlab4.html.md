---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 4"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands-On Guide: Lab 4
{:.no_toc}

## LAB 4: DISPLAY PIPELINE ENVIRONMENT INFO

1. Go to the [snippets page](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo/-/snippets) of the **CICD Hands On Demo** project you have open in a seperate window/tab.
1. Open the **ci-environment** snippet and click the **Copy file contents** icon in the upper right corner of the file.
1. Open your **CICD Demo** project from previous labs.
1. Click on your `.gitlab-ci.yml` file to view its contents. Click the **Edit** button. Add an empty line after line 15. Paste the snippet at the beginning of line 16.
1. In the **Commit message** field, type `Display pipeline environment info`, leave the **Target Branch** set to `main`, and click **Commit changes**.
1. In the left-hand navigation pane, click **CI/CD > Pipelines**. The pipeline that was started when you committed changes is represented by the first row in that table.
1. Click the status icon at the left of the first row to see the pipeline's jobs. Click the **environment echoes** job and review its output to learn about the environment that those jobs run in.

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
