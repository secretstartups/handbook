---
layout: handbook-page-toc
title: "Using the demo designer for creating sample data"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

After your GitLab Demo Cloud account has been created, you can access your group that allows you to create projects, sub-groups and manage group-level settings that are used by customers to allow settings to be configured for different teams.

Your group will be empty by default. If you cannot find a project template that fits your use case, you can use the demo designer to create a playbook of API calls that will create and/or populate a GitLab project with sample data to showcase the features of GitLab.

In the current iterative release, you can create labels, milestones, issues and issue boards to show the issue tracking and Agile features.

This tutorial shows you how to add an environment with your GitLab instance URL and API key, create a playbook, and run your playbook to populate a new or existing project with sample data. After a playbook has been created, you can run it multiple times to create different projects with a consistent state each time.

This tutorial uses the GitLab Demo Cloud account, however you can use the designer to connect to GitLab.com or your own instance (Omnibus, Docker, etc).

This tutorial is available as a [YouTube video](https://www.youtube.com/watch?v=s3HI6VQXQ2U).

#### Pre-Requisites
* [Creating and accessing your account](/handbook/customer-success/demo-systems/tutorials/getting-started/creating-accessing-your-account)

## Step-by-Step Instructions

### Task 1. Access Your Demo Cloud Account

1. Open a **new tab or window** in your web browser.
2. Visit [https://gitlabdemo.com](https://gitlabdemo.com).
3. Sign in using your Demo Cloud SSO credentials that you created when you self-registered.
    > It is recommended to rename your 1Password login to `Demo Cloud SSO` so it's easy to recognize.

### Task 2. Accessing the GitLab Instance

When your account was created, the GitLab handle that you provide is used to automatically provision a user account and organizational group (with owner permissions) on the GitLab instance that we use in our demo environment.

1. On the Dashboard, you will see all of the Demo Cloud resources that you have access to.
2. Locate the **GitLab Omnibus (US)** card (bordered section).
    > When you created your account on gitlabdemo.com, your account on the Demo Cloud GitLab instance was automatically created using the GitLab handle that you chose and the same password as you used for gitlabdemo.com.

    ![GitLab Omnibus Card](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/creating-accessing-your-account-1.png)

3. Click on the **My Group Button**. A new tab or window will appear with the GitLab instance.

4. If you are redirected to a login screen, please use your Demo Cloud SSO credentials in 1Password.
    > It is recommended to add the URL of the GitLab Omnibus instance as a website on your existing 1Password record for Demo Cloud SSO.

5. After logging in, you will see your group.

    ![Group Dashboard](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/accessing-group-creating-projects-1.png)

6. You can always access your group from the top navigation by selecting **Groups > Your Groups** and expanding the **Demo Systems Users** parent group to see your group name.

    ![Group Top Nav](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/accessing-group-creating-projects-3.png)

### Task 3. Create a Personal Access Token

1. In the top right corner of the GitLab UI, click your **avatar dropdown menu** and click the **Settings** link.

2. In the left sidebar, click **Access Tokens**.

3. On the Personal Access Tokens page, use the following values for the fields.

    * Name: `GitLab Demo Designer`
    * Expires at: (blank)
    * Scopes: `api`

4. Click the **Create personal access token** button.

5. The new token will appear at the top of the screen.

    > This token will only be displayed on this page once. After you navigate to a different page, you will no longer be able to access it. It's important to copy the personal access token.

6. Copy the new token and paste it into 1Password or your preferred password manager.

7. You will need to use the API token in the next task.

### Task 4. Add an Environment to Demo Data Designer

To use the demo data designer, you will need to add an environment to the Demo Portal that specifies the URL of the GitLab instance that you want to use for your projects. We also need to add a Personal Access Token to authenticate with the GitLab instance that you created in the previous task.

1. Switch back to the Demo Portal tab in your browser.

2. In the top navigation, click the **Demo Data Designer** link.

3. On the Demo Data Designer dashboard, click the **View Environments** button.

4. On the My Environments dashboard, click the **Add Environment** button in the top right corner.

5. In the Add Environment modal window, use the following values for the fields.

    * Environment Name: `GitLab Demo Cloud`
    * Base URL: `https://gitlab-core.us.gitlabdemo.cloud`
    * Personal Access Token: (paste from previous task)

6. Click the **Save Environment** button.

7. After your environment has been added, the Demo Designer will perform an API call to get the list of namespaces and GitLab projects that you can access.

### Task 5. Create a Playbook

You can watch these steps with further explanation in the [video tutorial](https://youtu.be/s3HI6VQXQ2U?t=328).

1. In the left sidebar, click the **My Playbooks** button.

2. In the top right corner, click the **Create Playbook** button.

3. In the Create a Playbook form, use the following values for the fields.

    * Playbook Name: `My First Playbook`
    * Playbook Description: `This project includes labels, milestones, issues, and issue boards for showing the issue tracking features of GitLab.`

4. Click the **Save Playbook** button.

5. After your playbook has been created, you will see all of the records (API resources) that can be created in the left sidebar.

### Task 6. Create Labels

You can watch these steps with further explanation in the [video tutorial](https://youtu.be/s3HI6VQXQ2U?t=385).

1. In the left sidebar, click the **Labels** button in the Project Configuration section.

2. In the top right corner, click the **Create Label** button.

3. In the Create Project Label modal window, use the following values for the fields.

    * Label Name: `Backlog`
    * Color: (leave at default)
    * Label Description: `These are things that we plan to do in the future`.

4. Click the **Save Label** button.

5. You will see the new label listed.

6. Repeat the process of creating a label to create three (3) additional labels for `Up Next`, `In Progress`, and `Done`. You can use any color and description that you'd like.

7. Feel free to create additional labels for an enhanced set of sample data.

### Task 7. Create Milestones

You can watch these steps with further explanation in the [video tutorial](https://youtu.be/s3HI6VQXQ2U?t=496).

1. In the left sidebar, click the **Milestones** button in the Project Configuration section.

2. Please take a few moments to read the instructions on relative dates at the top of the screen.

3. In the top right corner, click the **Create Milestone** button.

4. In the Create Project Milestone modal window, use the following values for the fields.

    * Milestone Title: `Version 1.0`
    * Description: `This is the milestone for version 1.`
    * Start Date: `2020-10-01`
    * Due Date: `2020-11-30`

    > This start date will be 3 months before today's date using relative dates, whereas the due date will be 1 month and 2 days before today's date.

5. Click the **Save Milestone** button.

6. Repeat the process of creating two (2) additional milestones for `Version 2.0` and `Version 3.0`. Try using the sample dates in the instructions above the list of milestones so that Version 2.0 is a current milestone and Version 3.0 is a future milestone. You can also use your own dates to see what effect it has.

    | Milestone Example | Start Date | End Date   |
    |-------------------|------------|------------|
    | Version 2.0       | 2020-12-10 | 2020-02-10 |
    | Version 3.0       | 2020-03-15 | 2020-06-30 |

7. You will now see the issues that you have created in the table. To see how relative dates affect your milestones, feel free to edit a milestone and enter a different start or due date. You will see the calculation reflected in the table based on the relative today value of 2020-01-01.

### Task 8. Create Issues

You can watch these steps with further explanation in the [video tutorial](https://youtu.be/s3HI6VQXQ2U?t=789).

1. In the left sidebar, click the **Issues** button in the Project Activity section.

2. In the top right corner, click the **Create Issue** button.

3. In the Create Project Issue modal window, use the following values for the fields.

    > You can use any values that you would like, this is just an example.

    * Issue Title: `Project Scoping`
    * Description: `This issue is tracking all of our scoping activities.`
    * Created at: `2019-12-01`
    * Due Date: (blank)
    * Weight: `3`
    * Milestone: `Version 2.0`
    * Labels: `Doing`, `New Feature`

4. Click the **Save Issue** button.

5. You will see the issue listed in the table with the milestone and labels that you selected.

6. Repeat the process of creating one or two additional issues using any field values that you'd like. You should choose different labels than you did for the first issue so we can see how the labels show up in different lists on the issue board in the upcoming tasks.

### Task 9. Create an Issue Board

Note: This task is not covered in the video tutorial.

1. In the left sidebar, click the **Issue Boards** button in the Project Activity section.

2. In the top right corner, click the **Create Issue Board** button.

3. In the Create Project Issue Board modal window, use the following values for the fields.

    > You can use any values that you would like, this is just an example.

    * Issue Board Name: `Sprint Board`

4. Click the **Save Issue Board** button.

5. You will be redirected to the issue board details where you can add lists to your issue board.

### Task 10. Add Lists to an Issue Board

You can watch these steps with further explanation in the [video tutorial](https://youtu.be/s3HI6VQXQ2U?t=966).

1. In the top right corner, click the **Create List** button.

2. In the Create List for Project Issue Board modal window, you will see the option to create a list for a project label, milestone, and assigned to user. Some options may be disabled until they are available in future iterations.

3. Select the Project Label option, and choose the `Backlog` label from the dropdown list.

4. Click the **Save List** button.

5. Repeat this process to add all of the labels that you want to appear in your issue board. For example, you should add the labels you created in the earlier task for `Up Next`, `In Progress`, and `Done`.

6. After you have multiple lists, you can use the left and right arrows to rearrange them in the order that you would like them to appear.

7. You can also use the trash can icon to remove a list.

### Task 11. Review your Playbook

You can see an overview of the review process with further explanation in the [video tutorial](https://youtu.be/s3HI6VQXQ2U?t=1022).

Take a few moments to review all of the records that you've created before you run the playbook. You can edit any records as needed.

### Task 12. Run Your Playbook

You can watch these steps with further explanation in the [video tutorial](https://youtu.be/s3HI6VQXQ2U?t=1079).

1. In the left sidebar, click the **Playbook Runs** button.

2. In the top right corner, click the **Run a Playbook** button.

3. In the Run a Playbook form, use the following values for the fields.

    > The list of options for Playbook and Environment will get longer as you add more records. It is likely that you will only have one record for each if this is your first time using the Demo Data Designer.

    * Playbook: `My First Playbook`
    * Environment: `GitLab Demo Cloud`

4. Click the **Next Step** button.

5. You run has now been saved as a draft.

6. You can now select whether to run this playbook on an existing project (not recommended for beginners) or create a new project.

7. Select the option for `New Project in Group/Namespace`.

8. In the dropdown list, choose your group name `demosys-users/{your-username}`.

9. Enter a name for the GitLab project that you're going to create. This name must be unique for each run of the playbook, so this may include the name of the customer that you're performing the demo for.

10. Enter a lowercase name with hyphens that is used as the URL path.

11. Click the **Run Playbook** button.

12. Please allow a few seconds for the playbook to run. Do not refresh or reload the page.

13. After the playbook has completed, it will show at the top of the list of playbook runs.

14. Click on the full path link. You can also see this project in your group in the GitLab tab in your browser.

### Task 13. Review Your New Project

1. In the GitLab project, navigate to **Issues** in the left sidebar.

2. Click through the sub navigation links for **List**, **Boards**, **Labels**, and **Milestones** to see each of the records that have been added.

3. You can now proceed to use this project for a demo or make any modifications that you would like.

4. When you're done with the demo, we encourage you to archive or destroy the project to keep things tidy.

## Review

You have successfully created your first playbook in the demo designer and run the playbook to create a new project.
