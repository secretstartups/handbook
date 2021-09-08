---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands-On Guide: Lab 1"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands-On Guide: Lab 1
{:.no_toc}

## LAB 1: Enable, configure, and run SAST, Secret Detection, and DAST

*Important note: make sure you understand any code that you are asked to copy and paste in this lab. Ask your instructor to explain any code that’s not clear.*


### Create a project

1. In the top navigation bar, click **Menu > Groups > Your Groups**.
    + If you are in an instructor-led class, expand the arrow to the left of the **Training Users** group. Expand the arrow to the left of your session’s subgroup. Open the subgroup called **My Test Group - \<USERNAME\>**.
    + If you are in the self-paced environment, open the group called **My Test Group - \<USERNAME\>**.
1. Click **New Project**.
1. Click **Create from template**. Click the **Instance** tab. Next to the **GitLab Security Essentials - SAST and Secret Detection and DAST** template, click **Use template**.
1. In the **Project name** field, enter `SAST and Secret Detection and DAST`
1. Under **Visibility Level**, select **Private**.
1. Click **Create project**.


### Create a CI/CD configuration file

1. Create a new file in the **main** branch by clicking **+ > This directory > New file**.
1. In the **File name** field type `.gitlab-ci.yml`
1. Define a single **test** stage and a dummy job (each pipeline requires at least one job definition) by pasting this into your CI/CD configuration file:

    ```yml
   stages:
     - test

   dummy-job:
     stage: test
     script:
       - echo "pipeline must contain at least 1 job definition"
    ```

### Enable and configure SAST

1. Enable SAST by pasting this at the end of your CI/CD configuration file:

    ```yml
   include:
     - template: Security/SAST.gitlab-ci.yml
    ```
1. Configure one of the two Python SAST scanners to ignore test files, by pasting this at the end of your CI/CD configuration file:

    ```yml
   variables:
     SAST_BANDIT_EXCLUDED_PATHS: "tests/"
    ```
   
### Enable and configure Secret Detection

1. The Secret Detection job belongs to the **test** stage by default. Since your CI/CD configuration file already defines that stage, you don’t need to define it again.
2. Enable Secret Detection by pasting this line at the end of the existing `include:` section in your CI/CD configuration file, below the template for SAST. Remember to use correct indentation.

    ```yml
     - template: Security/Secret-Detection.gitlab-ci.yml
    ```

3. SAST and DAST are configured by setting global variables, but Secret Detection is configured by overriding the **secret_detection** job and setting variables inside that job definition.<br/><br/>Configure Secret Detection to ignore test files by pasting this job definition at the end of your CI/CD configuration file. The first line should be flush-left.

    ```yml
   secret_detection:
     variables:
       SECRET_DETECTION_EXCLUDED_PATHS: "tests/"
    ```

### Enable and configure DAST

1. Since the default DAST job belongs to a stage called **dast**, you need to define that stage by pasting this line at the end of the existing `stages:` section. Remember to use correct indentation.

    ```yml
     - dast
    ```
   
1. Enable DAST by pasting this line at the end of the existing `include:` section in your CI/CD configuration file, below the template for Secret Detection. Remember to use correct indentation.

    ```yml
     - template: DAST.gitlab-ci.yml
    ```

1. Since the training environment lacks the infrastructure for hosting web apps, we’ll configure DAST to scan an outside web app instead of scanning a running instance of this project’s code. This isn’t how you would normally use DAST scanning, but it will produce some DAST results for you to view.<br/><br/>Paste this line at the end of the existing global `variables:` section (not the `variables:` section inside the `secret_detection` job definition). Remember to use correct indentation.

    ```yml
     DAST_WEBSITE: https://example.com
    ```


### Verify your completed CI/CD configuration file

1. When you’re done with the edits described above, your `.gitlab-ci.yml` file should look like this. Make any additional edits necessary to match this code.

    ```yml
   stages:
     - test
     - dast
   
   dummy-job:
     stage: test
     script:
       - echo "pipeline must contain at least 1 job definition"
   
   include:
     - template: Security/SAST.gitlab-ci.yml
     - template: Security/Secret-Detection.gitlab-ci.yml
     - template: DAST.gitlab-ci.yml
   
   variables:
     SAST_BANDIT_EXCLUDED_PATHS: "tests/"
     DAST_WEBSITE: https://example.com
   
   secret_detection:
     variables:
       SECRET_DETECTION_EXCLUDED_PATHS: "tests/"
    ```

### Commit your changes

1. Commit your `.gitlab-ci.yml` changes to the **main** branch, using an appropriate commit message.
1. In the left navigation pane, click **CI/CD > Pipelines**. Click the status icon to the left of the most recent pipeline, which was triggered by the commit you just made.
1. Identify the SAST, Security Detection, and DAST jobs. Notice that SAST scanning for Python involves 2 separate jobs. Click on any jobs if you’d like to monitor their progress. Refresh the page until all the scanning jobs complete successfully. *Note: DAST can take up to 90 seconds to run against `https://example.com`.*
1. In the next lab you’ll look at any security vulnerabilities found by the scanners, so there’s no need to inspect them carefully now.


## Suggestions?

If you’d like to suggest changes to the *GitLab Security Essentials Hands-On Guide*, please submit them via merge request.

