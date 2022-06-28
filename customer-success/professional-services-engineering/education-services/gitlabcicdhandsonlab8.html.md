---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 8"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands-On Guide: Lab 8
{:.no_toc}

## LAB 8: GITLAB DOCKER REGISTRY

In this lab the CI/CD job will not work with the shared runners in the training environment. That gives us an opportunity to register a new GitLab Runner with the Docker executor on your own computer to complete the lab.

**Requirement: You will need [Docker installed](https://docs.docker.com/engine/install/) on your machine in order for the below steps to work correctly.**

### Register a GitLab Runner with the `docker` executor

1. Start Docker on your computer if it’s not running already.
1. In Lab 2 you installed the `gitlab-runner` executable on your computer. This executable is not itself a GitLab Runner. It's used to register and manage the actual GitLab Runner processes.
1. Register a **specific** runner with `gitlab-runner register`, using these configuration details:
    + scope it to your existing **CICD Demo** project by using the registration key from that project
    + assign it the `docker` executor
    + give it a tag of your choosing, to make sure it runs the CI/CD job you’ll create in this lab. The job definition you’ll paste in later uses the `byo-runner` tag, but you can change this to anything as long as the GitLab Runner has the same tag.
    + when prompted for a default Docker image, enter `alpine:latest`
    
### Edit the `config.toml` file

1. Modify the `~/.gitlab-runner/config.toml` file on your computer by replacing the `volumes` setting *for the GitLab Runner you just created* with the following line. This allows your local GitLab Runner to access Docker running on your computer.
    ```bash
    volumes = ["/var/run/docker.sock:/var/run/docker.sock", "/cache"]
    ```
1. Restart the GitLab Runner with your new configuration: `gitlab-runner restart`

See the documentation [Use Docker socket binding](https://docs.gitlab.com/ee/ci/docker/using_docker_build.html#use-docker-socket-binding) for further context.

### Add a `Dockerfile`

1. Go to the [GitLab CICD Hands On Demo](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo) project.
1. Open `Dockerfile`.
1. In the upper right corner of the file, click the **Copy file contents** icon. 
1. In another tab, open your **CICD Demo** project from earlier labs.
1. Add a new file to the **CICD Demo** project by clicking **+ > This directory > New file**
1. In the **File name** field, enter `Dockerfile`
1. Paste the contents you copied into the body of the new file.
1. In the **Commit message** field, type `Add Dockerfile`, leave the **Target Branch** set to `main`, and click **Commit changes**.

### Define a `build image` job

1. In the tab with the **GitLab CICD Hands On Demo** project, navigate to the project’s **Snippets** page, open the `ci-registry` snippet and click the **Copy file contents** icon in the upper right corner of the file.
1. In the browser tab with the **CICD Demo** project, open the `.gitlab-ci.yml` file and click **Edit**. Paste the snippet at the end of the file.
1. Edit the `build image` job definition you just pasted in by replacing the `byo-runner` tag with whatever tag you assigned to the GitLab Runner you registered earlier in this lab.
1. In the **Commit message** field, type `Add "build image" job definition`, leave the **Target Branch** set to `main`, and click **Commit changes**.

### Ensure the pipeline is running 

1. Go to **CI/CD > Pipelines**. Click **Run pipeline**. Leave the default values and click the second **Run pipeline** button.
1. On the widget for the **build image** job, click the **play** button to trigger the job. Watch the job’s output until it finishes.
1. In the left navigation pane, click **Package and Registries > Container Registry** and view the container that was just uploaded by the `build image` job.

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
