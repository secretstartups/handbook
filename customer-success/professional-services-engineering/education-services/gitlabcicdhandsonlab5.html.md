---
layout: handbook-page-toc
title: "GitLab CI/CD Hands On Guide- Lab 5"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab CI/CD training course."
---
# GitLab CI/CD Hands On Guide- Lab 5
{:.no_toc}

## LAB 5- VARIABLE HIERARCHY

### Add Environment Variables 
1. In the GitLab Demo Cloud, locate your CICD Demo project from Lab 2 and open it.
2. Click on your gitlab-ci.yml file and click the **Edit** icon. 
3. In another tab, locate the ci-variables code snippet and click the **Copy File Contents** icon in the upper right corner of the file.  
4. Return to your .gitlab-ci.yml file and paste the variable snippet at the end of the file.  
5. Copy the line: **INLINE\_GLOBAL\_VARIABLE** from the bottom of your .gitlab-ci.yml file. 
5. Navigate to the top of your .gitlab-ci.yml file and just below stages section, paste the following contents: 
variables: 
    INLINE\_GLOBAL\_VARIABLE: “I’m an inline variable declared at the global level in my yml file” 

Note: Now we will add the global variable to the stage itself.

6. Navigate to environment variables section and just below the stage: build line, paste the following: 
variables:   
    INLINE\_GLOBAL\_VARIABLE: “I’m an inline variable declared at the global level in my yml file” 
7. In the Commit Message field, type **“Adding CI Variables”** and click the **Commit Changes** button. 

### Set Group and Project Level Variables
1. We will now set our group and project level variables. 
2. From your .gitlab-ci.yml file -> copy the following line: **group\_level\_variable**
3. From your GitLab screen, navigate to your group by using the breadcrumbs at the top of the Project **Demo System Users > Username-Group**.
4. Once. you are in your group, on the left-hand navigatin pange, click on **Settings > CI/CD**.
5. Locate the **Variable** and click the **Expand** button. 
6. Click on **Add Variable** and paste the **group\_level\_variable** in the Key dialog box. (This will be shared among multiple projects and sub group) 
7. Type "I’m a variable set at the group level" in the Value dialog box.
8. Leave all other options at their defaults and click **Add Variable**.  
9. Repeat these steps for our **project\_level\_variable** from our gitlab-ci.yml file. 
10. Validate that the GitLab YML configuration is valid and that the pipeline is running by hovering over the blue icon in the upper right corner of the file, or clicking on CI/CD > Pipelines on the left-hand navigation pane.  
11. Click on the widgets for each job and verify your work.    

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab CI/CD- please submit your changes via Merge Request!
