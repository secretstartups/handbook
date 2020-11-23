---
layout: handbook-page-toc
title: Support Operations US Federal Zendesk Processes
description: Support Operations Zendesk processes specifically for US Federal instance.
---

# US Federal Zendesk Processes

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Users

### Provisioning Agents

Every request for this should come as an Access Request issue, either made
manually or via the onboarding bot.

As the instance requires US Citizenship to access, we have to do a few steps to
verify this before we can provision an agent. The process is as follows:

* Reply on the AR issue letting them know you are reaching out to the People
  Success team to verify US Citizenship.
* Verify the person's US Citizenship via the People Success team
  * To do this, you need to send an email to `people-exp@gitlab.com`
  * The subject of the email should be `US Citizenship Verification`
  * The body of the email should be:
    > Greetings all!
    >
    > Can you verify if NAME_OF_PERSON is a US Citizen? They are requesting
    > access to the Federal Zendesk instance via ISSUE_LINK which does require
    > it.
    > 
    > Thanks!
    > YOUR_NAME_HERE
  * Replace NAME_OF_PERSON with the name of the agent to provision
  * Replace ISSUE_LINK with the link to the AR issue
  * Replace YOUR_NAME_HERE with your name
* Once People Success has replied back confirming US Citizenship, go to the [US
  Federal Zendesk instance](https://gitlab-federal-support.zendesk.com/agent/dashboard).
* Hover over `+ Add` in the top left corner and click `User`.
* Input the user's name and email address.
* Select the correct role based on the AR issue.
* Click the `Add` button
* Go to the
  [US Federal Zendesk app](https://gitlab-admin.okta.com/admin/app/zendesk/instance/0oa17cyes3JepgPZg357)
  in Okta.
* Click the green `Assign` button and then click `Assign to People`.
* Enter the agent's email in the search box to locate the agent.
* Click the `Assign` button.
* On the new box, use the `Custom role` dropdown to select the correct role
  (based on the AR issue).
* Click `Save and Go Back`
* Enter the agent's email in the search box so it filters the users to show
  only the agent's assignment entry.
* Take a screenshot of this and post it in the AR issue to confirm the agent
  has been provisioned.

### Deprovisioning Agents

This will follow the exact same process as the main zendesk instance. For more
information, see [Deprovisioning Agents](zendesk.html#deprovisioning-agents).

## Organizations

### Shared Organization Process

A shared organization is one in which the end-users in said organization have
heightened permissions in regards to tickets created in the organization. The
options available to this are:

* All users can view all tickets but not add comments
* All users can view all tickets and add comments to all tickets

#### Process in Action

The process is as follows:

* The customer requested their organization be made into a shared organization.
  This can stem from:
  * The customer requested it in an existing ticket
  * The customer reached out to Sales/TAM/AM requesting it
* Whether it be Sales, Support, the TAM, etc., that group/person will need to
  make an issue to Support-Ops. This is done via the
  [Shared Organization Issue Template](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Shared%20Organization%20Request)
* From here, Support-Ops needs to confirm if a ticket exists.
  * If it does, Support-Ops needs to reply to the ticket using the
    `SupportOps::Confirm Request for Shared Organization` macro
  * If it does not, Support-Ops needs to create the ticket, using the
    `SupportOps::Confirm Request for Shared Organization` macro
* Support-Ops needs to assign or CC themselves on the ticket, so they can be
  updated when the ticket is updated. It might be a good idea to add the rest of
  the Support-Ops team as CCs to ensure it can be handled as soon as is
  possible.
* Once the customer replies confirming the setup, Support-Ops then needs to
  apply this (see below).
* Once applied, Support Ops should reply to the ticket confirming the changes
  have been made.

For the actual changes, it depends on the exact settings the customer wants.
Generally speaking, the process is to navigate to the organization page within
Zendesk, click the dropdown next to the `Users` entry (towards the top of the
left-hand side) and select the option the customer desired. If you are allowing
all users to view tickets, a second dropdown will appear asking if they can also
comment on them. Select the ones that have been requested by the customer to
apply them to the organization.

If they are only wanting to have specific users have heightened abilities, you
would need to do this via the user page instead. The steps are the same, with
the exception that the dropdown(s) will be under the `Access` entry instead of
the `Users` entry.

#### Process Flowchart

The below mermaid chart shows the general process for this.

```mermaid
graph TD;
  A --> B;
  B --> C;
  C -- One does not exist --> D;
  C -- One does exist --> E;
  D --> F;
  E --> F;
  F --> G;
  G --> H;
  H --> I;
  A(Customer requests they be made into a shared organization)
  B(Support/TAM/AM creates a Support Ops Issue for this)
  C(Support Ops confirms a ticket exists for the request)
  D(Support Ops creates a ticket to the organization contact, applying the correct macro)
  E(Support Ops sends a reply, using the correct macro)
  F(Support Ops assigns or CCs themselves on the ticket)
  G(Customer replies, confirming the type they desire)
  H(Support Ops applies permissions change to organization/users)
  I(Support Ops replies to ticket confirming the change has been made)
```

## Suspended and Deleted Tickets

Once a shift, Support Ops should go through the Suspended and Deleted tickets in
Zendesk. The objective is to clear these views out. For references, the views
are:

* [Suspended tickets](https://gitlab.zendesk.com/agent/filters/suspended)
* [Deleted tickets](https://gitlab.zendesk.com/agent/filters/deleted)

### Suspended Tickets

For the suspended tickets, you will need to review the contents of said ticket 
(done by clicking the subject) to determine if the ticket is legitimate or not.
As this can sometimes be tricky, Support Ops should feel free to request the
assistance of a Support Manager in determining those that are not clear.

If the ticket is legitimate, you should click the Recover Automatically button.
Once it has been recovered, you should let the Support Team know, as the ticket
has likely faced a delay and might be close to (if not) breaching SLA.

If the ticket is not legitimate, you should click the arrow on the right hand
side of the button and select `Delete`. 

### Deleted Tickets

For deleted tickets, you should look over the tickets present and make sure they
should be deleted. This will require looking at the reason and the subject. If
you are unsure, feel free to request the assistance of a Support Manager in
determining those that are not clear.

For tickets to delete, you should simply select all of them (via the
checkboxes), click the arrow next to the black button at the top right, and
select `Delete x ticket forever`.
