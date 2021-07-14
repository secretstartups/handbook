---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands On Guide: Lab 1"
description: "This Hands On Guide is designed to walk you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands On Guide: Lab 1
{:.no_toc}

## LAB 1: CREATE A PROJECT AND ISSUE
### Create a project
1. Navigate to **Groups** > **Your groups** in the top navigation bar.
2. Expand the arrow to the left of **Training Users**. Expand the arrow to the left of the **Session** entry for your class. Click on the entry for **My Test Group** that includes your username (hint: the group with the `Owner` tag is yours).
3. Click the blue **New project** button. Click **Create blank project**.
4. In the **Project name** field, enter `Top Level Project`. Optionally, include a few notes in the **Project description** box.
5. Under **Visibility Level**, click the radio button for **Private**.
6. Click the **Initialize repository with a README** checkbox. If you don't initialize your repository with a README, you will create a “bare” Git repository that you will need to add content to in order to bring into existence.
7. Click the blue **Create project** button.

### Create an issue
1. On the left-hand side of the screen, click the **Issues** section on the taskbar. You might need to click the double right-arrow icon at the bottom of the taskbar to make the section names visible.
2. Click the blue **New issue** button.
3. In the **Title** field, type `my first issue`. Optionally, enter a comment in the **Description** field.
4. In the **Assignees** field, click the **Assign to me** link.
5. Leave all other fields at their defaults and click **Create issue**.

### Create custom labels
1. On the left-hand side of the screen, click the **Labels** section (under the **Project Information** header) on the taskbar.
2. Click the blue **New label** button.
3. In the **Title** field, type `Opened` and assign it a background color of your choosing.
4. Click the blue **Create label** button.
**Note: this label has been created at the project level, so it is specific to that project. It will not be available at the group level.**
5. Using the same steps, create labels for `Completed` and `Needs documentation`, using label colors of your choice.
   
   You should now have 3 labels created under the **Other Labels** section of the taskbar.

### Utilize a quick action
1. On the left-hand side of the screen, click the **Issues** section on the taskbar.
2. Click on **my first issue** to open it.
3. Below the comment field, click the **quick actions** link.
4. Review the various quick actions you can complete by using the comment field in an issue.
5. Navigate back to the GitLab page for **my first issue**.
6. In the text editor field in the comment section, type `/spend 1 h`
7. Click the blue **Comment** button.
8. Notice that in the right-hand pane, the time tracking widget reflects your last action.

### Assign labels to an issue
1. Find the **Labels** section in the right-hand pane of the `my first issue` page. Click **Edit** in that section.
2. Click on the `Opened` and `Needs documentation` labels you created earlier.
3. Click away from the **Labels** section, and notice that the issue has both labels applied to it.

### Suggestions?

If you wish to make a change to the *Hands On Guide for GitLab with Git Basics*, please submit your changes via Merge Request!
