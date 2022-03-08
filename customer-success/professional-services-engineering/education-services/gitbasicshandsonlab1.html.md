---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands-On Guide: Lab 1"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands-on Guide: Lab 1
{:.no_toc}

## LAB 1: CREATE A PROJECT AND ISSUE

### A. Create a project
1. In the top navigation bar, select **Menu > Groups > Your Groups**.
    - If you are in an instructor-led class, expand the arrow to the left of the **Training Users** group. Expand the arrow to the left of your Session's subgroup. Open the subgroup called **My Test Group - \<USERNAME\>**.
    - If you are in the self-paced environment, open the group called **My Test Group - \<USERNAME\>**.

1. Select the **New project** button. Select **Create a project**, then **Create blank project**.
1. In the **Project name** field, enter `Top Level Project`<br/>
   Optionally, include a few notes in the **Project description** box.
1. Under **Visibility Level**, select the radio button for **Private** if it’s not already selected.
1. Select the **Initialize repository with a README** checkbox. 
   > If you don’t initialize your repository with a README, you will create a “bare” Git repository that you will need to populate by pushing the contents of another repository to it.
1. Select **Create project**.

### B. Create an issue
1. In the left-hand navigation pane, select **Issues**. You might need to expand the pane by selecting the double right-arrow icon in the bottom-left corner of the page.
1. Select **New issue**.
1. In the **Title** field, type `my first issue`<br/>
   Optionally, enter a comment in the **Description** field.
1. Next to the **Assignees** dropdown, select **Assign to me**.
1. Leave all other fields at their defaults and select **Create issue**.

### C. Create custom labels
1. In the left-hand navigation pane, select **Project information > Labels**.
1. Select **New label**.
1. In the **Title** field, type `Opened` and assign it any background color.
1. Select **Create label**. This label has been created at the project level, so its scope is limited to this project. It will not be available in any other projects, or at the group level.
1. Using the same steps, create labels for `Completed` and `Needs documentation`, using any background colors. These 3 labels are now available for you to assign to any issue, merge request, or epic.

### D. Use a quick action
1. In the left-hand navigation pane, select **Issues**.
1. Select **my first issue** to open it.
1. Below the comment field, select the **quick actions** link.
1. Review the various quick actions you can use.
1. Navigate back to the details page for **my first issue**.
1. In the comment field, type the quick action `/spend 1 hour`
1. Select the **Comment** button.
1. Notice that in the right-hand information pane, the time tracking widget reflects your last action. You might have to select the double left-arrow in the top-right of the page to expand this pane.

### E. Assign labels to an issue
1. In the right-hand pane of the details page for **my first issue**, find the **Labels** section. Select **Edit** in that section.
1. Select the **Opened** and **Needs documentation** labels you created earlier.
1. Click away from the **Labels** section. Notice that the issue now has both labels applied.
   > Warning: this step isn’t obvious, but it's important in order to complete the process of assigning labels.

## Suggestions?
If you’d like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
