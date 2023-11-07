---
aliases: /handbook/customer-success/professional-services-engineering/education-services/gitbasicshandsonlab5.html
title: "GitLab with Git Basics Hands-On Guide: Lab 5"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab with Git Basics course."
---

# GitLab with Git Basics Hands-on Guide: Lab 5


## LAB 5: AUTO DEVOPS WITH A PREDEFINED PROJECT TEMPLATE

We will use a pre-defined template for NodeJS Express to show how Auto DevOps works.

### A. Create a new Node JS Express project with Auto DevOps

1. Navigate to your group and select **New project**,.
1. Instead of making a blank project, select **Create from template**, and then select **Use template** next to **NodeJS Express**.
1. In the **Project name** field, enter `Auto DevOps-test`
1. Make sure the **Visiblity Level** is **Private**, and select **Create project**.
1. Auto DevOps is an alternative to writing and using your own `.gitlab-ci.yml` file. Note the banner at the top of the window alerting you that Auto DevOps is enabled. GitLab has turned it on automatically since it can’t find `.gitlab-ci.yml` in this project’s repository.
1. In the left-hand navigation pane, select **CI/CD > Pipelines**. Note that no pipelines have run yet.
1. In the left-hand navigation pane, select **Repository > Branches**. Select **New branch**.
1. In the **Branch name** field, enter `new-feature` and select **Create branch**.
1. In the left-hand navigation pane, select **CI/CD > Pipelines**. You’ll see a pipeline with the **Auto DevOps** label, which is running on the branch you just created.
1. Select the pipeline’s **running** status icon and note the 6 stages (represented by 6 columns in the pipeline graph) that Auto DevOps has created.

### B. Commit a change to trigger a pipeline run

The most common way to run a pipeline is to commit to a branch of your project’s repository. You'll do that next.

1. In the left-hand navigation pane, select **Repository > Files**.
1. Near the top left of the window, switch to the **new-feature** branch by selecting it in the dropdown that currently says **master**.
1. In the list of repository files, select the `views` directory and then the `index.pug` file.
1. Select **Edit** and modify the last line of `index.pug` to the text below. If **Edit** is not visible, select the button next to **Open in Web IDE** and choose **Edit**. IMPORTANT: preserve the 2-space indentation for this line, and include the `p` at the beginning of the line.

   ```
     p GitLab welcomes you to #{title}
   ```

1. For **Commit message**, type `Update welcome message in index.pug`
1. Leave **Target branch** set to `new-feature`
1. Select **Commit changes**.
1. Select **Create merge request**
1. Add `Draft:` to the beginning of the text in the **Title** field to show that the merge request isn’t ready to be merged yet.
1. Assign the merge request to yourself.
1. Leave all other fields at their default values and select **Create merge request** at the bottom of the page.
1. To mark the merge request ready to merge, select **Mark as ready**. This removes `Draft:` from your MR’s title.

     You now have an active merge request for merging the `new-feature` branch into the `master` branch. The page you are on shows the details of that merge request, including the status of the last pipeline that was run on the `new-feature` branch (you might have to refresh the page to see the pipeline status). GitLab will run a new pipeline every time you commit to the `new-feature` branch.
1. The **Review** stage of the Auto DevOps pipeline deploys your NodeJS Express application into a review environment dedicated to this branch. You can see the status of each pipeline stage by hovering over the circular icons in the pipeline overview tab. Once the pipeline has completed the **Review** stage, view the deployed application by selecting **View app** in the middle of the merge request. You should see the text that you modified. Note: You may receive a page with the error "Your connection is not private." This is normal behavior as the SSL certificationss in the GitLab demo cloud may expire. Select **Advanced** and choose **Proceed**.
1. Return to the GitLab browser tab. In the left-hand navigation pane, select **Packages & Registries > Container Registry**. You should see the Docker container that the Auto DevOps pipeline created when it deployed your application to the review environment.


## Suggestions?

If you’d like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
