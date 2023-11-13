---
aliases: /handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandsonlab8.html
title: "GitLab CI/CD Hands-On Guide: Lab 8"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---

# GitLab CI/CD Hands-On Guide: Lab 8


## LAB 8: GITLAB DOCKER REGISTRY

### Add a `Dockerfile`

1. Verify that your **CICD Demo** project contains the `main.go` file from the [GitLab CICD Hands On Demo](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo) project. If it does not, follow [these steps from Lab 7](https://about.gitlab.com/handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandsonlab7.html#add-a-maingo-file) to add the file.
1. Go to the [GitLab CICD Hands On Demo](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo) project.
1. Open `Dockerfile`.
1. In the upper right corner of the file, select the **Copy file contents** icon.
1. In another tab, open your **CICD Demo** project from earlier labs.
1. Add a new file to the **CICD Demo** project by selecting **+ > This directory > New file**
1. In the **File name** field, enter `Dockerfile`
1. Paste the contents you copied into the body of the new file.
1. In the **Commit message** field, type `Add Dockerfile`, ensure the **Target Branch** is set to `main`, and select **Commit changes**.

### Define a `build image` job

1. In the browser tab with the **CICD Demo** project, open the `.gitlab-ci.yml` file and select **Edit**. Paste the following new job definition at the end of the file. Be sure to check your indendation after pasting.

    ```yml
    build image:
      stage: build
      image: docker:18
      services:
        - docker:18-dind
      variables:
        IMAGE: $CI_REGISTRY_IMAGE/$CI_COMMIT_REF_SLUG:$CI_COMMIT_SHA
      script:
        - docker login -u $CI_REGISTRY_USER -p $CI_REGISTRY_PASSWORD $CI_REGISTRY
        - docker build -t $IMAGE .
        - docker push $IMAGE
    ```

1. In the **Commit message** field, type `Add "build image" job definition`, ensure the **Target Branch** is set to `main`, and select **Commit changes**.

### Ensure the pipeline is running

1. Go to **CI/CD > Pipelines**. Select the most recent pipeline run.
1. Select the widget for the **build image** job to see its progress. Wait for the job to complete.
1. In the left navigation pane, select **Packages and Registries > Container Registry** and view the container that was just uploaded by the `build image` job.

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
