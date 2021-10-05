---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands-On Guide: Lab 5"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands-on Guide: Lab 5
{:.no_toc}

## LAB 5: AUTO DEVOPS WITH A PREDEFINED PROJECT TEMPLATE

We will use a pre-defined template for NodeJS Express to show how Auto DevOps works.

### Create a new Node JS Express project with Auto DevOps

1. Just like with previous labs, navigate to your group and click **New project**. 
2. Instead of making a blank project, click **Create from template**, and then click **Use template** next to **NodeJS Express**.
3. In the **Project name** field, enter `Auto DevOps-test`
4. Make sure the **Visiblity Level** is **Private**, and click **Create project**.
5. Auto DevOps is an alternative to writing and using your own `.gitlab-ci.yml` file. Note the banner at the top of the window alerting us that Auto DevOps is enabled. GitLab has turned it on automatically since it can’t find `.gitlab-ci.yml` in this project’s repository.
6. In the left-hand navigation pane, click **CI/CD > Pipelines**. Note that no pipelines have run yet.
7. In the left-hand navigation pane, click **Repository > Branches**. Click **New branch**.
8. In the **Branch name** field, enter `new-feature` and click **Create branch**.
9. In the left-hand navigation pane, click **CI/CD > Pipelines**. You’ll see a pipeline with the **Auto DevOps** label, which is running on the branch you just created.
10. Click the pipeline’s **running** status icon and note the 6 stages (represented by 6 columns in the pipeline graph) that Auto DevOps has created.

### Commit a change to trigger a pipeline run

The most common way to run a pipeline is commit to a branch of your project’s repository. Let’s do that next.

1. In the left-hand navigation pane, click **Repository > Files**.
2. Near the top left of the window, switch to the **new-feature** branch by selecting it in the dropdown that currently says **master**.
3. In the list of repository files, click the `views` directory and then the `index.pug` file.
4. Click **Edit** and modify the last line of `index.pug` to the text below. *IMPORTANT: preserve the 2-space indentation for this line, and include the `p` at the beginning of the line.*
   
   ```
     p GitLab welcomes you to #{title}
   ```
   
5. In the **Commit message** field, type `Update welcome message in index.pug`
6. Leave the **Target branch** field set to `new-feature`. 
7. Click **Commit changes**.
8. Click **Create merge request**.
9. Assign the merge request to yourself.
10. Add `Draft:` to the beginning of the text in the **Title** field to show that the merge request isn’t ready to be merged yet.
11. Leave all other fields at their default values and click **Create merge request** at the bottom of the page. 
   
     You now have an active merge request for merging the `new-feature` branch into the `master` branch. The page you are on shows the details of that merge request, including the status of the last pipeline that was run on the `new-feature` branch (you might have to refresh the page to see the pipeline status). GitLab will run a new pipeline every time you commit to the `new-feature` branch.
12. The **Review** stage of the Auto DevOps pipeline deploys your NodeJS Express application into a review environment dedicated to this branch. You can see the status of each pipeline stage by hovering over the circular icons in the pipeline status. Once the pipeline has completed the **Review** stage, view the deployed application by clicking **View latest app** in the middle of the merge request. You should see the text that you modified.
13. Return to the GitLab browser tab. In the left-hand navigation pane, click **Packages & Registries > Container Registry**. You should see the Docker container that the Auto DevOps pipeline created when it deployed your application to the review environment.


## Suggestions?

If you’d like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
