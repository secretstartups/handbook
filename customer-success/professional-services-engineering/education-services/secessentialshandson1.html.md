---
layout: handbook-page-toc
title: "GitLab Security Essentials<br/>Hands-On Guide: Lab 1"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Security Essentials course."
---
{:.no_toc}

## LAB 1: Enable, configure, and run SAST, Secret Detection, and DAST

*Important: make sure you understand any code that you are asked to copy and paste in any lab. Ask your instructor to explain any code that’s not clear.*

In this lab you’ll enable SAST, Secret Detection, and DAST scans for a GitLab project. After the scans run in a CI/CD pipeline, you'll view the results of all 3 scans. You’ll mark a vulnerability for future action, and you’ll dismiss a different vulnerability. Finally, you’ll fix a vulnerability on a branch and introduce a new vulnerability on that same branch, so you can view the differences in vulnerabilities between default and non-default branches.


### A. Create a project

You'll create a project from a template, so it's pre-populated with various files that will be useful for this and later labs.

1. In the top navigation bar, select **Menu > Groups > Your groups**.
    + If you are in an instructor-led class, expand the arrow to the left of the **Training Users** group. Expand the arrow to the left of your session’s subgroup. Open the subgroup called **My Test Group - \<USERNAME\>**.
    + If you are in the self-paced environment, open the group called **My Test Group - \<USERNAME\>**.
1. Select **New project**.
1. Select **Create from template**. Select the **Instance** tab. Next to the **Security Essentials Labs** template, select **Use template**.
1. In the **Project name** field, enter `Security Labs`
1. In the **Project URL** field, select the dropdown for the second half of the URL to make sure it’s pointing to a **group name** and not a **username**. You should create this project inside a group, not directly in your user’s namespace.
1. Under **Visibility Level**, if multiple options are available, select **Private**.
1. Select **Create project**.


### B. Create a CI/CD configuration file

1. Create a new file in the **main** branch by selecting **(+) > This directory > New file**.
1. In the **File name** field type `.gitlab-ci.yml`
1. Define a single **test** stage and a dummy job by pasting this into your new `.gitlab-ci.yml` file:

    ```yml
   stages:
     - test

   dummy-job:
     stage: test
     script:
       - echo "pipeline must contain at least 1 job definition"
    ```

### C. Enable and configure SAST

1. Enable SAST by pasting this at the end of `.gitlab-ci.yml`:

    ```yml
   include:
     - template: Security/SAST.gitlab-ci.yml
    ```
1. One configuration option for SAST is to tell it not to scan certain files, such as the files in your project’s `docs/` directory. This directory typically doesn't contain deployable code, so SAST can save time by not scanning it.<br/><br/>One of the Python-based SAST scanners is called Bandit. To configure Bandit to skip those files, define a new global variable at the end of `.gitlab-ci.yml`:

    ```yml
   variables:
     SAST_BANDIT_EXCLUDED_PATHS: docs/
    ```
   
### D. Enable and configure Secret Detection

1. The Secret Detection job belongs to the **test** stage by default. Since your `.gitlab-ci.yml` already defines that stage, you don’t need to define it again.
1. Enable Secret Detection by pasting this line at the end of the existing `include:` section in `.gitlab-ci.yml`, below the template for SAST. Remember to use correct indentation.

    ```yml
     - template: Security/Secret-Detection.gitlab-ci.yml
    ```

1. As you've already seen, the most common way of configuring SAST to do something other than its default behavior is to set global variables in `.gitlab-ci.yml`. In contrast, to configure Secret Detection to use non-default behavior, you override the **secret_detection** job definition and add variables inside it.<br/>
<br/>
Configure Secret Detection to ignore test files by pasting this job definition at the end of `.gitlab-ci.yml`. The first line should be flush-left.

    ```yml
   secret_detection:
     variables:
       SECRET_DETECTION_EXCLUDED_PATHS: tests/
    ```

### E. Enable and configure DAST

1. Since the default DAST job belongs to a stage called **dast**, you need to define that stage by pasting this line at the end of the existing `stages:` section. Remember to use correct indentation.

    ```yml
     - dast
    ```
   
1. Enable DAST by pasting this line at the end of the existing `include:` section in `.gitlab-ci.yml`, below the template for Secret Detection. Remember to use correct indentation.

    ```yml
     - template: DAST.gitlab-ci.yml
    ```

1. Normally you would run DAST against your project's code running in either a review environment or a production environment. Since the code in this project is just a single dummy Python file instead of a deployable web app, you’ll configure DAST to scan an outside web app *that has nothing to do with the code in this project.*<br/><br/>Paste this line at the end of the existing global `variables:` section (not the `variables:` section inside the `secret_detection` job definition). Remember to use correct indentation.

    ```yml
     DAST_WEBSITE: https://example.com
    ```


### F. Verify your completed CI/CD configuration file

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
     SAST_BANDIT_EXCLUDED_PATHS: docs/
     DAST_WEBSITE: https://example.com
   
   secret_detection:
     variables:
       SECRET_DETECTION_EXCLUDED_PATHS: tests/
    ```

### G. Commit your changes

1. Commit your `.gitlab-ci.yml` changes to the **main** branch, using an appropriate commit message.
1. In the left navigation pane, select **CI/CD > Pipelines**. Select the status icon to the left of the most recent pipeline, which was triggered by the commit you just made.
1. Identify the SAST, Secret Detection, and DAST jobs. Notice that SAST scanning for Python involves 2 separate jobs. Select any jobs whose progress you’d like to monitor. Wait for all jobs to finish.

    > DAST can take up to 90 seconds to run against `https://example.com`.


### H. View the Vulnerability Report

The Vulnerability Report shows all vulnerabilities in *the latest commit to the default branch.* Think of this as the baseline set of vulnerabilities that you’ll compare to vulnerabilities on other branches later on.

1. In the left navigation pane, select **Security & Compliance > Vulnerability Report**. Looking at the **Tool** column, you’ll see 1 problem found by SAST, 1 problem found by Secret Detection, and several problems found by DAST.
1. Select some vulnerabilities to learn more about them, and to see where they occur in the code.
1. Experiment with the **Status**, **Severity**, and **Tool** filters.


### I. Take action

When the security scanners find vulnerabilities, you need to keep track of whether they should be fixed or ignored. You do this by setting a vulnerability’s **status**. There are several ways to do so, but in this lab you’ll set status inside the Vulnerability Report.

1. Return to the Vulnerability Report, if you’ve navigated away.
1. Let’s say the Social Security number in your code is randomly generated, so exposing it is not a real vulnerability. Select the checkbox next to the **Social Security Number detected** vulnerability. In the **Set status** dropdown, select **Dismiss**. Select **Change status**.
1. Let’s say your team is concerned about the unhandled exception vulnerability and intends to fix it. Select the checkbox next to the **Try, Except, Pass detected** vulnerability. In the **Set status** dropdown, select **Confirm**. Select **Change status**.
1. Double check that the 2 vulnerabilities you just triaged have the expected values in the **Status** column of the Vulnerability Report.
1. Normally you would set the status of *all* the vulnerabilities, but for this lab you can leave the rest of them set to the default **Detected** status.


### J. Make a branch and an MR

You’ll need a branch and an MR to fix the unhandled exception vulnerability.

1. In the left navigation pane, select **Repository > Branches**.
1. Select **New branch**.
1. Name the branch `fix-unhandled-exception`
1. You’ll be returned to the **Files** page for the **fix-unhandled-exception** branch. Select **Create merge request** in the top right corner of the page.
1. Delete the **Draft:** prefix from the MR’s title, but otherwise leave all details at their default values.
1. Select **Create merge request**.


### K. Fix a vulnerability in the **fix-unhandled-exception** branch

In this section use the **Web IDE** instead of the **Edit** feature, so you can include several edited files in a single commit.

1. Select **Open in Web IDE** so you can fix the unhandled exception. Double-check that you’re editing files on the **fix-unhandled-exception** branch.
1. Open `HelloWorld.py` in the Web IDE.
1. Fix the SAST vulnerability by changing line 8 from `pass` to `handle_exception()`. Don’t change the line’s indentation. *Don’t commit your changes yet.*
1. Introduce a new vulnerability (pretend this is accidental!) by adding a private key to your repository.
   1. Use the Web IDE to create a new file called `id_rsa` at the project’s root level.
   1. Paste these contents into `id_rsa`.

       ```
      -----BEGIN RSA PRIVATE KEY-----
      Proc-Type: 4,ENCRYPTED
      DEK-Info: DES-EDE3-CBC,86C3F4011519BFBB
      PxyzMAlAmEu/Qkx9nPh696SU7/MjXpCpOnfFiijLhJumNcRlWgsOiI9rfwlkh4aN
      -----END RSA PRIVATE KEY-----
       ```

1. Use the Web IDE to commit your changes to the **fix-unhandled-exception** branch with the commit message `Fix 1 vulnerability and add 1 vulnerability`


### L. View vulnerabilities in the pipeline details page

Recall that the Vulnerability Report shows all vulnerabilities in the latest commit on the default branch. The pipeline details page is different: it shows all vulnerabilities *in the latest commit on the branch the pipeline ran against, whether it's a default or non-default branch.*

1. In the bottom left of the page, select the link to the pipeline that was triggered when you committed your last changes.
1. Once all the pipeline jobs finish, select the **Security** tab on the pipeline details page.
1. Confirm that there is an entry for your newly introduced vulnerability (the RSA private key).
1. Confirm that there is **no** entry for the vulnerability you fixed (the unhandled exception).
1. Recall that any vulnerabilities found by DAST are from the `https://example.com` URL you configured DAST to scan, and not from your project's code.


### M. View a “diff” view of vulnerabilities in the MR

Viewing vulnerabilities in an MR lets you see how the vulnerabilities on the MR’s branch compare to the vulnerabilities in the default branch. This lets you know if your branch is fixing or adding vulnerabilities (or both).

1. In the left navigation pane, select **Merge requests** and select the **Fix unhandled exception** MR.
1. In the middle of the MR, in the security scanning pane, select **Expand**.
1. Review the vulnerabilities reported by SAST, Secret Detection, and DAST. Confirm these details:
   + SAST detected no vulnerabilities on this branch. This means it detected no *new* vulnerabilities on this branch that were not already on the default branch.
   + The "Try, Except, Pass detected" vulnerability is listed as **Fixed**, since you fixed it on this branch.
   + It's common to configure DAST to scan different URLs depending on which branch the pipeline is running against. For example, you might configure it to scan the production environment if the pipeline is running on the default branch, but scan a review app if the pipeline is running on a non-default branch.<br/><br/>DAST detected no vulnerabilities at `https://example.com`, which is the URL you configured it to scan during this particular pipeline run. This means it found no *new* vulnerabilities at the URL that this pipeline told it to scan, compared to the vulnerabilities it found at the URL that the last default branch pipeline told it to scan. Since you've configured all pipeline runs to run DAST against the same URL, this is expected.
   + Secret Detection lists 1 *new* vulnerability (the private RSA key that you added) and 1 *fixed* vulnerability (the Social Security number, which is considered to be fixed since you changed its status to **Dismissed**).


### N. Merge your branch and resolve the fixed vulnerability

1. In the MR, select **Merge**.
1. In the left navigation pane, select **CI/CD > Pipelines** and select the status icon of the pipeline that triggered when you merged your branch.
1. Once all the jobs have finished, select **Security & Compliance > Vulnerability Report**.
1. Hover over the wrench to the right of the **Try, Except, Pass detected** vulnerability. You’ll see a message that the vulnerability has been fixed and is no longer detected.
1. Select the checkbox next to the **Try, Except, Pass detected** vulnerability. In the **Set status** dropdown, select **Resolve**. Select **Change status**.


## Suggestions?

If you’d like to suggest changes to the *GitLab Security Essentials Hands-On Guide*, please submit them via merge request.
