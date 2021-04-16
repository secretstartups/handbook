---
layout: handbook-page-toc
title: "GitLab CI/CD Hands On Guide- Lab 8"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab CI/CD training course."
---
# GitLab CI/CD Hands On Guide- Lab 8
{:.no_toc}

## LAB 8- GITLAB DOCKER REGISTRY

### Edit the Config.toml File
1. In the GitLab Demo Cloud, locate your CICD Demo project from previous labs and open it.
2. In a seperate tab, open the [ci-registry snippet](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects/ps-classes/gitlab-ci-cd-training/gitlab-cicd-hands-on-demo/-/snippets/1694) and review the instructions at the top of the file.  
3. Copy the following line of code:  
> volumes = ["/var/run/docker.sock:/var/run/docker.sock", "/cache"]
4. Navigate to your terminal/command line and locate the config.toml file located in the .gitlab-runner directory. 
5. CD into the config.toml file and edit the volumes line with what you copied from the above step. 
6. In your terminal/command session, use the following command to restart your runner:
> gitlab-runner restart 

### Add a Dockerfile
1. Navigate back to the window with the [Hands On Demo Project](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects/ps-classes/gitlab-ci-cd-training/gitlab-cicd-hands-on-demo/) click on the Dockerfile. 
2. In the upper right-hand corner of the file, click the **Copy file contents** button. 
3. Return  to your CICD Demo project and click the (+) icon and click on **New File**  
4. In the **File Name** field, type “**Dockerfile**”, and paste the contents from the Dockerfile into the body of the file.  
5. Add the comment “added Dockerfile” and click the **Commit Changes** button. 

### Add Build Image
1. Navigate back to your CICD Demo project from previous labs open it.
2. In a seperate tab, open the [ci-registry snippet](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects/ps-classes/gitlab-ci-cd-training/gitlab-cicd-hands-on-demo/-/snippets/1694) and click the **Copy File Contents**.  
3. Return to your CICD Demo project in your other tab and click on your gitlab-ci.yml file and click the **Edit** button.
4. At the end of your yml file, paste the contents from the ci-registry snippet. 
5. Edit the ci-registry section of the .gitlab-ci.yml file by locating the tags section and replace the **byo-runner** tag with a **docker tag**
6. In the Commit Message field, type “Adding CI registry” and click the **Commit Changes** button. 
7. In the left-hand navigation pane, click on **Settings > CI/CD > Runners** and click on your Runner. 
8. Add a tag for "docker" and click the Save button. 

### Ensure the Pipeline is Running 
1. Validate that the configuration is valid and that the pipeline is running by navigating to **CI/CD > Pipelines**. 
2. Navigate to the **build image** in your pipeline and click the **play** button.
3. Navigate to **Package and Registries > Container Registry** and view your container.  

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab CI/CD- please submit your changes via Merge Request!
