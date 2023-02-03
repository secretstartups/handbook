---
layout: handbook-page-toc
title: SaaS Trial Guidelines
description: SaaS Trial Guidelines
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

[**SA Practices**](/handbook/customer-success/solutions-architects/sa-practices/) - [**Sales Plays**](/handbook/customer-success/solutions-architects/sales-plays/) - [**Tools and Resources**](/handbook/customer-success/solutions-architects/tools-and-resources/) - [**Career Development**](/handbook/customer-success/solutions-architects/career-development/) - [**Demonstration**](/handbook/customer-success/solutions-architects/demonstrations/) - [**Processes**](/handbook/customer-success/solutions-architects/processes/) - [**SA Content**](/handbook/customer-success/solutions-architects/sa-content)

## SaaS Trial Guidelines
{:.no_toc}

GitLab currently prevents users from adding a trial license to an existing licensed SaaS namespace.  Since some features such as project and group access tokens are not available with a trial license, using a separate trial namespace ensures data integrity of production data and reduces confusion for end users in the production instance.  The guidelines here are meant to help customers get started with an Ultimate trial.  

### Creating a New Namespace on SaaS and Starting a Trial
 - To create a new namespace, you should login to gitlab.com and [create a new top-level group](https://docs.gitlab.com/ee/user/group/manage.html#create-a-group).  Note that the group should be created **outside** of your existing SaaS subscription. e.g. if your production group name is ACME123 and you want your trial group to be ACME123-trial, then the trial group url should be `https://gitlab.com/ACME123-trial`, **not** `https://gitlab.com/ACME123/ACME123-trial`.

 - Request a trial - in your new trial group, go to Settings -> Billing, then click the button "Start a free ultimate trial" at the bottom of the screen

### Populating your group with project data
 - When determining which projects to import into the trial namespace, we recommend considering the following criteria:
    - Use copies of your own existing groups/projects - see [General Approaches](####general-approaches) below
    - Use GitLab Security demo projects - GitLab provides a set of [security demos](https://gitlab.com/gitlab-org/security-products/demos) to show how the various security scans work

- [Project Access Tokens](https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html) and [Group Access Tokens](https://docs.gitlab.com/ee/user/group/settings/group_access_tokens.html) are not available on a trial license
 
#### General Approaches

   - [Copy Groups and Projects](https://docs.gitlab.com/ee/user/group/import/index.html)
      - When copying from one Gitlab.com namespace to another, you must copy all subgroups and projects.  This is not recommended for customers with a large number of groups and projects.
      - Only [these](https://docs.gitlab.com/ee/user/group/import/index.html#migrated-group-items) groups items are migrated, no others
      - Only [these](https://docs.gitlab.com/ee/user/group/import/index.html#migrated-project-items) project items are migrated. Note these are the same project items that are migrated with file exports (described in the next section) 

   - [Migrate Projects using file exports](https://docs.gitlab.com/ee/user/project/settings/import_export.html) 
      - Only [these](https://docs.gitlab.com/ee/user/project/settings/import_export.html#items-that-are-exported) project items are migrated. Note these are the same as above even if the lists look a little different. 

   - [Project Forking](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html)
      - This works like standard forking with a copy of the repository and branches
      - You will not have access to a lot of the project items that you get with the previous two approaches

- Added strategies
   - [Repository Mirroring](https://docs.gitlab.com/ee/user/project/repository/mirror/index.html)
      - Any of the above approaches can be combined with mirroring to make sure branches, tags, and commits are synced
      - Items such as Merge Requests and issues are not synced

- What to set up
   - [Autobuild](https://docs.gitlab.com/ee/topics/autodevops/stages.html#auto-build) will use a Dockerfile contained in the project root directory or cloud native build packs to detect the application type and build it
   - Since some project configurations like CI/CD variables, container and package registries, and tokens, do not get imported some suggestions are as follows
      - [SAST](https://docs.gitlab.com/ee/user/application_security/sast/), [Secret Detection](https://docs.gitlab.com/ee/user/application_security/secret_detection/), and [Dependency Scanning](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/) can be run without building your project. Simply add them to the CI file and comment out any build / deploy sections if they cannot be set up again
      
      - [Container Scanning](https://docs.gitlab.com/ee/user/application_security/container_scanning/) - needs an application built into a container and pushed to the container registry, usually created via a build job that precedes the container scanning job, but does not require a deploy job
   - In order to validate [DAST](https://docs.gitlab.com/ee/user/application_security/dast/) or [web api fuzz testing](https://docs.gitlab.com/ee/user/application_security/api_fuzzing/), you must have a deployed application available to scan.  You might want to [connect a kubernetes cluster](https://docs.gitlab.com/ee/user/clusters/agent/) to make evaluating these features easier. 

- For customers wanting to evaluate portfolio and project planning, they can view the [GitLab Organization](https://gitlab.com/groups/gitlab-com/) to view the epic list and boards, roadmap, milestones, and other portfolio features.  Note: some features are only available to logged in users.

- Trials come with GitLab shared runners available (with credit card verification) but the number of minutes is limited.  If additional minutes are required, the [GitLab Sales team](https://about.gitlab.com/sales/) can request an increase on the customer's behalf.


