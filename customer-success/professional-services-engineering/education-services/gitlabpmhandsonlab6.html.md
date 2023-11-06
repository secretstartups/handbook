---
layout: handbook-page-toc
title: "GitLab Project Management Hands-On Guide: Lab 6"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Project Management course."
---
# GitLab Project Management Hands-On Guide
{:.no_toc}

## LAB 6: USE A MERGE REQUEST TO REVIEW AND MERGE CODE

### A. Set merge request approval rules

1. Navigate to your **Database** project inside the **Software > Core** subgroup.
1. In the left pane, click **Settings > General**.
1. Scroll down to the **Merge request (MR) approvals** section and click **Expand**.
1. Click **Add approval rule**.
1. In the **Rule name** field, enter `Infra team`
1. In the **Add approvers** field, select your **Infrastructure** group.
1. Click **Add approval rule**.
1. Back in the **Merge request (MR) approvals** section of the **Settings** page, click **Add approval rule** to create a second project-level rule.
1. In the **Rule name** field, enter `Security operations`
1. In the **Add approvers** field, select your **Security** group.
1. Click **Add approval rule**.
1. Back in the **Merge request (MR) approvals** section of the **Settings** page, under **Approval Settings**, check the box next to **Prevent editing approval rules in merge requests.**
1. In the same section, ensure that **Prevent approval by the author** is *unchecked*. This is necessary so we can approve our own merge requests in the training environment.
1. Click **Save changes**.

### B. Create a merge request

1. In your **Database** project, click **Issues** in the left pane.
1. Click into your **Identify tuning parameters to reduce performance bottlenecks** issue.
1. Click the down-arrow dropdown next to the **Create merge request** button on the issue landing page.
1. Ensure **Create merge request and branch** is checked.
1. In the **Branch name** field, change the text to read `update-db-docs-perf-tools`.
1. Click **Create merge request**.
1. Set the **Title** to the following: `Draft: Add performance tools to database documentation`
1. Remove `Closes <ISSUE NUMBER>` from the **Description** field. We want to keep the original issue open for additional work. Enter an optional description in its place.
1. Verify that you are assigned to the merge request. Also note any labels inherited from the issue, and any approval rules inherited from project settings.
1. Click **Create Merge Request**.
1. From the merge request details page, select **Code > Open in Web IDE** to edit files on the **update-db-docs-perf-tools** branch.
1. Click **README.md** from the left file pane.
1. Paste the following into **README.md**, beginning on line 3.
    
    ```markdown
   ## Performance tools
   The database currently uses HAProxy for load balancing. 
   We are researching and testing additional tools to improve performance.
    ```

1. Click **Create Commit...** in the bottom left corner of the page.
1. In the **Commit message** field, enter `Update docs with performance tools`
1. Ensure the **Commit to update-db-docs-perf-tools branch** radio button is selected.
1. Click **Commit**.

### C. Perform code review and merge changes

1. Navigate back to your merge request (hint: the merge request number is linked in the toolbar at the bottom of the Web IDE page).
1. On the merge request page, click the **Changes** tab to see the changes that will be applied to the project's **main** branch after merge. Here code reviewers can critique individual lines of code and suggest changes.
1. Navigate back to the **Overview** tab.
1. In the middle of the merge request page, click **Mark as ready** to take the merge request out of draft mode.
1. Click **Approve** to approve the merge request. Note that the **Merge** button now becomes active since all requisite approvals have been applied.
1. Scroll down to the comments field and add a comment that reads `Approved. Ready to merge.`
1. Click **Merge** and observe the merge complete successfully.
1. Navigate to the project landing page by clicking the **Database** title tile in the top left corner. See that the `README.md` file on the **main** branch now includes your updates.
1. In the left pane, click **Merge requests**. The merge request will now appear under the **Merged** tab on this page.

## Suggestions?

If you'd like to suggest changes to the **GitLab Project Management Hands-On Guide**, please submit them via merge request.
