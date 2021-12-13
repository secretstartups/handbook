---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands-On Guide: Lab 2"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands-On Guide: Lab 2
{:.no_toc}

## LAB 2: Enable, configure, and run Dependency Scanning

### Streamline your pipeline **(Optional)**

Before beginning each lab, you can optionally disable any scanners that you enabled in previous labs. This will speed up pipeline runs. The **DAST** scan is good to disable, since it can take a few minutes to complete. 

To disable a scanner, add a hash before the template that enables it in `.gitlab-ci.yml`. For example, to disable **Secret Detection** and **DAST**, make these edits to your existing `.gitlab-ci.yml` content:

```yml
include:
  - template: Security/SAST.gitlab-ci.yml
#  - template: Security/Secret-Detection.gitlab-ci.yml
#  - template: DAST.gitlab-ci.yml
```

If you do disable any scanners, you'll also need to comment out any job definitions that you overrode while configuring the disabled scanners. For example, since you overrode the `secret_detection` job that was defined by the Secret Detection template, comment out that overriding job definition:

```yml
# secret_detection:
#   variables:
#     SECRET_DETECTION_EXCLUDED_PATHS: "tests/"    
```


### Identify your project’s dependencies

1. Return to the **Security Labs** project you created in Lab 1.
1. Python-based projects list their dependencies in a file called `requirements.txt`. That file already exists in your project. Open it to see a list of the project’s dependencies.
1. Notice that your only dependency is version 2.0.0 of a machine learning library called Keras. Since it’s a complicated library, it has many dependencies of its own (although they’re not listed in `requirements.txt`). The Dependency Scanner will traverse all of these dependencies looking for security vulnerabilities. Considering that version of Keras was released in 2017, do you expect the Dependency Scanner to find any problems?


### Enable Dependency Scanning

You’ll enable Dependency Scanning by including a GitLab-provided template in your CI/CD configuration file. You can do this manually, or you can use the GitLab GUI to make a merge request that does it for you. Since you used the manual technique to enable SAST, Secret Detection, and DAST in the last lab, use the GUI to enable Dependency Scanning in this lab.

1. Navigate to **Security & Compliance > Configuration**.
1. In the **Dependency Scanning** row, click **Configure via Merge Request**. This does 3 things:
    1. Creates a new branch
    2. Adds a commit to the branch which edits your CI/CD configuration file to enable Dependency Scanning
    3. Redirects you to a page for creating an MR for that branch
1. On the MR creation page, leave all fields at their default values and click **Create merge request**. GitLab will redirect you to the details page for the MR you just created. In the middle of the page, find the notification that a pipeline is running on the MR’s branch.
1. It could take a few minutes for the pipeline to finish, depending on whether you've disabled scans from the previous lab. Do **not** click **Merge when pipeline succeeds** in the MR, since that can lead to unexpected behavior. Instead, wait for the pipeline to finish (you can watch it by clicking **CI/CD > Pipelines** in the left navigation pane) and then click **Merge** in the MR. You might have to refresh the MR page to see this button.
1. In the left navigation pane, click **Repository > Files** and open `.gitlab-ci.yml`. Notice that the MR has added documentation at the top, reformatted the file, and added a Dependency Scanning template in the `include:` section.


### Configure Dependency Scanning

You configure Dependency Scanning by setting variables in your CI/CD configuration file. In the last lab you set the default log level for all scanners to `debug`. In this section you’ll change the default log level *just for the Dependency Scanner* to `info`. 

1. In the left navigation pane, click **CI/CD > Editor**.
1. Add this job definition to the bottom of your CI/CD configuration file. It overrides an existing job that’s defined by the Dependency Scanning template. *Note that there are 2 dashes and 1 underscore in the first line.*<br/>

    ```yml
   gemnasium-python-dependency_scanning:
     variables:
       SECURE_LOG_LEVEL: "info"
    ```
   
1. Commit this change to the **main** branch, using `change log level for Python dependency scanner` as a commit message. This commit triggers a pipeline run using your new Dependency Scanning configuration.
1. In the left navigation pane, click **CI/CD > Pipelines** and wait for the most recent pipeline to finish. If you want to watch its progress, go to the pipeline’s details page or the console for the **gemnasium-python-dependency_scanning** job.


### View and take action on vulnerabilities

1. In the left navigation pane, click **Security & Compliance > Vulnerability Report**.
1. In the **Scanner** filter, select **Dependency Scanning**. Notice how many security vulnerabilities Dependency Scanning found in the 2017 Keras code.
1. Click the description of any vulnerability with **High** severity to learn more about it.
1. Your team decides not to fix this problem, so go to the **Status** dropdown in the top right of the page, select **Dismiss**, and click **Change status**.
1. Return to the Vulnerability Report, change the **Scanner** filter back to **Dependency Scanning**, and click the description of another **High** vulnerability.
1. Review the vulnerability information, but this time change its **Status** to **Confirm**.
1. On the vulnerability details page you’re already on, click **Create issue** at the bottom right so you can track the vulnerability remediation work.
1. Assign the ticket to yourself and click **Create issue**.
1. Return to the Vulnerability Report. Notice that the vulnerability you just created an issue for has a link to that issue in the **Activity** column.
1. Click the description of another **High** severity vulnerability found by the Dependency Scanner, and change its status to **Resolved** to show that your team has fixed that problem.


## Suggestions?

If you’d like to suggest changes to the *GitLab Security Essentials Hands-on Guide*, please submit them via merge request.
