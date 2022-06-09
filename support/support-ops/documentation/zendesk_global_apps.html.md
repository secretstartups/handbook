---
layout: handbook-page-toc
title: 'Zendesk Global Apps'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global apps'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

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
  [Due Date Picker project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zendesk-apps/due-date-picker).

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

#### Languages we support

The languages we support in tickets at this time are listed
[on the GitLab support page](/support/#language-support).

Within Unbabel

* Chinese - listed as Chinese (Simplified)
* French
* German
* Japanese
* Korean
* Portuguese - includes Portuguese(BR)
* Spanish - includes Spanish Latin America

#### Configuring Unbabel in Zendesk

Every Agent profile in Zendesk needs to be individually configured so that only
tickets submitted in the supported languages are translated. 

To do this you can use [a javascript snippet](https://gitlab.com/gitlab-com/support/toolbox/snippets/snippets/1971515) created internally. 

You can also do the configuration manually by following these steps.

1. Open any existing ticket in Zendesk and navigate to and open the Apps sidebar.
2. Scroll to the Unbabel app and click on Settings.

  ![App](/images/support/Unbabel_App_New.png)

  ![Settings](/images/support/Unbabel_Settings_New.png)

3. Add all the languages _except_ those supported by GitLab to the "Languages you speak" list.

  ![Languages](/images/support/Unbabel_Languages_New.png)

4. When you are finished, click the Save button. 


#### Replying with a Translation

To request a translation automatically, simply reply as you normally would as
an internal note with the #unbabel hashtag included at the top of your content.
As per our
[working with tickets](/handbook/support/workflows/working-on-tickets.html#what-is-the-working-on-tickets-workflow)
workflow, please remember to assign yourself to the ticket if the ticket
doesn't currently have an assignee when you respond.

Please also ensure that the `unbabel_en`, `unbabel_reply`,
`unbabeled` tags are included, otherwise your response might not be translated
automatically. Should this happen, you will need to add the missing tags, and
create a new internal note with the #unbabel hashtag included at the top of
your content.

Once you submit your response, it may take several seconds for Unbabel to
automatically translate your internal comment, but it can take several minutes
if a human is required to manually translate your internal comment. To view the
status of the translation, you can open the Apps sidebar in the ticket, and
scroll down to the **Unbabel for Zendesk Support** box.

![Translation required](/images/support/Unbabel_Translation_Required.png)

After a translated response has been sent to the customer via Unbabel it is
necessary to manually set the ticket status as **Pending** since Unbabel will
incorrectly set the ticket status as **Open**. You must do this with an _empty
comment_ (remove any `#unbabel` added by the plugin, before you Submit as
Pending).

#### Excluding Text from Translation

The highlighted code can be skipped for translation by adding 3 brackets around
the text:

```<<< text/code >>>```

The above can also be used to protect sensitive information from a human
translator when sending a translation request.

#### Disabling Unbabel in a Specific Ticket

Sometimes Unbabel is triggered if a customer's signature was written in a
language that requires translation but the customer replies in English, and the
translation is not needed. In this case, there is a way to disable Unbabel in
this specific ticket:

* Open the ticket in question.
* Click Apps > Unbabel for Zendesk Support.
* `Change` the `Customer language` to `English`.

From now on, Unbabel will not be triggered in this ticket.

#### Help with Translation

If for some reason you have difficulty in understanding the automated
translation, an actual human intervention can actually be requested. Simply
click the link `Can’t understand the translation?` in the Unbabel app box and
this will send your response for translation to Unbabel editors.

#### Best Practices for Unbabel

As indicated in the training session, please keep in mind of the following best
practices when writing a response for translation.

* Respond in one language
  * It is likely that you can speak another language and understand what the
    customer is trying to say. Please ensure that you only use the English
    language when responding tickets as the system may not detect the language
    correctly.
* Copy only the body of the content that needs translation.
  * When referring to a quoted texts from our customers, please only use the
    content that requires translation. Including snippets/code/elements may
    take more time to translate and could result in a mistranslation.
* Mind the punctuation.
  * Punctuation can be sometimes tricky for Unbabel so please be sure there are
    no unnecessary periods/punctuations in between.
* Single Word Use
  * It is likely that the response you are sending may be lost in translation,
    for example the word `pass` would differ to a `boarding pass`.

#### Zendesk Triggers

Unbabel relies on two Zendesk triggers to work properly. These should _never_
be changed, as it can cause significant problems.

* [Unbabel for agent](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20010334&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360057239500)
* [Unbabel for user](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20010334&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360057239480)

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
  [SaaS Account Ticket Helper project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zendesk-apps/saas-account-ticket-helper).

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
  [2FA App project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zendesk-apps/2fa-app).

### GitLab Reminders App

The Reminders App appears in the navbar and allows the agent a more specialized
view of tickets they are involved in. It currently shows:

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
  [GitLab Reminders App project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zendesk-apps/gitlab-reminders-app).

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
the requestor’s email address and provided GitLab.com username. If it finds a
GitLab.com account, it will present some basic account information as well as
the membership of the user (and the corresponding plans of said memberships).
The app also does checks to determine if the requester is an enterprise user.
If it determines they are, it displays this in the app's output and auto-tags
the ticket using the `enterprise_user` tag.

App information:

* Located in the ticket sidebar
* This application was developed in-house and can be found
  [GitLab User Lookup](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zendesk-apps/gitlab-user-lookup).

### Architecture Diagrams

This app uses the Organization field `AM Project ID` to check for an existing
Account Management project. If it finds it, it will then link to that
project’s Architecture Diagram.

**NOTE**: The AM Project ID field is manually populated. To get that added in,
you would want to submit a Support Ops Project issue.

App information:

* Located in the ticket sidebar
* This application was developed in-house and can be found
  [GitLab Architecture project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zendesk-apps/gitlab-architecture).

### Gainsight

Gainsight aggregates and turns disparate customer data from multiple sources
into a single source of truth. This is largely used by the Sales team, but it
might contain some information about the Organization that could prove useful.

App information:

* Located in the ticket sidebar
* This application was developed by Gainsight and is available in the
  [Zendesk Marketplace](https://www.zendesk.com/apps/support/gainsight/).

### SFDC Tool

This app grabs the account information from SFDC and displays it in the
sidebar. Currently, it pulls in the chatter data.

It also checks if the requester is a contact in the org. If not, a handy button
appears allowing you to add the user as a contact under the organization.

App information:

* Located in the ticket sidebar
* This application was developed in-house and can be found
  [SFDC Tool project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zendesk-apps/sfdc_tool).

### Mechanizer

This app incorporates [Mechanizer](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/customersdot/mechanizer.html)
into Zendesk.

App information:

* Located in the ticket sidebar
* This application was developed in-house and can be found at
  [Mechanizer project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zendesk-apps/mechanizer/)

### Out of Office

This will enable an agent to mark when they are out of office in Zendesk, which
then updates tickets and makes it visible in the views.

Managers are also able to do this for their reports.

App information:

* Located in the navbar
* This application was developed in-house and can be found
  [Out of Office project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zendesk-apps/out-of-office/)