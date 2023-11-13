---
aliases: /handbook/customer-success/professional-services-engineering/education-services/gitlabpmhandsonlab7.html
title: "GitLab Project Management Hands-On Guide: Lab 7"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Project Management course."
---

# GitLab Project Management Hands-On Guide


## LAB 7: CREATE AND CUSTOMIZE ISSUE BOARDS

### A. View and customize project-level issue boards

1. Navigate to your **Family Budget Calculator** project in the **Software > Core** subgroup.
1. In the left pane, click **Issues > Boards**.
1. Note the default **Development** board contains only 2 lists: issues with the status **Open**  and issues with the status **Closed**.
1. Modify the default project board by adding a new list: in the top right corner, click **Create list**.
1. The new list will be scoped by issue label. Ensure the **Label** radio button is selected in the **Scope** section of the list configuration pane.
1. Open the **Value** drop-down, and select **Status::WIP**.
1. Click **Add to board**.
1. Add another new list to the default project board: in the top right corner, click **Create list**.
1. The new list will be scoped by issue label. Ensure the **Label** radio button is selected in the **Scope** section of the list configuration pane.
1. Open the **Value** drop-down, and select **Status::Done**.
1. Click **Add to board**.
1. Your **Development** board should now include the new lists **Status::WIP** and **Status::Done** along with the default lists **Open** and **Closed**.
1. Note the **Create service infrastructure** issue in the **Open** list. Use your mouse to drag the **Create service infrastructure** issue into the **Status::WIP** list.
1. Click into the **Create service infrastructure** issue card by clicking directly on the issue's title. Note the **Status::WIP** label was automatically applied to that issue when you dragged it to a new list.
1. On the issue details page, click the **Edit** button next to **Labels** in the metadata pane.
1. Select the **Status::Done** label, and click away from the metadata pane to apply the label.
1. Return to **Issues > Boards** using the left pane.
1. Note the **Create service infrastructure** issue now appears in the **Status::Done** list.

### B. Manage group-level issue boards

1. Boards can also be viewed and managed at the group level. Using the breadcrumbs at the top of the page, navigate to your top level **DigiBit Technologies** group.
1. In the left pane, click **Issues > Boards**.
1. Observe a similar default **Development** board with **Open** and **Closed** lists. This group-level issue board shows all issues across the group's subgroups and projects.
1. At the top of the page, click the dropdown next to **Group by** and select **Epic**.
1. The board view should refresh and show a swimlane view of lists grouped by epic.
1. Scroll down to the bottom of the page and expand **Issues with no epic assigned**.
1. Use your mouse to drag the **Identify tuning parameters to reduce performance bottlenecks** issue into your **Back-end services** epic.
1. Hover your mouse over the **Back-end services** heading. Click the **Go to epic** link from the details box that appears.
1. Verify your **Identify tuning parameters to reduce performance bottlenecks** issue is part of the **Back-end services** epic.

### C. Create a new issue board

1. In the left pane, click **Issues > Boards**.
1. At the top of the page, click the **Development** dropdown to access the **Switch board** menu.
1. Click **Create new board**.
1. Title the board `<YOUR NAME>`
1. ***Deselect*** the checkboxes next to **Show the Open list** and **Show the Closed list**.
1. Click the **Expand** button next to **Scope**.
1. Click **Edit** next to **Assignee** and select your training user.
1. Click **Create board**.
1. Create 3 lists to populate your personal board. Set the respective scopes as follows. After they're created, you might need to drag the lists left or right to put them in the correct order.

    - First list shows issues with the **Priority::High** label
    - Second list shows issues with the **Status::WIP** label
    - Third list shows issues in the **Back-end services deployed** milestone

1. Refresh the browser tab that contains your new board.
1. In the **Priority::High** list, click the **(+)** icon to create a new high-priority issue.
1. Title the issue `Update family budget app personas`
1. Select **Family Budget Calculator** as the project for the issue to belong to.
1. Click **Create issue**.
1. An issue details pane should appear on the right side of the page. Assign the issue to your training user if it is not already assigned. Add an additional **Status::Open** label to the issue.
1. Click the **X** in the top right corner to close out of the issue details pane.
1. Click the diagonal arrows in the top right of the page to enter *Focus mode*. The rest of the GitLab navigation UI is now hidden, allowing you to focus on issues in the board.
1. Click the diagonal arrow again to leave Focus mode.

## Suggestions?

If you'd like to suggest changes to the *GitLab Project Management Hands-On Guide*, please submit them via merge request.
