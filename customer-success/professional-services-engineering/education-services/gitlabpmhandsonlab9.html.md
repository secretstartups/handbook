---
layout: handbook-page-toc
title: "GitLab Project Management Hands-On Guide: Lab 9"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Project Management course."
---
# GitLab Project Management Hands-On Guide
{:.no_toc}

## LAB 9: CREATE AND MANAGE A SCRUM BOARD

In this section you'll configure a Scrum board and populate it with the same issues you used for the Kanban board.

### A. Make Scrum-specific labels

Compared to Kanban boards, Scrum boards normally require 2 extra labels to represent the project and sprint backlogs.

1. Navigate to the **Awesome Software** project.
1. In the left pane, click **Project information > Labels** and create these scoped labels:
   - `Status::Project Backlog`
   - `Status::Sprint Backlog`

### B. Put all issues in the Project Backlog

1. In the left pane, click **Issues**. 
1. Using the bulk issue edit technique you learned in the last lab, apply the **Status::Project Backlog** label to all issues. Because this is a scoped label, it will remove any other **Status** labels that are already applied to any issues.

### C. Make an iteration (sprint)

1. Iterations can only exist at the group or subgroup level. Using the breadcrumb trail, navigate to the **PM Workflows** subgroup. 
1. In the left pane, click **Issues > Iterations**. 
1. Click **New iteration cadence**. 
1. Title the iteration `Sprint 6` 
1. Assign today's date as the start date. 
1. Assign 2 weeks as the due date of the sprint.
1. Select 2 as the number of upcoming iterations.
1. Click **Create cadence**.

### D. Add some issues to the next sprint

This step simulates the "sprint planning" ceremony, where your team decides which issues it will work on in the upcoming sprint.

1. Navigate to the **Awesome Software** project.
1. In the left pane, click **Issues**.
1. Pick a handful of issues that you want to work on in the next sprint and assign them to the **Sprint 6** first iteration.
1. Apply the **Status::Sprint Backlog** label to those same issues. You can do this either with the bulk issue edit feature (selecting only the relevant issues), or by visiting each issue's details page.

### E. Make a Scrum board for the next sprint

1. In the left pane, navigate to **Issues > Boards** and view your existing Kanban from the last lab. 
1. Click **Group by > Epic** if the board is not already showing that view.
1. At the top of the page, click the dropdown to view the **Switch boards** menu.
1. Click **Create new board**. 
1. Title the new board `Sprint 6`
1. Deselect the **Show the Open list** checkbox.
1. Leave the **Show the Closed list** checkbox selected.
1. Next to **Scope**, click **Expand**.
1. In the scope pane, click **Edit** near Iteration option. Select **Current iteration**.
1. Click **Create board**.
1. Create 3 lists for the Scrum board:
   - the first list shows issues with the **Status::Sprint Backlog** label
   - the second list shows issues with the **Status::WIP** label
   - the third list shows issues with the **Status::QA** label
1. Refresh the browser page to force the 3 new lists to appear in the same order that you created them.

### F. Simulate work on issues
1. Practice dragging some issues through the lists, from **Sprint Backlog**, to **WIP**, to **QA** to **Closed**.
   
### G. View your sprint progress

1. In the left pane, click **Issues > Iterations**.
1. Click into your **Sprint 6** iteration.
1. Note the progress of issues in the burndown and burnup charts.


## Suggestions?

If you'd like to suggest changes to the *GitLab Project Management Hands-On Guide*, please submit them via merge request.
