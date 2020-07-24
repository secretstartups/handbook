---
layout: handbook-page-toc
title: Zendesk Organizations Overview
category: Zendesk
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Organizations

## How organizations are created?

Organizations in Zendesk are created automatically through our Salesforce and
Zendesk integration (as well as the GitLab built sync script). This integration
allows agents to see a customer's full Salesforce Profile within a live ticket
in Zendesk. You can read more about what information we send to Salesforce and
what fields are populated with information from Zendesk in the
[Support Ops handbook page](https://about.gitlab.com/handbook/support/support-ops/#salesforce---zendesk-sync).

> Please do not manually create organizations. This can break the ZD<>SFDC
> integration and cause users to receive incorrect SLAs. If you notice an
> organization needs to be created, please notify support-ops to rectify this.

## Organizations with outdated information

If you notice an organization in Zendesk contains outdated information or the
information doesn't match what Salesforce is displaying, this would indicate the
sync integration has hit an issue. Luckily, we have the GitLab built sync script
that runs every 4 hours to rectify such issues.

In your due diligence, you would want to create an issue via the 
[support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/issues/new)
so support-ops can double check to ensure there is nothing blocking the sync.

## Shared Organizations

You have the option of allowing all of the members in an organization to see each other's tickets. This is referred to as a shared organization. Read more about this process in the [Support Engineer Ops page](https://about.gitlab.com/handbook/support/support-ops/processes/zendesk.html#shared-organization-process) 

## Adding users to organizations

If you don't have admin access on ZD, you can still make sure the proper SLA is applied by adding the user to the appropriate organization.

Before doing this, you first need to ensure the user is supposed to be associated with the organizations. The current process for this is as follows:

- Locate the organization in Salesforce
- Check the contacts for the Account in Salesforce
- If the user's email address is listed there, you may safely associate the user to the organiztion.
- If the user is not listed there, you will need to reach out to the TAM (Technical Account Manager) or Account Owner (sometimes referred to as AM / Account Manager) to confirm they should be added. Ask the TAM / Account Owner to add the user under the contacts for that Salesforce Account. (You can find the TAM / Account Owner name in Zendesk on the Organization's screen - this is synced from SalesForce.)
- Once the user is added as a contact in Salesforce, you may safely associate the user to the organization.
Note: While you are working with the TAM/AM to get the user added as a Salesforce contact, please let the customer know you are reaching out to their TAM/AM to get them properly associated with the organization.

The process to associate a user with an organization is:

- Click on the users's name in ZD
- In the "Org" field type the organization name
