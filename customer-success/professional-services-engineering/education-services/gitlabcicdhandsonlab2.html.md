---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 2"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands-On Guide: Lab 2
{:.no_toc}

## LAB 2: CREATE A PROJECT WITH A `.gitlab-ci.yml` FILE AND REGISTER A RUNNER

This lab will use Shell as the executor for the runner install unless you have another executor installed on your PC.

If attendees have problems with permissions, firewalls, etc., they should use a shared runner from **Settings > CI/CD > Runners**.

### See if GitLab-Runner is already installed
1. In a terminal, run `gitlab-runner status`. If you see an error saying the command can't be found, skip to the **Install the GitLab Runner binary** section below.
1. If the output from the previous command says that the GitLab Runner service is *not* running, start it with `gitlab-runner start`. Check that it came up correctly by running `gitlab-runner status` again. Skip ahead to the **Create a project** section below.

### Install the GitLab Runner binary 
**Before starting, read these instructions to the end.**
1. Open the [Install GitLab Runner](https://docs.gitlab.com/runner/install/) topic in GitLab's documentation in a new browser tab or window.
1. While reading the instructions for the employed operating system, decide which of the **Binaries** matches the operating system used.
1. Complete all the steps except for the instructions on runner registration. That can safely be skipped. Included below in this document are the runner registration instructions needed for this exercise.
1. Start these instructions now by opening the link [Binaries](https://docs.gitlab.com/runner/install/#binaries)!
1. For either macOS or Windows operating system, **skip any instructions about "Registering a Runner"** in the instructions found in the  section of the installation documentation.
1. If Linux is the operating system, navigate to the [Repositories](https://docs.gitlab.com/runner/install/#repositories) section of the installation documentation. Follow the installation instructions found there.
1. After finishing the installation, run `gitlab-runner status` to verify that the **gitlab-runner** service is up. Usually a computer restart is not needed in order for **gitlab-runner** to start, despite instructions in the documentation to do so.

### Create a project
1. In the top navigation bar, click **Menu > Groups > Your Groups**.
    + If you are in an instructor-led class, expand the arrow to the left of the **Training Users** group. Expand the arrow to the left of your Session's subgroup. Open the subgroup called **My Test Group - \<USERNAME\>**.
    + If you are in the self-paced environment, open the group called **My Test Group - \<USERNAME\>**.
1. Click **New project**. Click **Create blank project**.
1. In the **Project name** field, enter `CICD Demo`. In the **Project URL** dropdown, select **training-users/session-\<SESSION\>/\<USERNAME\>** to create your project within your group's namespace and not your user's top-level namespace.
1. Optionally include a few notes in the **Project description** field.
1. Under **Visibility Level**, click the radio button for **Private**.
1. Enable the **Initialize repository with a README** checkbox. <br/>Note: If you do not initialize your repository with a README, you will create a "bare" Git repo that will be difficult to work with in GitLab until you push files to it from a local repository.
1. Click **Create project**.

### Register a Specific GitLab Runner dedicated to your project
1. In your **CICD Demo** project, in the left-hand navigation pane, click **Settings > CI/CD**
1. Scroll down to the **Runners** section. Click the **Expand** button next to that section.
1. Within the **Specific runners** section, navigate to **Set up a specific runner manually**
1. Copy the URL in step 2, labeled **Register the runner with this URL**
1. In your terminal, run `gitlab-runner register`
1. When prompted, paste the URL you just copied.
1. Back on the GitLab page you were just on, copy the **registration token** from the same section as the URL you copied.
1. In the terminal, paste the registration token when prompted.
1. When prompted for the runner's description, press `enter` to accept the default.
1. When prompted for the runner's tags, press `enter` to assign it no tags.
1. When prompted for the executor, enter `shell`
1. You should see a message saying that your runner has registered successfully!<br/>Run `gitlab-runner list` to see a list of all registered runners, including the one you just registered.

### Add a `.gitlab-ci.yml` file 
1. In the GitLab webpage, go to the left-hand navigation pane and click **Project overview**
1. Add a new file to the project's repository by finding the **+** dropdown that's next to the **project slug that's beneath the project title** (*not* the **+** in the black navigation bar) and clicking: **+ > This directory > New file**
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
   
1. Click **Commit changes**.

### View a pipeline's status, stages, jobs, and gitlab-runner
1. In the left-hand navigation pane, click **CI/CD Pipelines** to see an overview of all pipelines. The top row in the overview shows the pipeline that started a few seconds ago, when you committed `.gitlab-ci.yml`. The status icon at the left of the row should say either **running** or **passed**.
1. Click the status icon of the top row to see the details of the most recent pipeline. You'll see columns representing the pipeline's stages, and widgets representing jobs within each stage.
1. Click each of the two jobs to see the output in a web terminal. Identify the gitlab-runner for each job *Hint: it's listed near the top of each job's output*. The gitlab-runner for each job is selected at random, although you can use tags to limit which runners run which jobs.

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
