---
layout: handbook-page-toc
title: Zendesk Apps
description: Overview of the various applications we use in Zendesk.
---

# Zendesk Apps

Zendesk can have applications installed into it to enhance its capabilities.
Here at GitLab, we use quite a few apps to help make Zendesk even better!

Zendesk applications tend to come from one of two areas:

* [The Zendesk Marketplace](https://www.zendesk.com/apps/)
* Developed in-house

<!-- When time allows, make a page detailing _how_ to create an application -->

## App locations

Applications can be run in a great many places, but the traditional locations
are:

* [Ticket sidebar](https://developer.zendesk.com/apps/docs/support-api/ticket_sidebar)
* [User sidebar](https://developer.zendesk.com/apps/docs/support-api/user_sidebar)
* [Organization sidebar](https://developer.zendesk.com/apps/docs/support-api/organization_sidebar)
* [Navbar](https://developer.zendesk.com/apps/docs/support-api/nav_bar)
* [Background](https://developer.zendesk.com/apps/docs/support-api/background)

You can see more resources on application locations via the
[Zendesk Developer Manifest Reference](https://developer.zendesk.com/apps/docs/developer-guide/manifest#location)
documentation.

### Advanced Search

Advanced Search is an app that provides a simple visual interface for
constructing complex search queries against tickets, users, and organizations
(orgs). It also enables you to export the search results in a CSV format.

App information:

* Located in the navbar
* This application was developed by
  [Zendesk](https://www.zendesk.com/marketplace/partners/zendesk/) and is
  available in the
  [Zendesk Marketplace](https://www.zendesk.com/apps/support/advanced-search/).

### Due Date Picker

This is a GitLab built app that allows you to customize what the Due Date for a
Task ticket is set for. By default, Zendesk only allows setting the date. This
enables you to set the date, time, and timezone. 

App information:

* Located in the ticket sidebar
* This application was developed in-house and can be found
  [Due Date Picker project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-apps/due-date-picker).

### Support Uploader

This app acts as a bridge between the files uploaded via
[support uploader](https://about.gitlab.com/handbook/support/workflows/large_files.html#support-uploader)
and Zendesk.

App information:

* Located in the ticket sidebar
* This application was developed in-house and can be found
  [Support Uploader project](https://gitlab.com/gitlab-com/support/support-uploader).

### Unbabel for Zendesk Support

Powered by state-of-the-art AI and a worldwide community of translators,
Unbabel delivers translation at enterprise scale. We help you serve customers
in any language, with fast, native-quality translations of your customer
support tickets in Zendesk.

App information:

* Located in the ticket sidebar
* Restricted by Role:
  * Administrator
  * GitLab Staff
  * GitLab Staff - Delete tickets
  * GitLab Staff - Explore
  * Support Managers
  * Support Staff
  * Support Staff - Explore
  * Support Staff - Professional Services
  * Tech Support
* This application was developed by Unbabel and is available in the
  [Zendesk Marketplace](https://www.zendesk.com/apps/support/unbabel-for-zendesk-support/).

### SaaS Account Ticket Helper

This app helps work SaaS Account tickets. It can do the following via manual
intervention:

* Check for Email Suppressions in mailgun
* Perform Namesquatting checks

It will also automatically work new SaaS Account tickets if the Problem Type is
one of the following:

* Did not receive confirmation email
* Forgot password

Both types can result in an automatic reply, so give the app a chance to
activate and do the work before updating the ticket!

App information:

* Located in the sidebar
* Restricted by Role
  * Administrator
  * Support Managers
  * Support Staff
  * Support Staff - Explore
* This application was developed in-house and can be found
  [SaaS Account Ticket Helper project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-apps/saas-account-ticket-helper).

### 2FA App

This app takes what was in the
[Risk Factor Worksheet](https://drive.google.com/drive/u/0/search?q=Risk%20factor%20worksheet%20parent:1nI4lCILooN-0U_RmPJP6_cNyIDgXJR99)
and transcribes it into a side panel. As you check the various boxes, it
adjusts the Risk Factor score. Once you are done checking boxes, you can then
have the app make an internal comment on the ticket showing your work!

App information:

* Located in the ticket sidebar
* Restricted by Group
  * Support AMER
  * Support APAC
  * Support EMEA
  * Support Managers
  * Support Ops
* This application was developed in-house and can be found
  [2FA App project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-apps/2fa-app).

### GitLab Reminders App

The Reminders App appears in the navbar and allows the agent a more specialized view
of tickets they are involved in. It currently shows:

* Tickets assigned to you with a pending/overdue task that are not in a Closed
  state
* Recent tickets you have viewed
* Tickets assigned to you that are not in a Closed state
* Tickets you are CC'd on that are not in a Closed state

It also allows you to quickly manage your tasks by seeing the notes you have
left for said task, when it is due, and a button to quickly mark the task as
done (remove the notes and due date).

App information:

* Located in the navbar
* This application was developed in-house and can be found
  [GitLab Reminders App project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-apps/gitlab-reminders-app).

### Show Related Tickets

This uses the ticket subject to search for other tickets with a similar
subject. This helps to locate potentially related tickets you can check to see
how they were solved.

App information:

* Located in the ticket sidebar
* This application was developed by
  [Zendesk](https://www.zendesk.com/marketplace/partners/zendesk/) and is
  available in the
  [Zendesk Marketplace](https://www.zendesk.com/apps/support/show-related-tickets/).

### Ticket Redaction App

This allows for redacting content in a ticket. You input a string or URL for
the app to check for. If it finds it, it removes said string and inserts a
black bar over the string (if an attachment, it replaces the attachment with a
redacted text file).

App information:

* Located in the ticket sidebar
* Restricted by Role
  * Administrator
  * Support Managers
  * Support Staff
  * Support Staff - Explore
* This application was developed by
  [Zendesk](https://www.zendesk.com/marketplace/partners/zendesk/) and is
  available in the
  [Zendesk Marketplace](https://www.zendesk.com/apps/support/ticket-redaction/).

### GitLab User Lookup

This app looks in Salesforce and GitLab.com for a contact or account based on
the requestor’s email address. If it finds a GitLab.com account, it will
present some basic account information as well as the membership of the user
(and the corresponding plans of said memberships).

App information:

* Located in the ticket sidebar
* This application was developed in-house and can be found
  [GitLab User Lookup](https://gitlab.com/gitlab-com/support/support-ops/zendesk-apps/gitlab-user-lookup).

### Architecture Diagrams

This app uses the Organization field `AM Project ID` to check for an existing
Account Management project. If it finds it, it will then link to that
project’s Architecture Diagram.

**NOTE**: The AM Project ID field is manually populated. To get that added in,
you would want to submit a Support Ops Project issue.

App information:

* Located in the ticket sidebar
* This application was developed in-house and can be found
  [GitLab Architecture project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-apps/gitlab-architecture).

### Gainsight

Gainsight aggregates and turns disparate customer data from multiple sources
into a single source of truth. This is largely used by the Sales team, but it
might contain some information about the Organization that could prove useful.

App information:

* Located in the ticket sidebar
* This application was developed by Gainsight and is available in the
  [Zendesk Marketplace](https://www.zendesk.com/apps/support/gainsight/).
