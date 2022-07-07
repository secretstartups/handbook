---
layout: handbook-page-toc
title: 'Contact limit exception process'
category: 'Zendesk'
subcategory: 'Organizations and Users'
description: 'Contact limit exception process'
noindex: true
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

As per our
[Managing Support contacts and handling details](https://about.gitlab.com/support/managing-support-contacts/#Maximum%20number%20of%20support%20contacts)
page:

> Currently, we limit the maximum number of support contacts to 30 per
> organization on Zendesk Global.

When at this limit, the organization is no longer eligible to add more contacts,
have a shared organization setup, etc. 

In rare circumstances, we grant temporary contact limit exceptions.

## Process


### Requester portion

The process will beging with the organization's sales representative (AM, TAM,
SA) filing a
[Support Contact Exception Request issue](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Contact%20Limit%20Exception%20Request)
within the
[support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/)
issue tracker.

Within this issue, they include the following details:

* Salesforce Account Link
* Organization Name
* Current user count
* CSV file containing support contact list
* Email(s) of organization users who can approve contact changes
* Explanation of business need
* The get-well plan

After this is all provided, the requester will make a comment pinging the
required approvers (VPs of Customers Support and Customer Success) to let them
know you the issue is ready for review and approval.

### VPs portion

The VPs of Customers Support and Customer Success will review the request. If it
is deemed acceptable, they will add a comment approving the request.

### Support Ops portion

Once approval has been added by the VPs of Customers Support and Customer
Success, you will need to compare the CSV provided in the requester to the
current user list of the organization in question.

Start by un-associating all users not within the approved contact list. After
doing so, associate or create any users in the approved contact list but not
under the organization. 

The next step is to add a note under the organization's `Details` section with
the following:

> This organization has been granted a maximum contact exception as per ISSUE_LINK
>
> This exception expires DAY_AFTER_NEXT_SUBSCRIPTION_RENEWAL
>
> Any future contact changes must go through LIST_OF_USERS_WHO_CAN_APPROVE_CHANGES

Replacing ISSUE_LINK with the request link, DAY_AFTER_NEXT_SUBSCRIPTION_RENEWAL
with the expiration date of the extension, and
LIST_OF_USERS_WHO_CAN_APPROVE_CHANGES with the names and/or emails of the users
in the organization approved to make contact changes.

With that done, create or update a
[zendesk-global/organizations](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/organizations)
file for the organization with the above info. Make sure to comment on the
original request issue with a link to the MR.

Then in slack, add a reminder to remove the exception on the day it expires. You
can do this by going to either direct messaging
[Slackbot](https://gitlab.slack.com/archives/DC4APRF5Y) or your own user the
following:

```
/remind Remove contact exception on ORGANIZATION_LINK on DATE
```

Relacing ORGANIZATION_LINK with the Zendesk link and DATE with the expiration
date.

Finish up the request by:

* Adding the time spent on the issue
* Adding the label ~"SupportOps::Completed" 
* Commenting confirming all of the above have been completed
* Closing out the issue

### Expiration process

When the exception expires, you need to remove the organization `Details` added
previously. Once that is done, if the organization is over 30 contacts, submit
a ticket to the email(s) of organization users who can approve contact changes
asking them to prune their user list down to the normal limit of 30.

## FAQs

### What format should the CSV be in?

The CSV file should be in the format of:

```csv
"name","email"
"Alice","alice@example.com"
"Bob","bob@example.com"
"Chuck","chuck@example.com"
```

If not in that format, we will need to reject the CSV file and asked it be
re-created in the proper format (this is not case-senstive).

### What is the maximum number of contacts this can enable?

There is a hard cap of 45 contacts per organization, so exceptions beyond that
will not be considered.

### What happens when the exception expires?

The email(s) of organization users who can approve contact changes will have a
ticket filed to them asking them to prune their user list down to the normal
limit of 30.

### What happens to legacy approved organizations?

They are able to keep their approved exception (35 users) in perpetuity. Should
they need to go beyond that, a new request would need to be made and they will
lose the legacy status.
