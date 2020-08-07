---
layout: handbook-page-toc
title: "Using Gainsight within Customer Success"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What is Gainsight?

Gainsight is a tool for Technical Account Managers to manage the ongoing customer lifecycle.

### Key Benefits of Gainsight

Gainsight will help across several different areas within Customer Success. Some highlights include:

- Efficiency: consolidated account views (Book of Business, account), telemetry, Zendesk integration, notes, collab projects, and to-dos
- Consistency: Establish customer lifecycle process, manage and track engagement
- Visibility: health scores, risk, adoption, and data visuals
- Automation: process, adoption, enablement for digital journey
- Metrics and Analytics: Stage Adoption, customer health, time-to-value,
- Grow Net Retention: Success plan-driven engagement, expand plays

## Getting Started

There are two ways to access Gainsight: [through Salesforce](#access-via-salesforce) (recommended), and by [logging in directly](#logging-in-directly).

### Access via Salesforce

_Salesforce is the recommended way of accessing Gainsight, since you will have access to the full set of account information, including opportunities, subscription information, and activity._

Log in to Salesforce, and click on the "Gainsight NXT" tab at the top of the screen. If you don't see "Gainsight NXT" as a choice, you can add it by clicking the "+" sign, choosing "Customize My Tabs" and choosing Gainsight NXT from the applications list.

To hide the Salesforce header to maximize Gainsight screen space, click the "double arrow" icon in the top right corner of the Gainsight header, next to your profile icon.

If you are logging in through Salesforce, you can also quickly open the Salesforce link for the Gainsight account you're on by clicking the three vertical dots at the top right of the Gainsight account page (below your user image) then clicking "View Account".

### Logging in Directly

**Note: you may log in directly via Okta but you will not have subscription data, opportunity, or Salesforce activity.**

To access Gainsight directly, go to [gitlab.gainsightcloud.com](https://gitlab.gainsightcloud.com/) and when prompted for your username and password, enter _only_ your GitLab email address. As soon as it is entered, the screen should change to indicate that you are using single sign-on, and when you click "log in" it will redirect you to Okta.

- If you need to request access to Gainsight, fill out an [Access Request](/handbook/business-ops/team-member-enablement/onboarding-access-requests/access-requests/#single-person-access-request) and have your manager add the manager approved label.
- If you need help locating the Gainsight NXT tab in Salesforce or the Gainsight Okta tile, submit an issue using the [Gainsight Request Template](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=).

### Confirm your timezone

Your timezone is dependent on your timezone in Salesforce, so even if you change it in Gainsight, if it's incorrect in Salesforce it will be overwritten the next day. To update your timezone in Salesforce (which is automatically PST), click your name at the top right, click "My Settings", click "Personal" on the left sidebar, click "Language & Time Zone", choose your correct timezone, and save. You will see the correct timezone in Gainsight the following day. Salesforce's timezone will automatically be PST, so you'll want to update this to your timezone to make it easier for logging events (when logging an event, it will input the current time in your selected timezone).

### Configure your notifications

To adjust your individual notifications, click on your name in the upper right corner, select "My Settings", then "Notifications" at the top middle. The below pictures show the default, and you will have the following options to select based on your preferences. View Gainsight's [documentation](https://support.gainsight.com/Gainsight_NXT/Notifications/User_Guides/Setup_User_Notifications) for more information.

![Gainsight Channel Subscriptions](/images/handbook/customer-success/gainsight-channel-subscriptions.png "Gainsight Channel Subscriptions")

![Gainsight Event Subscriptions](/images/handbook/customer-success/gainsight-event-subscriptions.png "Gainsight Event Subscriptions")

## Gainsight Dashboard 360

TAMs will start on their "TAM Dashboard" for a full list and overview of their customers. This includes at-risk customers, customers in renewal, health overview, open CTAs, and Stage Adoption statistics.

The Customer 360 (or C360) is the full overview for each account. This gives the TAM a snapshot of the customer: high level attributes, health, Success Plans, activities, Zendesk tickets, and more. The goal here is to provide broad context to the TAM about their customer.

Watch a [GitLab Unfiltered video](https://www.youtube.com/watch?v=01IhQpSN2us&feature=youtu.be) for an overview of the TAM Dashboard and C360.

Please see below for more information regarding the sections on the C360 that TAMs need to maintain:

- [Health Score](/handbook/customer-success/tam/health-score-triage/)
- [Deployment Types](/handbook/customer-success/tam/gainsight/deployment-types/)
- [Stage Adoption](/handbook/customer-success/tam/stage-adoption/)
- [Timeline](/handbook/customer-success/tam/gainsight/timeline/)

The left side panel of the 360 contains the following sections:

- Summary - high-level overview of the account
- Attributes - account-related details and links; for lifecycle stage definitions, see our [vision handbook page](/handbook/customer-success/vision/#lifecycle-stages)
- Scorecard - health score
- Success Plan - success plans
- Account Hierarchy - provides a tree of parent and child account hierarchy if applicable
- Sponsor Tracking - ability to add your key customer contacts and be notified if they leave the company
- Cockpit - holds all of your tasks for the account
- Contacts - all contacts for the account ([synced from Salesforce](#updating-fields)
- Zendesk Tickets - recent Zendesk tickets (synced from Zendesk)
- Adoption - license utilization and stage adoption
- Subscriptions - GitLab subscription details (synced from Salesforce)
- Opportunities - open opportunities (synced from Salesforce)
- Salesforce Activities - "Activity History" section from Salesforce

If you'd like, you can toggle the "Scrolling" button at the top of any 360 to enable scrolling through all of the sections, rather than having to click into them.

### CTAs

A [CTA](https://support.gainsight.com/SFDC_Edition/Cockpit_and_Playbooks/About/01_CTAs_Tasks_and_Playbooks_Overview) is a call to action that is tied to a customer and appears in a TAM's cockpit, as well as the account cockpit. CTAs can be created manually at any time, but some will automatically be created for you based on certain events or data.

To create a new CTA, go to your cockpit and click "+ CTA", then fill out the appropriate information. If a CTA will consist of multiple tasks over a period of time, click CTA after saving it, then click the three dots on the top right of the new right sidebar, and click "Add Task". You can add as many as needed and track your progress in the milestone section.

Watch a quick [video on Gainsight CTAs](https://www.youtube.com/watch?v=qkjmTh3Qad4&feature=youtu.be) to learn how to use them, best practices, and tricks.

#### Other CTA features

* Tasks from [Timeline](/handbook/customer-success/tam/gainsight/timeline/) will automatically populate under the Cockpit
* Viewing CTAs:
   * Navigate to the C360 and click "Cockpit" to see CTA for just that customer
   * Use the far left nav panel (under "Home") and click "Cockpit" to see all CTAs for all customers (yours or overall)
* Use the dropdown at the top right to select between "My CTAs", "Closed CTAs" (assigned to anyone), and "All CTAs" (assigned to anyone)
* Use the filter button at the top right to create and save customized CTA reports, which you can later access in the dropdown

#### Types of CTAs

There are 4 "types" of CTAs, which will have different corresponding playbooks, so if you're looking for a particular playbook be sure to select the appropriate type. See below for each type and the corresponding playbooks for that type.

* Risk
  * [Account Triage](/handbook/customer-success/tam/health-score-triage/#triage-cta)
  * Low License Utilization
  * Product Risk
* Expansion
* Lifecycle
  * Commercial Onboarding Email Series
  * Create Success Plan
  * Customer Offboarding
  * [Executive Business Review (EBR)](/handbook/customer-success/tam/ebr/#how-to-prepare-an-ebr)
  * [New Customer Onboarding](/handbook/customer-success/tam/onboarding/)
  * Usage Data Enablement
* Activity
  * [Handoff](/handbook/customer-success/tam/account-handoff/#account-handoff-cta)

  If the CTA you're opening does not fall into one of the playbook categories, choose the type that makes the most sense. If it's a common CTA, suggest creating a playbook for the it by [opening an issue](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/boards/1731118?&label_name[]=gainsight).


### Following Accounts

On each account's 360, there is a "Follow" button next to the account name. If you are assigned as a TAM to an account, there is no need to follow the account, as you will automatically receive all notifications for that account. If you are not the TAM assigned to an account, you can follow the account to receive the  same notifications the TAM assigned does.

## Logging customer activity

Gainsight has a number of options for logging a TAM's interactions with a customer. These are useful to build a historical record of what the customer has done with us, and the initiatives we've worked on.

More details about this are on the [Timeline](/handbook/customer-success/tam/gainsight/timeline/) page.

## Building a Success Plan

Learn more about what a success plan is, why it's useful to both TAMs and customers, and how to create a [success plan in Gainsight](/handbook/customer-success/tam/success-plans/).

## Referenceable Customers

The `Referenceable Customers` field on the C360 Attributes section highlights [if a customer is a Referenceable Customer](/handbook/marketing/product-marketing/customer-reference-program/index.html#customer-reference-program-at-gitlab). If a Customer is *not* a Referenceable Customer and they would make a great one, follow the process to [Nominate a Reference Customer](https://about.gitlab.com/handbook/marketing/product-marketing/customer-reference-program/#process-for-adding-new-reference-customers).

## Enablement

### Videos

The videos listed here are internal to GitLab only. You will need to be logged in to the "GitLab Unfiltered" YouTube channel to access them.

- [Gainsight Overview and Demo](https://youtu.be/6NuyNSNipgc)
- [Gainsight Foundations](https://education.gainsight.com/gainsight-foundations-nxt-fka-101)
- [Gainsight Enablement 1](https://youtu.be/PL9shBdCMmo): health score, call logging, and creating a success plan.
- [Gainsight CTAs](https://www.youtube.com/watch?v=qkjmTh3Qad4&feature=youtu.be)
- [Gainsight TAM Dashboard and Customer 360](https://www.youtube.com/watch?v=01IhQpSN2us&feature=youtu.be)
- [Gainsight Assist Gmail Plugin](https://www.youtube.com/watch?v=7_gPQv-CHHA&feature=youtu.be)
- [Gainsight Account Triage](https://drive.google.com/file/d/1-jM7j-tpY3kC6kZR4xjXS8iUPrkoBrn9/view)
- [Executive Business Reviews with Gainsight](https://www.youtube.com/watch?v=LE1aNw4OiHw&feature=youtu.be)
- [Sally Slackbot](https://education.gainsight.com/series/end-user-training/gainsight-sally)
- [How a Gainsight CSM Uses Gainsight](https://education.gainsight.com/series/end-user-training-for-nxt/how-a-gainsight-csm-uses-gainsight)

## Feature Requests

New feature requests can be submitted by creating an issue and selecting the [Gainsight Request Template](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=).

The status of Gainsight issues can be viewed on the [Gainsight issue board](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/boards/1731118?&label_name[]=gainsight).

To request new Email Templates be added to Gainsight, or Programs in [Journey Orchestrator](https://www.gainsight.com/journey-orchestrator/), use the Sales Ops board above and put the content and format of your email in Markdown (if possible). Then `@mention` a Gainsight administrator.

## Support Tickets

To submit a support ticket about Gainsight, you have two options.

1. Email support@gainsight.com and cc our Gainsight Account Manager and GitLab CS Ops Manager.
1. Go to the [Gainsight support website](https://support.gainsight.com/), choose Gainsight NXT, and fill out the required fields.

## Salesforce Syncing

Gainsight is synched with Salesforce so that everything that happens in Gainsight is pulled into Salesforce, allowing Salesforce to remain our SSOT but also allowing us to not have to duplicate information. Gainsight is also integrated and syncs with Zendesk so TAMs can view customer support tickets within Gainsight.

**Salesforce** syncs are queued at 12AM Pacific Time (7AM UTC). The full sync typically is completed by 4AM PT (11AM UTC). Note that "Last Activity Date" field syncs every two hours (based on "call" or "Meeting" type). **Zendesk** syncs are queued to run every day at 12AM Pacific Time (7AM UTC).

If you see a data issue (e.g. account hierarchy, ARR, etc.), check if this is the same information that's in Salesforce. If so, use Salesforce chatter and at-mention `sales-support` with the items that need to be updated and/or reviewed. If the issue is specifically Gainsight and not sourced from Salesforce, pull in CS Ops.

For information on how we manage the backend data for Gainsight, please see our [Go-To-Market technical documentation handbook page](/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/#gainsight).

### Updating fields

The TAM field on an account is a bi-directional sync with Salesforce. You can update the TAM on an account either in Salesforce or Gainsight but since the sync occurs nightly it will take at least 1 day for the values in Gainsight and Salesforce to match after one of the systems is updated.

Account Owner, SA, renewal info, opportunity info, etc. are all updated in Salesforce and synced to Gainsight.

To add additional contacts to an account, you can add them in Salesforce or Gainsight — we utilize a bi-directional Contact sync. It is good method is to check all invited external attendees are in Gainsight for the following reasons:

1. When scheduling a meeting, they can be [logged in the meeting](/handbook/customer-success/tam/gainsight/timeline/)
1. If any of these contacts open a Support Ticket, we want it assigned to the account. The contact must be in SFDC for that to work
1. When we sending emails to contacts (monthly release, marketing, etc.), the contact needs to be loaded into Gainsight
1. To share a Success Plan, they need to be a contact in Gainsight
1. Sponsor Tracking component will require the contact to be in Gainsight

## Chrome extension

There is a Gainsight Chrome extension available for TAMs to use to help sync their emails. If a user's email address is in Gainsight under the account, it will auto-link any emails and update the account's timeline. Please note we recommend [BCCing Salesforce](/handbook/customer-success/tam/gainsight/timeline/#bccing-emails) rather than syncing every email to Gainsight. See Gainsight's support article on [Email Assist](https://support.gainsight.com/Gainsight_NXT/Email_Assist) for more details.

## Common errors & troubleshooting
### Query API invalid response

If you receive the error message "Query API invalid response", try clearing your browser cache and cookies. We recommend also checking in a private browser (Incognito Mode, etc.) to verify it's a browser configuration issue.

### Success plan objectives updated failed

If your receive the error message "SUCCESS_PLAN_OBJECTIVES_UPDATED_FAILED" when changing the status of a Success Plan from Draft to Active, it could be because there is one or more CTAs with a due date earlier than one of its tasks' due date. To correct this, re-apply the due date on tasks which will update the CTA's due date, and then try to change the Success Plan to Active again.
