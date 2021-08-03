---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands-On Guide: Lab 1"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands-on Guide: Lab 1
{:.no_toc}

## LAB 1: CREATE A PROJECT AND ISSUE

### Create a project
1. In the top navigation bar, click **Menu > Groups > Your groups**.
1. Expand the arrow to the left of **Training Users**. Expand the arrow to the left of the **Session** entry for your class. Click on the test group that includes your username. *Hint: if you see more than one group, the group with the `Owner` tag is yours.*
1. Click the **New project** button. Click **Create blank project**.
1. In the **Project name** field, enter `Top Level Project`<br/>
   Optionally, include a few notes in the **Project description** box.
1. Under **Visibility Level**, click the radio button for **Private** if it's not already selected.
1. Click the **Initialize repository with a README** checkbox. If you don't initialize your repository with a README, you will create a “bare” Git repository that you will need to add content to in order to bring into existence.
1. Click **Create project**.

### Create an issue
1. In the left-hand navigation pane, click **Issues**. You might need to expand the pane by clicking the double right-arrow icon in the bottom-left corner of the page.
1. Click **New issue**.
1. In the **Title** field, type `my first issue`<br/>
   Optionally, enter a comment in the **Description** field.
1. Next to the **Assignees** dropdown, click **Assign to me**.
1. Leave all other fields at their defaults and click **Create issue**.

### Create custom labels
1. In the left-hand navigation pane, click **Project information > Labels**.
1. Click **New label**.
1. In the **Title** field, type `Opened` and assign it any background color.
1. Click **Create label**. *Note: this label has been created at the project level, so its scope is limited to this project. It will not be available in any other projects, or at the group level.*
1. Using the same steps, create labels for `Completed` and `Needs documentation`, using any background colors. These 3 labels are now available for you to assign to any issue, merge request, or epic.

### Use a quick action
1. In the left-hand navigation pane, click **Issues**.
1. Click on **my first issue** to open it.
1. Below the comment field, click the **quick actions** link.
1. Review the various quick actions you can use.
1. Navigate back to the GitLab page for **my first issue**.
1. In the comment field, type the quick action `/spend 1 hour`
1. Click the **Comment** button.
1. Notice that in the right-hand information pane, the time tracking widget reflects your last action. You might have to click the double left-arrow in the top-right of the page to expand this pane.

### Assign labels to an issue
1. In the right-hand pane of the `my first issue` page, find the **Labels** section. Click **Edit** in that section.
1. Click on the `Opened` and `Needs documentation` labels you created earlier.
1. Click away from the **Labels** section. *This step isn't obvious, but is important in order to complete the process of assigning labels.* Notice that the issue now has both labels applied.

## Suggestions?
If you'd like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
