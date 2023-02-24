---
layout: handbook-page-toc
title: 'Working Support Ops Tickets'
category: Zendesk
subcategory: Tickets
description: 'Details on working with the tickets we get in the Support Ops queue'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Support Operations has a public form that end-users can use to submit tickets.
These go directly to us. Currently, we have 6 problem types:

* [First time setup](#first-time-setup)
* [Manage my organization's contacts](#manage-my-organizations-contacts)
* [Shared organization requests](#shared-organization-requests)
* [Support portal questions](#support-portal-questions)
* [Support portal issues](#support-portal-issues)
* [Other](#other)

### First time setup

This is for user's who have not been setup in the support portal previously.
Here they should detail what user's they'd like setup and any
important details we should note for working with their organization.

There are two types of situations these can involve:

* The user is not associated to an organization
* The user is already associated to an organization

The latter simplifies the process and should mirror
[Manage my organization's contacts](#manage-my-organizations-contacts).

#### The user is not associated to an organization

To begin with, we will need to have the user prove their support entitlement. To
do this, use the macro `Support::Support Ops::Proof of support entitlement`. 

Once the user has replied with the requested information, we need to locate them
in [cDot](https://customers.gitlab.com/admin):

* For Self-Managed customers
  * If given a license ID:
    1. Navigate to
       `https://customers.gitlab.com/admin/license/xxx` (replacing `xxx` with
       the license ID)
    1. Copy the `Email` on the license and search cDot using that (via the
       [customer page](https://customers.gitlab.com/admin/customer)).
  * If given the license email. search the licenses (via the
    [license page](https://customers.gitlab.com/admin/license)). The use the
    information detailed above (`If given a license ID`).
  * If given a license file:
    1. Download the file to your computer and copy the contents of the file
    1. Validate the contents via the
       [Validate License](https://customers.gitlab.com/admin/license/validate_license)
       page.
    1. Grab the license ID from the output and use the information detailed
       above (`If given a license ID`).
* For SaaS customers
  1. Locate the top level namespace the user is a member of
  1. Determine the namespace's ID (see [Using ChatOps](#using-chatops))
  1. Locate the Zuora Subscription object in Salesforce by searching
     `Zuora__Subscriptions__c.NamespaceID__c` (see
     [Using workbench](#using-workbench) for details on doing this)
     * You might find multiple subscriptions. Locate the one matching what is
       currently present from your results in step 2
  1. Go to the Salesforce Account and grab the Account ID (the 18 character one)

**Note**: This can be tricky and some nuisances can occur. If you encounter
issues locating an account, please reach out to your fellow Support Operations
Specialists for assistance.

After locating them in [cDot](https://customers.gitlab.com/admin), click the
`Edit` tab to go to the customer edit page. On this page, copy the 
`Salesforce account` value. You will then use this to search in Zendesk for the
organization in question (use `salesforce_id:xxx` for the 18 character values
and `sfdc_short_id:xxx` for the 15 character values).

Once you have located the organization via search, you can then associate the
user to that organization (pending no organization notes specifying otherwise).

After doing so, the process should then mirror
[Manage my organization's contacts](#manage-my-organizations-contacts).

#### Using ChatOps

To get the namespace ID via ChatOps, [DM GitLab ChatOps](https://gitlab.slack.com/archives/D012H912Z2A) the following:

```
/chatops run namespace find PARENT_NAMESPACE
```

Replacing `PARENT_NAMESPACE` with the parent namespace's path. Running this will
produce results that include the namespace's ID.

#### Using workbench

To use workbench to locate the Salesforce Account ID:

1. Navigate to https://workbench.developerforce.com/query.php
1. Run the following query:
   * `SELECT Account_ID_18__c, Zuora__SubscriptionStartDate__c, Zuora__SubscriptionEndDate__c, GitLabNamespaceID__c, GitLabNamespaceName__c FROM Zuora__Subscription__c WHERE GitLabNamespaceID__c = 'XXXXX'`
     * Replacing `XXXXX` with the namespace ID
1. Review the results to locate the row that aligns with expectations
1. Copy the `Account_ID_18__c` value

You might need to review the account in Salesforce specifically to determine if
you have the correct one.

### Manage my organization's contacts

This is for user's wishing to setup their organization within the support portal
and are not using a contact management project. They should only be coming from
users who are already associated to their organization. If they are not
associated, please see [First time setup](#first-time-setup).

* For requests to add users:
  1. Check the organization in question and review the number of support
     contacts they have currently.
     * If adding the requested changes would put the organization over the
       maximum allowed 30 contacts, switch over to the
       [Maximum contacts limit issues](#maximum-contacts-limit-issues) workflow.
  1. Search Zendesk to determine if the user already exists but is not
     associated to the organization
     * If they do exist, associate them to the organization
     * If they do not exist, make a mental note you had to create the users for
       the requested changes.
  1. For requests to add users who did not already exist in Zendesk:
     * Go to the organization page, click the dropdown arrow to the top-right of
     the page (on the same line as the organization's name), and select
     `Add user` option. A pop-up modal will appear asking for the name and email
     of the new user. Enter the relevant information and click the blue `Add`
     button (the `User type` will _always_ be `End user`).
     * If you do not know the user's name, as only an email was provided, use
       the full email address as the name.
* For requests to remove users:
  1. Locate the user in question (either via the `Users` tab on the organization
     page or via search). From there:
     * If the user in question has a non-closed ticket, make a mental note of
       this. As there is a non-closed ticket, we should not remove them at this
       time. The requester will need to specify what they want done about this
       (close out the ticket, keep the user, etc.)
     * If the user in question was one mentioned in an organization note
       specifying users approved to request changes, make a mental note to
       adjust the organization note via the
       [organizations project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/organizations).
  1. Remove the association to the organization on the user (done by setting the
     organization to `-`).
  1. Add a note on the user with the following:
     > User was de-associated from the organization as per TICKET_LINK
     * Replace `TICKET_LINK` with the link to the request.

After doing the above, you need to reply to the requester confirming the state
of their request. To assist in this process, we have some macros you can use:


* `Support::Support Ops::Users added to organization`
* `Support::Support Ops::Users removed from organization`
* `Support::Support Ops::User has non-closed tickets`
* `Support::Support Ops::Users need to perform password reset`

These can be used in combination of one another, as they are not full response
macros (but instead pieces of a full response).

### Maximum contacts limit issues

When a organization not using a contact management project exceeds 30 support
contacts (or a request to add more contacts would do so), we need to intervene
to address that issue. For these types of issues:

1. You should first use the macro
   `Support::Support Ops::Maximum contacts reached`. This will require you to
   attach a CSV of the current contact list for the organization. To get a CSV:
   1. Go to the
      [Advanced Search app](https://gitlab.zendesk.com/agent/apps/advanced-search),
      click the `Users` tab, enter the organization's ID in the `Organization` 
      field, then click the blue `Search` button
  1. Click `Columns` and deselect all checkboxes except for `Name` and `Email`
  1. Click the blue `Download CSV` button and wait for the download to complete
     * We suggest renaming the file to something less vague for the customer,
       such as their organizations name or something involving the ticket ID.
1. You will then work with the user to help determine what users to remove (see
   [Manage my organization's contacts](#manage-my-organizations-contacts) for
   more info). This can vary in what exactly will be done, so use your best
   judgment or ask for assistance in the support operations slack channel.

Remember, once the maximum contacts limit issue is fixed, you might need to
review the ticket and go back to a previous issue that the ticket was raised
about.

### Shared organization requests

These are requests for shared organization setup/management. See the
[Shared Organizations workflow](shared_organizations.html) for more details.

### Setup a contact management project

These requests are a bit more complicated to do. Please see
[Contact management projects](contact_management_projects.html) for more
information on doing these.

### Support portal questions

These are were general questions about the support portal should go. Do your
best to answer the questions presented in a timely manner.

### Support portal issues

These are reports of issues within the support portal. While each issue can
present unique challenges, the common troubleshooting guide for these would be:

1. Ask the user for commonly needed info:
  * Ask the user to confirm their browser is not blocking third party cookies
    * They might need to whitelist these values:
      * `[*.]zendesk.com`
      * `[*.]zdassets.com`
      * `[*.]gitlab.com`
  * Ask the user to confirm they have deleted all cookies and cache (and
    re-logged in).
  * Ask the user for the browser type being used.
  * Ask the user for the browser version being used.
  * Ask the user for a list of browser plugins being used.
  * Ask the user for a list of browser themese being used.
  * Ask the user for a list of browser extensions being used.
  * Ask the user for the JS Console output.
  * Ask the user for a HAR file.
1. Speak with the rest of the Support Ops team about the ticket.
1. Escalate the issue to Zendesk Support.

### Other

This is a catchall field, meaning there is no specific workflow for requests
using this problem type.

#### Incorrect initial form tickets

When a ticket is filed using the incorrect form, agents will use the
`General::Forms::Incorrect form used` macro. This will change the form to our
form, tag the ticket, and leave an internal note. From there, we are expected
to review the ticket and resolve the problem.

To accomplish this, we need to review the ticket and determine the next steps.
As the ticket as not gotten a first response from the correct team (because it
was using the wrong form), we should be setting the stage to FRT when we correct
the form. If doing so would cause the ticket to instantly breach, we instead
want to create a new ticket.

```mermaid
graph TD;
  A-->B;
  B-->C;
  C-->|Yes| D;
  C-->|No| I;
  D-->|Yes| E;
  D-->|No| H;
  E-->F;
  F-->G;
  A(Ticket comes to Ops due to<br>incorrect form)
  B(Ops determines correct form)
  C{Will the ticket breach FRT<br>SLA is moved over currently?}
  D{Does the ticket have previous<br>agent replies?}
  E(Leave an internal note detailing<br>what you have found and why it is not<br>being moved)
  F(Post in the channel responsible<br>for the ticket based off the correct<br>form asking someone to reply to the ticket first)
  G(Move the ticket to the correct<br>form with the stage being NRT after<br>someone has replied on the ticket)
  H(Create a new ticket and use the macro<br>Support::Support-Ops::Response<br>to original ticket using an incorrect form)
  I(Move the ticket to the correct form,<br>setting stage to FRT, removing<br>assignee, and ensuring the SGG is blank)
```

**Notes**: 

1. If the ticket needs to undergo the Needs-Org process, please do that
   in the original ticket first. We want the new ticket to be as ready to be
   worked as possible, and starting a new ticket we created for an end-user with
   the Needs-Org process is not a great customer experience.
1. If you determine the ticket is from a free or community user, there is no
   need to create a new ticket. Instead, simply change the form to the
   appropriate support form and ensure the SaaS/Self-managed Subscription is set
   to 'Free User'. This will ensure the ticket will have no SLA and will be
   visible in the
   [Free user tickets](https://gitlab.zendesk.com/agent/filters/360038103100)
   view.
1. When moving tickets to a new form, do your best to fill out the ticket
   metadata for the team that will work the ticket.

##### If you are making a new ticket

Once you determine the correct form, you should review what ticket fields that
form uses and what information is missing. In the original ticket, leave an
internal comment saying which form needed to be used and what data is missing.
Any of the data you can determine based on the original ticket is a
plus, as it will skip needing to ask the customer to reply with that
information in the new ticket. An example note could be:

> The correct form should have been Self-Managed.
> 
> The missing data is:
>
> * Self-Managed Problem Type
> * GitLab Install Type
> * GitLab Version

Once you have noted the original ticket, create the new ticket using the
correct ticket form. Make sure to file the ticket using
https://support.gitlab.com/hc/en-us/requests/new (you may need to use a
different browser or an incognito window) so the first reply is from the
original requester and not an agent (this ensures it gets the FRT SLA). Make
sure to fill in as much of the information as is possible. For any information
you do not readily know, do your best to guess for the time being.

Some notes to help in filing the ticket properly:

* The subject of the ticket should be the _exact_ same as the original ticket.
* The description should be in the format:
  > Greetings <NAME_OF_ORIGINAL_REQUESTER>,
  >
  > Recently you filed ticket #<ID_OF_ORIGINAL_TICKET> with us. Sadly, it was
  > using the incorrect form and was filed incorrectly on our end. To help
  > clear that up and get you working with the correct team, we are filing this
  > new ticket on your behalf.
  >
  > Your original response was:
  >
  > <DESCRIPTION_FROM_ORIGINAL_TICKET>
  >
  > During our review of ticket #<ID_OF_ORIGINAL_TICKET>, we did find some
  > needed information was missing. Please comment back as soon as possible
  > with the following information:
  >
  > <LIST_OF_MISSING_DATA>
  >
  > While we review your ticket, here is some other data you could also send
  > that is often helpful to us:
  >
  > * A GitLabSOS report (https://gitlab.com/gitlab-com/support/toolbox/gitlabsos/) if you are using Omnibus
  > * A KubeSOS report (https://gitlab.com/gitlab-com/support/toolbox/kubesos/) if you are using Kubernetes
  >
* Markdown does not work for customer filed tickets. Try to limit the markdown
  used to markdown that will still render properly in plaintext

Once the new ticket is created, notate the original ticket and send a reply using the [`Support::Support-Ops::Response to original ticket using an incorrect form`](https://gitlab.zendesk.com/admin/workspaces/agent-workspace/macros/4623695359260) macro. 
