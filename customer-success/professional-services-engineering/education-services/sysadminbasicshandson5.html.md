---
layout: handbook-page-toc
title: "GitLab System Admin Basics Hands On Guide- Lab 5"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab System Admin Basics course."
---
# GitLab System Admin Basics Hands On Guide- Lab 5
{:.no_toc}

## LAB 5- GITLAB RUNNER REGISTRATION

Before we begin; verify if you have an active runner** 
1. Open a terminal session:  From the command line enter: **gitlab-runner list**  
2. Optionally, you can also use the top command: **top | grep gitlab-runner** 
3. If you have a gitlab-runner installed; stop it using the following command: **gitlab-runner stop** 

### Install a GitLab Runner 
1. Install the correct binary for your operating system: 
2. Click on <https://docs.gitlab.com/runner/install/linux-repository.html>  
*Follow the instructions for **Redhat/CentOS** and download the appropriate package to your system:* 
3. Navigate to the curl command and copy the link
4. Navigate to your terminal session -> paste the link -> when prompted, enter your computer password: Grant permissions to execute 
5. Install the Runner- <https://docs.gitlab.com/runner/install/linux-repository.html>  
6. Navigate to your terminal session > paste the link: (enter your computer password if prompted): *rpm -i gitlab-runner\_<arch>.rpm* 
Next, we need to register our runner. Follow the instructions in this [doc website link](https://docs.gitlab.com/runner/register/index.html#linux)** 
7. You will need to follow the specific instructions for your own Operating System on your computer:  
* [MacOS](https://docs.gitlab.com/runner/register/index.html#macos)  
* [Linux ](https://docs.gitlab.com/runner/register/index.html#linux) 
* [Windows](https://docs.gitlab.com/runner/register/index.html#windows) 
8. From your GitLab Instance -> Navigate to Admin Area -> Runners
**Note:**  You will need the information in this section. 

### Register the Runner in your instance
1. When prompted paste the URL you just copied from your admin area.  
2. When prompted paste the registration token from your admin area into your your terminal session  
3. When prompted for the gitlab ci description for this runner; press enter and accept the default. 
4. When prompted for the gitlab-ci tag; press enter and accept the default. 
5. When prompted for the executor; enter **docker** 
6. When prompted for the default image; enter **alpine:latest** 
You should see a message indicating that your Runner has registered successfully! 

### Verify your runner is working 
1. On the command line the following commands:  
2. gitlab-runner start 
3. gitlab-runner verify 
4. Navigate to the **GitLab Admin Area > Runners** and refresh the page. 
5. You should see your Runner 

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab System Admin Basics- please submit your changes via Merge Request!

