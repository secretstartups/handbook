---
aliases: /handbook/customer-success/professional-services-engineering/education-services/sysadminhandsonlab3.html
title: "GitLab System Administration Hands-on Guide: Lab 3"
description: "This hands-on lab guide is designed to walk you through the lab exercises used in the GitLab System Administration course."
---

# GitLab System Administration Hands-on Guide: Lab 3


## LAB 3- CONFIGURE GITLAB RUNNERS

### A. Install the gitlab-runner package

1. Use your assigned IP address and SSH key file to log into your **GitLab Runner** server (*not* your Omnibus server).

     ```
   ssh -i YOUR_ASSIGNED_SSH_KEYFILE ec2-user@YOUR_RUNNER_SERVER_PUBLIC_IP
     ```

     Press <kbd>Enter</kbd>
2. If your system displays an authentication warning, type `yes` and press <kbd>Enter</kbd>
3. Add the GitLab Runner installation repository.

     ```
   curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.rpm.sh" | sudo bash
     ```

4. Install the GitLab Runner agent.

     ```
   sudo dnf install -y gitlab-runner
     ```

5. Once the install completes, check that the service is running.

     ```
   sudo gitlab-runner status
     ```


### B. Register a runner with GitLab

1. Sign into your GitLab instance with a web browser and select **Menu > Admin**.
2. In the left sidebar, under **Overview**, select **Runners**.
3. Select the **Register an instance runner** dropdown, and copy the registration token to your clipboard.
4. Return to your SSH session on your GitLab Runner server. Run the following command to begin the registration process.

     ```
   sudo gitlab-runner register
     ```

5. Enter `http://GITLAB_INSTANCE_PUBLIC_IP` as the GitLab instance URL. Press <kbd>Enter</kbd> after completing this and the remaining prompts.
6. Paste the registration token when prompted. Press <kbd>Enter</kbd>.
7. Enter an optional description for the runner. Press <kbd>Enter</kbd>.
8. When prompted to enter tags for the runner, press <kbd>Enter</kbd> through the prompt without specifying any tags.
9. When prompted for an optional maintenance note, press <kbd>Enter</kbd> to bypass that step.
10. When prompted to select a runner executor, type `shell`. Press <kbd>Enter</kbd>.
11. Run `sudo gitlab-runner list` to verify the runner after registration.
12. Return to your web browser and refresh the **Runners** page on your GitLab instance. Verify the runner you registered appears in the list and shows as online.

### C. Test the runner with a CI/CD pipeline

1. From GitLab in your web browser, select **Menu > Projects > Your projects**.
2. Select **New project**.
3. Select **Create blank project**.
4. Enter `CICD Test` as the project name. Leave all other settings as they are and click **Create project**.
5. In the middle of the project landing page, under the project title, select the **+** dropdown. Select **New file**.
6. On the new file page, enter `.gitlab-ci.yml` as the file name.
7. Paste the following code into the body of the file.

    ```yml
    stages:
      - build
      - test

    build_app:
      stage: build
      script:
        - echo "The build stage requires at least one job"

    test_app:
      stage: test
      script:
        - echo "The test stage requires at least one job"
    ```

8. Select **Commit changes**.
9. In the left sidebar, select **CI/CD > Pipelines**.
10. Select the pipeline status (it should say **passed**).
11. Click into each of the **build_app** and **test_app** jobs to see the job logs and commands that were executed on the runner.

### SUGGESTIONS?

If you’d like to suggest changes to the GitLab System Admin Basics Hands-on Guide, please submit them via merge request.

