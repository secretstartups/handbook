---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 2"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands-On Guide: Lab 2
{:.no_toc}

## LAB 2: CREATE A PROJECT CONTAINING A `.gitlab-ci.yml` FILE AND REGISTER A GITLAB RUNNER

If you have problems with permissions, firewalls, etc. while trying to install a GitLab Runner on your local computer, you can instead use the shared runners that are provided in the training environment.


### Is the gitlab-runner binary is already installed on your computer?

1. Depending on which OS you’re on, run the appropriate command(s):

   * In a **Linux** terminal:

       ```
     sudo gitlab-runner status
       ```

   * In a **macOS** terminal:

       ```
     gitlab-runner status
       ```
     
   * In a **Windows** PowerShell window:

       ```
     cd C:\GitLab-Runner
     ./gitlab-runner.exe status
       ```

2. If the command works (i.e., does not give an error), skip to the **Create a project** section below. If the command doesn’t work, continue with the next section.


### Install the gitlab-runner binary on your computer

*Note: Follow just 1 of the sections below, depending on what operating system you’re using.*


#### Linux

1. Follow **steps 1 and 2 only** in [this documentation](https://docs.gitlab.com/runner/install/linux-repository.html#installing-gitlab-runner). 
1. Verify that the gitlab-runner service has started by running this command:

    ```
   sudo gitlab-runner status
    ```

   If you see `Service is running` in the output, the gitlab-runner service is working as expected.


#### macOS

1. Follow **steps 1 and 2 only** in [this documentation](https://docs.gitlab.com/runner/install/osx.html#manual-installation-official).
1. Install gitlab-runner as a service and start the service:

    ```
   cd ~
   gitlab-runner install
   gitlab-runner start
    ```
   
1. Verify that the gitlab-runner service has started by running this command:

    ```
   gitlab-runner status
    ```

   If you see `Service is running` in the output, the gitlab-runner service is working as expected.


#### Windows

1. Follow **steps 1 and 2 only** in [this documentation](https://docs.gitlab.com/runner/install/windows.html#installation).
1. Open an elevated PowerShell window:
   1. Click **Start**.
   1. Type `PowerShell`
   1. Right-click **Windows PowerShell**.
   1. Click **Run as administrator**.
1. From the elevated PowerShell window, install and start the gitlab-runner service:

    ```
   cd C:\GitLab-Runner
   ./gitlab-runner.exe install
   ./gitlab-runner.exe start
    ```

1. Verify that the gitlab-runner service has started by running this command:

    ```
   ./gitlab-runner.exe status
    ```
   
    If you see `Service is running` in the output, the gitlab-runner service is working as expected.


### Create a project

1. In the top navigation bar, click **Menu > Groups > Your Groups**.
    + If you’re in an instructor-led class, expand the arrow to the left of the **Training Users** group. Expand the arrow to the left of your Session’s subgroup. Open the subgroup called **My Test Group - \<USERNAME\>**.
    + If you’re in the self-paced environment, open the group called **My Test Group - \<USERNAME\>**.
1. Click **New project**. Click **Create blank project**.
1. In the **Project name** field, enter `CICD Demo`. In the **Project URL** dropdown, select **training-users/session-\<SESSION\>/\<USERNAME\>** to create your project within your group’s namespace and not your user’s top-level namespace.
1. Optionally include a few notes in the **Project description** field.
1. Under **Visibility Level**, click the radio button for **Private**.
1. Enable the **Initialize repository with a README** checkbox. <br/>Note: If you do not initialize your repository with a README, you will create a “bare” Git repo that will be difficult to work with in GitLab until you push files to it from a local repository.
1. Click **Create project**.


### Register a specific GitLab Runner dedicated to your project

1. In your **CICD Demo** project, in the left navigation pane, click **Settings > CI/CD**.
2. Scroll down to the **Runners** section. Click the **Expand** button next to that section.
3. Within the **Specific runners** section, navigate to **Set up a specific runner manually**.
4. Copy the URL in step 2, labeled **Register the runner with this URL**.
5. Run the appropriate command(s) for your OS:
    * In a **Linux** terminal:

        ```
      sudo gitlab-runner register
        ```
   * In a **macOS** terminal:

       ```
     gitlab-runner register
       ```
    * In a normal (not elevated) **Windows** PowerShell window:

        ```
      cd C:\GitLab-Runner
      ./gitlab-runner.exe register
        ```
6. When prompted, paste the URL you just copied.
7. Back on the GitLab page you were just on, copy the **registration token** from the same section as the URL you copied.
8. In the terminal, paste the registration token when prompted.
9. When prompted for the runner’s description, press `enter` to accept the default.
10. When prompted for the runner’s tags, press `enter` to assign it no tags.
11. When prompted for the executor, enter `shell`
12. Confirm that your gitlab-runner registered correctly by running the appropriate command(s) for your OS:
    * In a **Linux** terminal:

       ```
     sudo gitlab-runner list
       ```
     
    * In a **macOS** terminal:

       ```
     gitlab-runner list
       ```
     
     * In a normal (not elevated) **Windows** PowerShell window:

        ```
      cd C:\GitLab-Runner
      ./gitlab-runner.exe list
        ```
    
13. If you’re on Windows, follow these additional instructions to configure your gitlab-runner to use the right command to start PowerShell:
    1. Open `C:\GitLab-Runner\config.toml` in a text editor.
    2. Change this line:

        ```
       shell = "pwsh"
        ```
       
       to this:
    
        ```
       shell = "powershell"
        ```
    3. Save the file.


### Add a `.gitlab-ci.yml` file 

2. In the GitLab webpage, go to the left navigation pane and click **Project overview**.
3. Add a new file to the project’s repository by finding the **+** dropdown that’s next to the **project slug that’s beneath the project title** (*not* the **+** in the black navigation bar) and clicking: **+ > This directory > New file**.
4. In the **File name** field, enter `.gitlab-ci.yml`
5. Select `.gitlab-ci.yml` for template type and apply the `Bash` template. This will pre-populate the file. 
6. To create a minimal `.gitlab-ci.yml` file:
   * Delete all lines above `build1` (that is, delete lines 1-15).
   * Delete all lines below `echo "For example run a test suite"` in the `test1` section.
7. Add `build` and `test` stages by pasting these lines at the top of the file. *Tip: watch the spacing before and after the hyphens!*

   ```yml
   stages:
     - build 
     - test
   ```
   
8. Click **Commit changes**.


### View a pipeline’s status, stages, jobs, and gitlab-runner

1. In the left navigation pane, click **CI/CD Pipelines** to see an overview of all pipelines. The top row in the overview shows the pipeline that started a few seconds ago, when you committed `.gitlab-ci.yml`. The status icon at the left of the row should say either **running** or **passed**.
1. Click the status icon of the top row to see the details of the most recent pipeline. You’ll see columns representing the pipeline’s stages, and widgets representing jobs within each stage.
1. Click each of the two jobs to see the output in a web terminal. Identify the gitlab-runner for each job *Hint: it’s listed near the top of each job’s output*. The gitlab-runner for each job is selected at random, although you can use tags to limit which runners run which jobs.


## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
