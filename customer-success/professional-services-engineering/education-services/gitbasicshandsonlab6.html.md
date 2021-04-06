---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands On Guide- Lab 6
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands On Guide- Lab 6
{:.no_toc}

## LAB 6- SECURITY SCANNING (SAST)
Application Security Testing (SAST) allows you to analyze your source code for known vulnerabilities. GitLab checks the SAST report and compares the found vulnerabilities between the source and target branches. The purpose of this lab is to run a SAST to identify potential security vulnerabilities in your pipeline. 
### Navigate to the CI-Test Project  
1. Open your CI-Test project and locate  your **.gitlab-ci.yml** file and click on it 
2. Click on **Web IDE** to begin editing your .gitlab-ci.yml file.  
Note: For this lab, please pull up the following [Docs article](https://docs.gitlab.com/ee/user/application_security/sast/) to assist you. This page displays instructions for how to include SAST in your own CI. The page also displays GitLab supported languages and frameworks.  
3. On the Docs page, scroll down and locate the **Configure SAST Manually** section.  
4. Copy the following line: 
include: 
- template: Security/SAST.gitlab-ci.yml 
5. Navigate back to the GitLab dashboard and locate your .gitlab-ci.yml file 
6. **Paste the code** just copied below the test1 section leaving a space between blocks of code.  Note: ensure this lines up with the template. 
7. Click the green **Commit** button to begin running your pipeline. 
8. Add a message for your change. 
9. Click **Commit to master branch**.  Note: We don’t want to create a new branch 
10. Now we will need to add a main.go file, navigate to your repository by clicking the Repo tab on the left hand panel. 

### Add a main.go file and view scanning results 
1. Click the **Drop Down** arrow and select **New File** 
2. In the file name field, type ***main.go*** 
3. Copy and paste the file contents from this [snippet](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects/ps-classes/gitlab-with-git-basics/gitlab-flow-demo/-/snippets/2214) beginning at line 1.  
4. Click **Commit changes** 
5. Navigate to **CI/CD** in the left pane  Note the security scan is running. 
6. Click on your pipeline - > Click on the **Security tab** -> Navigate to  the **Vulnerability** tab -> Click **Errors unhandled** 

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab with Git Basics- please submit your changes via Merge Request!
