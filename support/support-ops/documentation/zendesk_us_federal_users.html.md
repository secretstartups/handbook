---
layout: handbook-page-toc
title: 'Zendesk US Federal Users'
category: 'Zendesk US Federal'
description: 'An overview of the Zendesk US Federal users'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Zendesk users are the people within Zendesk.

## Groups

* [General](https://gitlab-federal-support.zendesk.com/groups/360016402951)
* [Security](https://gitlab-federal-support.zendesk.com/groups/360016399052)
* [Support](https://gitlab-federal-support.zendesk.com/groups/360004818031)
* [Support Managers](https://gitlab-federal-support.zendesk.com/groups/360016399072)
* [Support Operations](https://gitlab-federal-support.zendesk.com/groups/360016399032)

## Roles

### GitLab Staff

* Description: GitLab Staff are members of the GitLab team who have been
  granted full agent accounts to work on tickets.Their primary role is to solve
  tickets. They can edit tickets within their groups, view reports, and add or
  edit personal views and macros.
* Tickets
  * All tickets are accessible
  * Can edit ticket properties
  * Can merge tickets
  * Can edit ticket tags
  * Can make public and private comments
* People
  * Can add, edit, and delete all end users
  * Can view user profile lists
* Agent workflow
  * Can add and edit personal views
  * Can add and edit personal macros
  * Can contribute to side conversations
* Analytics
  * Can view reports

### Light agent

* Description: Can view and add private comments to tickets
* Tickets
  * All tickets are accessible
  * Can make private comments only
* People
  * Read only access to end-user profiles
  * Can view user profile lists
* Agent workflow
  * Can see views only
  * Can only apply macros
  * Can contribute to side conversations
* Analytics
  * Can view reports

### Support US Federal Staff

* Description: Support Staff are members of the GitLab Support Team who have
  completed Support onboarding.Their primary role is to solve tickets. They can
  edit tickets within their groups, view reports, and add or edit personal
  views and macros. They can also delete tickets, edit ticket tags and edit or
  create groups and organisations.
* Tickets
  * All tickets are accessible
  * Can edit ticket properties
  * Can delete tickets
  * Can view deleted tickets
  * Can merge tickets
  * Can edit ticket tags
  * Can make public and private comments
* People
  * Can add, edit, and delete all end users
  * Can view user profile lists
* Agent workflow
  * Can add and edit personal views
  * Can add and edit personal macros
  * Can contribute to side conversations
* Analytics
  * Can view reports

### Support US Federal Staff w/ Explore

* Description: Support Staff are members of the GitLab Support Team who have
  completed Support onboarding.Their primary role is to solve tickets. They can
  edit tickets within their groups, view reports, and add or edit personal
  views and macros. They can also delete tickets, edit ticket tags and edit or
  create groups and organisations.
* Tickets
  * All tickets are accessible
  * Can edit ticket properties
  * Can delete tickets
  * Can view deleted tickets
  * Can merge tickets
  * Can edit ticket tags
  * Can make public and private comments
* People
  * Can add, edit, and delete all end users
  * Can view user profile lists
* Agent workflow
  * Can add and edit personal views
  * Can add and edit personal macros
  * Can contribute to side conversations
* Analytics
  * Can create reports

## User Fields

* GitLab Username
  * Type: Text
  * Field Key: gitlab_username
  * Description: Agent's GitLab Username (not including @)
* GitLab User ID
  * Type: Number
  * Field Key: gitlab_user_id

## User Settings

### Customer Settings

* Settings
  * Anybody can submit tickets
    * Enabled
    * Require CAPTCHA
    * User registration message:
      > Please fill out this form, and we'll send you a welcome email to verify
      > your email address and log you in.
  * Account emails
    * User welcome email text
      > Welcome to GitLab Federal Support. Please click the link below to
      > create a password and sign-in.
    * Email verification email text
      > We need to verify that you are the owner of this email address. Please
      > follow the link below to verify.
  * Allow users to view and edit their profile data
    * Enabled
  * Allow users to change their password
    * Enabled
  * Tags on users and organizations
    * Enabled
* Satisfaction
  * Satisfaction ratings
    * Allow customers to rate tickets
  * Configuration Options
    * Ask a follow-up question after a bad rating
    * Reasons in use
      * The issue was not resolved
      * GitLab doesn't meet my needs
      * The answer wasn't delivered in a timely manner
      * The answer wasn't helpful
    * Reasons not in use
      * The issue took too long to resolve
      * The agent's knowledge was unsatisfactory
      * The agent's attitude is unsatisfactory

### Agent Settings

* Signature: `{{agent.signature}}`
