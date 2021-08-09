---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands On Guide- Lab 1"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands On Guide- Lab 1
{:.no_toc}

## LAB 1- CREATE A PROJECT AND RUN Security Scanning

GitLab Security Scanning allows you to analyze your source code for known vulnerabilities. GitLab checks the SAST report and compares the found vulnerabilities between the source and target branches. The purpose of this lab is to run GitLab Security Scanning to identify potential security vulnerabilities in your pipeline.

### Create a Project
1. Navigate to **Groups** > **Your Groups**
-   If you are in an Instuctor Led Class: Navigate to **Training Users** and expand the arrow to the left of Training Users, your training login will be the first one under your class session.
-   If you are in the Self-Paced Enviornment: Navigate to the **My Test Group- {username}**
2. Navigate to the **New Project** button and click it.
3. Click on **Create from Template** and then click on the **Instance** tab. Choose the `java-security-essentials1` template then click on the **Use Template** button.
4. In the Project name dialog box, enter “***{lastname} SecurityProject1*”**. Optionally you may include a few notes in the Project Description Dialog Box.
5. Under Visibility Level, click the radio button for **Private**.

### Add a .gitlab-ci.yml File and 
1. Start with an issue.  Click issues on the left hand menu.  Click the **New Issue** button
2. In the Title type **create .gitlab-ci.yml**, leave all other details at their default and click the **Create Issue** button.
3. Create a Merge Request from the Issuee.  Click the **Create Merge Request** button 
4. Locate the new branch and click on it.
5. Navigate to the **New File** button and click on it.
6. In the file name dialog box type **“*.gitlab-ci.yml”***
7. In order to get started, open a new tab in your browser. We are going to Copy the text from the following [snippet](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-security-essentials/sast-demo-project/-/snippets/73) and paste it into your YAML file.
8. Click the green **Commit Changes** button.
9. Ensure your pipeline configuration is valid, and then move onto the next step.
10. After the pipeline runs, click on the Merge Requests section on the left-hand navigation bar.
11. Open your Merge Request and click **Mark as Ready** and then **Merge when pipeline succeeds** or **Merge** depending on where your pipeline is at.
10. While your pipeline is running Click on .gitlab-ci.yml file.  Examine each of the stages and includes at the bottom.
11. Click on the CI/CD button on the left hand side menu.  Examine each job and discuss 

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab Security Essentials- please submit your changes via Merge Request!

