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

## Overview

At times the CMOC will be asked to send notices to GitLab SaaS users or customers to inform them of actions that we have taken (or will be taking) on namespaces or projects under their control. These notices are sent in the form of Zendesk tickets. The tickets will always be sent to users with `Owner` level permissions in the namespace or project in question.

Most contact requests will involve contacting all of the owners of only one project or only a few specific users. However, some may involve contacting all of the owners of multiple projects.

If you're tasked with contacting the owners of a project and know that there's only one, feel free to look up their email address using your admin account or [ChatOps](https://about.gitlab.com/handbook/support/workflows/chatops.html#user).

This workflow describes how to fulfill different types of contact requests and the tools used for each.

## Tools

The following tools can be used to facilitate different types of contact requests.

### Email Grab Script

The [Email Grab Script](https://gitlab.com/gitlab-com/support/runbooks/-/blob/master/code/group_project_user_owner_emails.rb) is a Ruby script that will return the primary email addresses of the owners of a group or project. Currently, it can only be used if you possess a GitLab SaaS admin account. It can also be supplied only a list of usernames, in which case it will return the primary email addresses of those users. To use it:

1. Install the required [labclient](https://rubygems.org/gems/labclient/versions/0.5.1) gem with `gem install labclient`.
1. Copy the script to your local machine and give it a name, like `emailgrab.rb`.
1. Replace `YourSuperSweetPAT` with a `read_api` scoped PAT from your GitLab SaaS admin account.
1. [Comment out](https://docs.ruby-lang.org/en/3.0/doc/syntax/comments_rdoc.html) the sections of the script that you will not be using, either `groups`, `users`, or `projects`.
1. Add your data to the section you will be using.
1. Run the script with `ruby emailgrab.rb`.

The results will be created as `namespace-contacts.csv` in the same directory that the script is located in.

### Customer Ticket Generator

The [Customer Ticket Generator](https://gitlab-com.gitlab.io/support/support-ops/forms/customer-ticket-generator/) is a form that can be used to send multiple tickets out at once. Once the form is submitted, an issue will be created in the [customer ticket generator tracker](https://gitlab.com/gitlab-com/support/support-ops/forms/customer-ticket-generator) where a member of SupportOps will then run it. This can also be used in conjunction with the [Email Grab Script](#email-grab-script), whose output can be provided as the CSV for the form.

### Zendesk Macros

There are various [macros](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/tree/master/macros/active/Support/SaaS/Notices) in the `Support::SaaS::Notices` section can be used as a template when only a few users need to be contacted.

## MailChimp Notices

Outside of Zendesk we may be asked to be involved in the process of sending mass notices to users via MailChimp. In these cases, do the following:

1. [Open an issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=email-request) in the [marketing/demand-generation/campaigns](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns) issue tracker using the `Email-Request-mpm` template.
1. Fill the template out in its entirety.
1. Submit the issue and be ready to adjust the subject and/or body of the notice based on feedback.
