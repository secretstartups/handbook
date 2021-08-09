---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 8"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands-On Guide: Lab 8
{:.no_toc}

## LAB 8: GITLAB DOCKER REGISTRY

### Edit the `config.toml` file

1. Go to the [snippets page](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo/-/snippets) of the **CICD Hands On Demo** project.
1. Open the `ci-registry` snippet.
1. Copy the entire line that starts with `volumes = ` from **step 3** of the snippet's instructions.
1. On your computer's file system, open the `config.toml` file located in the `.gitlab-runner` directory. 
1. In your local `config.toml`, replace the line that starts with `volumes =` with the line you copied above. This allows your local GitLab Runner to access Docker running on your computer.
1. In a terminal, restart your runner with `gitlab-runner restart` 

### Add a `Dockerfile`

1. In the tab with the **CICD Hands On Demo** project, navigate to the project's repository page. 
1. Click on `Dockerfile` to open it.
1. In the upper right-hand corner of the file, click the **Copy file contents** button. 
1. In another tab, open your **CICD Demo** project from earlier labs.
1. Add a new file by clicking **+ > This directory > New file**
1. In the **File name** field, enter `Dockerfile`
1. Paste the contents you copied into the body of the new file.
1. In the **Commit message** field, type `add Dockerfile`, leave the **Target Branch** set to `main`, and click **Commit changes**.

### Define a `build image` job

1. In the tab with the **Snippets** page of the **CICD Hands On Demo** project, navigate to the project's **Snippets** page, open the `ci-registry` snippet and click the **Copy file contents** icon in the upper right corner of the file.
1. In the browser tab with the **CICD Demo** project, click on your `.gitlab-ci.yml` file and click the **Edit** button. Paste the snippet at the end of the file.
1. Edit the `build image` job definition by locating the `tags` section and replacing the `byo-runner` tag with a `docker` tag
1. In the **Commit message** field, type `add CI registry`, leave the **Target Branch** set to `main`, and click **Commit changes**.
1. In the left-hand navigation pane, click on **Settings > CI/CD**. Expand the **Runners** section. Click the pencil icon next to your specific runner to edit it.
1. Add a `docker` tag and click the **Save changes** button.

### Ensure the pipeline is running 

1. Go to **CI/CD > Pipelines**. Click the **Run Pipeline** button. Leave the default values and click the **Run Pipeline** button.
1. On the widget for the **build image** job, click the **play** button to trigger the job. Watch the job's output until it finishes.
1. In the left-hand navigation pane, click **Package and Registries > Container Registry** and view the container that was just uploaded by the `build image` job.

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
