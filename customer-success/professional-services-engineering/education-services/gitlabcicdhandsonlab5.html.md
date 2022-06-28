---
layout: handbook-page-toc
title: "GitLab CI/CD Hands-On Guide: Lab 5"
description: "This Hands-On Guide walks you through the lab exercises in the GitLab CI/CD course."
---
# GitLab CI/CD Hands-On Guide: Lab 5
{:.no_toc}

## LAB 5: VARIABLE HIERARCHY

### Add custom variables 

1. Go to the [snippets page](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-ci-cd/gitlab-cicd-hands-on-demo/-/snippets) of the **CI-CD Hands On Demo** project.
1. Open the `ci-variables` snippet and click the **Copy file contents** icon in the upper right corner of the file.
1. Open your **CICD Demo** project from previous labs.
1. Click on your `.gitlab-ci.yml` file to view its contents. Click the **Edit** button. Paste the snippet at the end of the file.
1. Near the top of your `.gitlab-ci.yml`, just below the entire `stages` section, paste the following:
    ```yml
    variables: 
      INLINE_GLOBAL_VARIABLE: "I'm an inline variable set at the global level of the CI/CD configuration file"
    ```
1. In the section where the `environment variables` job is defined, just below the `stage: build` line, paste the following:
    ```yml
    variables:   
      INLINE_LOCAL_VARIABLE: "I'm an inline variable set at the job level of the CI/CD configuration file"
    ```
    When defining variables, watch your indentation. Global variables must be indented by 2 spaces, and must be immediately under a flush-left `variables` keyword that is outside any job definition. Local variables must be indented 4 spaces, and must be immediately under a `variables` keyword that is indented 2 spaces and is within a job definition. Here's an example of how to define global and local variables:

    ```yml
    # NOTE: this code demonstrates how to define global and local variables. 
    # Do NOT copy and paste this code into your .gitlab-ci.yml file.

    variables:
      GLOBAL_SCOPE_VAR: "value1"
    
    job-a:
      variables:
        LOCAL_SCOPE_VAR: "value2"
      script:
        - echo $LOCAL_SCOPE_VAR
        - echo $GLOBAL_SCOPE_VAR
    ```

1. In the **Commit message** field, type `Add custom variables`, leave the **Target Branch** set to `main`, and click **Commit changes**.

### Add group- and project-level variables

1. Navigate to your group by clicking on it in the breadcrumbs at the top of the GitLab page.
1. In the left-hand navigation pane, click **Settings > CI/CD**
1. In the **Variables** section, click the **Expand** button.
1. Click **Add Variable**. Enter `group_level_variable` in the **Key** dialog box. *Hint: watch your spelling, capitalization, and underscores!* This variable will be visible within all subgroups and projects that live in this group.
1. Type `I'm a variable set at the group level` in the **Value** dialog box.
1. Leave all other options at their defaults and click **Add variable**.  
1. Navigate to your project by clicking **My Test Group - \<USERNAME\>** in the breadcrumbs at the top of the page, and then clicking on your project.
1. Repeat steps 2 to 6, entering `project_level_variable` in the **Key** field and `I'm a variable set at the project level` in the **Value** field. 
1. Setting variables does not trigger a pipeline run, so click **CI/CD > Pipelines** in the left navigation pane, click the **Run Pipeline** button, and click the second **Run Pipeline** button.
1. Click on the widget for the `environment variables` job and verify your work.

## Suggestions?

If you wish to make a change to the *Hands-On Guide for GitLab CI/CD*, please submit your changes via Merge Request!
