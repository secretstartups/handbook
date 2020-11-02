---
layout: handbook-page-toc
title: "TAM and Support Interaction"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [TAM Handbook homepage](/handbook/customer-success/tam/) for additional TAM-related handbook pages.

----

## Objective

Define the process for how the TAM interacts with the systems and processes designed to provide customers with technical support.  

## Establishing Customers in Support Systems

During the onboarding process, the TAM will ensure that customers are correctly established in the support system.  GitLab manages support requests through a system called [Zendesk](/handbook/support/workflows/zendesk-overview.html).   GitLab has [integrated the GitLab instance of Salesforce with Zendesk](/handbook/support/workflows/zendesk_organizations_and_users_overview.html) to facilitate the establishment of users in Zendesk.  The integration synchronizes account-level data so that the Zendesk ticket has accurate information on the customers’ purchase of products that include support.

Though automation exists, the TAM must still ensure customers take additional steps to fully establish their personnel in Zendesk.   Specifically, the TAM must work with the customer to establish specific Zendesk users under the Zendesk Account so that tickets submitted by the customer’s personnel are guided by the GitLab support team’s [Service Level Agreements.](/support/#gitlab-support-service-levels) 

The primary step the TAM should complete is to collect a list of names and email addresses for people that the customer intends to have SLA-driven access to support. The TAM loads these contacts into the GitLab Salesforce system as Contacts associated with the customer’s Account record.  The TAM also asks the support team to set the domain name for the Zendesk account to the domain name for the customer’s submitted email addresses, when applicable. The TAM then advises the Customer to have these people register in the support system by navigating to support.gitlab.com and following the instructions on the Sign In pop-up for people that are new to GitLab. The self-registration process will then recognize the email address and correctly ensure that submitted tickets are guided by the customer’s purchased support SLA.  

Users who aren't associated with their organization will be asked to [prove their support entitlement](/support/#proving-your-support-entitlement) which can introduce some delays in resoltuion.

## Support Ticket Best Practice

GitLab offers [a variety of support options](/support/) for all customers and users on both paid and free tiers. The TAM should continually review customer tickets and then  educate customers on support best practices.  IN particular, the TAM should ensure that customers are submitting tickets that meet best practice.  For customers on Standard and Priority support tiers please address the below items when [submitting a support ticket](https://support.gitlab.com/hc/en-us):

1. Provide as much detail as possible during the first submission of the ticket
1. Summary of issue (when did it start, how frequently, impact on organization, etc.)
   - Detailed steps to recreate
   - Current behavior
   - Expected behavior
   - Any recent changes to Gitlab, its components, dependencies, or the services it's hosted on?
   - Attach logs and screenshots (avoid attaching .doc or .pdf files)
1. If you prefer Support to only answer during your business hours, choose your region; otherwise choose "All regions" to get the standard SLAs. See our [guidelines](https://about.gitlab.com/support/#effect-on-support-hours-if-a-preferred-region-for-support-is-chosen) for more information.
1. Try and avoid requesting a call during the initial ticket submission. We would like to keep all communication within the ticket and attempt to resolve the issue here before going to a call.
1. If a call is necessary, the support engineer will invite your team to a call via the ticket.
1. If a support engineer requests follow up items, please make sure to respond back with these items. This will help us resolve the issue as quickly as possible.

## Support Ticket Notifications

When a TAM is assigned to an account in Salesforce, any time that a user from that account submits a support ticket, the TAM will receive an email to let them know, which includes a link to the Zendesk ticket and an [automatically-created](/handbook/support/support-ops/#salesforce---zendesk-sync) Salesforce case. The email will also include the account name, contact name and email, and the date the ticket was opened. TAMs should receive the email within 1-2 hours of the ticket being opened.

In the email notifying TAMs of new tickets, the included Zendesk ticket link currently leads directly to the ticket. In the past, it has been a .json file which is difficult to read and sometimes doesn't load. If you encounter this, there are a few ways to work around this:

1. Open the Salesforce case link instead. You will be unable to take any action on the ticket, but you will be able to read it.
1. Open the Zendesk ticket link, then edit the URL so it takes you to the ticket itself rather than the .json. For example, https://gitlab.zendesk.com/api/v2/tickets/123456.json is the format of the ticket link in the email, but by deleting `/api/v2` and `.json` and then going to that new link, https://gitlab.zendesk.com/tickets/123456, you will be taken directly to the ticket.
1. Go to [Zendesk](https://gitlab.zendesk.com/agent/) and search for the ticket (by copying the ticket number or searching for the customer).
1. Get the [Redirector Chrome extension](https://chrome.google.com/webstore/detail/redirector/ocgpenflpmgnfapjedencafcfakcekcd?hl=en) or the [Redirector Firefox add-on](https://addons.mozilla.org/en-US/firefox/addon/redirector/) and import the below configuration:

```json
{
    "createdBy": "Redirector v3.5.2",
    "createdAt": "2020-03-11T16:25:30.936Z",
    "redirects": [
        {
            "description": "Redirect zendesk tickets",
            "exampleUrl": "https://gitlab.zendesk.com/api/v2/tickets/12345.json",
            "exampleResult": "https://gitlab.zendesk.com/tickets/12345",
            "error": null,
            "includePattern": "https://gitlab.zendesk.com/api/v2/tickets/([0-9]+).json",
            "excludePattern": "",
            "patternDesc": "",
            "redirectUrl": "https://gitlab.zendesk.com/tickets/$1",
            "patternType": "R",
            "processMatches": "noProcessing",
            "disabled": false,
            "appliesTo": [
                "main_frame"
            ]
        }
    ]
}
```

## Helpful links

- [Official GitLab Support Documentation](https://about.gitlab.com/support/)
- [Support Handbook (SLA + Tiers)](/handbook/support/)
- [GitLab.com Status and Notifications](https://status.gitlab.com/)
- [Customer Onboarding](/handbook/customer-success/tam/onboarding)
- [Escalation Process](/handbook/customer-success/tam/escalations)
