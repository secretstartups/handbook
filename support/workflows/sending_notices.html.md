---
layout: handbook-page-toc
title: Sending Notices
category: GitLab.com
description: How to send notices out to GitLab.com users and customers to inform them of various actions on namespaces under their control
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview of the process


At times the [Support team will be asked to send notices](../internal-support/#gitlab-changes-and-contacting-users) to GitLab SaaS users or customers to inform them of actions that we have taken (or will be taking) on namespaces or projects under their control. 

This workflow describes how to fulfill different types of contact requests and the helpful tools you can use in the process.

## Tools and Approvals

| Number of users | Which thing to use | Approvals required | Notifications required | 
| --- | --- | --- | --- |
| 1 | [Manually create a Zendesk ticket](#manually-create-a-zendesk-ticket) | None | None |
| 2-500 | [Customer Ticket Generator](#customer-ticket-generator) | Support Manager | Post in Slack + SWIR |
| 500+  | [Mass Emails through Marketing Department](#mass-emails-through-marketing-department) | Director | [Support Readiness issue](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/new?issuable_template=Support%20Readiness) + FAQ |


* Support team can be asked to contact users **during an incident**. Such requests are filed by infra team [using `confidential_incident_data` issue template](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/new?issuable_template=confidential_incident_data) in [production](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/) issue tracker. These must be fulfilled by CMOC during the shift.
* Contact requests that are **not tied to an incident** are submitted as an [internal-request](internal_requests.html) using [`Contact Request` template](https://gitlab.com/gitlab-com/support/internal-requests/-/issues/new?issuable_template=Contact%20Request). These can be performed by anyone with Admin access to GitLab.com. CMOC participation is not obligatory. 

## How to send notices

Most notices should be sent in the form of Zendesk tickets. Always send these tickets to users with `Owner` level permissions in the namespace or project in question.

Most contact requests will involve contacting all of the owners of only one project or only a few specific users. If you're tasked with contacting the owners of a project and know that there's only one, feel free to look up their email address using your admin account or [ChatOps](chatops.html#user).

However, some contact requests may involve contacting all of the owners of multiple projects. Use various [tools](#tools) provided in this workflow to help you compose the list of email addresses to send tickets to.

Make sure to [add an admin note](admin_note.html) on a user/group we took action on. This will ensure that we can track a block/change reason if a user reaches out to us using a different channel. 

There are various [macros](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/tree/master/macros/active/Support/SaaS/Notices) in the `Support::SaaS::Notices` section can be used as a template when only a few users need to be contacted.


### Manually create a Zendesk ticket

The easiest way to send a customer notice is to [manually create a Zendesk ticket](https://support.zendesk.com/hc/en-us/articles/4408882462618-Creating-a-ticket-on-behalf-of-the-requester). Briefly, in any view in Zendesk, click the `+ Add` button, or mouse-over the `+ Add` button and choose "New -> Ticket". 
- The requestor email is the person you want to send to. 
- Type a sensible subject and body.
- Use `General::Outbound Contact Request` to automatically set the form and appropriate tags to skip automations, such as SSAT and avoiding other autoresponders.
- Set the status appropriately:
   - **Pending** if you're expecting a response from the user
   - **Solved** if no response is expected

### Customer Ticket Generator

The [Customer Ticket Generator](https://gitlab-com.gitlab.io/support/support-ops/forms/customer-ticket-generator/) is a form that can be used to send multiple tickets out at once. Once the form is submitted, an issue will be created in the [customer ticket generator tracker](https://gitlab.com/gitlab-com/support/support-ops/forms/customer-ticket-generator) where a member of SupportOps will then run it. This can also be used in conjunction with the [Email Grab Script](#email-grab-script), whose output can be provided as the CSV for the form.

### Mass Emails through Marketing Department

Outside of Zendesk we may be asked to be involved in the process of sending mass notices to users. For larger email campaigns, involve the marketing team: 

1. [Open an issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-email) in the [marketing/demand-generation/campaigns](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns) issue tracker using the `request-email` template.
1. Fill the template out in its entirety.
1. Submit the issue and be ready to adjust the subject and/or body of the notice based on feedback.

## Tools

The following tools can be used to facilitate different types of contact requests.

### Email Grab Script

The [Email Grab Script](https://gitlab.com/gitlab-com/support/runbooks/-/blob/master/code/group_project_user_owner_emails.rb) is a Ruby script that will return the primary email addresses of the owners of a group or project. Currently, it can only be used if you possess a GitLab SaaS admin account. It can also be supplied only a list of usernames, in which case it will return the primary email addresses of those users. To use it:

1. Install the required [labclient](https://rubygems.org/gems/labclient/versions/0.5.1) gem with `gem install labclient`.
1. Copy the script to your local machine and give it a name, like `emailgrab.rb`.
1. Replace `YourSuperSweetPAT` with a `read_api` scoped PAT from your GitLab SaaS admin account.
  - **Note**: If a new PAT was created from an admin account, that account will receive a slack message from the SIRTbot app asking if the PAT creation was legitimate. Remember to fill this out for security auditing.
1. [Comment out](https://docs.ruby-lang.org/en/3.0/doc/syntax/comments_rdoc.html) the sections of the script that you will not be using, either `groups`, `users`, or `projects`.
1. Add your data to the section you will be using.
1. Run the script with `ruby emailgrab.rb`.

The results will be created as `namespace-contacts.csv` in the same directory that the script is located in.


