---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands On Guide: Lab 4"
description: "This Hands On Guide is designed to walk you through the lab exercises used in the *GitLab with Git Basics* course."
---
# GitLab with Git Basics Hands On Guide: Lab 4
{:.no_toc}

## LAB 4: BUILD A `.gitlab-ci.yml` FILE

### Create a new project and add a CI/CD configuration file
1. Navigate to your group, click **New project**, click **Create blank project**.
2. In the Project name dialog box, enter `CI Test`.
3. Under **Visibility Level**, click the radio button for **Private**.
4. Enable the checkbox for **Initialize repository with a README**.
5. Click the blue **Create project** button.
6. You should be on the **Project overview** page for your `CI Test` project. If not, navigate to it using the top navigation bar: **Groups** > **Your Groups** > **Training Users** > **Session NUMBER** > **My Test Group - USERNAME** > **CI Test**.
7. Create a new file by clicking the **+** dropdown 2 lines below the project's title. Click **New file** in the **This directory** section.
8. In the **File name** dialog box enter `.gitlab-ci.yml`.
9. If it's not already selected, click **.gitlab-ci.yml** in the next dropdown to the right, which selects a file template.
10. In the **Apply a template** dropdown, select **Bash** in the **General** section. This creates a minimal `.gitlab-ci.yml` file.
11. In the editor, delete all lines above and below the **build1** and **test1** sections
12. Define **build** and **test** stages by adding these 3 lines at the top of the file. Hint: watch your spacing! The `stages` keyword should be flush left. The stage names should each be indented by 2 spaces.
```
stages:
  - build
  - test
```
13. Click the blue **Commit changes** button.

### Inspect the CI/CD pipeline

1. GitLab started running a CI/CD pipeline as soon as you committed `.gitlab-ci.yml` to your project's repository. To see the project's pipelines, go to the left navigation bar and click **CI/CD** > **Pipelines**.
2. Only one pipeline has run so far. See the details of that pipeline by clicking the green **passed** label next to the pipeline's table entry.
3. In the **Build** column, there's a widget representing the **build1** job that belongs to that stage. In the **Test** column there's a widget representing the **test1** job that belongs to that stage.
4. Click the **build1** widget to see a web terminal that shows what happened when that job ran.
5. Go back and do the same for the **test1** widget.

### Suggestions?

If you wish to make a change to the *Hands on Guide for GitLab with Git Basics*, please submit your changes via Merge Request!
