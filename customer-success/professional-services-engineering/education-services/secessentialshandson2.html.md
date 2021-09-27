---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands-On Guide: Lab 2"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands-On Guide: Lab 2
{:.no_toc}

## LAB 2: Enable, configure, and run Dependency Scanning

### Identify your project’s dependencies

Python projects list their dependencies in a file called `requirements.txt`. That file already exists in your project.

1. Open `requirements.txt` to see what your project’s dependencies are.
2. Notice that your only dependency is version 2.0.0 of a machine learning library called Keras. Since it’s a complicated library, it has many dependencies of its own (although they’re not listed in `requirements.txt`). The Dependency Scanner will traverse all of these dependencies looking for security vulnerabilities. Considering that version of Keras was released in 2017, do you expect the Dependency Scanner to find any problems?


### Enable Dependency Scanning

You’ll enable Dependency Scanning by including a GitLab-provided template in your CI/CD configuration file. You can do this manually, or you can use the GitLab GUI to make a merge request that does it for you. Since you used the manual technique to enable SAST, Secret Detection, and DAST in the last lab, let’s try something different and use the GUI to enable Dependency Scanning in this lab.

1. Open the **Security Lab** project that you created in the last lab.
2. Navigate to **Security & Compliance > Configuration**.
3. In the **Dependency Scanning** row, click **Configure via Merge Request**. This does 3 things:
    1. Creates a new branch
    2. Adds a commit to the branch which edits your CI/CD configuration file to enable Dependency Scanning
    3. Redirects you to a page for creating an MR for that branch
4. On the MR creation page, leave all fields at their default values and click **Create merge request**. GitLab will redirect you to the details page for the MR you just created. In the middle of the page, find the notification that a pipeline is running on the MR’s branch.
5. When the pipeline finishes, click **Merge**. You might have to refresh your page to see this button.
6. In the left navigation pane, click **Repository** and open `.gitlab-ci.yml`. You should see the Dependency Scanning template under the `include:` section. The MR has changed the formatting of this file and added documentation comments at the top, but don’t worry. Your pipeline still works exactly like it did before, but now includes Dependency Scanning.


### Configure Dependency Scanning

You configure Dependency Scanning by setting variables in your CI/CD configuration file. In the last lab you set the default log level for all scanners to `debug`. In this section you’ll change the default log level *just for the Dependency Scanner* to `info`. 

1. In the left navigation pane, click **CI/CD > Editor**.
2. Add this job definition to the bottom of your CI/CD configuration file. It overrides an existing job that’s defined by the Dependency Scanning template. *Note that there are 2 dashes and 1 underscore in the first line.*<br/>

    ```yml
   gemnasium-python-dependency_scanning:
     variables:
       SECURE_LOG_LEVEL: "info"
    ```


### Run Dependency Scanning

GitLab started a pipeline when you committed a change to the CI/CD configuration file in the last section. Since you’ve already enabled and configured Dependency Scanning, it will be run as part of the pipeline.

1. In the left navigation pane, click **CI/CD > Pipelines** and wait for the most recent pipeline to finish. If you want to watch its progress, go to the pipeline’s details page or the console for the **gemnasium-python-dependency_scanning** job.


### View and take action on vulnerabilities

1. In the left navigation pane, click **Security & Compliance > Vulnerability Report**.
2. In the **Scanner** filter, select **Dependency Scanning**. Notice how many security vulnerabilities Dependency Scanning found in the 2017 Keras code.
3. Click the description of any vulnerability with **High** severity to learn more about it.
4. Your team decides not to fix this problem, so go to the **Status** dropdown in the top right of the page, select **Dismiss**, and click **Change status**.
5. Return to the Vulnerability Report, change the **Scanner** filter back to **Dependency Scanning**, and click the description of another **High** vulnerability.
6. Review the vulnerability information, but this time change its **Status** to **Confirm**.
7. On the vulnerability details page you’re already on, click **Create issue** at the bottom right so you can track the vulnerability remediation work.
8. Assign the ticket to yourself and click **Create issue**.
9. Return to the Vulnerability Report. Notice that the vulnerability you just created an issue for has a link to that issue in the **Activity** column.
10. Click the description of another **High** severity vulnerability found by the Dependency Scanner, and change its status to **Resolved** to show that your team has fixed that problem.


### Review Dependency Scanning artifacts

1. In the left navigation pane, click **CI/CD > Pipelines**.
2. In the row for the most recent pipeline, click the three-dot menu at the far right.
3. Download and review the JSON report that the “Gemnasium” dependency scanner for Python produced.


## Suggestions?

If you’d like to suggest changes to the *GitLab Security Essentials Hands-on Guide*, please submit them via merge request.
