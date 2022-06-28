---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 9"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands On Guide: Lab 9
{:.no_toc}

## LAB 9: SECURITY SCANNING

1. Go to the [snippets page](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo/-/snippets) of the **CICD Hands On Demo** project.
1. Open the `ci-sast` snippet and click the **Copy file contents** icon in the upper right corner of the file.
1. Open your **CICD Demo** project from previous labs.
1. Click on your `.gitlab-ci.yml` file to view its contents. Click the **Edit** button. Paste the snippet at the end of the file.
1. In the **Commit message** field, type `Enable SAST`, leave the **Target Branch** set to `main`, and click **Commit changes**.
1. Navigate to the pipeline that was started by this change and click the `gosec-sast` job to ensure that it's running. 
> It might take a minute or two for the `Build` stage to complete first.
1. To view the results of the SAST scan, click **Security & Compliance > Vulnerability Report** in the left-hand navigation pane. In the **Scanner** drop-down list, select **SAST**. Click on any vulnerabilities to learn more about them.

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
