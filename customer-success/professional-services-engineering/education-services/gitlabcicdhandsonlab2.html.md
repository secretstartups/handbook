---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 2"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands-On Guide: Lab 2
{:.no_toc}

## LAB 2: CREATE A PROJECT WITH A `.gitlab-ci.yml` FILE AND REGISTER A RUNNER

This lab works best when Docker is installed on the attendee's computer. If they can't install Docker, they can install a runner with a **shell** executor instead of the **docker** executor, but this has a higher fail rate. 

If attendees have problems with permissions, firewalls, etc., they should use a shared runner from **Settings > CI/CD > Runners**.

### See if GitLab-Runner is already installed
1. In a terminal, run `gitlab-runner status`. If you see an error saying the command can't be found, skip to the **Install the GitLab Runner binary** section below.
1. If the output from the previous command says that the GitLab Runner service is *not* running, start it with `gitlab-runner start`. Check that it came up correctly by running `gitlab-runner status` again. Skip ahead to the **Create a project** section below.

### Install the GitLab Runner binary 
1. Click on the [Install GitLab Runner](https://docs.gitlab.com/runner/install/) topic in GitLab's documentation.  
1. If you are on macOS or Windows, navigate to the [Binaries](https://docs.gitlab.com/runner/install/#binaries) section of the installation documentation and click on the link for your operating system. Follow the installation instructions found there, but **skip any instructions about "Registering a Runner", since we have lab-specific instructions for that below.**
1. If you are on Linux, navigate to the [Repositories](https://docs.gitlab.com/runner/install/#repositories) section of the installation documentation. Follow the installation instructions found there.
1. After finishing the installation, run `gitlab-runner status` to verify that the **gitlab-runner** service is up. Usually you do **not** have to restart your computer in order for **gitlab-runner** to start (despite the instruction to restart in the documentation).

### Create a project
1. In the top navigation bar, click **Groups > Your Groups**.
1. Expand the arrow to the left of **Training Users**. Within that group, expand the arrow to the left of your session's group. Within your session's group, open the group called **My Test Group - \<USERNAME\>**
1. Click the blue **New project** button. Click **Create blank project**.
1. In the **Project name** field, enter `CICD Demo`. In the **Project URL** dropdown, select `training-users/session-<SESSION>/<USERNAME>` to create your project within this group's namespace and not your user's top-level namespace.
1. Optionally include a few notes in the **Project description** field.
1. Under **Visibility Level**, click the radio button for **Private**.
1. Enable the **Initialize repository with a README** checkbox. <br/>Note: If you do not initialize your repository with a README, you will create a "bare" Git repo that will be difficult to work with in GitLab until you push files to it from a local repository.
1. Click the green **Create project** button.

### Register a Specific GitLab Runner dedicated to your project
1. In your **CICD Demo** project, in the left-hand navigation pane, click **Settings** > **CI/CD**
1. Scroll down to the **Runners** section. Click the **Expand** button next to that section.
1. Within the **Specific runners** section, navigate to **Set up a specific runner manually**
1. Copy the URL in step 2, labeled **Register the runner with this URL**
1. In your terminal, run `gitlab-runner register`
1. When prompted, paste the URL you just copied.
1. Back on the GitLab page you were just on, copy the **registration token** from the same section as the URL you copied.
1. In the terminal, paste the registration token when prompted.
1. When prompted for the runner's description, press `enter` to accept the default.
1. When prompted for the runner's tags, press `enter` to assign it no tags.
1. When prompted for the executor, enter `docker`
1. When prompted for the default Docker image, enter `alpine:latest`
1. You should see a message saying that your runner has registered successfully! Run `gitlab-runner list` to see a list of all registered runners, including the one you just registered.

### Add a `.gitlab-ci.yml` file 
1. In the GitLab webpage, go to the left-hand navigation pane and click **Project overview**
1. In the repository, add a new file by clicking: **+ > This directory > New file**
1. In the **File name** field, enter `.gitlab-ci.yml`
1. Select `.gitlab-ci.yml` for template type and apply the `Bash` template. This will pre-populate your configuration file. 
1. To create a minimal `.gitlab-ci.yml` file:
   * Delete all lines above `build1` (that is, delete lines 1-15)
   * Delete all lines below `echo "For example run a test suite"` in the `test1` section
1. Add `build` and `test` stages by pasting these lines at the top of the file. *Tip: watch the spacing before and after the hyphens!*

   ```yml
   stages:
     - build 
     - test
   ```
   
1. Click the green **Commit changes** button.

### View a pipeline's status, stages, jobs, and gitlab-runner
1. In the left-hand navigation pane, click **CI/CD > Pipelines**
1. The first row shows the pipeline that started a few seconds ago, when you committed `.gitlab-ci.yml`. The status icon at the left of the row should say either **running** or **passed**. Click the status icon to see the pipeline's details. You'll see columns representing the pipeline's stages, and widgets representing jobs within each stage.
1. Click each of the two jobs to see the output in a web terminal. Identify the gitlab-runner for each job (*hint: it's listed near the top of each job's output*). The gitlab-runner for each job is selected at random, although you can use tags to limit which runners run which jobs.


## Suggestions?

If you wish to make a change to the *Hands On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
