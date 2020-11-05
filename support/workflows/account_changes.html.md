---
layout: handbook-page-toc
title: Making Changes and Taking Actions on an Account
category: GitLab.com
descrition: "Workflow for when and how to make account changes on behalf of a customer"
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

### User Action First

Following our [Security Policy on Access to Repositories](/security/#privacy-repositories), actions should always be taken by the user whenever possible.

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
