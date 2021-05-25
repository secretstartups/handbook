---
layout: handbook-page-toc
title: "GitLab CI/CD Hands On Guide- Lab 4"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab CI/CD training course."
---
# GitLab CI/CD Hands On Guide- Lab 4
{:.no_toc}

## LAB 4- DEFINE PIPELINE ENVIRONMENTS

1. In the GitLab Demo Cloud, locate your CICD Demo project from Lab 2 and open it.
2. Click on your gitlab-ci.yml file and click the **Edit** icon. 
3. In your another tab, locate the ci-environment code snippet- https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo/-/snippets, once you have the snippet open, click the **Copy File Contents** icon in the upper right corner of the file.  
4. Return to your CICD Demo project; with your cursor in the last line of the body of the file, directly after “echo I am a build image", ***paste the contents at the beginning of line 15***.  
5. In the Commit Message field, type **“Adding CI Environment Variables”** and click the **Commit Changes** button.  
Note: Commit to the master branch only.  
6. Validate that the configuration is valid and that the pipeline is running by Navigating the to CI/CD pipeline.  

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab CI/CD- please submit your changes via Merge Request!
