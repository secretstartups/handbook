---
layout: handbook-page-toc
title: "GitLab CI/CD Hands On Guide- Lab 7"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab CI/CD training course."
---
# GitLab CI/CD Hands On Guide- Lab 7
{:.no_toc}

## LAB 7- ARTIFACT HIERARCHY

### Add Artifacts to Your Pipeline 
1. In the GitLab Demo Cloud, locate your CICD Demo project from previous labs and open it.
2. Click on your gitlab-ci.yml file and click the **Edit** icon. 
3. In another tab, locate the [ci-artifacts](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects/ps-classes/gitlab-ci-cd-training/gitlab-cicd-hands-on-demo/-/snippets/1693)** code snippet and click the **Copy File Contents** icon in the upper right corner of the file.  
4. Return to your CICD Demo project and place your cursor in the last line in the body of your .gitlab-ci.yml file and ***paste the contents of the ci-artifacts code snippet***. 
5. In the Commit Message field, type **“adding CI artifacts”** and click the **Commit Changes** button. 

### Add a Main.Go File
1. Navigate to the [Hands On Demo Project](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects/ps-classes/gitlab-ci-cd-training/gitlab-cicd-hands-on-demo)
2. Click on the main.go file in the repository to open it. 
3. Click the **Copy file contents** button in the upper right hand corner of the file. 
4. Navigate back to your GitLab CICD Demo Project and click the **New File** button
5. In the File Name field, enter “**main.go**” and move your cursor to the beginning of line 1.  
6. ***Paste the contents you copied from the main.go file at the beginning of line 1.*** 
7. In the Commit Message field, type **“adding main.go file”** and click the **Commit Changes** button. 
8. On the left-hand navigation pane, click on CI/CD. 
9. Locate your last pipeline and click the Retry button in the far right side of the screen. 
10. Once the pipeline runs, click on the build app job and review the contents, next navigate to the right side of your screen and locate the job artifacts panel.
11. Click **browse** and notice your application is now available for download. 

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab CI/CD- please submit your changes via Merge Request!
