---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 9 (alternative)"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands On Guide: Lab 9 (alternative)
{:.no_toc}

## LAB 9: CODE QUALITY SCANNING

### Create a new project and enable code quality scanning
The training environment disables code quality scanning by default. This section re-enables it for just this project.

1. Make a new blank project called `Code Quality Demo` in your training group namespace (not your user namespace), with the **Initialize repository with a README** checkbox enabled.
1. In the project, go to the left navigation pane and click **Settings > CI/CD**.
1. Next to the **Variables** section, click **Expand**.
1. Click **Add variable**.
1. Enter `CODE_QUALITY_DISABLED` in the **Key** field and a single space in the **Value** field. *Note: you can't simply leave the **Value** field blank.*
1. Uncheck the **Protect variable** flag, to make this setting apply to all branches and not just the protected **main** branch. 
1. Click **Add variable**.

### Add a Python file with code quality problems
1. In the left navigation pane, click **Repository > Files**.
1. Create a new file by going to the top of the window and clicking **+ > This directory > New file**
1. For the **File name**, type `HelloWorld.py`
1. Paste the following Python code into the file's contents:

    ```python
    def hello_world(a, b, c, d, e, f, g):
        print("Hello world")
        # TODO: improve this function
    ```
1. In the **Commit message** field, type `Add Python code`
1. Click `Commit changes`.


### Configure the .gitlab-ci.yml with code quality scanning

1. In the left navigation pane, click **Repsitory > Files**.
1. Near the top of the window, click **+ > This directory > New file**.
1. In the **File name** field, type `.gitlab-ci.yml` and make sure NOT to select .gitlab-ci.yml value in the **Apply a template** dropdown.
1. Paste this YAML code into the file's contents. It does four things:
    * Defines a single stage
    * Defines a single job within that stage
    * Enables code quality scanning
    * Adds a code quality problem to `.gitlab-ci.yml`

    ```yml
    stages:
      - test
    
    test-job:
      stage: test
      script:
        - echo "Pipeline needs at least one job"

    include:
      - template: Code-Quality.gitlab-ci.yml
   
    # TODO: should we refactor this file?
    ```
1. In the **Commit message** field, type `Add CI/CD configuration file that includes code quality scanning`
1. Click `Commit changes`.


### View code quality scan results

1. In the left navigation pane, click **CI/CD > Pipelines**.
1. The top row represents the pipeline that started running when you committed the `.gitlab-ci.yml` file in the previous section. Wait until the status icon at the left of that pipeline says **passed**. 
> It can take as long as 5 minutes for the code quality scanner to complete in the training environment, so this is a great time to grab a snack.
1. Once the pipeline's status is **passed**, click the status icon to see the pipeline details.
1. On the pipeline details screen, click the **Code Quality** tab above the pipeline graph.
1. Notice that the scanner found 3 code quality issues in 2 different files: 2 in `HelloWorld.py` and 1 in `.gitlab-ci.yml`.


### Make a branch

1. In the left navigation pane, click **Repository > Branches**. 
1. Click **New branch**. In the **Branch name** field, type `branch-A`. 
1. Click **Create branch**.
1. Click **Create merge request** in the top right of the window. Leave all settings at their default values. 
1. Click **Create merge request**.


### Fix issues on the branch

1. In the left navigation pane, click **Repository > Files**.
1. In the branch dropdown in the top left of the window, pick **branch-A**.
1. Open `HelloWorld.py` and click **Edit**.
1. Fix a code quality problem by replacing line 1 with this code:

   ```python
    def hello_world(a):
   ```
   
1. Fix another code quality problem by deleting line 3.
1. Commit these changes with the commit message `Fix code quality problems`


### Compare the code quality of **branch-A** to the code quality of **main**

1. In the left navigation pane, click **CI/CD > Pipelines**.
1. Wait for the most recent pipeline to show **passed** status. This might take as long as 5 minutes.
1. In the left navigation pane, click **Merge requests**. Click the **Draft: Branch A** MR to see the MR details page.
1. Half-way down the MR details page, it says **No changes to code quality**. If you refresh the page, the pane will change to say **Code quality improved on 2 points**. This means you have fixed 2 code quality problems on **branch-A** which remain unfixed on **main**.
1. **Expand** the code quality pane to see the code quality problems you fixed on **branch-A**.
1. To transport or save the results of code quality scanning, the json artifact is available on the Pipelines page by clicking on the verticle ellipses right of the page.  


## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
