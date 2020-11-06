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

## How We Work
* The Sales Systems team works in two week sprints/iterations which are tracked as Milestones at the `GitLab.com` level. This aligns the Sale Systems team with how many of our business partners operate but also takes advantage of one of the solutions that [Gitlab provides](https://about.gitlab.com/solutions/agile-delivery/)
* The Systems team strives to emulate the principles below in planning and executing on our milestones as we believe it most effectively aligns our team with [Gitlab's Values](https://about.gitlab.com/handbook/values/#credit)
   * ["Start less, finish more "](handbook/engineering/development/ops/verify/testing/#starting-new-work)
   * [Reduce Issue Churn](https://about.gitlab.com/handbook/engineering/development/ops/verify/runner/#goals)

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

### Working our backlog of Issues
* [Sales System Backlog](https://gitlab.com/groups/gitlab-com/-/boards/1903910?&label_name[]=SalesSystems%3A%3ABackLog)
* In order to align with our working style, the Systems team prioritizes working on issues in this order before looking into our backlog:
   1. Closing out all issues in the current milestone
   2. Addressing any issues that are bugs
   3. Collaborating with Gitlabbers on Issues that are critical for their current milestone.
* The Sales Systems team alternates our focus every other Monday between releasing our latest updates and reviewing issues in the backlog. Once in the Backlog the Systems team assigness each ticket a priority (`priority::1`,`priority::2`,`priority::3`,`priority::4`)
* This status aims to facilitate the process at which the systems team can pull issues out of the backlog and to also provide some context to requstors about when their issues will be reviewed.
  * `priority::1`
    * When will the team review: These issues are reviewed every milestone. This is the first group of issues that the Systems team pulls from when looking to pull issues into a milestone.
    * Issues likely to get this tag: Extremly quick, easy and straight forward issues that we can't address in the next milestone. Issues that are relevant to major releases but not actively being worked on.
  * `priority::2`
    * When will the team review: These issues are reviewed every month.
    * Issues likely to get this tag: These issue could be a part of larger initiatives but may be considered "nice to haves". These are enhancements to existing systems and processes that are in place.
  * `priority::3`
    * When will the team review: These issues are reviewed every quarter.
    * Issues likely to get this tag: These issues could be composed of projects that must be worked on but have no pending deadline.  These could be overhauls of projects that have an impact on system performance but no little to no noticable affect to the field
  * `priority::4`
    * When will the team review: These issues are reviewed every year.
    * Issues likely to get this tag: These issues could be vauge issues that do not have a direct ask, that should be epics, that provide little to no ROI for the greater field.

### Field & Process Deprecation
* Since field & process deprecation is as common an occurance as the creation it is important that the system team implements a repeatable process that we can leverage when deprecating any fields pr processes. 

#### Field Deprecation
* This process is most often used by the systems team. If you have or are aware of a field in Salesforce that is no longer needed, please infom the Sales Systems team by following the process outlined in [getting help from the sales systems team](#steps-to-getting-help-from-sales-systems)
1. Open an issue listing out all of the fields that we are investigating to deprecate. Be sure to include the field name, field API name and the object that the field is associated with in a table in the description of the issue.
1. Alert the data team to the upcoming field deprecation by tagging them on the issue.
1. Alert all relevant partner teams (Marketing Ops, Sales Ops, Finance Ops etc.) as needed
1. Prepend `[DEPRECATE]` to the begining of the field name. If the field name cannot accomadate a field name that long copy and paste the original name into the description, trim unneccessary characters from the name and try again. For this reason `[DELEETE]` is also acceptable to prepend to the field name. 
1. In Visual Studio Code, pull from master and perform a scan for each of the API names in the issue. If the field is used, investigate if the code can be updated as to not include this field. 
1. If code is updated in the previous step prepare a merge request and relate it to the issue.
1. If your sandbox is out of date, refresh it so that any recent edits are included in the next step.
1. Push any updated code to your sandbox (if applicable) and start a change set.
1. For all fields that are still eligable to be deprecated log into your sandbox and attempt to delete them one by one. Record any conenction between any fields and any field updates, workflow rules, validation rules etc. (Reports, Report Types etc can be ignored in this step)
1. Investigate any connections found in the previous steps and if the field can still be deleted.
1. For all fields that cannot be deleted
   - Link the investigation issue to the investigated field by pasting the Gitlab Issue Link in the fields description. 
   - Assign someone as an owner of the field in Salesforce
1. For all fields that can be deleted
   - List them out on a final comment on the issue
   - Update the due date of the issue to the date they will be deleted
   - Confirm that their are no issues with the tagged related teams
   - Validate any change sets with updated automations (if applicable) before the issue due date
   - On the issue due date deploy any change sets and delete the fields from production. If possible allow for a 1 day lag time between field deletion and delting fields from the `Deleted Fields` section in Salesforce

#### Process Deprecation 
* Deprecating aprocess often includes a change in team behavior as well as updates to any processes. The Systems team is wokring on detailed documentation to address these changes and more info will be coming soon! 

## Technical Documentation
*  [Go-To-Market Technical Documentation](/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/)
*  [License Usage App Documentation](/handbook/sales/field-operations/sales-systems/license-usage-app/)
*  [Salesforce Configuration Documentation](/handbook/sales/field-operations/sales-systems/salesforce-config/)

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

## Salesforce.com Installed Package Removal Process

1. Identify the package and what reason(s) you may think it can be removed.
2. Perform initial research on what the packages original intent may have been and identify who owns/owned the use of the functionality. 
   * GitLab's Tech Stack Google Sheet is a great place to check for this information and [can be found here](https://docs.google.com/spreadsheets/d/1mTNZHsK3TWzQdeFqkITKA0pHADjuurv37XMuHv12hDU/edit?usp=sharing)
3. Open an issue with the owner to investigate further. In this discussion, obtain confirmation on whether or not it may be removed. 
4. If confirmed to move forward, test by removing the package from the sandbox.
5. If successfully removed from sandbox, announce the intent to move forward in removing.
6. Document any relevant information about the package. 
   * An example of this could be SFDC fields that are part of the package.
7. Remove the package from production, update the issue and close out.
