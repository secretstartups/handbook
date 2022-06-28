---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands-On Guide: Lab 3"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands-on Guide: Lab 3
{:.no_toc}

## LAB 3: USE GITLAB TO MERGE CODE

### A. Create a new project and issue
1. Navigate to your group.
1. Select **New project** and **Create blank project**.
1. Name your project `Second Project`
1. Make sure the **Visibility Level** is set to **Private**.
1. Enable the **Initialize repository with a README** checkbox.
1. Select **Create project** and wait for GitLab to redirect you to the new project’s main page.
1. In the left-hand navigation pane, select **Issues**.
1. Select **New issue**.
1. In the title field, type `new issue`. Optionally, enter a comment in the **Description** dialog box.
1. Next to the **Assignees** dropdown, select the link for **Assign to me**.
1. Select **Create issue**.

### B. Create a merge request
1. To the right of the **Create merge request** button, select the **dropdown arrow** . This is where you can customize the merge request. For this exercise, use the default settings.
1. Select **Create merge request and branch** to create a branch named after the issue, and also to create a merge request for that branch. You now have 3 linked items that relate to one task that you need to do: an issue, a branch, and a merge request.

### D. Edit files on a branch using GitLab’s Web IDE
1. In the middle of the merge request page, select **Open in Web IDE**.
1. Confirm that you are on the branch you just created by looking for the branch name in a dropdown in the top left corner of the page.
1. In the left-hand file list, select `README.md`.
1. On line 3 of the file, type `Edit my README.md file`
1. Select **Commit...** at the bottom of the screen.
1. In the **Commit Message** field, type `Updated the README.md file`. Leave the radio box button at the default, so the commit will be made to the branch you created earlier.
1. Select **Commit**.

### E. Verify changes in a merge request
1. Navigate to the merge request for the branch you just committed to.
   > Hint: you can select the small link at the bottom of the page that shows an exclamation point and the MR number.
1. On the merge request page, locate the **Assignee** section in the upper right-hand corner (you might have to select the double arrow at the top right of the screen to expand the pane). Ensure the merge request is assigned to yourself.
1. Select the **Changes** tab directly below the merge request title.
1. Hover over line 3 of the right side of the table (which contains the changes in your commit) and select the **comment icon**.
1. In the comment field, type `this is a comment` and select **Start a review**. You’d normally add more comments to your review before submitting them all at once, but for this lab just select **Submit review** to submit your single comment.
1. Pretend that someone has seen your comment and added another commit to address it. Select **Resolve thread** to show that the comment has been dealt with.

### F. Merge the branch and close the merge request
1. To mark the merge request ready to merge, select **Mark as ready** in the upper right-hand corner. This removes `Draft:` from your MR’s title.
1. Select the **Overview** tab under the MR title.
1. You haven’t specified any approvers for this project. If you had, an **Approve** button would appear in the **View eligible approvers** section.
1. Ensure the **Delete source branch** checkbox is enabled, and select **Merge**.
1. Navigate back to your project's repository by selecting **Repository** in the left-hand navigation pane.
1. Check what branch you’re on by looking at the dropdown at the top left of the page. Switch to **main** if you’re not already on it.
1. Since the default view of the repository displays the contents of the `README.md` file, it’s easy to verify that the merge added `Edit my README.md file` to the contents of `README.md`.

## Suggestions?
If you’d like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
