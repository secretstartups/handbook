---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 7"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands-On Guide: Lab 7
{:.no_toc}

## LAB 7: USING ARTIFACTS

### Add artifacts to your pipeline 

1. Go to the [snippets page](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo/-/snippets) of the **CICD Hands On Demo** project.
1. Open the `ci-artifacts` snippet and click the **Copy file contents** icon in the upper right corner of the file.
1. Open your **CICD Demo** project from previous labs.
1. Click on your `.gitlab-ci.yml` file to view its contents. Click the **Edit** button. Paste the snippet at the end of the file.
1. In the **Commit message** field, type `Add CI artifacts`, leave the **Target Branch** set to `main`, and click **Commit changes**. 

### Add a `main.go` file

1. Navigate to the repository of the **CICD Hands On Demo** project.
1. Click the `main.go` file to open it. 
1. Click the **Copy file contents** icon in the upper right-hand corner of the file. 
1. Navigate back to the **Repository** page of your **CICD Demo** project and add a new file by clicking **+ > This directory > New file**
1. In the **File name** field, enter `main.go`
1. Paste the code you copied from `main.go` at the beginning of line 1 of the new file.
1. In the **Commit message** field, type `Add main.go file`, leave the **Target Branch** set to `main`, and click **Commit changes**.
1. In the left-hand navigation pane, click **CI/CD > Pipelines** and click the status icon for the most recent pipeline run to see the status of its jobs.
1. When the `build app` job finishes, click it to review the job's output in a web terminal. 
> If the job fails with a message about being unable to find `go.mod`, retry the job until it passes. This is an intermittent Go build bug.
10. In the **Job artifacts** panel on the right of the page, click **Browse** and notice that the `app` artifact created by the **build app** pipeline job is available for download. 

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
