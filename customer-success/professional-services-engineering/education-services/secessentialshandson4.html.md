---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands On Guide- Lab 4"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands On Guide- Lab 4
{:.no_toc}

## LAB 4- Run a Fuzz test

### Create a Project
1. Navigate to **Groups** > **Your Groups**
-   If you are in an Instuctor Led Class: Navigate to **Training Users** and expand the arrow to the left of Training Users, your training login will be the first one under your class session.
-   If you are in the Self-Paced Enviornment: Navigate to the **My Test Group- {username}**
2. Navigate to the **New Project** button and click it.
3. Click on **Create from Template** and then click on the **Instance** tab. Choose the **GitLab Security - GO Fuzzing Demo** template then click on the **Use Template** button.
4. In the Project name dialog box, enter “***{lastname} SecurityProject2*”**. Optionally you may include a few notes in the Project Description Dialog Box.
5. Under Visibility Level, click the radio button for **Private** and click the **Create Project** button.
6. Click on the CI/CD item on the left-hand navigation menu.  Click the **Run Pipeline** button to restart the pipeline.
7. Wait until the pipeliine finishes and then examine each job status. 

### View the scanning results in the Security Dashboard 
1. Validate your pipeline has completed and passed
2. Navigate to **Security & Compliance** in the left-hand navigation menu.  
3. Click on the **Vulnerability Report** tab, then review the vulnerabilities in the dashboard.
4. Select any vulnerability that displays a `Detected` or `Confirmed` status.
5. Click on the **Set Status** drop-down and click on **Dismiss** from the drop-down menu. Click the **Change Status** button to confirm the change.


### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab Security Essentials- please submit your changes via Merge Request!

