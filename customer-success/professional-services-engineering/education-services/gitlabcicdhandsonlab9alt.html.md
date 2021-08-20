---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 9 (alternative)"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands On Guide: Lab 9 (alternative)
{:.no_toc}

## LAB 9: CODE QUALITY SCANNING

### Make a new project with code quality scanning enabled
The training environment disables code quality scanning by default. This section re-enables it just for one project.

1. Make a new blank project called `Code Quality Demo` in your training group namespace (not your user namespace), with the **Initialize repository with a README** checkbox enabled.
2. In that project, go to the left navigation pane and click **Settings > CI/CD**.
3. Next to the **Variables** section, click **Expand**.
4. Click **Add variable**.
5. Enter `CODE_QUALITY_DISABLED` in the **Key** field and a single space in the **Value** field. *Note: you can't simply leave the **Value** field blank.*
6. Uncheck the **Protect variable** flag, to make this setting apply to all branches and not just the protected **main** branch. 
7. Click **Add variable**.

### Add a Python file with code quality problems

1. In the left navigation pane, click **Repository > Files**.
2. Create a new file by going to the top of the window and clicking **+ > This directory > New file**
3. In the **File name** field, type `HelloWorld.py`
4. Paste this problematic Python code into the file's contents:

    ```python
    def hello_world(a, b, c, d, e, f, g):
        print("Hello world")
        # TODO: improve this function
    ```
5. In the **Commit message** field, type `add Python code`
6. Click `Commit changes`.


### Configure a CI/CD pipeline with code quality scanning

1. In the left navigation pane, click **Repsitory > Files**.
2. Near the top of the window, click **+ > This directory > New file**.
3. In the **File name** field, type `.gitlab-ci.yml` but do NOT select a value in the **Apply a template** dropdown.
4. Paste this YAML code into the file's contents. It does four things:
    * Define a single stage
    * Define a single job within that stage
    * Enable code quality scanning
    * Add a code quality problem to the CI/CD configuration file

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
5. In the **Commit message** field, type `add CI/CD configuration file that includes code quality scanning`
6. Click `Commit changes`.


### View code quality scan results

1. In the left navigation pane, click **CI/CD > Pipelines**.
2. The top row represents the pipeline that started running when you committed the `.gitlab-ci.yml` file in the previous section. Wait until the status icon at the left of that pipeline says **passed**. *It can take as long as 5 minutes for the code quality scanner to complete in the training environment, so this is a great time to grab a snack.*
3. Once the pipeline's status is **passed**, click the status icon to see the pipeline details.
4. On the pipeline details screen, click the **Code Quality** tab above the pipeline graph.
5. Notice that the scanner found 3 code quality issues in 2 different files: `HelloWorld.py` and `.gitlab-ci.yml`.


### Make a branch

1. In the left navigation pane, click **Repository > Branches**. 
2. Click **New branch**. In the **Branch name** field, type `branch-A`. Click **Create branch**.
3. Click **Create merge request** in the top right of the window. Leave all settings at their default values. Click **Create merge request**.


### Fix issues on the branch

1. In the left navigation pane, click **Repository > Files**.
2. In the branch dropdown in the top left of the window, pick **branch-A**.
3. Open `HelloWorld.py` and click **Edit**.
4. Fix a code quality problem by replacing line 1 with this code:

    ```python
    def hello_world(a):
   ```
   
5. Fix another code quality problem by deleting line 3.
6. Commit these changes with the commit message `fix code quality problems`


### Compare the code quality of **branch-A** to the code quality of **main**

1. In the left navigation pane, click **CI/CD > Pipelines**.
2. Wait for the most recent pipeline to show **passed** status. This might take as long as 5 minutes.
3. In the left navigation pane, click **Merge requests**. Click the **Draft: Branch A** MR to see the MR details page.
4. Find the pane half-way down the MR details page that says **No changes to code quality**. This is a GitLab bug. If you refresh the page, this pane will change to say **Code quality improved on 2 points**. This means that you have fixed 2 code quality problems on **branch-A** that still exist on **main**.
5. In the code quality pane, click **Expand** to see which code quality problems you have fixed on **branch-A**.


## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
