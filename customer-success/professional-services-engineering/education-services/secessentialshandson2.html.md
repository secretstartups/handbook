---
layout: handbook-page-toc
title: "GitLab Security Essentials<br/>Hands-On Guide: Lab 2"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Security Essentials course."
---
{:.no_toc}

## LAB 2: Enable, configure, and run Dependency Scanning

### A. Optional: Streamline your pipeline

Before beginning this lab and all later labs, you can optionally disable any scanners that you enabled in previous labs. This will speed up pipeline runs. You especially might want to disable the **DAST** scanner, since it can take a few minutes to complete. 

1. Return to the **Security Labs** project you created in Lab 1.
1. To disable a scanner, add a hash before the template that enables it in `.gitlab-ci.yml`. For example, to disable **Secret Detection** and **DAST**, make these edits to your existing `.gitlab-ci.yml`:

   ```yml
   include:
     - template: Security/SAST.gitlab-ci.yml
   #  - template: Security/Secret-Detection.gitlab-ci.yml
   #  - template: DAST.gitlab-ci.yml
   ```

1. If you do disable any scanners, you'll also need to comment out or remove any job definitions that you overrode while configuring the disabled scanners. For example, since you overrode the `secret_detection` job that was defined by the Secret Detection template, you must comment out that overriding job definition:

   ```yml
   # secret_detection:
   #   variables:
   #     SECRET_DETECTION_EXCLUDED_PATHS: tests/    
   ```

### B. Identify your project’s dependencies

1. Return to the **Security Labs** project you created in Lab 1.
1. Python-based projects list their dependencies in a file called `requirements.txt`. That file already exists in your project. Open it to see a list of the project’s dependencies.
1. Notice that your only dependency is version 2.0.0 of a machine learning library called **Keras**. Since it’s a complicated library, it has many dependencies of its own (although they’re not listed in `requirements.txt`). The Dependency Scanner will traverse all of these dependencies looking for security vulnerabilities. Considering that version of Keras was released in 2017, do you expect the Dependency Scanner to find any problems?


### C. Enable Dependency Scanning

You’ll enable Dependency Scanning by including a GitLab-provided template in your CI/CD configuration file. You can do this manually, or you can use the GitLab GUI to make a merge request that does it for you. Since you used the manual technique to enable SAST, Secret Detection, and DAST in the last lab, use the GUI to enable Dependency Scanning in this lab.

1. Navigate to **Security & Compliance > Configuration**.
1. In the **Dependency Scanning** pane, select **Configure with a merge request**. This does 3 things:
    1. Creates a new branch
    2. Adds a commit to the branch which edits your CI/CD configuration file to enable Dependency Scanning
    3. Redirects you to a page for creating an MR for that branch
1. On the MR creation page, leave all fields at their default values and select **Create merge request**. GitLab will redirect you to the details page for the MR you just created.
1. In the middle of the page, find the notification that a pipeline is running on the MR’s branch. It could take a few minutes for the pipeline to finish, even if you've disabled scans from the previous lab. Do **not** select **Merge when pipeline succeeds** in the MR, since that can lead to unexpected behavior. Instead, wait for the pipeline to finish (you can watch it by selecting **CI/CD > Pipelines** in the left navigation pane) and then select **Merge** in the MR. You might have to refresh the MR page to see this button.
1. In the left navigation pane, select **Repository > Files** and open `.gitlab-ci.yml`. Notice that the MR has added documentation at the top, reformatted the file, and added a Dependency Scanning template in the `include:` section.


### D. Configure and run Dependency Scanning

You configure Dependency Scanning by setting variables in your CI/CD configuration file. In this section you’ll change the Dependency Scanner's log level to `info`. 

1. In the left navigation pane, select **CI/CD > Editor**.
1. Add this job definition to the bottom of your CI/CD configuration file. It overrides an existing job that’s defined by the Dependency Scanning template. *Note that there are 2 hyphens and 1 underscore in the first line.*<br/>

    ```yml
   gemnasium-python-dependency_scanning:
     variables:
       SECURE_LOG_LEVEL: "info"
    ```
   
1. Commit this change to the **main** branch, using `change log level for Python dependency scanner` as a commit message. This commit triggers a pipeline run using your new Dependency Scanning configuration.
1. In the left navigation pane, select **CI/CD > Pipelines** and wait for the most recent pipeline to finish. If you want to watch its progress, go to the pipeline’s details page or the console for the **gemnasium-python-dependency_scanning** job. Remember that Dependency Scanning can take a few minutes to run.


### E. View and take action on vulnerabilities

1. In the left navigation pane, select **Security & Compliance > Vulnerability Report**.
1. In the **Tool** filter, select **Dependency Scanning**. Notice how many security vulnerabilities Dependency Scanning found in the 2017 Keras code.
1. Select the description of any vulnerability with **High** severity to learn more about it.
1. Your team decides not to fix this problem. Stay on the details page for the vulnerability you clicked on in the previous step, go to the **Status** dropdown in the top right of the page, select **Dismiss**, and select **Change status**.
1. Return to the Vulnerability Report, change the **Tool** filter back to **Dependency Scanning**, and select the description of another vulnerability with **High** severity.
1. Review the vulnerability's information by clicking on its entry. Change its **Status** to **Confirm**.
1. On the vulnerability details page you’re already on, select **Create issue** at the bottom right so you can track the vulnerability remediation work.
1. Assign the ticket to yourself and select **Create issue**.
1. Return to the Vulnerability Report. Notice that the vulnerability you just created an issue for has a link to that issue in the **Activity** column.
1. Select the description of another **High** severity vulnerability found by the Dependency Scanner, and change its status to **Resolve** to show that your team has fixed that problem.


## Suggestions?

If you’d like to suggest changes to the *GitLab Security Essentials Hands-on Guide*, please submit them via merge request.
