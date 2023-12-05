---
aliases: /handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandsonlab2.html
title: "GitLab CI/CD Hands-On Guide: Lab 2"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---

# GitLab CI/CD Hands-On Guide: Lab 2


## LAB 2: CREATE A PROJECT CONTAINING A `.gitlab-ci.yml` FILE AND (OPTIONALLY) REGISTER A GITLAB RUNNER

**Note**: Parts **D** through **F** in this exercise require admin rights to your local machine. If you are unable to install GitLab Runner locally, you may skip parts D through F and may use the training environment's shared runners instead.

### A. Create a project

1. In the top navigation bar, click **Menu > Projects > Your Projects**.
1. Select **Create a project**. Select **Create blank project**.
1. In the **Project name** field, enter `CICD Demo`. In the **Project URL** dropdown, select **training-users/session-\<SESSION\>/\<USERNAME\>** to create your project within your group’s namespace and not your user’s top-level namespace.
1. Under **Visibility Level**, select the radio button for **Private**.
1. Enable the **Initialize repository with a README** checkbox. <br/>Note: If you do not initialize your repository with a README, you will create a “bare” Git repo that will be difficult to work with in GitLab until you push files to it from a local repository.
1. Select **Create project**.


### B. Add a `.gitlab-ci.yml` file

1. From the new project's landing page, add a new file to the project’s repository by finding the **+** dropdown that’s next to the **branch name and project slug that’s beneath the project title** (*not* the **+** in the black navigation bar). Select **+ > This directory > New file**.
1. In the **File name** field, enter `.gitlab-ci.yml`
1. Select `.gitlab-ci.yml` for template type and apply the `Bash` template. This will pre-populate the file.
1. To create a minimal `.gitlab-ci.yml` file:
   - Delete all lines above `build1`.
   - Delete all lines below `echo "For example run a test suite"` in the `test1` section.
1. Add `build` and `test` stages by pasting these lines at the top of the file. *Tip: watch the spacing before and after the hyphens!*

   ```yml
   stages:
     - build
     - test
   ```

1. Select **Commit changes**.


### C. View a pipeline’s status, stages, jobs, and GitLab runner

1. In the left navigation pane, click **CI/CD > Pipelines** to see an overview of all pipelines. The top row in the overview shows the pipeline that started a few seconds ago, when you committed `.gitlab-ci.yml`. The status icon at the left of the row should say either **running** or **passed**.
1. Click the status icon of the top row to see the details of the most recent pipeline. You’ll see columns representing the pipeline’s stages, and widgets representing jobs within each stage.
1. Click each of the two jobs to see the output in a web terminal. Identify the gitlab-runner for each job *Hint: it’s listed near the top of each job’s output*. You can use tags to limit which runners run which jobs.


### D. Prepare to install GitLab Runner locally

1. Depending on which OS you’re on, run the appropriate command(s):

   - In a **Linux** terminal:

       ```
     sudo gitlab-runner status
       ```

   - In a **macOS** terminal:

       ```
     gitlab-runner status
       ```

   - In a **Windows** PowerShell window:

       ```
     cd C:\GitLab-Runner
     ./gitlab-runner.exe status
       ```

2. If the command works (i.e., does not give an error), skip to Part F below. If the command doesn’t work, continue with the next section.


### E. Install the GitLab Runner binary on your computer

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


### F. Register a specific runner dedicated to your project

1. In your **CICD Demo** project, in the left navigation pane, click **Settings > CI/CD**.
1. Scroll down to the **Runners** section. Click the **Expand** button next to that section.
1. Within the **Specific runners** section, navigate to **Set up a specific runner manually**.
1. Copy the URL in step 2, labeled **Register the runner with this URL**.
1. Run the appropriate command(s) for your OS:
    - In a **Linux** terminal:

        ```sh
        sudo gitlab-runner register
        ```

   - In a **macOS** terminal:

       ```sh
       gitlab-runner register
       ```

    - In a normal (not elevated) **Windows** PowerShell window:

       ```powershell
       cd C:\GitLab-Runner
       ./gitlab-runner.exe register
       ```

1. When prompted, paste the URL you just copied.
1. Back on the GitLab page you were just on, copy the **registration token** from the same section as the URL you copied.
1. In the terminal, paste the registration token when prompted.
1. When prompted for the runner’s description, press `enter` to accept the default.
1. When prompted for the runner’s tags, press `enter` to assign it no tags.
1. When prompted for the executor, enter `shell`
1. Confirm that your gitlab-runner registered correctly by running the appropriate command(s) for your OS:
    - In a **Linux** terminal:

       ```sh
       sudo gitlab-runner list
       ```

    - In a **macOS** terminal:

       ```sh
       gitlab-runner list
       ```

     - In a normal (not elevated) **Windows** PowerShell window:

        ```powershell
        cd C:\GitLab-Runner
        ./gitlab-runner.exe list
        ```

1. If you’re on Windows, follow these additional instructions to configure your gitlab-runner to use the right command to start PowerShell:
    1. Open `C:\GitLab-Runner\config.toml` in a text editor.
    2. Change this line:

        ```toml
        shell = "pwsh"
        ```

       to this:

        ```toml
        shell = "powershell"
        ```

    3. Save the file.


## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
