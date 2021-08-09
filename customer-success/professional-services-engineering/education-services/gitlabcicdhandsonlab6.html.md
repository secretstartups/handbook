---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 6"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands-On Guide: Lab 6
{:.no_toc}

## LAB 6: JOB POLICY PATTERN

1. Go to the [snippets page](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo/-/snippets) of the **CICD Hands On Demo** project.
1. Open the `ci-structure` snippet and click the **Copy file contents** icon in the upper right corner of the file.
1. Open your **CICD Demo** project from previous labs.
1. Click on your `.gitlab-ci.yml` file to view its contents. Click the **Edit** button. Paste the snippet at the end of the file.
1. At the top of `.gitlab-ci.yml`, in the `stages` section, add `review` and `deploy` stages.
1. In the **Commit message** field, type `Add CI structure job definitions`, leave the **Target Branch** set to `main`, and click **Commit changes**.
1. In the left-hand navigation pane, click **CI/CD > Pipelines** and click the status icon next to the most recent pipeline run.
1. Check the widgets to see what environment the pipeline is deploying the code to. Experiment with triggering the pipeline using different branches and tags. Can you get different pipeline runs to execute the **deploy release**, **deploy review**, and **deploy staging** jobs? *Hint: Look at the `rules` keyword in the relevant `.gitlab-ci.yml` job definitions to figure out how to do this.*

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
