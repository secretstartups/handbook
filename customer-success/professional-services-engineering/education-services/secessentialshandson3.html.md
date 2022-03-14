---
layout: handbook-page-toc

title: "GitLab Security Essentials<br/>Hands-On Guide: Lab 3"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Security Essentials course."
---
{:.no_toc}

## LAB 3: Enable, configure, and run Container Scanning


### A. Setup

1. Return to the **Security Labs** project you used in the other labs.
1. **OPTIONAL:** Follow the instructions at the start of [Lab 2](secessentialshandson2.html) for speeding up your pipeline by disabling scanners that you enabled in previous labs.


### B. Add a `Dockerfile`

A Dockerfile is a "recipe" that tells Docker how to assemble your application into a Docker image. You'll write a `Dockerfile` that installs your single-file Python application onto an Ubuntu 18.04 Docker image, and then packages that whole stack into a new Docker image.

1. In the left navigation pane, click **Repository > Files**.
1. Above the repository file list, click **(+) > New file**.
1. In the **File name** field, type `Dockerfile`
1. The Dockerfile must specify which Linux image to install your application on. For this lab you'll use an old version of Ubuntu that has security vulnerabilities for the Container Scanner to find. Paste this into `Dockerfile`:

    ```dockerfile
   FROM ubuntu:18.04
    ```

1. The Dockerfile "recipe" must add your application to the Linux image specified above. Paste this at the bottom of `Dockerfile`:

    ```dockerfile
   ADD HelloWorld.py .
    ```

1. Your completed `Dockerfile` should look like this. Make any corrections necessary.

    ```dockerfile
   FROM ubuntu:18.04
   ADD HelloWorld.py .
    ```

1. Add a commit message and click **Commit changes**.


### C. Build the Docker image

In this section you will define a job that builds a Docker image.

To build a Docker image with a CI/CD pipeline job, you must use a GitLab Runner that's configured to use a Docker executor. Fortunately the shared GitLab Runners in the training environment satisfy this requirement.

1. Define a `build` stage to assign your job. Paste this just beneath the `stages:` keyword, making sure it has the same indentation as the existing `- test` entry beneath it:

    ```yml 
     - build
    ```

1. Name your new job and assign it to a stage. Paste this at the end of `.gitlab-ci.yml`:

    ```yml
   build-and-push-docker-image:
     stage: build
    ```

1. Your job must run on a Docker image that contains Docker tools (this approach is sometimes called "Docker in Docker", or "dind"). Because of technical limitations of the training environment, you need to specify an older version (_i.e._, version 18) of the image that contains Docker tools. Paste this into your job definition:

    ```yml
     image: docker:18
    ```

1. Your job also needs a second Docker image that enables the Docker in Docker workflow. You specify this with the `services` keyword. Paste this into your job definition:

    ```yml
     services:
       - docker:18-dind
    ```

1. It's helpful to define a variable to hold the full name and version of the Docker image you're creating, because you'll need to refer to that information more than once. You can assemble the name and version out of predefined variables that GitLab provides (remember that predefined variables generally start with "CI"). Paste this into your job definition:

    ```yml
      variables:
        IMAGE: $CI_REGISTRY_IMAGE/$CI_COMMIT_REF_SLUG:$CI_COMMIT_SHA
    ```

1. Instruct Docker to build a Docker image using the recipe in `Dockerfile`. Paste this into your job definition:

    ```yml
     script:
       - docker build --tag $IMAGE .
    ```


### D. Push the Docker image to your project's container registry

1. Your job needs to log in to the project's container registry so it can push your image to it. Add this line to the bottom of the `script` section of the `build-and-push-docker-image` job:

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
     image: docker:18
     services:
       - docker:18-dind
     variables:
       IMAGE: $CI_REGISTRY_IMAGE/$CI_COMMIT_REF_SLUG:$CI_COMMIT_SHA
     script:
       - docker build --tag $IMAGE .
       - docker login --username $CI_REGISTRY_USER --password $CI_REGISTRY_PASSWORD $CI_REGISTRY
       - docker push $IMAGE
    ```

1. Commit the changes to `.gitlab-ci.yml` with an appropriate commit message.
1. When the pipeline finishes running, verify that your job created a new Docker image and pushed it into the project's container registry: in the left navigation pane, click **Packages & Registries > Container Registry**.


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
