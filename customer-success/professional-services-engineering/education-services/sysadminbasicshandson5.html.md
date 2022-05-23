---
layout: handbook-page-toc
title: "GitLab System Admin Basics Hands On Guide- Lab 5"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab System Admin Basics course."
---
# GitLab System Admin Basics Hands On Guide- Lab 5
{:.no_toc}

## LAB 5- GITLAB RUNNER REGISTRATION

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

2. If the command works, you already have GitLab Runner installed. Skip to **Register a GitLab runner to your instance**.  

If the command doesn’t work, continue with the next section.


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

### Register a GitLab Runner to your instnace

1. From your GitLab instance, navigate to **Menu** > **Admin** > **Overview** > **Runners**.
2. Note the section **Register the runner with this URL**. We would ordinarily register the runner using the instance URL. However, because we did not configure DNS during installation, we will instead register using the instance IP address.
3. Run the appropriate command(s) for your OS:
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
4. When prompted, enter the instance IP address (the same IP address used to SSH into the training virtual machine).
5. Back on the GitLab page you were just on, copy the **registration token** shown underneath the instance URL.
6. In the terminal, paste the registration token when prompted.
7. When prompted for the runner’s description, press <kbd>Enter</kbd> to accept the default.
8. When prompted for the runner’s tags, press <kbd>Enter</kbd> to assign it no tags.
9. When prompted for the executor, enter `docker`.
10. When prompted for the default image, enter `alpine:latest`.
11. Confirm that your gitlab-runner registered correctly by running the appropriate command(s) for your OS:
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
    
12. If you’re on Windows, follow these additional instructions to configure your gitlab-runner to use the right command to start PowerShell:
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

### SUGGESTIONS?

If you’d like to suggest changes to the GitLab System Admin Basics Hands-on Guide, please submit them via merge request.

