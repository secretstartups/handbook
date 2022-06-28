---
layout: handbook-page-toc

title: "GitLab Security Essentials<br/>Hands-On Guide: Lab 3"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Security Essentials course."
---
{:.no_toc}

## LAB 3: Enable, configure, and run Container Scanning


### A. Setup

1. Return to the **Security Labs** project you used in previous labs.
1. **OPTIONAL:** Follow the instructions at the start of [Lab 2](secessentialshandson2.html) for speeding up your pipeline by disabling scanners that you enabled in previous labs.


### B. Add a `Dockerfile`

A Dockerfile is a "recipe" that tells Docker how to assemble your application into a Docker image. You'll write a `Dockerfile` that installs your single-file Python application onto an Ubuntu 18.04 Docker image, and then packages that whole stack into a new Docker image.

1. In the left navigation pane, select **Repository > Files**.
1. Above the repository file list, select **(+) > This directory > New file**.
1. In the **File name** field, type `Dockerfile`
1. The Dockerfile must specify which Linux image to install your application on. For this lab you'll use an old version of Ubuntu that has security vulnerabilities for the Container Scanner to find. Paste this into `Dockerfile`:

    ```dockerfile
   FROM ubuntu:18.04
    ```

1. The Dockerfile must add your application to the Linux image specified above. Paste this at the bottom of `Dockerfile`:

    ```dockerfile
   ADD HelloWorld.py .
    ```

1. Your completed `Dockerfile` should look like this. Make any corrections necessary.

    ```dockerfile
   FROM ubuntu:18.04
   ADD HelloWorld.py .
    ```

1. Add a commit message and select **Commit changes**.


### C. Build the Docker image

In this section you will define a job that builds a Docker image.

To build a Docker image with a CI/CD pipeline job, you must use a GitLab Runner that's configured to use a Docker executor. Fortunately the shared GitLab Runners in the training environment satisfy this requirement.

1. Define a `build` stage by pasting this in your `.gitlab-ci.yml`, just beneath the `stages:` keyword. Make sure it has the same indentation as the existing `- test` entry beneath it:

    ```yml 
   - build
    ```

1. Name your new job and assign it to the **build** stage by pasting this at the end of `.gitlab-ci.yml`:

    ```yml
   build-and-push-docker-image:
     stage: build
    ```

1. Your job must run on a Docker image that contains Docker tools. This approach is sometimes called "Docker in Docker" or "dind". You'll need to specify a version of the image that we've tested and know to work well for this task. Paste this into the job definition that you added in the previous step:

    ```yml
     image: docker:20.10.17
    ```

1. Your job also needs a second Docker image that enables the Docker in Docker workflow. Specify the second image with the `services` keyword, by pasting this into your job definition:

    ```yml
     services:
     - docker:20.10.17-dind
    ```

1. It's helpful to define a variable to hold the full name and version of the Docker image you're creating, because you'll need to refer to that information more than once. You can assemble the name and version out of predefined variables that GitLab provides (remember that predefined variables generally start with `CI_`). Paste this into your job definition:

    ```yml
      variables:
        IMAGE: $CI_REGISTRY_IMAGE/$CI_COMMIT_REF_SLUG:$CI_COMMIT_SHA
    ```

1. If you set a variable telling Docker not to use TLS, you won't have to worry about setting up security certificates. Add this to your job's existing `variables:` section, below the variable you already defined:

    ```yml
        DOCKER_TLS_CERTDIR: ""
    ```

1. Tell Docker to build a Docker image using the recipe in `Dockerfile`. Paste this into your job definition:

    ```yml
     script:
     - docker build --tag $IMAGE .
    ```


### D. Push the Docker image to your project's container registry

1. Your job needs to log in to the project's container registry so it can push your image to it. You can log in using a username, password, and registry URL that are stored in predefined variables. Add this line to the bottom of the `script` section of the `build-and-push-docker-image` job:

    ```yml
     - docker login --username $CI_REGISTRY_USER --password $CI_REGISTRY_PASSWORD $CI_REGISTRY
    ```

1. Your job can push the image with a single Docker command. Add this to the bottom of the `script` section of the job definition:

    ```yml
     - docker push $IMAGE
    ```

1. Your completed job definition should look like this. Make any corrections necessary to the job definition in your `.gitlab-ci.yml`.

    ```yml
   build-and-push-docker-image:
     stage: build
     image: docker:20.10.17
     services:
     - docker:20.10.17-dind
     variables:
       IMAGE: $CI_REGISTRY_IMAGE/$CI_COMMIT_REF_SLUG:$CI_COMMIT_SHA
       DOCKER_TLS_CERTDIR: ""
     script:
     - docker build --tag $IMAGE .
     - docker login --username $CI_REGISTRY_USER --password $CI_REGISTRY_PASSWORD $CI_REGISTRY
     - docker push $IMAGE
    ```

1. Commit the changes to `.gitlab-ci.yml` with an appropriate commit message.
1. When the pipeline finishes running, go to left navigation pane and select **Packages & Registries > Container Registry**. Verify that your job created a new Docker image and pushed it into the project's container registry.


### E. Enable Container Scanning

Now that your Docker image is being built and pushed, you can enable Container Scanning.

1. Add the Container Scanning template to the existing `include:` section of `.gitlab-ci.yml`:
   
    ```yml
   - template: Security/Container-Scanning.gitlab-ci.yml
    ```

1. Commit the changes with an appropriate commit message.
1. Wait for the pipeline to finish running.


### F. View the results

1. See if the Container Scanner found any problems with the old Ubuntu base image by looking at either the **Vulnerability Report** or the **Security** tab in the pipeline details page.


## Suggestions?

If you'd like to suggest changes to the *GitLab Security Essentials Hands-On Guide*, please submit them via merge request.
