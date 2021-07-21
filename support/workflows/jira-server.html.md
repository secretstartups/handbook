---
layout: handbook-page-toc
title: Set up Jira Server
description: This guide provides steps to set up a Jira Server
category: Self-managed
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### What is Jira Software

Jira Software is part of a family of products designed to help teams of all types manage work. Originally, Jira was designed as a bug and issue tracker. But today, Jira has evolved into a powerful work management tool for all kinds of use cases, from requirements and test case management to agile software development. 

For more information about various uses of Jira Please check out the [Get started with Jira Software](https://www.atlassian.com/software/jira/guides/getting-started/basics)

### How to Set Up Jira Server

First, you need to create an instance from the support resources. Ensure nothing is using port 443. We will set up Jira to use HTTPS for Gitlab integration. 

Prerequisite software:
You need to install Java as Jira uses java JVM.
You need to install certbot, python3-certbot-apache for you to generate certificates for HTTPS

Installing Jira and prerequisites: 


Java needs to be installed first

```bash
 apt install openjdk-11-jdk  openjdk-11-jre
```




Create a folder to store Jira software for installation. 

mkdir  jira && cd jira




Choose the version of Jira that you want to download from this site 

https://www.atlassian.com/software/jira/update

We will be using the  Jira 8.13 version so that we can test all supported GitLab integrations. However, this will not work for OAuth2.0  integration so we will later upgrade Jira to test the connection.
Select the Jira version that you want to download.  Click on the link and select the 


Accept and right-click submit button to get the download URL.

Use wget command to download the Jira installer. 
           wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-8.13.7-x64.bin



Change the script to be executable using

 chmod a+x atlassian-jira-software-8.13.7-x64.bin



Run the installer and enter Y if it requests you to install OpenJDK. 

             sudo ./atlassian-jira-software-8.13.7-x64.bin



Follow the installation instructions and enter default for all questions asked in the installation.



Run Jira setup, You will activate a 30 day trial period. Select set up Jira manually. 
You now have Jira setup and accessible in your localhost:8080
You will have to set up Jira before using it. After you access from the browser, Select  I’II set it up myself. 

In the next step, select  Built-In (for evaluation or demonstration).  



Generate a license trial license for your server. 
Update license in your Jira setup. 


Create a Jira Admin user and continue with the next steps. 
Continue with the setup and create a test project.  “GITLAB”. 
Create a test issue that we will be using to test with. 
