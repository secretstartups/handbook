---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands On Guide- Lab 5"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands On Guide- Lab 5
{:.no_toc}

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## LAB 5 - Build and Push an Image and Run Container Scanning
### The starting `gitlab-ci.yml`
This is the state of the `gitlab-ci.yml` at the beginning of the lab:
```yml
build:
  image: docker:stable
  stage: build
  services:
    - docker:dind
  variables:
    IMAGE: $CI_REGISTRY_IMAGE/$CI_COMMIT_REF_SLUG:$CI_COMMIT_SHA
  script:
    - apk add npm
    - npm i npm@latest -g
    - docker 
    - docker 
    - docker 

include:
  
```
### Add the DOCKERFILE to the repo
1. On the Project Information page, click the (+) sign and click on **New File**
2. In the File Name field, type `Dockerfile` and press tab until your cursor is in the first line of the file body.
3. Copy the following contents into the body of the file 
```
FROM ubuntu:12.04

RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

```

4. Click the **Commit Changes** button.

### Authenticate with Docker commands

Pushing to the Container Registry with Docker commands requires authentication.
1. Authentication with the Container Registry is required.    
   - Authenticate with either:
       - A personal access token.
       - A deploy token.      
   - Create a personal access token:
       - You can create as many personal access tokens as you like.
       - In the top-right corner, select your avatar.
       - Select **Edit profile**.
       - In the left sidebar, select Access Tokens.
       - Enter a name and optional expiry date for the token.
       - Select `read_registry` scope so you can pull Docker images from the registry
       - Select `write_registry` scope so you can add Docker images to the registry
       - Select **Create personal access token**.
        **Save the personal access token somewhere safe. After you leave the page, you no longer have access to the token.**
    - Authenticate by running the Docker command as a script in the `gitlab-ci.yml`.   
```yml
# Add the following commands under the "script" keyword in `.gitlab-ci.yml`
- docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD" $CI_REGISTRY
```
### Build and push image to Container Registry
Build and push to the Container Registry:

2. Authenticate with the Container Registry.    
    - Run the following command to build:
```yml
# This command builds a Docker image and tags it with the value of the variable $IMAGE
- docker build -t $IMAGE .
```
... and push to the Container Registry:
```yml
# This command pushes the built containerized app
- docker push $IMAGE
```
3. View the container in **Packages & Registries > Container Registry**.
### Add the Container Scanning Template to `gitlab-ci.yml`
Include the Container Scanning template on `gitlab-ci.yml`.
```yml
include:
  - template: Security/Container-Scanning.gitlab-ci.yml
```
1. Run the pipeline and look at the Vulnerability Report for any Container Scanning vulnerabilities. 

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab Security Essentials- please submit your changes via Merge Request!


