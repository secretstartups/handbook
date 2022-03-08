---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands-On Guide: Lab 4"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands-on Guide: Lab 4
{:.no_toc}

## LAB 4: BUILD A `.gitlab-ci.yml` FILE

### A. Create a new project and add a CI/CD configuration file

1. Navigate to your group, select **New project**, and select **Create blank project**.
1. Name your project `CI Test`
1. Make sure the **Visibility Level** is set to **Private**.
1. Enable the **Initialize repository with a README** checkbox.
1. Select **Create project** and wait for GitLab to redirect you to the new project’s main page.
1. Find the **+** dropdown a few lines below the project’s title. Create a new file by selecting **(+) > This directory > New file**
1. In the **File name** dialog box enter `.gitlab-ci.yml`
1. If it’s not already selected, select **.gitlab-ci.yml** in the next dropdown to the right, which selects a file template.
1. In the **Apply a template** dropdown, select **General > Bash**. This populates your file with the contents of a minimal `.gitlab-ci.yml` file.
1. In the editor, delete all lines above the `build1:` line and below the `- echo "For example run a test suite"` line. This will leave you with two sections of code, which define the **build1** and **test1** jobs.
1. Define **build** and **test** stages by adding these 3 lines at the top of the file. The `stages` keyword must be flush left and the stage names must be indented by 2 spaces.

    ```yaml
    stages:
      - build
      - test
    ```
1. Leave the default values for the **Commit message** and **Target Branch** fields, and select **Commit changes**.

### B. Inspect the CI/CD pipeline

1. GitLab started running a CI/CD pipeline as soon as you committed `.gitlab-ci.yml` to your project’s repository. To see the project’s pipelines, go to the left-hand navigation pane and select **CI/CD > Pipelines**.
1. Only 1 pipeline has run so far, so your table of pipelines has only 1 row. See the details of that pipeline by selecting the **passed** label at the left of the pipeline’s row.
1. Inspect the pipeline graph. Each column represents a stage. In the **Build** stage, there’s a widget representing the **build1** job. In the **Test** column there’s a widget representing the **test1** job. Select the **build1** widget to see the job’s output in a web terminal.
1. Go back and do the same for the **test1** widget.


## Suggestions?

If you’d like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
