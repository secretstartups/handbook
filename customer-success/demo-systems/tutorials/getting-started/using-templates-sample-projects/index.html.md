---
layout: handbook-page-toc
title: "Using project templates and sample projects"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

After your GitLab Demo Cloud account has been created, you can access your group that allows you to create projects, sub-groups and manage group-level settings that are used by customers to allow settings to be configured for different teams.

We recommend creating sample projects as project templates, then importing them into a new project for each customer demo. This allows you to make changes to the newly created project without worrying about changes affecting your template.

This tutorial shows you how to access the GitLab instance and your group, create a sub-group for project templates, create your first project template, and import that template into a new project that you can use for a customer demo.

#### Pre-Requisites
* [Creating and accessing your account](/tutorials/getting-started/creating-accessing-your-account)

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

### Task 3. Create a sub-group for sample projects

1. In the top right corner of the page, select the arrow next to the green **New project** button and select **New subgroup**. Now that the green button has changed, click **New subgroup**.

2. On the **New group** page, use the following fields for the form:
    * Group name: `Project Templates`
    * Group URL: (leave as default)
    * Group description: `This group includes project templates that I use for demos.`
    * Group avatar: (optional) Upload a fun avatar if you want.
    * Visibility level: `Internal`.

3. Click the **Create group** button.

![Create child group for project templates](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/accessing-group-creating-projects-2.png)

### Task 4. Create your first project template

If you are just getting started with GitLab, please follow the instructions in **Option A** to create a sample Ruby application.

If you're using your own existing demo project, please follow the instructions in **Option B** to import your existing project.

#### Option A: Create a new project using a sample template

1. In the top right corner of the page, click the **New Project** button.

2. On the **New project** page, select the **Create from template** tab.

3. In the list of Built-in templates, locate **Ruby on Rails** and click the **Use template** button.

4. Use the following fields for the form:
    * Project name: `My first demo`
    * Project URL: `demosys-users/{your-username}/project-templates`
    * Project slug: `my-first-demo` (leave as default)
    * Project description: (optional, you can leave this blank)
    * Visibility level: `Internal`

5. Click the **Create project** button.

#### Option B: Import an existing demo project

1. In the top right corner of the page, click the **New Project** button.

2. On the **New project** page, select the **Import project** tab.

3. Select the appropriate method for importing your project and finish creating your project.

### Task 5. Configure the default project templates for your group

1. On the newly created project page, click the `...` in the breadcrumbs to select your group (Ex. `Jeff Martin - Group`).

    ![Breadcrumb navigation](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/accessing-group-creating-projects-4.png)

2. On your group dashboard, use the left sidebar to navigate to **Settings > General**.

3. In the **Custom project templates** section, click the **Expand** button.

4. In the dropdown menu, select your `Project Templates` group from the auto-populated list.

    ![Breadcrumb navigation](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/accessing-group-creating-projects-5.png)

5. Click the **Save changes** button.

### Task 6. Create an ephemeral project for a demo using a template

1. In the left sidebar, click **Subgroup overview** to return to your group dashboard.

2. In the top right corner of the page, click the **New Project** button.

3. On the **New project** page, select the **Create from template** tab.

4. There are three tabs available with project templates. Select the **Group** tab.
    * **Built-in:** These are provided by default with all GitLab installations
    * **Instance:** These are the templates that are available to all users of your GitLab installation. In the demo environment, these are used for globally-accessible project templates. Contributions to the instance templates are performed using previously created templates in your group after review by the `@demo-systems-admins`.
    * **Group:** These are the templates that you create in your `Project Templates` group. Any other groups that you have access to with templates will also appear here.

5. In the list of Group templates, locate the `My first demo` project, or whatever template you created in Task 4, and click the **Use template** button.

    ![Project template types](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/accessing-group-creating-projects-7.png)

6. Use the following fields for the form:
    * Project name: `ACME Company - Issue Board Demo`
    * Project URL: `demosys-users/{your-username}` (not `project templates`)
    * Project slug: `acme-company-issue-board-demo` (leave as default)
    * Project description: (optional, you can leave this blank)
    * Visibility level: `Private` (if set to Internal, the customer name is revealed to other users)

5. Click the **Create project** button.

6. You will be redirected to the newly created project that you can use for conducting a demo with the customer.

    ![New project](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/accessing-group-creating-projects-6.png)

7. When you're done with the demo, we encourage you to archive or destroy the project to keep things tidy.

## Review

You have successfully accessed your group and created a project templates sub-group that you can use for creating re-usable demo projects for showing customers.
