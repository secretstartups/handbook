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
2. Navigate to **Training Users** and expand the arrow to the left of Training Users, your training login will be the first one under your class session.
3. Navigate to the **New Project** button and click it.
4. Click on **Create from Template** and then click on the instance tab. Choose the **security essentials fuzz test** template then click on the **Use Template** button.
5. In the Project name dialog box, enter “***{lastname} SecurityProject2*”**. Optionally you may include a few notes in the Project Description Dialog Box.
6. Under Visibility Level, click the radio button for **Private**.
7. Click on the CI/CD button on the left hand side menu.  Click the **Run Pipeline** button to restart the pipeline.
8. Wait until the pipeliine finishes, Examine each job and discuss 

### View the scanning results in the Security Dashboard 
1. Validate your pipeline has completed and passed
2. Navigate to **Security & Compliance** in the left menu pane  
3. Click on the **Vulnerability Report** tab -> Click a vulnerability in the report field.

### Read an Artifacts for the Scanning Reports
1. Click on the **CI/CD** button on the Left menu.  
2. On the pipeline click the artifacts dropdown menu.  
3. Select various reports and review 

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab Security Essentials- please submit your changes via Merge Request!

