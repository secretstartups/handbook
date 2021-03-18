---
layout: handbook-page-toc
title: Making Changes and Taking Actions on an Account
category: GitLab.com
subcategory: Accounts
description: "Workflow for when and how to make account changes on behalf of a customer"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This workflow focuses on the process when action is required by the Support team on behalf of the user.

There are two main situations where action may need to be taken on behalf of the user:

1. Project/Group Changes
1. Account Access Requests
1. Releasing an Email Address

### User Action First

Following our [Security Policy on "GitLab's Access to Your Private Repositories"](/security/faq), actions should always be taken by the user whenever possible.

For example, users should be deleting their own projects, but if they encounter an error every time they access the settings page, then staff can intervene with permission.

If in doubt, please surface this to a manager or escalate via an issue.

## Project/Group Changes

In cases where Support needs to take action on the project or group, such as for troubleshooting purposes, Support should do two things:

1. Verify the user is a group _Owner_ or project _Maintainer_. Otherwise, ask the user to have an owner/maintainer contact us.
1. Ask for permission to take action. See the [Asking Permission](#asking-permission) section below.

If an issue is created for other team members, please include a note that the user has provided permission for the specified action.

## Account Access Requests

If a user has lost access to their account, all other options (e.g. SSH recovery codes, password reset) should be exhausted first.

Before taking any action, ensure that you have verified the account owner using the [Account Ownership Verification](/handbook/support/workflows/account_verification.html) workflow.

If ownership is verified, then:

1. [Confirm permission for the changes](#asking-permission)
1. Add an [Admin Note](/handbook/support/workflows/admin_note.html) to the user's account.

## Releasing an Email Address

Similar to **Account Access Requests**, if a user has lost access to their account and the account shows **no activity** in its history, then we can consider releasing the email address for the user to create a new account with. 

If an account shows any activity, is tied to a project or group, or has any data tied to the account (such as snippets), you will need to take the user through the [Account Ownership Verification](/handbook/support/workflows/account_verification.html) workflow to process an account access request. Do not update or change the primary (or secondary) email address on the account if the account shows any activity or data tied to it.

To release an email address for an inactive account:

1. User should be able to verify the username and email address tied to the account.
1. Check the activity level of the account. Verify that the account shows **no activity** and is not a member of any projects or groups.
1. [Confirm permission for the changes](#asking-permission).
1. Update the email address with `+release`. For example, if the email address is `johndoe@example.com`, then update the email address on the account to `johndoe+release@example.com`.
1. Add an [Admin Note](/handbook/support/workflows/admin_note.html) to the user's account.

## Asking Permission

Before any actions are taken, please request explicit permission from the user to take the required action on their account. Be as specific as possible so that there is no confusion.

Some sample phrases:

> Could you please provide permission for staff to ... ?

or

> Could you please confirm that you would like us to ... ?

For example:

> Could you please provide permission for staff to re-run one or more pipelines in project `xyz` to investigate the issue you've described?

> Could you please confirm that you would like us to add `example@email.address` to your account and make it the _primary_ email address?

Once permission is confirmed by the user, then you may proceed.
