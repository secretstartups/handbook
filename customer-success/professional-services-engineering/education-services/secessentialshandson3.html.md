---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands On Guide- Lab 3"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands On Guide- Lab 3
{:.no_toc}

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## LAB 3- Build and Push an Image and Run Container Scanning
### The starting gitlab-ci.yml
This is the state of the gitlab-ci.yml at the beginning of the lab:
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
### Authenticate with Docker commands
Pushing to the Container Registry with Docker commands requires authentication.
1. Authentication with the Container Registry is required.    
   - Authenticate with either:
       - A personal access token.
       - A deploy token.      
   - Create a personal access token:
       - You can create as many personal access tokens as you like.
       - In the top-right corner, select your avatar.
       - Select Edit profile.
       - In the left sidebar, select Access Tokens.
       - Enter a name and optional expiry date for the token.
       - Select the desired scopes:
           - Both of these require the minimum scope to be:
                - For read (**pull**) access, `read_registry`.
                - For write (**push**) access, `write_registry`.
        - Select Create personal access token.
        **Save the personal access token somewhere safe. After you leave the page, you no longer have access to the token.**
    - Authenticate by running the Docker command as a script in the `gitlab-ci.yml`.   
   ```yml
   # Add the following command under the script task in gitlab-ci.yml
   - docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD" $CI_REGISTRY
   ```
### Build and push image to Container Registry
Build and push to the Container Registry:

2. Authenticate with the Container Registry.    
    - Run the following command to build:
```yml
# This command builds the image of variable $IMAGE
- docker build -t $IMAGE .
```
... and push to the Container Registry:
```yml
# This command pushes the built containerized app
- docker push $IMAGE
```
3. View the container in **Packages & Registries > Container Registry**.
### Add a Container Scanning Template to gitlab-ci.yml
Include the Container Scanning template on gitlab-ci.yml.
```yml
include:
  - template: Security/Container-Scanning.gitlab-ci.yml
```
Run the pipeline and look at the Security Dashboard for any Container Scanning vulnerabilities. 

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab Security Essentials- please submit your changes via Merge Request!

