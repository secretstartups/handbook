---
layout: handbook-page-toc
title: "GitLab InnerSourcing Hands On Guide- Lab 2"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab InnerSourcing course."
---
# GitLab InnerSourcing Hands On Guide- Lab 2
{:.no_toc}

## LAB 2- CREATE AN EPIC AND TIE AN ISSUE TO IT

### Create an Epic 
1. Navigate to **Groups** > **Your Groups** 
2. Navigate to **Training Users** and expand the arrow to the left of Training Users and locate your User group and click on it.  
3. On the left-hand navigation pane, click on the **Epics** section, then click the **New epic** button. 
4. In the **Title** field, type `InnerSourcing Project` and click **Create epic**.  
5. In the right hand pane, begin filling in the details for the epic. In the **Due date** field, select **a month from now**.  
6. Now create another epic, in the Upper right hand corner, click the **New epic** button. 
7. In the **Title** field, type `InnerSourcing Developer Work` and in the description field, type `This epic will house all the work by developer team 1 for the InnerSourcing Project.` 
8. In the **Labels** dropdown, create a group label for `working::in development` with a green color and select it to add it to the epic.  
9. Leave the start and due dates empty and click the **Create epic** button. 

### Create a Sub-Epic and Tie it to the Parent Epic 
1. On the left hand panel, click on **Epics**, then select your first epic for **InnerSourcing Project** 
2. Once the epic is open, in the **Epics and Issues** section, on the right, click the **Add** drop down menu and select **Add an existing epic** and paste the URL from your second epic (InnerSourcing Developer Work) to add it as a Sub-Epic.  
3. Click the **New epic** button and in the **Title** field, type `InnerSourcing Marketing Work` and click **Create epic**.  
4. In the Comment Field, use a quick action to add this epic to the Parent epic. Type `/parent_epic <[&1​]>` and then select **InnerSourcing Project** from the drop down that appears.  
5. Click the **Comment** button. 

### Tie an Issue to an Epic 
1. Navigate to your **InnerSourcing Project** epic, in the right hand corner, click on the **Add** dropdown and select **Add an existing issue**.  
2. In the field that populates, type `#` and you will see a drop down appear, select your issue from the list and click the **Add** button.  

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab InnerSourcing- please submit your changes via Merge Request!

