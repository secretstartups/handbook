---
layout: handbook-page-toc
title: 'Priority Prospects'
category: Zendesk
description: 'Training documentation concerning priority prospects'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Requests for setup

### Setup checks

Before we can proceed, we need to check the following:

* We are not at 30 priority prospects in the
  [current list of priority prospects](https://docs.google.com/spreadsheets/d/11p3aBj1LTr-ngk1wxoMlae-UvJ3bOTuQHd48so2ZcXU/edit?usp=sharing).
  If we are at 30, we need to respond to the issue as such and close it out:
  > I am seeing we are currently at 30 priority prospects. As such, we are not able to set any more up until one of the current one expires or is canceled. Please speak with Sales leadership regarding this matter. 
  >
  > Once others have expired or been canceled, you can file a new issue to potentially get your account added as a priority prospect.
  >
  > As such, we are not able to proceed and will close out this issue.
  >
  > /close
* The account in Salesforce has a type of `Prospect`. Only accounts with that
  type are eligible for this setup. If the account does not have a type of
  `Prospect`, you should respond with this information in the issue and close it
  out:
  > I am seeing the SFDC account in question for this request does not have an account type of `Prospect`. Because of technical limitations in the relationship between SFDC accounts and Zendesk organizations, we are not able to setup priority prospect status on accounts unless their SFDC account type is listed as `Prospect`. 
  > 
  > As such, we will not be able to proceed on this request and will now close the issue.
  > 
  > You might want to reach out in #spt_managers to speak to a support manager about other options that may be able to be used for this account.
  > 
  > /close
* The ARR listed on the opportunity is over $100,000 or the `Reason for Status`
  given deems the account eligible for priority prospect status. If neither
  situation is satisfied, we need to request further clarification:
  > We are seeing the ARR for this opportunity is under $100,000 and trhe justification would not satisfy the needs for priority prospect status. Can you please clarify further on why this opportunity requires priority prospect status?
  * NOTE: You should seek Support Operations Manager approval to proceed at this point.
* The prospect is not listed on the
  [list of former priority prospects](https://docs.google.com/spreadsheets/d/1TdMbce83HqSA04mfamqcY7DurNbRs_sqdD68udU0Frw/edit?usp=sharing).
  If they are, we would need to decline the request and close out the issue:
  > We are seeing this account was a priority prospect in the past. As such, they would not qualify to be a priority prospect once more. As such, we are not able to proceed and will close out this issue.
  >
  > /close
* The issue has approval from a member of Sales leadership. If it does not, we
  would need that to occur first. You can choose to wait for that to be obtained
  or reply with something like:
  > I am seeing this has not yet been approved by a member of Sales leadership. We cannot proceed without that being obtained. Please have a member of Sales leadership approve this request **with a comment** so we can proceed.

### Zendesk setup

After passing all the checks, we can proceed with the setup. The first stage of
the setup begins within Zendesk.

#### Locate existing non-closed tickets

Start by ensuring none of the listed support contacts have existing tickets. If
you do find existing tickets, they need to be closed completely before we can
proceed. Review the ticket to determine if this is an acceptable task. If you
determine it is not, post the ticket in the issue with the message:

> We are seeing the users requested in this issue have a non-closed ticket:
>
> * LIST
> * OF
> * TICKETS
>
> These would need to be completely closed before we could proceed. Please speak with the user(s) about the ticket about us closing the ticket before we can proceed. Once you have done so, please reply back letting us know they have been informed.

You can close a ticket via the API, with a curl request such as:

```bash
curl -ss https://gitlab.zendesk.com/api/v2/tickets/TICKET_ID \
   -H "Content-Type: application/json" \
   -u support-ops@gitlab.com/token:YOUR_ZD_ADMIN_TOKEN \
   -X PUT \
   -d '{"ticket": {"status": "closed"}}'
```

Replacing:

* `TICKET_ID` with the ticket's ID
* `YOUR_ZD_ADMIN_TOKEN` with your admin Zendesk API token

#### Organization setup

After doing so, you then need to create the organization in Zendesk. Do this by
hovering over the `+ Add` button at the top-left of Zendesk and then clicking
`Organization`. This will cause a pop-up modal to appear. In the modal, set the
`Name` to `PP: NAME_OF_SFDC_ACCOUNT` (replacing `NAME_OF_SFDC_ACCOUNT` with the
exact name from the Salesforce account). **The domains field should _always_ be
empty**. 

With that created, you need to edit some of the organization fields:

| Field | Value |
|-------|-------|
| Salesforce ID          | PRIORITY PROSPECT            |
| SFDC Short ID          | PRIORITY PROSPECT            |
| GitLab Plan            | See below                    |
| ARR                    | 0                            |
| Account Owner          | The requester from the issue |
| Account Type           | Prospect                     |
| Manual Support Upgrade | Check this box               |
| Expiration Date        | 30 days from setup           |

For `GitLab Plan`, you need to review the opportunity to determine if this is
a SaaS or Self-Managed opportunity. If you cannot determine it, please ask the
requester on the issue to clarify that.

If it is SaaS, use `Prospect SaaS`. If it is Self-Managed, use `Prospect SM`.

After setting up the organization, you need to add the support contacts from the
issue to the organization.

### Current priority prospect list setup

After setting it all up on the Zendesk side, you need to add an entry in the
[current list of priority prospects](https://docs.google.com/spreadsheets/d/11p3aBj1LTr-ngk1wxoMlae-UvJ3bOTuQHd48so2ZcXU/edit?usp=sharing).

To do this, populate each field with the following:

| Field            | Value                                                |
|------------------|------------------------------------------------------|
| SFDC ID          | `=hyperlink("SFDC_ACCOUNT_LINK", "SFDC_ACCOUNT_ID")` |
| Org Name         | `=hyperlink("ZD_ORG_LINK", "SFDC_ACCOUNT_NAME")`     |
| SFDC Opportunity | `=hyperlink("SFDC_OPP_LINK", "SFDC_OPP_ID")`         |
| Approver         | `=hyperlink("REQUEST_ISSUE_LINK", "APPROVER")`       |
| Started          | Today's date (YYYY-MM-DD)                            |

Where:

* `SFDC_ACCOUNT_LINK` is the Salesforce account link
* `SFDC_ACCOUNT_ID` is the Salesforce account's 18 digit ID
* `ZD_ORG_LINK` is the link the organization in Zendesk
* `SFDC_ACCOUNT_NAME` is the Salesforce account's name
* `SFDC_OPP_LINK` is the Salesforce opportunity link
* `SFDC_OPP_ID` is the Salesforce opportunity's ID
* `REQUEST_ISSUE_LINK` is the request issue
* `APPROVER` is the name of the approving member of Sales leadership

### Setting up a reminder

After all that is setup, you need to setup a reminder in Slack to expire the
organization's priority prospect status. You can do this using the command:

```
/remind expire LINK on DATE
```

Replacing `LINK` with the Zendesk organization link and `DATE` with the
expiration date.

### Updating the issue

After all this done, let the requester know this has now been setup:

> This has been setup at this time. It is set to expire `DATE`.
>
> /label ~"SupportOps::Completed"
> /spend TIME
> /close

Replacing:

* `DATE` with the date of expiration (30 days from today)
* `TIME` with the time spent working the issue

## Requests for extension

For extensions, we merely need to ensure it has approval from a member of Sales
leadership. If it does, you need to:

1. Edit the `Expiration date` on the Zendesk Organization to 30 days beyond
   it's current value
1. Set the `First extension` value for the entry on the
   [current list of priority prospects](https://docs.google.com/spreadsheets/d/11p3aBj1LTr-ngk1wxoMlae-UvJ3bOTuQHd48so2ZcXU/edit?usp=sharing)
   to `Yes`.
1. Set the `Approver` value next `First extension` to for the entry on the
   [current list of priority prospects](https://docs.google.com/spreadsheets/d/11p3aBj1LTr-ngk1wxoMlae-UvJ3bOTuQHd48so2ZcXU/edit?usp=sharing)
   to `=hyperlink("REQUEST_ISSUE_LINK", "APPROVER")`
   * `REQUEST_ISSUE_LINK` is the request issue
   * `APPROVER` is the name of the approving member of Sales leadership

You will then update the issue with a comment:

After all this done, let the requester know this has now been setup:

> The extension has been enabled at this time. The new expiration date is `DATE`.
>
> /label ~"SupportOps::Completed"
> /spend TIME
> /close

Replacing:

* `DATE` with the date of expiration (30 days from today)
* `TIME` with the time spent working the issue

## Requests for cancellation

For these, we simply need to cancel the priority prospect status. See
[Expiring priority prospects](#expiring-priority-prospects) for details on doing
that.

After that is all done, update the issue with a comment:

> The priority prospect status has now been canceled.
>
> /label ~"SupportOps::Completed"
> /spend TIME
> /close

Replacing:

* `TIME` with the time spent working the issue

## Expiring priority prospects

To expire a priority prospect:

1. Close out any open tickets they currently have
1. Unassociate the users on the organization
1. Uncheck the box on the organization for `Manual Support Upgrade`
1. Add `Expired ` to the beginning of the organization's name
1. Add `FORMER ` to the beginning of the organization's `Salesforce ID`
1. Add `FORMER ` to the beginning of the organization's `SFDC Short ID`

After doing so, you need to populate the data into the
[list of former priority prospects](https://docs.google.com/spreadsheets/d/1TdMbce83HqSA04mfamqcY7DurNbRs_sqdD68udU0Frw/edit?usp=sharing)
for tracking purposes:

| Field        | Value                                                        |
|--------------|--------------------------------------------------------------|
| Org Name     | The Salesforce account's name                                |
| SFDC ID      | `=hyperlink("SFDC_ACCOUNT_LINK", "SFDC_ACCOUNT_ID")`         |
| Tickets      | The number of tickets the organization created               |
| Customer?    | If the SFDC account now shows them as a customer             |
| CARR         | The `CARR (This Account)` value on SFDC account              |
| Status Ended | The month and year when the status expired (e.g. March 2021) |

Where:

* `SFDC_ACCOUNT_LINK` is the Salesforce account link
* `SFDC_ACCOUNT_ID` is the Salesforce account's 18 digit ID

After doing all of that, you can erase the entry on the
[current list of priority prospects](https://docs.google.com/spreadsheets/d/11p3aBj1LTr-ngk1wxoMlae-UvJ3bOTuQHd48so2ZcXU/edit?usp=sharing).

## Useful links

* [Support handbook page on priority prospects](https://about.gitlab.com/handbook/support/priority_prospects/)
* [Current list of priority prospects](https://docs.google.com/spreadsheets/d/11p3aBj1LTr-ngk1wxoMlae-UvJ3bOTuQHd48so2ZcXU/edit?usp=sharing)
* [List of former priority prospects](https://docs.google.com/spreadsheets/d/1TdMbce83HqSA04mfamqcY7DurNbRs_sqdD68udU0Frw/edit?usp=sharing)
