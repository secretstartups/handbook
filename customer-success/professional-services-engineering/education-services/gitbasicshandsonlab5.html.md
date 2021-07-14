---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands On Guide: Lab 5"
description: "This Hands On Guide is designed to walk you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands On Guide: Lab 5
{:.no_toc}

## LAB 5: AUTO DEVOPS WITH A PREDEFINED PROJECT TEMPLATE

We will use a pre-defined template for NodeJS Express to show how Auto DevOps works.

### Create a new Node JS Express project with Auto DevOps
1. Just like with previous labs, navigate to your group and click **New project**. Click **Create from template** and then click **Use template** next to **NodeJS Express**.
2. In the **Project name** field, enter `Auto DevOps-test`. Make sure the **Visiblity Level** is **Private**. Click **Create project**.
3. Auto DevOps is an alternative to crafting your own `.gitlab-ci.yml` file. Note the banner at the top of the window alerting us that Auto DevOps is running in the background.
4. In the left pane, click **Pipelines** in the **CI/CD** section. Note there are no pipelines running. The most common way to run a pipeline is simply to make a commit to any branch of your project's repository, so let's do that next.
5. In the left pane, click **Branches** in the **Repository** section. Click the green **New branch** button.
6. In the **Branch name** field, enter `new-feature`. Click **Create branch**.
7. In the left pane, click **Pipelines** in the **CI/CD** section. Note that there is now a pipeline running, and that it has the **Auto DevOps** label.
8. Click **running** and note the 6 stages that Auto DevOps has created.

### Commit a change in order to trigger a pipeline run
1. In the left pane, click **Repository**.
2. Switch to the **new-feature** branch by selecting it in the dropdown that currently says **master** near the top left of the window.
4. Click `views` > `index.pug`.
5. Click the blue **Edit** button and then modify the last line of `index.pug` to: `p GitLab welcomes you to #{title}` Note: be sure to include the `p` at the beginning of the line.
6. In the **Commit message** field, type `Update welcome message in index.pug`. Click **Commit changes**.
7. Click the blue **Create merge request** button.
8. Assign the merge request to yourself.
9. Add `Draft:`to the beginning of the text in the **Title** field to show that it isn't ready to be merged yet.
10. Leave all other fields at their default values and click **Submit merge request** at the bottom of the page. You now have an active merge request for merging the `new-feature` branch into the `master` branch. The page you are on shows the details of that merge request, including the status of the last pipeline that was run on the `new-feature` branch (sometimes you have to refresh the page to see the pipeline's status). GitLab will run a new pipeline every time you commit to the `new-feature` branch.
11. Toward the end of the Auto DevOps pipeline, it will deploy your NodeJS Express application into a review environment named after the branch: **review/new-feature**.
12. You can see the Docker container that the Auto DevOps pipeline created when it was deploying your application to the review environment: in the left pane, click **Container Registry** in the **Packages & Registries** section.

### Suggestions?

If you wish to make a change to the *Hands on Guide for GitLab with Git Basics*, please submit your changes via Merge Request!
