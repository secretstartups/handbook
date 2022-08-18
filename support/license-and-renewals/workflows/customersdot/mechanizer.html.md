---
layout: handbook-page-toc
title: Mechanizer 
category: CustomersDot
description: How to use the mechanizer for L&R requests. 
---

{::options parse_block_html="true" /}

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This workflow details how to use the Zendesk App that utilizes the [Mechanizer](https://gitlab.com/gitlab-com/support/toolbox/mechanizer) to automate CustomersDot console related tasks.

The Mechanizer is [currently in maintenance mode](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/4299). Our product goal is to migrate the features in Mechanizer to CustomersDot ([epic](https://gitlab.com/groups/gitlab-org/-/epics/6828)).

## Existing Automations

The new ZD app can be found by opening the ZD App side bar, you will need to scroll down as it is the last app.
In the app you will have the option to select from the following request types:

#### Note

**Your GitLab Username** will be automatically added to the form.

### Set CI Minutes to namespace

Allows setting additional minutes to a customer namespace to the value specified in the `Extra minutes` field. The form has two required fields:

- **Namespace**: The customer namespace as it appears in the URL.
- **Extra minutes**: The number of minutes to add

### Force Associate

Associates a group with a subscription. All fields are required.

- **Namespace**: The customer namespace as it appears in the URL.
- **Subscription ID**: The unique ID of the purchased subscription in Salesforce

### Manage GitLab Plan and Trials

Updates GitLab Subscription or customer trial. You can use it for the following cases:

1. Downgrade to Free
1. Trials
    1. Change Plan
    1. Renew/extend Date
1. "Extend" an existing active or expired subscription.
    - Note: To "extend" a subscription, a trial is triggered on the namespace. An old trial order is used if it exists. Otherwise, a new trial is created.

Please note that in order to extend or renew a trial, the customer **MUST** have an active trial because a CustomersDot account needs to exist.  If the prospect has not yet initiated a trial themselves, please have them do so via the [customers portal](https://customers.gitlab.com/trials/new?gl_com=true).

These two  fields are mandatory:

- **Namespace**: The customer's namespace as it appears in the URL.  For example, if the customer namespace is located at http://gitlab.com/gitlab-com then the namespace would be `gitlab-com`. Please confirm through your own observation and through communication with Sales, the TAM, or the customer that the namespace is the one with the subscription or trial to be updated.
- **Plan**: The subscription plan that you would like applied for the customer's group.  If the `free` option is selected, the customer's namespace will immediately be downgraded and the trial or subscription ended.

These two fields are optional:

- **End Date**: The updated date the plan will end.
- **Sales Manager Approval**: The GitLab.com username (without a preceding @) of the sales manager who approved a trial extension of more than 30 days.

Required to "extend" a subscription:

- **Subscription name**: The name of the existing (active or expired) subscription tied to the namespace.

### Clear Subscription
Unlink a group from a subscription. Note: The group will be downgraded to Free if the subscription being unlinked is a Premium or Ultimate subscription or trial.

- **Subscription name:** The subscription to be removed from a namespace.

### Unlink GitLab.com Account

Unlinks the GitLab.com account that is tied to the CustomersDot account provided.

- **Customer ID:** CustomersDot customer account ID.

Uses the `unlink_customer` function.

### Emergency license generation

Generates a legacy Ultimate trial license valid for 10 days and emails it to the customer email specified in the form.
The use of this feature should be limited for any emergency license request during the weekends. 

- **Customer email:** The email where the license will be sent.
- **User count:** Total number of users in the license.

### Add storage to a namespace

Sets additional storage for a namespace to the value specified in the `Extra storage (MiB)` field

- **Namespace:** The customer namespace as it appears in the URL.
- **Extra storage (MiB):** Additional space to add in MB

### Set max seats

Modifies the total number of seats in a SaaS subscription.

#### Note
This will change the total seats in the GitLab.com subscription, but the existing order will have the original value. Before using this option check with a support manager.

- **Namespace:** The customer namespace as it appears in the URL.
- **Max Seats number:** New value for max seats.


