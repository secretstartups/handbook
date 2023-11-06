---
layout: handbook-page-toc
title: "GitLab Project Management Hands-On Guide: Lab 10"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Project Management course."
---
# GitLab Project Management Hands-On Guide
{:.no_toc}

## LAB 10: CREATE AND MANAGE A WATERFALL BOARD

The Kanban and Scrum boards in previous labs showed the *progress* of issues as developers worked on them. A waterfall board shows the *health* of all the issues that your team is responsible for within in a single waterfall stage. With a pure waterfall workflow, all issues are due at the same time--at the end of the waterfall stage--so what you're tracking with the board is how likely they are to be done by that date.

### A. Make a milestone representing a waterfall stage

1. Navigate to the **Awesome Software** project.
1. In the left pane, click **Issues** and select **Milestones**.
1. Click **New milestone**.
1. Title the new milestone `Release 2.0-Dev`
1. Select today's date as the start date and 1 month from today's date as the due date.
1. Click **Create milestone**.

### B. Add issues to the milestone

1. In the left pane, click **Issues**.
1. Use the bulk edit feature to assign a few issues to the **Release 2.0-Dev** milestone.
   
### C. Simulate past work in the waterfall stage by setting issue health statuses

1. For each issue in the milestone, randomly apply one of the **Health::On Track**, **Health::Needs Attention**, or **Health::At Risk** scoped labels. 
1. Even though the Waterfall board won't make use of the **Status::** labels that are already applied to some issues, it won't do any harm to leave them.

### D. Make a board to track the health of issues in a single waterfall stage

1. In the left pane, click **Issues > Boards**.
1. Using the dropdown at the top of the page, create a new board. 
1. Title the board `Release 2.0 Dev Stage`
1. Deselect the **Show the open list** checkbox.
1. Scope the board to display issues in the **Release 2.0-Dev** milestone.
1. Click **Create board**.
1. Create 3 new lists for the board:
   - the first list shows issues with the **Health::On Track** label
   - the second list shows issues with the **Health::Needs Attention** label
   - the third list shows issues with the **Health::At Risk** label
   
### E. Simulate work on issues

1. Practice dragging and dropping your issues across different lists as their at-risk status increases or decreases.
1. Simulate completing some issues by dragging them into the **Closed** list.


## Suggestions?

If you'd like to suggest changes to the *GitLab Project Management Hands-On Guide*, please submit them via merge request.
