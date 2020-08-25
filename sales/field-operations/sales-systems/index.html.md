---
layout: handbook-page-toc
title: "Sales Systems"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Sales Systems Charter
Sales Systems exists to support the GitLab field organization by providing reliable, scalable, and intuitive technology platforms for everyday use. Primarily working on Salesforce.com and its related business systems, our goal is to constantly deliver value in the form of features to our end users. We also act as the connective tissue between business and technology, gathering requirements from our internal customers, designing the technical specifications and executing on the delivery of the solution.

## Team Skill Sets
Below is a list of the different technical skill sets found on the Sales System team. Note: A Sales Systems team member might be using a mix of the following skills sets at any one time.

| Role | Expertise |
| ------ | ------ |
| Business Systems Architect | Project lead in charge of gathering business requirements from customers and developing them into technical specifications. | 
| [Business Systems Administrator](https://about.gitlab.com/job-families/sales/business-systems-administrator/) | Business analyst experienced in Salesforce.com platform configuration, process automation, and business workflows.   |
| [Business Systems Engineer](https://about.gitlab.com/job-families/sales/business-systems-engineer/) | Software engineer experienced in Salesforce.com platform APEX development, API based integrations, and the software development life cycle. | 

## Working with us
* [Sales System Agile Board](https://gitlab.com/groups/gitlab-com/-/boards/1117318?label_name[]=SalesSystems)
* [Sales Systems Project](https://gitlab.com/gitlab-com/sales-team/field-operations/systems)
* [Salesforce.com APEX repository ](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src)

### Steps to getting help from Sales Systems
1.  Create an issue in our [project](https://gitlab.com/gitlab-com/sales-team/field-operations/systems), making sure to provide detailed business requirments for the ask or problem. Please leave assignee blank.
2.  Issues that are in review will be tagged with the `SalesSystems::Triage` label by the Sales Systems team.
3.  An issue will be assigned to a Milestone and given an assignee if it is ready to be worked on.
4.  Any issue that cannot be slotted into the next two milestones will be put in the backlog denoted by `SalesSystems::Backlog` until it can be planned.
5.  Please review the status of any issue on our agile [board.](https://gitlab.com/groups/gitlab-com/-/boards/1117318?label_name[]=SalesSystems)

#### Getting help with Bugs
* There is an important difference to make between bugs and features. Lucky enough we can explore the differences on the [Feature Vs Bug](/handbook/product/product-processes/#issues.html) section of the handbook. This should help in digging deeper but for a quick refernce: 
   * Bug
      * If somehting worked yesterday and not today.
      * If you are encountering error codes that tell you to contact and administrator (different from a validation rule error).
      * If something was recently released and does not work at all.
   * Feature
      * If something works but you want it to work in a different manner.
      * If something was released and additional functionality is desired.
      * If something is released and the requierments change.
* The Systems team works to address Bugs in a timely fashion that is aligned with the severity of the bug. If you think that a bug was released open an issue by following the processes above and add the `SalesSystems::Bug` issue label. The Systems team will review this list on a daily basis to address any bugs and plan work on them. 
* If there is a severe bug that is impacting the flow of business (i.e. No one can make a quote, No accounts are being created, Opportunities cannot be closed Won) follow the process as descibed above as well as the follow points: 
   * Share the issues in the `sales-support` Slack channel

## Working our backlog of Issues
* [Sales System Backlog](https://gitlab.com/groups/gitlab-com/-/boards/1903910?&label_name[]=SalesSystems%3A%3ABackLog)
* The Sales Systems team alternates our focus every other Monday between releasing our latest updates and reviewing issues in the backlog. Once in the Backlog the Systems team assigness each ticket a priority (`P1`,`P2`,`P3`,`P4`)
* This status aims to facilitate the process at which the systems team can pull issues out of the backlog and to also provide some context to requstors about when their issues will be reviewed.
  * `P1`
    * When will the team review: These issues are reviewed every milestone. This is the first group of issues that the Systems team pulls from when looking to pull issues into a milestone. 
    * Issues likely to get this tag: Extremly quick, easy and straight forward issues that we can't address in the next milestone. Issues that are relevant to major releases but not actively being worked on. 
  * `P2`
    * When will the team review: These issues are reviewed every month.
    * Issues likely to get this tag: These issue could be a part of larger initiatives but may be considered "nice to haves". These are enhancements to existing systems and processes that are in place.   
  * `P3`
    * When will the team review: These issues are reviewed every quarter.
    * Issues likely to get this tag: These issues could be composed of projects that must be worked on but have no pending deadline.  These could be overhauls of projects that have an impact on system performance but no little to no noticable affect to the field
  * `P4`
    * When will the team review: These issues are reviewed every year.
    * Issues likely to get this tag: These issues could be vauge issues that do not have a direct ask, that should be epics, that provide little to no ROI for the greater field. 

## Technical Documentation
*  [Go-To-Market Technical Documentation](/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/)

## Salesforce.com Change Management Process

**Before beginning work, make sure:**
1.  You have a fully setup local SFDC Dev Environment.
   * [Visual Studio Code](https://code.visualstudio.com/?wt.mc_id=DX_841432)
   * [Salesforce Trailhead: Setting up your VS Code](https://trailhead.salesforce.com/en/content/learn/projects/find-and-fix-bugs-with-apex-replay-debugger/apex-replay-debugger-set-up-vscode)
2.  You have access to a personal [SFDC Dev Sandbox](https://gitlab.my.salesforce.com/07E?retURL=%2Fui%2Fsetup%2FSetup%3Fsetupid%3DDeploy&setupid=DataManagementCreateTestInstance).
3.  Your SFDC Dev Environment is correctly pointed at your SFDC Dev Sandbox
4.  You have cloned our [Git repository](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src) into your local Sandbox working directory.
5.  You are working from a GitLab issue with clear technical specifications that deliver on the agreed business requirements.

**Change Managment Steps:**
1.  Make sure you start on branch master and `git pull`.
2.  Create a new branch, giving it a name that ties back to the issue: `git checkout -b "SalesSystems-158"`.
3.  If you are writing code, frequently push your changes to your sandbox using and `SFDX: Deploy Source To Org` on the changed classes, triggers or pages.
4.  If you are editing configuration, frequently pull down your changes to your local environment using `SFDX: Retrieve Source From Org` on the changed objects or metadata.
5.  Make sure to write and run a unit test for code, and for both code and config, test the changes by hand in the SFDC user interface.
6.  When you feel your iteration is complete run `git status` to make sure the changed files are the ones you expected.
7.  Add in the files you wish to commit with `git add [filename]` or `git add *` if you want to add all changed files.
8.  Commit your changes with a relevant message: `git commit -m "Fixing Apex CPU Errors"`.
9.  Using the link provided by GitLab, open a merge request, [make it a `WIP:`](/handbook/git-page-update/#marking-a-merge-request-as-a-work-in-progress-wip), and assign it to the Architect on the project.
10.  Comment on the related issue with an @ to the project's Architect for review, providing a link to the merge request. (this automatically links the merge request to the issue)
11.  If the Architect calls for a live demo, schedule the meeting and prep your sandbox to do a run through with the end customer.
12.  If the Architect calls for user acceptence testing, make sure the assigned testers have access to the sandbox where the work was done, and schedule testing.
13.  Once the solution passes, the Architect will remove the `WIP:` status and merge the change.
14.  Once merged, package up all relavent files into a Change Set from your Sandbox to Production (or to a Staging instance if the Architect requests it).
15.  Name the Change Set the same as the issue/branch: `SalesSystems-158` and push to production.
16.  Once the Change Set arrives in production, validate it. If there are any errors, go back to step 3. If steps 3, 4, and 5 are followed errors at validation should be rare.
17.  Once the Change set validates, ping the Architect to schedule the deployment.
18.  After the deployment, perform any post deployment steps such as adding visibility to net new fields.
19.  Confirm with the end user that the functionality is working as expected.
20.  Create a merge request to our [technical documentation](/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/) adding the new feature or editing the features entry.
21.  Before moving to your next task rebase with `git checkout master` then `git pull`. **Always be pulling!**

Note: We are continuing to move towards using [Salesforce SFDX and GitLab CI/CD Pipelines](https://trailhead.salesforce.com/en/content/learn/projects/automate-cicd-with-gitlab)
