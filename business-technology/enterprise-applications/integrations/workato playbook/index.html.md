---
layout: handbook-page-toc
title: "Enterprise Applications Integrations"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## Integrations - Workato Playbook

### How to get the access?
To get started with Workato, please create an [access request](https://about.gitlab.com/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/#individual-or-bulk-access-request) and assign it to @dparker or @karuna16. In the the AR, please mention the follwoing details:

- [ ] your orgnisational team
- [ ] workato environment - dev, test or prod.
- [ ] why do you need the access?

#### Types of Roles/Accesses available in Workato:
Currently, we have two classifactions of roles per team in Workato:
1. **Team Admin**: To Create, Edit, Deploy, Run/Stop recipes. Like Marketing Admin.
2. **Team Ops**: To view, run/stop recipes. Like Marketing Ops.

Please **note** the accesses are configurable as per team and use case basis.

#### Access Change Process:
To change your access privileges in Workato all environments, please open an [access change request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request) and assign it to @dparker or @karuna16. 
Please remember to mention the environment, if its for dev, test or prod.

### Getting Started with Workato
Once the AR is approved and closed, you'll see the Workato app in your Okta home page. _Please refresh the Okta home page, in case you cannot find the app_. There're 3 Workato apps in Okta for each of the environment, based on your request, you'll see those ones in Okta.

On clicking the app, you'll land up in the Workato home page. Click on anyone of the project plate, and you're good to start creating or editing recipes.

![workato landing page](./workato%20landing%20page.png/)

![left panel](./left%20panel%20details.png/)


### Workato Ramp-up programs
There are number of trainings available in Workato Automation Institution and various levels - Beginner, Intermediate and Advanced.  Based on your requirements you can opt for any of them. Please note, sll the courses are available in self learning and instructor-led mode and require you to have login in Workato to avail for them.

Here're are some of the course we recommend to get started with Workato:

_Beginner level_: [Automation Pro I On Demand training](https://academy.workato.com/automation-pro-i-on-demand)

Course helps you to understand:
-  Basics of building blocks in Workato and their settings:
	- Recipes
	- Data mapping
	- Data transformations
- Hands on exercises with scenarios to help understand the integration picture.

_Intermediate level_: [Automation Pro II On Demand training](https://academy.workato.com/automation-pro-ii-revised)

Course helps you to understand:
- Advanced concepts to complete a working recipe. Like:
	- Error Handling
	- Conditional Actions (if/else)
	- What are properties and lookup tables?
	- Repeat Actions and Variables.
- Hands on exercises with scenarios to help understand the integration picture.
On course completion, you can opt for certification exam too.

_Intermediate level_: [Recipe lifecycle management](https://academy.workato.com/recipe-lifecycle-management)

Course helps you to understand:
- Roles and access management in Workato
- Deployment of recipes across environments
- What are manifests and how you export and import them to deploy your code?
- CI/CD Automation
- Hands on exercises.


### Best Practices in Workato
While using Workato for building recipes, here are some best practices that would help you manage and track your work items easily. These are some of the basic points to keep in mind, espically if you're new to Workato. For more detailed information please visit the [Workato page](https://support.workato.com/en/support/solutions/folders/1000210065)

1. #### Which org to use?: 
Always create your folders, connections and recipes in dev org first. Once tested move your code to higher orgs - test and prod using Workato's Recipe lifecycle management tool.

2. #### Folder creation:
It's best to create a playground folder in the project followed by a folder of your name if you're just playing around or learning to work in Workato. If you are creating recipes for actual project work, best to create a folder with project name. Say, if you integrating leads between Salesforce and Marketo, the folder name could be Lead integration.

3. #### Naming and managing your recipes:
   1. Its best to use app names in recipes like [SFDC+QBO] New account in Salesforce. It helps to quick spot and sort them.
   2. Another handy way to manage recipes is to use the `New recipe` prefix while building the recipe, and when you have a successful recipe, change that to the intended name and delete the trial ones. You can easily track and delete the trial ones because of the 'New recipe' pre-fix.
   3. Clones: If you clone a recipe from some other user, your recipe gets the same name as the original. Keep in mind that when the original changes you don't get notified or updated.

4. #### Adding desciptions and comments:
Use in-step comments to add one-liner desciption to your steps to the recipe reaable and understandable. Please refer the video on how to set the comments 


