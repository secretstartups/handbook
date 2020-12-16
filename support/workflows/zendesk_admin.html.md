---
layout: handbook-page-toc
title: Zendesk Admin
category: Zendesk
description: To add or remove "full" agents from our Zendesk account, contact Zendesk support through the email address contained in the Support vault on 1Password titled "Zendesk Account Manager".
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## People

### Provisioning / Removing Licenses in Zendesk

To add or remove "full" agents from our Zendesk account, contact Zendesk support through the email address contained in the Support vault on 1Password titled "Zendesk Account Manager". This makes sure that the request is routed more quickly than if it is just sent in via their generic support address. Since we are on an annual contract, changes typically require a purchase order to be signed by the [VP of Engineering](/job-families/vp-of-engineering), but the change request can be initiated by any current "full" agent.

### Onboarding and offboarding team members

#### Onboarding

Members of the Support Team should be granted the role `Support Staff` which gives agents access to all the needed tools to fulfill their jobs. Support Managers should be granted `Administrator` permissions.

All Support Team members should be removed from the `General` group and added to the `Support` group in Zendesk. The `Support` group should be the default for all Support team members. Members of other teams who need to have access to Zendesk should stay in the `General` group and it should be their default.

#### Offboarding

To suspend an agent's access to Zendesk, you should follow [Zendesk's best practices](https://support.zendesk.com/hc/en-us/articles/203661156-Best-practices-for-removing-agents). Never delete an agent from Zendesk, you should only downgrade and suspend access.

### Agents and Custom Roles

You can find more information about gaining access to Zendesk as a full or light agent in the [Internal Support for GitLab Team Members](/handbook/support/internal-support/#viewing-support-tickets) page.

The above process is only applicable for members who are not part of the Support Team. For Support Engineers/Managers, access is requested as part of on-boarding and it would be tracked on the associated on-boarding issues.

## Organizations

### Setting up a shared organization for end-users

In Zendesk, we have the option of allowing all of the members of an organization to have a 'shared organization', where everyone can see each other's tickets. This doesn't mean all members of the organization will be CC'd in all tickets, it means that they can see all tickets linked to their organization when they login to the [GitLab Support Help Center](https://support.gitlab.com).  

Support ops are responsible for managing changes to shared organizations.  The workflow is described in [Support ops responsibilities](/handbook/support/support-ops/responsibilities.html#shared-organizations-in-zendesk).

If you want to know whether an organization has this feature toggled on, you can go to the Organization Zendesk Page and find the 'Users' section on the left hand panel. It should say whether the organization has **Can view all org tickets** or **Can view own tickets only**. You can read more about setting up a shared organization in the [Creating, managing, and using organizations](https://support.zendesk.com/hc/en-us/articles/203661976-Creating-managing-and-using-organizations#ariaid-title5) Zendesk page, and read the [process](/handbook/support/support-ops/processes/zendesk.html#shared-organization-process) Support ops use for managing shared organizations.



## Business Rules and Macros

### Service Level Agreements

Within Zendesk, [Service Level Agreements (SLA) policies are defined under Business Rules in the Admin console.](https://support.zendesk.com/hc/en-us/articles/204770038-Defining-and-using-SLA-policies-Professional-and-Enterprise-)

Currently we have 8 different SLA policies, and each of those with 4 different Targets which are set depending on the _priority_  of the ticket which can be Urgent, High, Normal, or Low.

At this stage, we have SLAs defined for First Reply Time (FRT) and Next Reply Time (NRT), all of them in Business Hours except for Emergencies, which are set in Calendar Hours. You can find more information about our Service Level Agreements in our [Support Page](/support/).

- **Emergency SLA** has a 30 minutes FRT for all priorities and 4 hours NRT for all priorities.
- **Silver and Gold SLA**, & **Premium and Ultimate SLA**

    FRT:
    - Urgent: 30m
    - High: 4h
    - Normal: 8h
    - Low: 24h

    NRT:
    - Urgent: 4h
    - High: 4h
    - Normal: 8h
    - Low: 24h
- **Bronze SLA**, **Starter SLA** 

    FRT:
    - Urgent: 24h
    - High: 24h
    - Normal: 24h
    - Low: 24h

    NRT:
    - Urgent: 24h
    - High: 24h
    - Normal: 24h
    - Low: 24h
- **Accounts Receivable**, & **Upgrades and Renewals**

    FRT:
    - Urgent: 4h
    - High: 16h
    - Normal: 24h
    - Low: 36h

    NRT:
    - Urgent: 4h
    - High: 16h
    - Normal: 24h
    - Low: 36h

## Channels

### API Tokens

#### Requesting a Zendesk API Token

If you need to request a [Zendesk API Token](https://support.zendesk.com/hc/en-us/articles/231426867-Beginner-s-Guide-to-the-Zendesk-API), you can do so by submitting an [API Token Request Issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=New_Access_Request) (look for 'API Token Request' in the Dropdown list next to Title) with the title **Zendesk API Token Request**. This help us keep track of who has access to the token and manage token expiration and replacement.
