---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands On Guide- Lab 4"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands On Guide- Lab 4
{:.no_toc}

## LAB 4- BUILD A GITLAB-CI.YML FILE

### Create a new Project and add a YML file 
1. Navigate to **Groups** > **Your Groups**
2. Navigate to **Training Users** and expand the arrow to the left of Training Users, your training login will be the first one under your class session. 
3. Navigate to the **New Project** button** and click it.  
4. In the Project name dialog box, enter “***CI Test*”**.  Optionally you may include a few notes in the Project Description Dialog Box. 
5. Under Visibility Level, click the radio button for **Private**.  
6. Click **Initialize repository with a README** checkbox and then click the green **Create project** button.  
7. Navigate to My Groups > Training Users > Session > My Test Group 
8. Click the **New File** button in the repository area.
9. In the file name dialog box enter  *.gitlab-ci.yml* -> Select **.gitlab-ci.yml** for template type -> apply the **Bash** template 
10. For simplicity, we will create a minimum .gitlab-ci.yml file. 
11. From the editor -> Remove all lines above and below the build1 and test1 sections  
12. Add build and test stages at the top of the file.  Hint: watch your spacing! 
stages: 
- build 
- test 
13. Click the green **Commit Changes** button.

### Review the CI/CD Section 
1. Notice a pipeline runs in the upper right corner of the page  
2. You can click on the blue pipeline running button to view the pipeline or you can navigate to it by clicking the CI/CD section to the left pane - Click **CI/CD** then **Pipelines** and review the passed section.  
3. Each widget represents the web terminal that ran when you clicked commit. 
4. Click each widget and identify the runner that ran on each job.  Your runners are selected at random, and we have the ability to limit which runners run using advanced CI configuration. 
5. Review the different views in the Web Terminal for CI/CD Jobs. 

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab with Git Basics- please submit your changes via Merge Request!
