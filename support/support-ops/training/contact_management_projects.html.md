---
layout: handbook-page-toc
title: 'Contact Management Project setup/removal'
category: Zendesk
description: 'Training documentation concerning Contact Management Project setup/removal'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training page will detail how to work requests to setup a contact
management project.

The setup can be broken down into 3 stages:

* [Intro stage](#intro-stage)
* [Setup stage](#setup-stage)
* [Final stage](#final-stage)

For removals, see [Removal](#removal)

## Intro stage

In this stage, a customer has requested to have a contact management project
setup via a Support Ops ticket. Before we can begin the setup, we need to
confirm with the requester which user(s) will be the ones able to edit the
contacts.yaml file. To do this, use the macro
`Support::Support Ops::Contact management intro`.

Once the requester has confirmed the user(s) who will be maintaining the
contacts.yaml file, you need to ensure the users provided are associated to the
organization currently. If they are not, you should associate them to the
organization first.

After doing so, you will need to get a list of the organization's current
contacts for use in the setup stage.

After doing so, you are good to move to the [Setup stage](#setup-stage).

**Jason Pro-tip**

I would recommend exporting them as a CSV file via
[Advanced search](https://gitlab.zendesk.com/agent/apps/advanced-search). With
the CSV file downloaded, you could then run the following code via terminal to
change the CSV format into the YAML format you will need later:

```bash
awk -F',' '{if ($1!="Query"&&$1!=""&&$1!="\"name\"") {print "- name: "$1"\n  email: "$2}}' csv_file
```

This will work the majority of the time and make it a bit easier down the line.

## Setup Stage

This is where you setup the project. It can be divides into:

* [Project creation](#project-creation)
* [Webhook setup](#webhook-setup)
* [Files setup](#files-setup)
* [User invites](#user-invites)
* [Organization update](#organization-update)

### Project creation

For organizations without an existing collaboration project, we create all
contact management projects within the
[zd-global-orgs group](https://gitlab.com/groups/support/zd-global-orgs).

1. Navigate to that group and click the blue `New project` button at the upper
   right part of the page.
1. Select `Create from template`
1. Click the `Group` tab
1. Click the blue `Use template` button to the right of
   `Contact Management Project Template`
1. Set the `Project name` to `Organization XXXX` (replacing `XXXX` with the
   Zendesk Organizaton ID)
   * Ensure the `Project slug` is `organization-xxxx` (replacing `xxxx` with the
     Zendesk Organizaton ID)
1. Click the blue `Create project` button

After creation the project, you need to double check all settings are accurate.
In theory, the template project will handle that, but it always best to be sure.

The items to check are:

* Settings
  * Settings > General
    * Visibility, project features, permissions
      * Project visibility: Private
      * Enable CVE ID requests in the issue sidebar: disabled
      * Forks: disabled
      * Git Large File Storage (LFS): disabled
      * CI/CD: disabled
      * Container registry: disabled
      * Analytics: disabled
      * Requirements: disabled
      * Secuirty & Compliance: disabled
      * Wiki: disabled
      * Snippets: disabled
      * Package registry: disabled
      * Pages: disabled
      * Monitor: disabled
      * Environments: disabled
      * Feature flags: disabled
      * Infrastructure: disabled
      * Releases: disabled
  * Settings > Repository
    * Branch defaults
      * Default branch: master
    * Protected branches
      * Branch: master
      * Allowed to merge: 2 roles (Maintainers+Developers)
      * Alowed to push: 2 roles (Maintainers+Developers)
      * Allowed to force push: disabled
      * Code owner approval: disabled
* Project files
  * CONTACTS.md
    * Verify the contents match what is detailed
      [here](https://gitlab.com/support/zd-global-orgs/project-templates/contact-management-project-template/-/blob/master/CONTACTS.md)
  * contacts.yaml
    * Verify the contents match what is detailed
      [here](https://gitlab.com/support/zd-global-orgs/project-templates/contact-management-project-template/-/blob/master/contacts.yaml)

After everything looks good to go, make sure to copy the project's ID. You'll
need it in the next step.

#### For organizations with an existing collaboration project

These are a bit trickier and can require a ton of back and forth. For the time
being, please assign these to a Support Operations Manager to work.

### Webhook setup

Next, you'll need to setup the webhook for the project. To do this, navigate to
`Settings > Webhooks` on the project.

You then need to create a new webhook using the following information:

* URL:
  https://ops.gitlab.net/api/v4/projects/619/ref/master/trigger/pipeline?token=TOKEN&variables[PROJECT_ID]=PROJECT_ID
  * Replace TOKEN with the Contact Sync Token found within the Support Ops Vault
    in 1Password.
  * Replace PROJECT_ID with the project's ID.
* Check the box next to `Push events`
* Check the box next to `Enable SSL verification`

Once all that is in place, click the blue `Add webhook` button.

### Files setup

Next, you will add the contact's and add the organization ID to the
contacts.yaml file of the project.

Every contact within that file uses the format:

```
- name: NAME_OF_CONTACT
  email: EMAIL_OF_CONTACT
```

Where `NAME_OF_CONTACT` is the contact's name and `EMAIL_OF_CONTACT` is the
contact's email. Both are required, so if you do not know the `NAME_OF_CONTACT`,
use the `EMAIL_OF_CONTACT` value.

An example of a working and valid contacts.yaml can be found
[here](https://gitlab.com/support/zd-global-orgs/organization-380989798980/-/blob/master/contacts.yaml).

You should ensure the contacts listed matching what the Zendesk organization
_currently_ has in place.

Once that is all setup, commit the changes to the file (this will kick off a
sync pipeline on ops.gitlab.net).

### User invites

Next, you need to invite the user(s) who will maintain the contacts.yaml file.
You should have a list of who to invite from your previous work in the ticket.

To invite the users, do the following:

1. Click `Project information` on the top-left hand side of the page
1. Click `Members` on the top-left hand side of the page (under
   `Project information`)
1. Click the blue `Invite members` button at the top-right hand side of the page
1. Enter the email(s) to use under the `Username or email address ` text box
1. Under `Select a role`, select `Developer`
1. Click the blue `Invite` button on the bottom-right of the modal

### Organization update

Finally, update the organization within Zendesk. You want to set the
`Contact Management Project ID` field to have the project ID.

## Final stage

With all of that done, the final part is to update the ticket using the macro
`Support::Support Ops::Contact management project setup`.

From there, the user might come back with questions or a need for assistance. Do
your best to guide them and assist them however you can. If you get stuck, reach
out in the support operations slack channel.

## Removal

To remove the setup, simply delete the project in question. Doing so will
effectively remove the contact management sync for the organization completely.

**NOTE** If the customer is over 30 contacts at the time of the removal request,
ask the customer to use the contact management project to lower their contact
numbers down to 30 first (as that is the limit for organization contacts when
not using a contact management sync project).

## Useful links

* [Project creation with custom template docuemtnation](https://docs.gitlab.com/ee/user/project/working_with_projects.html#create-a-project-from-a-custom-template)
* [GitLab Webhooks documentation](https://docs.gitlab.com/ee/user/project/integrations/webhooks.html)
* [Add users to a project documentation](https://docs.gitlab.com/ee/user/project/members/#add-users-to-a-project)
* [Contact Management Project Template](https://gitlab.com/support/zd-global-orgs/project-templates/contact-management-project-template)
