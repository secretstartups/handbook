---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands-On Guide: Lab 1"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands-on Guide: Lab 1
{:.no_toc}

## Lab 1: Create a project and issue

### A. Create a project
1. On the top bar, select **Menu > Groups > Your Groups**.
    - If you are in an instructor-led class, expand the arrow to the left of the **Training Users** group. Expand the arrow to the left of your Session's subgroup. Open the subgroup called **My Test Group - \<USERNAME\>**.
    - If you are in the self-paced environment, open the group called **My Test Group - \<USERNAME\>**.

1. Select **New project**. 
1. Select **Create blank project**.
1. In the **Project name** text box, enter `Top Level Project`.<br/>
   Optionally, include a few notes in the **Project description** text box.
1. Under **Visibility Level**, ensure **Private** is selected.
1. Ensure the **Initialize repository with a README** checkbox is selected. 
   > If you don’t initialize your repository with a README, you will create a “bare” Git repository that you will need to populate by pushing the contents of another repository to it.
1. Select **Create project**.

### B. Create an issue
1. On the left sidebar, select **Issues**.
1. Select **New issue**.
1. In the **Title** text box, enter `my first issue`.<br/>
   Optionally, enter a comment in the **Description** field.
1. Next to the **Assignees** dropdown, select **Assign to me**.
1. Leave all other fields at their defaults.
1. Select **Create issue**.

### C. Create custom labels
1. On the left sidebar, select **Project information > Labels**.
1. Select **New label**.
1. In the **Title** text box, enter `Opened`.
1. Assign the label any background color.
1. Select **Create label**. This label is created at the project level, so its scope is limited to this project. It will not be available in any other projects, or at the group level.
1. Using the same steps, create labels for `Completed` and `Needs documentation`, using any background colors. These 3 labels are now available for you to assign to any issue, merge request, or epic.

### D. Use a quick action
1. On the left sidebar, select **Issues**.
1. Select **my first issue** to open it.
1. In the comment text box, type the quick action `/spend 1 hour`.
   > To view a complete list of available quick actions, select the **quick actions** link below the text box.
1. Select **Comment**.
1. Notice in the right sidebar, the time tracking widget reflects your last action.

### E. Assign labels to an issue
1. On the right sidebar of **my first issue**, select **Edit** in the **Labels** section.
1. Select the **Opened** and **Needs documentation** labels you created earlier.
1. Click away from the **Labels** section. Notice that the issue now has both labels applied.
   > Warning: this step isn’t obvious, but it's important in order to complete the process of assigning labels.

## Suggestions?
If you’d like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
