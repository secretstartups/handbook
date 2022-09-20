---
layout: handbook-page-toc
title: "Product Design Manager Workflows"
description: "We support the business of GitLab by becoming experts in our stage group, educating ourselves about the entire product, and staying engaged with user and business goals. This page contains workflows specifix to Product Design Managers"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}
{::options parse_block_html="true" /}

- TOC
{:toc .hidden-md .hidden-lg}


# Product Design Manager Workflows

## Requesting a borrow

A [borrow](/handbook/product/product-processes/#borrow) is used when a team member is shifted from one team to another temporarily or assisting other teams part-time for an agreed-upon period of time.

There are two Borrow request options. Choose the one that makes the most sense for your situation.

- If multiple members (within or including outside of UX) are part of the borrow request, use the [Borrow issue template](https://gitlab.com/gitlab-com/Product/-/blob/main/.gitlab/issue_templates/Borrow-Request.md).
- If a borrow is limited to a single member of UX (such as a Product Designer) and no other stable counterparts, use the [Borrow Lite issue template](https://gitlab.com/gitlab-com/Product/-/blob/main/.gitlab/issue_templates/Borrow-Request-Lite.md). 

Before a borrow takes place, make sure to have it approved by the appropriate director (Product Design, UX Research, or Technical Writing). 

Utilizing these issues will help us understand the frequency and duration of borrows throughout the year. Tracking occurs by appending the `UX Borrow` label to each issue request. 


## Team Skills Matrix

We conduct an annual team skills analysis based on a [process recommended by Nielsen-Norman](https://www.nngroup.com/articles/skill-mapping/).

This allows us to see our strengths as a team and to identify team trainings that would benefit a large portion of the team, help us identify strengths we'd like to add when hiring new team members, and inform individual team member's growth plans. It can also act as a resource for matching mentors and/or design pairs.

#### How to conduct the team assessment
1. Make a copy of the [GitLab focused template (private to GitLab)](https://docs.google.com/spreadsheets/d/1mN8Shag6X7xpikxnoJYm-IfWbuhgGe9pRiFm_SvCDD4/edit#gid=0). 
2. Review the template to make sure it still makes sense for your team. Do consider changes carefully and discuss with other managers. We want to be able to have consistency in these so we can view them across multiple design teams. 
3. Introduce this process to your team by sharing this page, the NN article and the GitLab focused template.
3. Copy the template for each individual team member and share it with them.
4. In 1:1s, have a casual conversation with the team member and ask them to rate themselves in their individual file. You may suggest adjustments based on your observations - if you do, share an example of why.
4. After completed the assessment with each team member, copy the results to the main team template. I kept this file private.
5. Create an issue similar to [#1674](https://gitlab.com/gitlab-org/gitlab-design/-/issues/1674) to share the results. You can remove individual names from this view.
5. Have a retrospective with your team to identify strengths and weaknesses. Find things to build up the weaknesses (where people have said they want to improve).
5. Share with other UX leaders.


#### Definitions
Note: These are also in the template, which is the SSOT. 

##### Levels
0. Awareness: You are aware of the competency but are unable to perform tasks.
1.  Capable but still new to the skill: You understand the concept and you can apply it but your experience is limited  (you might be new to GitLab or new to quant research for example).
2. Intermediate proficiency: You have applied this skill to situations occasionally without needing guidance.
3. Advanced proficiency: You regularly apply this skill at an advanced level without needing guidance.
4. Advanced proficiency + leader: You can coach others in the application by explaining related nuances.
5. Expert: You have demonstrated consistent excellence across multiple projects and are a thought leader across the UX department.

##### Skills
* Qualitative research: Usability testing, interviewing. Creating effective unbiased research plans. Synthesizing data into insigts.
* Quantitative research: Understanding when to use surveys and how to use the data, AB testing - when to use and what do do the data, how to design for an experiment.
* Visual design - UI design, graphic design, illustrations, typography, logos.
* Interaction design - Form and flow design, micro-interactions, handling latency and error states, UI copy, page layout.
* Leadership: Starting new issues, being a content or design contributor (handbook, Pajamas, YouTube, etc), collaborating with others to acheive big goals, evangelizing your teams outcomes or sharing new methods or skills.
* Iteration: Every MVC is an iteration. Every iteration should be an MVC. Additionally, includes breaking projects down into parts to get results faster - could be smaller studies, smaller design scope. Not refining design work too early, not going too far into the work before circling back for feedback.
* Design communication: Sync or async, the ability to see and quickly understand a design, critique it, share design rationale for the design, get feedback from the right people at the right time.
* IA and Workflow Definition: Organizing large amounts of data or concepts, navigation design, card sort, and tree studies, creating workflow diagrams and screen flows.

## Team Member Updates
Whenever you need to update the area of the product a team member is supporting, such as on the [Product Categories page](/handbook/product/categories), you'll generally need to update or review the following pages and projects: 

### Section-level updates
For section-level updates you'll want to do the following:
1. Go to the [www-gitlab-com project > Repository > Files](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master)
1. Select the `data` directory
1. Scroll down and click on the `sections.yml` file
1. Select the editor type of your choice
1. Locate the person you need to update, make the change, commit/create an MR, and follow the MR process from there

### Group-level updates
For group-level updates you'll want to do the following:
1. Go to the [www-gitlab-com project > Repository > Files](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master)
1. Select the `data` directory
1. Scroll down and click on the `stages.yml` file
1. Select the editor type of your choice
1. Locate the person you need to update, make the change, commit/create an MR, and follow the MR process from there

### Name confirmation
For all updates you'll want to confirm that the person you've updated has a name reference in the category names file, otherwise it won't render correctly on the handbook page it's being called on.
1. Go to the [www-gitlab-com project > Repository > Files](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master)
1. Select the `sites` directory
1. Select the `handbook` directory
1. Select the `source` directory
1. Select the `includes` directory
1. Select the `product` directory
1. Scroll down and click on the `_categories-names.erb` file
1. Select the editor type of your choice
1. Locate the person you need to update, make the change, commit/create an MR, and follow the MR process from there
    - Note: If a team member is going to be performing Interim duties you’ll need to add their name a second time following this format: [fName lName (Interim)]: /company/team/#GitLab-username

### Update Team Member (Such as to remove/add from UX MR Reviewer Roulette)
Go to the [www-gitlab-com project > Repository > Files](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master)
1. Select the `data` directory
1. Select the `team_members` directory
1. Select the `person` directory
1. Locate the correct alphabet letter folder according to the team members first initial in their first name
1. Click on their .yml file
1. Select the editor type of your choice
1. **To remove from** the UX MR Reviewer Roulette bot:
    1. Delete the `gitlab: reviewer UX` line under the `projects:` section
    1. Commit/create an MR, and follow the MR process from there
1. **To add to** the UX MR Reviewer Roulette bot:
    1. Revert the original MR where the team member was removed or
    1. Find their .yml file again following the above steps
    1. Add back the `gitlab: reviewer UX` line under the `projects:` section
    1. Commit/create an MR, and follow the MR process from there

### Triage reports
In the [triage-ops project](https://gitlab.com/gitlab-org/quality/triage-ops), open an MR to add or remove team members from receiving triage reports. The file to edit is [group_definition.yml](https://gitlab.com/gitlab-org/quality/triage-ops/-/blob/383402bff66bcdb45e842f7f8dfb1b77a500c650/group-definition.yml).

### Retrospectives
In the [GitLab team retrospective group](https://gitlab.com/gl-retrospectives), find the team members section and group, and add and remove team members there. This step is required so that confidential issues can be seen by team members.

Also, open an MR to add or remove team members in the [team.yml](https://gitlab.com/gitlab-org/async-retrospectives/-/blob/master/teams.yml) file in [async-retrospectives](https://gitlab.com/gitlab-org/async-retrospectives).

