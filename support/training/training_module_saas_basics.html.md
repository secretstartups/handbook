---
layout: handbook-page-toc
title: Training Module - SaaS Basics
description: Training Module for GitLab.com (SaaS) Basic
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# GitLab SaaS Basic - Training Module

> Note: This page is meant to go with the [GitLab Learn version](). The original version is [in the support-training repository](https://gitlab.com/gitlab-com/support/support-training/-/blob/master/.gitlab/issue_templates/GitLab-com%20SaaS%20Basics.md).

## Introduction

This training module provides Support Engineers with the basics of answering GitLab.com (SaaS) product related tickets,
for both new and existing Support team members who are looking to start working on SaaS tickets.

**Goals**

At the end of this module, you should be able to:
- use chatops to look up information.
- answer GitLab.com questions.

**General Timeline and Expectations**

- This module should take you **2 weeks to complete**.
- Read about our [Support Onboarding process](https://about.gitlab.com/handbook/support/training/), the page also shows you the modules under the GitLab.com SAAS Support Basics Pathway.

## Stage 0: Create Your Module

1. Create an issue using the [GitLab-com SaaS Basic](https://gitlab.com/gitlab-com/support/support-training/-/issues/new?issue%5Bmilestone_id%5D=) template by making the Issue Title: <module title> - <your name>
1. Add yourself and your trainer as the assignees.
1. Set milestones, if applicable, and a due date to help motivate yourself!

Consider using the Time Tracking functionality so that the estimated length for the module can be refined.

## Stage 1: Overview and Chatops

-**Done with Stage 1**

1. Read the [GitLab.com Overview page](https://about.gitlab.com/handbook/support/workflows/gitlab-com_overview.html).
1. If you have not already received an Auditor account for GitLab.com, [create a new GitLab.com account](https://gitlab.com/users/sign_in?#register-pane) that will serve as your admin account using the username and email address format of `username-auditor` and `username+auditor@gitlab.com`, confirm it via email, and then [enable 2FA](https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html#enabling-2fa) on it. [Example access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/8641).
    - If your regular GitLab account has the following details:
        - username:`awesome_user7`
        - email: `awesomeuser@gitlab.com`
    - Your auditor account should be:
        - username: `awesome_user7-auditor`
        - email: `awesomeuser+auditor@gitlab.com`

Regardless of whether you receive admin access later, you should set up chatops access.

1. Read the first two sections: [the Chatops intro and how it works](https://docs.gitlab.com/ee/ci/chatops/).
1. If you don't already have it, [get Chatops access](https://docs.gitlab.com/ee/development/chatops_on_gitlabcom.html#chatops-on-gitlabcom).
    - Note: Use the "Google" sign in on the ops instance to create an account if needed.
1. Read about [commonly used chatops commands](https://about.gitlab.com/handbook/support/workflows/chatops.html).
1. Practice using chatops by finding your own user and one of the support groups. You can direct message chatops by finding 'GitLab Chatops' under Apps in Slack.
    - What's your user ID? ID:
    - What's the group ID for `gitlab-com/support`? ID:
    - Find a feature flag to search for and get its current status. Take a screenshot and post it in a comment to the issue. Please blur out any user/group-identifiable information or don't include one with scoping.
1. Take a look at our [improving chatops for Support epic](https://gitlab.com/groups/gitlab-com/-/epics/306). Consider contributing to one of the issues in the future. As more of these functions become available, the more we can move cases out of the admin-only section.
    - (Optional) Watch this [Getting Started with Chatops in Support](https://youtu.be/9o8PDeljXtw) video (~35 minutes) to understand how to get started with contributing to chatops in GitLab Support.

## Stage 2: GitLab.com Accounts

*Note*: Stage 2 and 3 are reversible. For those who want a more "structured" introduction to procedural tickets, start here.
If you're already familiar with GitLab and are used to troubleshooting Self-managed, consider doing Stage 3 first.

See also Stage 4 for a place to record pairing sessions.

- **Done with Stage 2**

Keep in mind that only GitLab team members are admins, and that accounts are bound by our Terms of Use as covered [in the overview](https://about.gitlab.com/handbook/support/workflows/gitlab-com_overview.html).

_Bottom Line_: Never share information that a user would not have access to even if it's about another user within their organization.
You can still suggest possible solutions based on the description of the problem (and even what you find out about the account), but definitive information cannot be shared.

### Triaging

Many common tickets are triaged to other places.

1. Account Deletion and Data requests: Read _only_ the Overview piece for each workflow so you can see where these should be routed to. There are also macros in ZenDesk for these cases.
    1. [Data Access Requests](https://about.gitlab.com/handbook/support/workflows/personal-data-access-requests.html) (typically GDPR Article 15)
    1. [Account Deletion](https://about.gitlab.com/handbook/support/workflows/personal_data_access_account_deletion.html) (typically GDPR Driven)
1. Subpoenas and other legal (court) requests. See [Subpoenas and other requests for information](https://about.gitlab.com/handbook/support/workflows/information-request.html)
    - Note: If the customer request is _not_ tied to an active court case or other legal matter, it may fall under one of the other cases below.
1. Read over the [example cases to move to Security](https://about.gitlab.com/handbook/support/workflows/working_with_security.html#identifying-issues-for-transfer-to-security).
    1. [Copyright (DMCA) Removal Requests](https://about.gitlab.com/handbook/support/workflows/dmca.html#submitting-a-dmca-request) has its own email. Instead of redirecting the user to email the dmca account, the ticket can be moved to the Security queue.

### Email Receiving

One of the main differences of working with GitLab.com is that we receive many requests from [free users](https://about.gitlab.com/support/statement-of-support/#free-plan-users) because we are the administrators of GitLab.com. One of the most common cases is not receiving confirmation, password, or other system notifications from GitLab.

1. Read the [Confirmation Emails workflow](https://about.gitlab.com/handbook/support/workflows/confirmation_emails.html).
1. Answer at least 1 ticket with an email receiving workflow: (insert ticket link here)
1. Briefly look over [Real Time Blocklist Delisting](https://about.gitlab.com/handbook/support/workflows/rbl_delisting.html) for when GitLab emails are being marked as spam.

### Other Account Issues

1. Take a look at the [list of GitLab.com workflows](https://about.gitlab.com/handbook/support/workflows/#GitLab.com) or read the admin only section (Stage 4) and make note what other common cases we take care of, but require admin access.

Remember: When triaging tickets and you're unsure if a user is asking about a Self-managed instance or GitLab.com, use chatops to check if the user exists. The API searches for primary email _and_ secondary emails starting 13.7 as described [in this issue](https://gitlab.com/gitlab-org/gitlab/-/issues/26110).

## Stage 3: GitLab.com Architecture and Troubleshooting

- **Done with Stage 3**

**Keep in mind:**

1. As previously noted, GitLab.com users do not have admin accounts. Please do not send any doc links that are self-managed only (check badging at the top of the page or section for **CORE/STARTER/PREMIUM/ULTIMATE ONLY**) or anything from the `administration` section.
1. Troubleshooting problems on SaaS and Self-managed are the same or similar. The main difference is where and how we gather the necessary information.

### Architecture

1. Review materials relevant to GitLab.com Architecture
    1. Read about the [GitLab architecture](https://docs.gitlab.com/ee/development/architecture.html) up to and including the `Simplified component overview` section.
        - Note: You're not expected to remember everything, but to get a general sense of GitLab's architecture. Feel free to read the details on any component based on your interest.
    1. Give the [Production architecture](https://about.gitlab.com/handbook/engineering/infrastructure/production/architecture/) page a brief lookover.
        - Note: Mostly, you'll want a broad understanding of the "Current", "Service", and "Network Architecture" sections.
    1. Give the [GitLab.com Setting docs page](https://docs.gitlab.com/ee/user/gitlab_com/) a brief review to know what settings we publicize.
        - Note: Instance level settings are split between admin dashboard, [gprd-base settings](https://ops.gitlab.net/gitlab-cookbooks/chef-repo/-/blob/master/roles/gprd-base.json) (equivalent of `gitlab.rb`), and secrets (which only infra has access to).

### Searching logs and filing issues

1. Learn about finding and filing errors. Note: Use your dev account to sign into Kibana and Sentry.
    1. [Using Kibana](https://about.gitlab.com/handbook/support/workflows/kibana.html).
        - Note: Typical usage is `rails` and `sidekiq` logs. `HAproxy` and CloudFlare logs are only available to infra team. Ask in the #production Slack channel if necessary.
    1. [Searching Kibana, Sentry, and filing GitLab issues from Sentry](https://about.gitlab.com/handbook/support/workflows/500_errors.html).
    1. As an exercise, visit a non-existing page on GitLab.com, such as [gitlab.com/gitlab-com/doesntexist](https://gitlab.com/gitlab-com/doesntexist). Search Kibana for the 404 error using your username. Add a screenshot of the relevant portion of the error you find in Kibana as a comment to this issue.
    1. Search Sentry using the `correlation_id`. You may not find anything and the search is not reliable, but take a screenshot of your search and results and add it as a comment to this issue anyway.
    1. Exercise: use the [import workflow](https://about.gitlab.com/handbook/support/workflows/importing_projects.html#identifying-import-errors) to search for an import error.
    1. Importing customer projects is the only current case of "getting around" a bug or lack of feature. Read [the rest of the import criteria](https://about.gitlab.com/handbook/support/workflows/importing_projects.html#pre-approved-cases) to learn when we do these as a courtesy.
1. If an issue can only be resolved through rails console access, you can [file a "GitLab.com Console Escalation" issue](https://about.gitlab.com/handbook/support/workflows/working-with-issues.html#operational-escalation-points).

### Places to reproduce

The best way to troubleshoot as always is to try to reproduce it.

1. Remember that you have access to 3 groups for each plan tier `gitlab-gold`, `gitlab-silver`, and `gitlab-bronze`.
    - Since these are public, you can also link them in tickets as long as you make the project public as well.
1. You can check the [Auto DevOps project](https://gitlab.com/gitlab-gold/auto-devops-testing) to see what a typical job for various parts of the pipeline may be. It's on a semi-monthly schedule to catch what's changed pre and post release.

### Specific cases

Because GitLab is the steward of GitLab.com, we sometimes need to troubleshoot some of our integrations. We have workflows for some cases. You don't need to read these in detail now, but keep in mind that these are available:

1. [Custom domain verification on GitLab.com](https://about.gitlab.com/handbook/support/workflows/verify_pages_domain.html)
1. [Service Desk Troubleshooting](https://about.gitlab.com/handbook/support/workflows/service_desk_troubleshooting.html)

### IP blocks and log requests

1. At times, the infra team blocks users due to alerts of possible abuse. Learn about [sending notices](https://about.gitlab.com/handbook/support/workflows/sending_notices.html).
    - Note: If needed, ping the [CMOC](https://about.gitlab.com/handbook/support/internal-support/#regarding-gitlab-support-plans-and-namespaces) to send these out.
1. Read about [identifying the cause of IP blocks](https://about.gitlab.com/handbook/support/workflows/ip-blocks.html). You won't find a block, but try doing a search by IP of your own IP to see what gets logged in the `rails` log.
1. When responding to users about possible blocks, you'll need to keep in mind what information you're allowed to provide. See the [log and audit requests workflow](https://about.gitlab.com/handbook/support/workflows/log_requests.html) for more information.

### Security issues

Security's focus is instance wide security breaches and vulnerabilities. They do however take care of other account related cases (covered in previous stage).

1. Commonly, users often file commit associations as a "security" issue. Follow the [investigate commits](https://about.gitlab.com/handbook/support/workflows/investigate_commits.html) on determining whether it's a security incident.

## Stage 4: Keeping up to date and Pairings

- **Done with Stage 4**

Keeping up to date and asking questions:

1. Check the "Dotcom Support Sync" [meeting doc](https://docs.google.com/document/d/1ALqRSCvQ9a0Ss7HeT5JuOUOZ7H1hBOITC03BYcAIkaE/edit#heading=h.ykdkpk1jf6a2) for recent updates/issues (linked from calendar entry and SWIR), and consider attending when in your timezone (3 week rotation). Otherwise, check and add to the doc weekly.
    1. **If you are 50%+ focused on .com**, please consider this a must and also add yourself to one of the [chair/notetaker](https://about.gitlab.com/handbook/support/#meeting-roles) rotations.
1. Consider adding yourself to the every 6 weeks cross-region GitLab.com crush sessions (check Support calendar).
1. Join the #support_gitlab-com Slack channel where you can ask questions about tickets, process, etc.

If you are doing this module as part of onboarding, feel free to remove the pairing section.

1. Have 5 pairing sessions specifically geared towards answering GitLab.com tickets or issues.

1. If you are doing Stage 5 (admin access), do 2 more focusing on tickets or issues that require admin access.

## Stage 5: GitLab.com admin access (with manager approval)

- **Done with Stage 5**

1. Typically at week 3-4 at GitLab, you and your manager should check in that you're ready for admin access. If you are, complete [GitLab.com Admin access Training Module](https://gitlab.com/gitlab-com/support/support-training/-/blob/master/.gitlab/issue_templates/GitLab-com-Admin.md)

### Internal Requests

1. Update notification settings to **Watch** which will send you notifications for all activity, or **Custom** for new issues in the following project:
    1. [internal requests](https://gitlab.com/gitlab-com/support/internal-requests). Alternatively, given there are a lot of different requests, only [subscribe](https://docs.gitlab.com/ee/user/project/labels.html#subscribing-to-labels) to the following labels:
        - [Admin Escalation](https://gitlab.com/gitlab-com/support/internal-requests/-/issues?label_name%5B%5D=Admin+Escalation)
        - [DEWR](https://gitlab.com/gitlab-com/support/internal-requests/-/issues?label_name%5B%5D=DEWR) (Dotcom Escalation Weekly Report)
1. You will also see [Personal Account and Deletions](https://gitlab.com/gitlab-com/gdpr-request) requests, which are auto-assigned to [team members with 50%+ SaaS focus](https://gitlab-com.gitlab.io/support/team/areas-of-focus.html). For training purposes, you can ask a teammate to give one to you. Follow the appropriate workflow below to fulfill the request and link the issue that you've done.
    1. [Data (GDPR Article 15) Requests](https://about.gitlab.com/handbook/support/workflows/personal-data-access-requests.html)
        1. (Optional as these are very rare) Link to issue:
    1. [Account Deletion Requests](https://about.gitlab.com/handbook/support/workflows/personal_data_access_account_deletion.html)
        1. Link to issue:
    1. Discuss with your manager if you should to be added to the auto-assigned rotation. To be added into the rotation, make sure your [SaaS focus](https://gitlab.com/gitlab-com/support/team/-/blob/master/data/support-team.yaml) is 50%+.
1. For [internal requests](https://gitlab.com/gitlab-com/support/internal-requests), you only need to work on the requests that relate specifically to GitLab.com. Many of the other issues as labelled are specific to other areas (such as Console or Licensing).
    1. Check out the list of [templates](https://gitlab.com/gitlab-com/support/internal-requests/-/tree/master/.gitlab/issue_templates).
    1. Read the [Servicing Internal Requests workflow](https://about.gitlab.com/handbook/support/workflows/internal_requests.html) which covers most internal issues.
        1. (Optional as these are rare) Link to issue:

### User Accounts

Aside from the ones covered in Stage 2, the most common user requests have to do with disabling 2FA and name squatting. However, most of these workflows apply in other cases as well.

1. When making any changes to a user account, make sure to [use an admin note](https://about.gitlab.com/handbook/support/workflows/admin_note.html).
1. For all 2FA disabling requests, use the [Account Ownership Verification](https://about.gitlab.com/handbook/support/workflows/account_verification.html). This workflow may be used for some other cases as well where we want to verify the ownership.
    - Link to an account ticket requiring verification:
1. [Name Squatting Requests](https://about.gitlab.com/handbook/support/workflows/namesquatting_policy.html) apply to groups and users. Included here since it is often for users.
1. Except in the cases above, or wherever else there is a clear ask of the action (including impersonating the user), always [ask for permission to take action](https://about.gitlab.com/handbook/support/workflows/account_changes.html#asking-permission).

### Other Common Requests

1. reCaptcha complaints are often due to actions on a specific issue by a specific user being marked as spam. Learn how to [mark as ham](https://about.gitlab.com/handbook/support/workflows/managing_spam.html#false-positives-ham).
    - Note: The spam logs are not searchable, so requests have be made almost immediately after receiving the recaptcha prompt.
1. [Reinstating blocked accounts](https://about.gitlab.com/handbook/support/workflows/reinstating-blocked-accounts.html) should also be confirmed with the abuse team first. In cases of conduct violations, you can ask in the issue to move the ticket to the Security queue for them to respond directly.
1. [Personal Identifiable Information Removal Requests](https://about.gitlab.com/handbook/support/workflows/pii_removal_requests.html) are uncommon, but read the workflow to understand Support's responsibility.

## Stage 6: GitLab.com console (with manager approval)

Depending on your prior experience and readiness, open the module listed below. Your manager may decide to have you pick this up later once you have more familiarity with GitLab.

1. Open a module on [GitLab.com Console](https://gitlab.com/gitlab-com/support/support-training/-/issues/new?issuable_template=Module%20-%20GitLab.com%20Console).

## Congratulations! You made it, and can now help customers with GitLab.com SAAS product related tickets.

Please also submit MRs for any improvements that you can think of! The file is located in an issue template in the ['support-training` repository](https://gitlab.com/gitlab-com/support/support-training/blob/master/.gitlab/issue_templates).
