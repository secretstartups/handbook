---
layout: handbook-page-toc
title: "GitLab CI/CD Hands On Guide- Lab 2"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab CI/CD training course."
---
# GitLab CI/CD Hands On Guide- Lab 2
{:.no_toc}

## LAB 2- CREATE A PROJECT AND A GITLAB-CI.YML FILE

It is important to ensure all attendees have installed Docker for their operating system in order for this lab to work correctly. In the instance where they are unable to install Docker, you can install a Shell Runner, but be aware that this has a higher fail rate. If they run into issues with permissions, firewalls, or other issues, have them use a Shared Runner from Settings > CICD> Runners.

### Install a GitLab Runner 
Before we begin; verify if you have an active runner. 
1. Open a terminal session:  From the terminal/command line enter: **gitlab-runner list**
2. Optionally, you can also use the top command in your terminal/command window: **top | grep gitlab-runner**
3. If you have a gitlab-runner installed; stop it using the following command: **gitlab-runner stop**
4. Install the correct binary for your operating system:
5. Click on the [Install GitLab Runner](https://docs.gitlab.com/runner/install/) topic.  
6. Navigate to the [Binaries section](https://docs.gitlab.com/runner/install/#binaries) of the GitLab runner installation and locate your specific operating system.
Note: the following steps are the GitLab official method, there is also a Homebrew method in the documentation.
7. Install/Download the Binary to your system:
8. Navigate to the curl command and copy the command from the topic. 
9. Navigate to your terminal/command session and paste the copied command. If prompted, enter your computer password. 
10. Navigate back to the [Binaries section](https://docs.gitlab.com/runner/install/#binaries) topic for your operating system and scroll down until you locate the command for **Give it permissions to execute**, copy the command to your clipboard.
11. Navigate to your terminal/command session and paste the command you copied. If prompted, enter your password.

### Create a Project 
1. Navigate to **Groups** > **Your Groups** 
2. Navigate to **Training Users** and expand the arrow to the left of Training Users, your training login will be the first one under your class session. 
3. Navigate to the **New Project** button** and click it, and then click on **Create Blank Project**.
4. In the Project name dialog box, enter **CICD Demo**. Optionally you may include a few notes in the Project Description Dialog Box. 
5. Under Visibility Level, click the radio button for **Private**.  
6 . Click **Initialize repository with a README** checkbox and then click the green **Create project** button.  
Note: If you do not initialize your repository with a README, you will have a stripped down Git repo, that you will need to create content to bring it into existence.

### Add Your Runner to Your Project
1. In your CICD Demo project, on the left-hand pane, click on **Settings** > **CI/CD**
2. Scroll to the middle of the section until you locate the Runners topic, click the **Expand** button.
3. Locate the Specific Runners section, then navigate to **Set up a specific Runner Manually**.
4. Copy the URL listed under step 2 under **Register the Runner with this URL** 
Note:  You will need the information in this section.

### Register the Runner
1. Navigate to your terminal/command session and enter: **gitlab-runner register**
2. When prompted paste the gitlab-ci coordinator URL you just copied.
3. Navigate back to the GitLab platform and copy the gitlab-ci **registration token**.
4. Navigate to your terminal/command session and paste the token into the field.
5. When prompted for the gitlab-ci description for this runner; press enter and accept the default.
6. When prompted for the gitlab-ci tag; press enter and accept the default.
7. When prompted for the executor; enter docker
8. When prompted for the default image; enter alpine:latest
You should see a message indicating that your Runner has registered successfully!
9. Verify your runner is working by inputting the following commands into your terminal/command session: 
*gitlab-runner start
*gitlab-runner verify

### Add a GitLab-ci.yml File 
1. On your GitLabdemo.cloud window, click on the **Project Overview** button on the left-hand side of the screen.
2. Click the **New File** button in the repository area.
3. In the file name dialog box enter  *.gitlab-ci.yml* -> Select **.gitlab-ci.yml** for template type -> apply the **Bash** template 
4. For simplicity, we will create a minimum .gitlab-ci.yml file. 
5. From the editor -> Remove all lines above and below the build1 and test1 sections  
6. Add build and test stages at the top of the file.  Hint: watch your spacing! 
   ```yml
   stages: 
   - build 
   - test
   ``` 
7. Click the green **Commit Changes** button.

### Review the CI/CD Section 
1. Notice a pipeline runs in the upper right corner of the page  
2. You can click on the blue pipeline running button to view the pipeline or you can navigate to it by clicking the CI/CD section to the left pane - Click **CI/CD** then **Pipelines** and review the passed section.  
3. Each widget represents the web terminal that ran when you clicked commit. 
4. Click each widget and identify the runner that ran on each job.  Your runners are selected at random, and we have the ability to limit which runners run using advanced CI configuration. 
5. Review the different views in the Web Terminal for CI/CD Jobs. 


### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab CI/CD- please submit your changes via Merge Request!
