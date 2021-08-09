---
layout: handbook-page-toc
title: "Sales Systems"
description: "This page in an overview of all things related to the Sales Systems team at Gitlab. It includes an overview of who we are, how we work, how to work with us as well as references to key sales systems technical documentation and system configuration."
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
| [Business Systems Architect](https://about.gitlab.com/job-families/sales/business-systems-administrator/) | Project lead in charge of gathering business requirements from customers and developing them into technical specifications. |
| [Business Systems Administrator](https://about.gitlab.com/job-families/sales/business-systems-administrator/) | Business analyst experienced in Salesforce.com platform configuration, process automation, and business workflows.   |
| [Business Systems Engineer](https://about.gitlab.com/job-families/sales/business-systems-engineer/) | Software engineer experienced in Salesforce.com platform APEX development, API based integrations, and the software development life cycle. |

## Working with us
* [Sales System Agile Board](https://gitlab.com/groups/gitlab-com/-/boards/1117318?label_name[]=SalesSystems)
* [Sales Systems Project](https://gitlab.com/gitlab-com/sales-team/field-operations/systems)
* [Salesforce.com APEX repository ](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src)

## How We Work
* The Sales Systems team works in two week sprints/iterations which are tracked as Milestones at the `GitLab.com` level. This aligns the Sale Systems team with how many of our business partners operate but also takes advantage of one of the solutions that [Gitlab provides](https://about.gitlab.com/solutions/agile-delivery/)
* The Systems team strives to emulate the principles below in planning and executing on our milestones as we believe it most effectively aligns our team with [Gitlab's Values](https://about.gitlab.com/handbook/values/#credit)
   * ["Start less, finish more"](https://about.gitlab.com/handbook/engineering/development/ops/verify/testing/#starting-new-work)
   * ["Reduce Issue Churn"](https://about.gitlab.com/handbook/engineering/development/ops/verify/runner/#goals)

### Steps to getting help from Sales Systems
1.  Create an issue in our [project](https://gitlab.com/gitlab-com/sales-team/field-operations/systems), making sure to provide detailed business requirements for the ask or problem. Please leave assignee blank
    * If this issue removes any existing functionality, or requires any components to be deprecated, please include the `technical debt` label on the issue.
2.  In order to align our working style with the Labels, the Systems team prioritizes working on issues in the order as they get added & the issues get labelled accordingly
3.  The Systems Label Workflow and Label Description are as follows

      ![The Systems Label Workflow](/handbook/sales/images/Systemsworkflow.png)

      * ![Sales Systems](/handbook/sales/images/Salessystems.png) New Issues that are created in the systems board are automatically tagged and any existing issues related to sales systems are tagged with this label
      * ![Need More Information](/handbook/sales/images/SSNeedinformation.png) Issues awaiting for information from the requester, needs more clarity in requirements, no milestone and not assigned to systems team member yet
      * ![Out Of Scope](/handbook/sales/images/SSOutscope.png) Issues that are outside the parameters of an initiative, cannot be combined with current functionality and this issue will be closed
      * ![Ready For Assignment](/handbook/sales/images/SSReadyassingment.png) Issues that are acknowledged (in review), gathering requirements, no milestone and not assigned to systems team member
      * ![Assigned](/handbook/sales/images/SSAssign.png) Issues that are ready to moveforward, slotted to a milestone (not current) & assigned to systems team member's queue
      * ![Build](/handbook/sales/images/SSBuild.png) Issues that are in the current milestone, assigned to systems team member that are actively to be worked on
      * ![Ready To Business Owner Review](/handbook/sales/images/SSBusinessowner.png) Issues in current milestone that are near the finish line, needs to be reviewed and demoed to the business owner(s) to sign-off
      * ![Ready To Deploy](/handbook/sales/images/SSReadydeploy.png) Issues in current milestones, sign-offs given by the business owner that are ready to be deployed by systems team member
      * ![Blocked](/handbook/sales/images/SSBlocked.png) Issues in the current milestone which are assigned to systems team member which are stalled due to technical difficulties and/or assigned to business owner pending to provide information to the systems member to move forward

4. Please review the status of any issue on our agile [board.](https://gitlab.com/groups/gitlab-com/-/boards/1117318?label_name[]=SalesSystems)
5. If there is a severity impacting the flow of business (i.e. No one can make a quote, No accounts are being created, Opportunities cannot be closed Won) follow the process as described above as well as share the issues in the `Sales-Support` Slack Channel

### Field & Process Deprecation
* Since field & process deprecation is as common an occurrence as the creation it is important that the system team implements a repeatable process that we can leverage when deprecating any fields pr processes. 

#### Field Deprecation
* This process is most often used by the systems team. If you have or are aware of a field in Salesforce that is no longer needed, please inform the Sales Systems team by following the process outlined in [getting help from the sales systems team](#steps-to-getting-help-from-sales-systems)
1. Open an issue listing out all of the fields that we are investigating to deprecate. Be sure to include the field name, field API name and the object that the field is associated with in a table in the description of the issue.  Add the `technical debt` label to the issue.
2. Alert the data team to the upcoming field deprecation by tagging them on the issue.
3. Alert all relevant partner teams (Marketing Ops, Sales Ops, Finance Ops etc.) as needed
4. Prepend `[DEPRECATE]` to the beginning of the field name. If the field name cannot accommodate a field name that long copy and paste the original name into the description, trim unnecessary characters from the name and try again. For this reason `[DELEETE]` is also acceptable to prepend to the field name. 
5. In Visual Studio Code, pull from master and perform a scan for each of the API names in the issue. If the field is used, investigate if the code can be updated as to not include this field. 
6. If code is updated in the previous step prepare a merge request and relate it to the issue.
7. If your sandbox is out of date, [work with the Systems team to refresh it](/handbook/sales/field-operations/sales-systems/#sandbox-refreshes) so that any recent edits are included in the next step.
8. Push any updated code to your sandbox (if applicable) and start a change set.
9. For all fields that are still eligible to be deprecated log into your sandbox and attempt to delete them one by one. Record any connection between any fields and any field updates, workflow rules, validation rules etc. (Reports, Report Types etc can be ignored in this step)
10. Investigate any connections found in the previous steps and if the field can still be deleted.
11. For all fields that cannot be deleted
   - Link the investigation issue to the investigated field by pasting the Gitlab Issue Link in the fields description. 
   - Assign someone as an owner of the field in Salesforce
12. For all fields that can be deleted
   - List them out on a final comment on the issue
   - Update the due date of the issue to the date they will be deleted
   - Confirm that there are no issues with the tagged related teams
   - Validate any change sets with updated automations (if applicable) before the issue due date
   - On the issue due date deploy any change sets and delete the fields from production. If possible allow for a 1 day lag time between field deletion and deleting fields from the `Deleted Fields` section in Salesforce

#### Process Deprecation 
* Deprecating a process often includes a change in team behavior as well as updates to any processes. The Systems team is working on detailed documentation to address these changes and more info will be coming soon! 

#### Deactivate Service User
* This deactivation process is made to deactivate service user profiles. Service accounts are accounts that are used as integration Users, Connection users etc., in order to deactivate the service user account follow the [template](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=). Please note deactivating standard users will be done by Sales Operations.


## Technical Documentation
*  [Go-To-Market Technical Documentation](/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/)
*  [Go-To-Market Integrated Environments](/handbook/sales/field-operations/sales-systems/gtm-integrated-environments/)
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
6.  You have identified the priority of the request based on our [priority matrix](/handbook/sales/field-operations/sales-systems/#priority-matrix), and added the appropriate label: `Priority::Low`, `Priority::Medium`, `Priority::High`

**Change Managment Steps:**
1.  Make sure you start on branch master and `git pull`.
2.  Create a new branch, giving it a name that ties back to the issue: `git checkout -b "SalesSystems-158"`.
3.  If you are writing code, frequently push your changes to your sandbox using and `SFDX: Deploy Source To Org` on the changed classes, triggers or pages.
4.  If you are editing configuration, frequently pull down your changes to your local environment using `SFDX: Retrieve Source From Org` on the changed objects or metadata.
5.  Make sure to write and run a unit test for code, and for both code and config, test the changes by hand in the SFDC user interface.
6.  When you feel your iteration is complete run `git status` to make sure the changed files are the ones you expected.
7.  Add in the files you wish to commit with `git add [filename]` or `git add *` if you want to add all changed files.
8.  Commit your changes with a relevant message: `git commit -m "Fixing Apex CPU Errors"`.
9.  Using the link provided by GitLab, open a merge request, [make it a `Draft:`](/handbook/git-page-update/#marking-a-merge-request-as-draft), and assign it to the Architect on the project.
10.  Comment on the related issue with an @ to the project's Architect for review, providing a link to the merge request. (this automatically links the merge request to the issue)
11.  The Architect (or assigned delegate) will assign the story a Change Management level, based on the scope of the change as defined [here](https://about.gitlab.com/handbook/business-technology/change-management/#change-request-types).
12.  You will then need to document that the appropriate approvals (as defined in the [Approval Matrix](https://about.gitlab.com/handbook/sales/field-operations/sales-systems/#approval-matrix) section below) have been completed in the issue.
13.  If the Architect calls for a live demo, schedule the meeting and prep your sandbox to do a run through with the end customer.
14.  If the Architect calls for user acceptance testing, make sure the assigned testers have access to the sandbox where the work was done, and schedule testing.
15.  Once the solution passes, the Architect will remove the `WIP:` status and merge the change.
16.  Once merged, package up all relevant files into a Change Set from your Sandbox to Production (or to a Staging instance if the Architect requests it).
17.  Name the Change Set the same as the issue/branch: `SalesSystems-158` and push to production.
18.  Once the Change Set arrives in production, validate it. If there are any errors, go back to step 3. If steps 3, 4, and 5 are followed errors at validation should be rare.
19.  Once the Change set validates, ping the Architect to schedule the deployment.
20.  After the deployment, perform any post deployment steps such as adding visibility to net new fields.
21.  Confirm with the end user that the functionality is working as expected.
22.  Create a merge request to our [technical documentation](/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/) adding the new feature or editing the features entry.
23.  Before moving to your next task rebase with `git checkout master` then `git pull`. **Always be pulling!**
24.  Clone the merged change set that was deployed into production and push and deploy this change set to staging. (Post deploy steps and setup are optionable)

Note: We are continuing to move towards using [Salesforce SFDX and GitLab CI/CD Pipelines](https://trailhead.salesforce.com/en/content/learn/projects/automate-cicd-with-gitlab)

## Priority Matrix

Priority for the Sales Systems team is based on two axis, Impact and Urgency.  For a detailed breakdown of how these work, review [this blog post](https://www.bmc.com/blogs/impact-urgency-priority/#).  Priority is used by the team when planning to identify those stories which have a higher business impact and urgency.

### Impact

Impact defines how large of an impact (positive or negative) the change proposed in the issue will make for our business.  Impact is classified as High, Medium, and Low.

A change which only affects a single or small set of users should be classified as Low impact, while a change which impacts an entire department would be medium, with Large impact being reserved for OKRs and other company wide initiatives.

Negative impact examples include:

- System level outages preventing access to multiple users (High impact)
- Missing functionality to support a key business process for a group of users (Medium impact)
- A field inaccessible to a single user for reporting needs (Low impact)  

Positive impact examples include:

- A business process automation which will result in increased revenue or which supports an OKR (High impact)
- Developing a new tool to support a department's use of Salesforce (Medium impact)
- Automating a single repetitive action to save time for a single user (Low impact) 

### Urgency

Urgency represents how quickly this change is needed by the business stakeholders.  Please note that while the urgency is expressed in relation to a targeted delivery timeframe, the team will not always be able to accommodate the urgency if other higher priority issues are needed for the business.  The team does recognize that urgency is relative and can change over time, which would also cause an issue to elevate in priority over time.  When this occurs, the team will work with you to reclassify the priority of your issue accordingly during our next sprint planning meeting.

- High urgency issues should be addressed by a known due date in the next 30 calendar days
- Medium urgency issues should be addressed some time in the next 90 days
- Low urgency should be be resolved as capacity allows

### Priority

Combining the two axis above results in the below priority matrix.


| **Impact** / <br/> **Urgency** | **High** | **Medium** | **Low** |
| ------ | ----- | ----- | -----	|
| **High** |  `Priority::High` | `Priority::High` | `Priority::Medium` | 
| **Medium**  | `Priority::High` | `Priority::Medium` | `Priority::Low` |
| **Low** |  `Priority::Medium` | `Priority::Low` | `Priority::Low` |

## Approval Matrix

|	**Approval Type**	|	**Description**	|	**Standard**	|	**Comprehensive**	|	**Emergency**
|	-----	|	-----	|	-----	|	-----	|	-----
|	**Peer Review**	|	Peer Reviews are performed by a peer of the change requestor or developer and are intended to identify any potential issues with the planned change or change process.<br/><br/>**Note:** The peer review process was established to mitigate the risk of the lack of segregation of duties between developer and implementer. The review provides comfort that changes to the production environment are valid.	|	Yes	|	Yes	|	Yes
|	**Business System Architect**	|	Approval by Business System Architect(or delegate)	|	Yes	|	Yes	|	Yes
|	**Business Approval** (Typically BI and EA only)	|	Approval by Business Stakeholder that is responsible for the particular business tool or process which is impacted by the requested change.	|	Yes	|	Yes	|	Yes
|	**Director of Sales Systems**	|	The Head of IT must approve all changes made during blackout periods	|	No	|	Yes	|	Yes |


## Salesforce specific policies and actions

### Installed Package Removal Process

1. Identify the package and what reason(s) you may think it can be removed.
2. Perform initial research on what the packages original intent may have been and identify who owns/owned the use of the functionality. 
   * GitLab's Tech Stack Google Sheet is a great place to check for this information and [can be found here](https://docs.google.com/spreadsheets/d/1mTNZHsK3TWzQdeFqkITKA0pHADjuurv37XMuHv12hDU/edit?usp=sharing)
3. Open an issue with the owner to investigate further. In this discussion, obtain confirmation on whether or not it may be removed. 
   * Add the `technical debt` label to the issue.
4. If confirmed to move forward, test by removing the package from the sandbox.
5. If successfully removed from sandbox, announce the intent to move forward in removing.
6. Document any relevant information about the package. 
   * An example of this could be SFDC fields that are part of the package.
7. Remove the package from production, update the issue and close out.
 

### Sandbox refreshes

#### How to request a sandbox refresh for a personal sandbox

1. Create an issue for the Sales Systems team by following the instructions above.
2. In the issue description, include the name of the sandbox and the names of any users who need to be granted access to the sandbox.
3. Link the issue to any other issues which are blocked pending the refresh of this environment.

#### Refresh process for sandboxes maintained as part of the SDLC process

1. The Sales Systems team will have an issue tracked in each month for the refresh of each environment with a due date of the refresh date.
2. On the date of the refresh, the assigned Sales Systems team member will kick off the refresh in production.  Note: A sandbox refresh can take up to 72 hours to complete.
3. After the refresh completes, the Sales Systems team will complete the following steps to set the environment.

|Refresh step|Owner|To be completed by|Environments|Action steps|
|-----|-----|-----|-----|-----|
|Reconnect RingLead user|@ksavage|@ksavage/@rrosu|STAGING|1. Login to RingLead.<br>2. Locate the SFDC connections page.<br>3. Authenticate with the RingLead Integration user using the user password for this account in the production org (stored in 1Password).|
|Disable Scheduled Apex Jobs||||
|Disable Outbound Messages or point them to QA server endpoints||||
|Reconfigure External Web Service calls for a non-production environment||||
|Disable Analytic Snapshots [ If any ]||||
|Get the new Sandbox Org ID and instance Id if required||||
|Remove the email suffix for required users to send email with new sandbox link

      Required Users in Staging Sandbox 

                 - [ ] jbren
                 - [ ] jpetr
                 - [ ] msnow
                 - [ ] mclyn
                 - [ ] lscho
                 - [ ] svisw||||
| Create any required users who don't exist in Production||||
| Regenerate (or completely disable) Inbound Email Services||||
|Delete / modify entries in Remote Site Settings if you don't want to perform certain callouts.||||
|Disable "Big Deal Alert" on Opportunities [ If any]||||
|If you have managed packages with API keys ask support teams to regenerate the keys [If Needed]||||
|If you have "power users" that will coordinate User Acceptance Testing - create entries in Delegated Administration area so they can "login as"||||
|Break Email addresses on Contacts, Leads etc. with suffix like it's done for users (if there's any risk of routine communication kicking in for example from workflow email alerts)||||
|Disable Weekly Data Export||||
|For any sensitive email templates it might be worthwhile to change content (fake logo, big red "TEST ONLY" etc)||||

#####Refresh cadence

Sandboxes which are managed as part of our team's SDLC process will follow a regular refresh schedule, as detailed below.

|Sandbox name|Sandbox type|Used for|Refresh cadence|Last refresh date|Next refresh issue|
|-----|-----|-----|-----|-----|-----|
|[STAGING](https://gitlab--staging.my.salesforce.com)|Full|Pre-production org.  Used for UAT of Systems issues prior to release to production.  Also used for troubleshooting.|Monthly, on the second Friday of the month| 3/11/2021 10:06 AM |To be provided|
|[SANDBOX](https://gitlab--staging.my.salesforce.com)|Partial|Developer integration and testing org. |Monthly, on the third Friday of the month|6/18/2021 3:14 PM|To be provided|

### Data, Data Uploads & Permissions
- Salesforce is one of the key systems that our business relies on and as such the data and its accuracy is extremly important to the business. As such we strive to find the balance between ability to update the data within Saleforce and maintaining its integrity. While we do implement systems that strive to maintain and ensure that the data within Salesforce is correct we understand that sometimes the data is incorrect as business requirements change and updates to the data are needed. As such the below aims to outline the individuals who are allowed to mass update the data within Salesforce and the corresponding fields that are permitted to be updated as well as the fields that are restricted from being updated. 

#### Data Upload Permissions 
- It is important to highlight that the below permission all follow the restrictions as laid out in the `Data Upload Restrictions` table below. Please consult both while completing any data uploads. 
- Any data uploads that impact more then one organization unit, can only be completed after the notice and approval by all impacted teams. When there is any doubt if a data upload will impact multiple teams a System Administrator should be consulted before completing the data upload. 
- All users who wish to upload data using the DataLoader must first complete the requierments in the `Data Upload Training & Setup` section before being permitted to upload data.
- When informing leadership or other teams of your data load be sure to summarize the fields that are being updated using the field name and API name of the field in order to strive for more efficient communication on the data load process. 

| Individuals / Groups | Data Upload Permissions | 
| -------------------- | ----------------------- | 
| System Admininistrators | System Admins have the ability to update any and all fields within Salesforce. They should only be updating the data with an understanding of the impacts downstream such as cascading field updates, APEX code runs, compensation implementations etc. |
| Sales Operations | Members of the Sales Operations Team may complete any data uploads to fields that they can update on their own UIs |
| Customer Success Operations | Members of the Customer Success Operations Team may complete any data uploads to fields that solely impact the Customer Succes organization and their wholly owned processes |
| Channel Operations |  Members of the Channel Operations Team may complete any data uploads to fields that solely impact the Channel and their wholly owned processes |
| Marekting Operations | Members of the Marketing Operations Team may complete any data uploads to fields that solely impact the Marketing Team and their wholly owned processes. Prior to completing the uploads though they must inform a member of the Sales Systems team to ensure the fields that they are updating do not cause any cascading updates in Salesforce. Additionally since Marketo and Salesforce are tighly integrated it is encouraged that Marketing Ops also coordinates with the Marketo System Owner to help limit any issues with the integration, API usage etc.  |

#### Data Uplod Restrictions
- When in doubt if you have permission to update fields in Salesforce using the data upload process reach out to a System Administrator to clarify if your uploads are permitted and have any unintentional impacts. 

| Data | Data Restrictions | 
| ---- | ----------------- | 
| Compensation Data | No Compensation data may be updated without first consulting the compensation team and the leadership of the Sales Systems Teams or the Sales Operations Teams | 
| Revenue Data | No Revenue fields may be updated without first consulting the leadership of the Sales Systems Teams or the Sales Operations Teams | 
| Closed Opportunity Fields | No updates to Opportunity Fields on any Closed Oportunities can be completed without consulting the leadership of the Sales Systems Teams or the Sales Operations Teams |
| Any Deletions | No mass data deletions may be completed without first consulting the leadership of the Sales Systems Teams or the Sales Operations Teams |

#### Data Upload Training & Setup 
- Prior to being permitted to utilize the Data Loader all users must review the [Data Loader Documentation provided by Salesforce](https://developer.salesforce.com/docs/atlas.en-us.dataLoader.meta/dataLoader/data_loader.htm)
   - Key Highlights: 
      - [Data Loader Configuration](https://developer.salesforce.com/docs/atlas.en-us.dataLoader.meta/dataLoader/configuring_the_data_loader.htm) especially as it pertains to batch size and to working with Null values. This should be reviewed and confirmed prioir to every Data Upload 
- In order to install Data Loader follow the [Instructions provided by Salesforce](https://developer.salesforce.com/docs/atlas.en-us.dataLoader.meta/dataLoader/loader_install_general.htm)
   - If you prefer video instructions on how to install Data Loader you can watch [this installation video](https://www.youtube.com/watch?v=vZOsb9gvFu4) which summarizes the process for windows (The process is the same for Macs)
