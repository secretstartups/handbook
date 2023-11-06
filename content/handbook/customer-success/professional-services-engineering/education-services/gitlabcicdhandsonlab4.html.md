---

title: "GitLab CI/CD Hands-On Guide: Lab 4"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands-On Guide: Lab 4


## LAB 4: DISPLAY PIPELINE ENVIRONMENT INFO

1. Go to the [snippets page](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo/-/snippets) of the **CICD Hands On Demo** project you have open in a separate window/tab.
1. Open the **ci-environment** snippet and select the **Copy file contents** icon in the upper right corner of the file.
1. Open your **CICD Demo** project from previous labs.
1. Select on your `.gitlab-ci.yml` file to view its contents. Select the dropdown next to **Edit**, then **Edit this file only**. Select **Edit**.
1. Paste the content of the snippet at the bottom of `.gitlab-ci.yml`. There should be am empty line between the file's previous content and the pasted snippet content.
1. In the **Commit message** field, type `Display pipeline environment variables`, ensure the **Target Branch** is set to `main`, and select **Commit changes**.
1. In the left-hand navigation pane, select **CI/CD > Pipelines**. The pipeline that was started when you committed changes is represented by the first row in that table.
1. Select the status icon at the left of the first row to see the pipeline's jobs. Select the **environment echoes** job and review its output to review about the environment variables exported to the runner.

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
