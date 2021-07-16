---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands On Guide: Lab 3"
description: "This Hands On Guide is designed to walk you through the lab exercises used in the *GitLab with Git Basics* course."
---
# GitLab with Git Basics Hands On Guide: Lab 3
{:.no_toc}

## LAB 3: USING GITLAB ISSUES TO PUSH CODE

### Create a new project and issue
1. Navigate to your group, click the **New project** button, click **Create blank project**, and name your project `Second Project`.
1. Under **Visibility Level**, click the radio button for **Private**.
1. Enable the **Initialize repository with a README** checkbox.
1. Click the blue **Create project** button. After a few seconds it will take you to a page showing your new project's details.
1. On the left-hand side of the screen, click the **Issues** section on the taskbar.
1. Click the blue **New issue** button.
1. In the title field, type `new issue`.  Optionally, enter a comment in the **Description** dialog box.
1. In the **Assignees** field, click the link for **Assign to me**.
1. Click the **Create issue** button to create the issue.

### Create a merge request
1. Just above the comment box, click the **dropdown arrow** next to the blue **Create merge request** button. The dropdown lets you customize the branch name for this new merge request. For this exercise, leave it at the default.
1. Click **Create merge request** to make a merge request for a branch named after the issue's title.

### Edit files on a branch, using GitLab's Web IDE
1. In the middle of the merge request page, click **Open in Web IDE**.
1. Double-check that you are on the branch you just created by looking for the branch name in a dropdown in the top left corner of the page.
1. In the left-hand file list, click `README.md.`
1. On line 3 of the file, type `Edit my README.md file`.
1. Click the blue **Commit...** button at the bottom of the screen.
1. In the commit message box, type `Updated the README.md file`. Leave the radio box button at the default, so the commit will be on the branch you created earlier. Click **Commit**.

### Verify Changes in a Merge Request
1. Navigate to the merge request you just added a commit to. A convenient way to do this is to click the small blue link at the very bottom of the page, that shows an exclamation point and the merge request number.
2. On the merge request page, locate the **Assignee** section in the upper right-hand corner (you might have to click the double arrow at the top right of the screen to expand the widget bar). Ensure the merge request is assigned to yourself.
3. Click the **Changes** tab directly below the merge request title.
4. Hover over the left side of any line, and a comment icon will appear. Hover over line 3 and click the **comment icon**.
5. In the comment field, type `this code will fix this!` and click the **Start a review** button. Click **Submit review** to add your comment.
6. To mark that the comment has been seen and the commit has been adjusted, close the review by clicking **Resolve thread**.

### Approve the merge request
1. To mark the merge request ready to merge, click **Mark as ready** in the upper right-hand corner.
1. Click the **Overview** tab.
1. If there were eligible approvers, an **Approve** button would be in the **View eligible approvers** section.
1. Ensure the **Delete source branch** checkbox is enabled, and click the blue **Merge** button.
1. Navigate back to your repository's project by clicking **Repository** in the left-hand nav bar. Switch to the **main** branch in the branch dropdown at the top left of the page, if you're not on that branch already. Verify that the merge successfully added the `Edit my README.md file` line to the bottom of `README.md`. 

### Suggestions?

If you wish to make a change to the *Hands on Guide for GitLab with Git Basics*, please submit your changes via Merge Request!
