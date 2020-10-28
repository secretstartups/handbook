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

- Efficiency: consolidated account views (Book of Business, account), product analytics, Zendesk integration, notes, collab projects, and to-dos
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

## Gainsight workflow

Gainsight holds a lot of information and is great for reporting, but there can be a learning curve for TAMs to getting a good workflow where they feel productive. Below is a recommended workflow for using Gainsight.

Several TAMs find success by reviewing Gainsight at the beginning and/or end of their day, to see what action items (or [CTAs](/handbook/customer-success/tam/gainsight/ctas)) are due soon, [log their customer calls](/handbook/customer-success/tam/gainsight/timeline/) from the day, and check on the status of their [success plans](/handbook/customer-success/tam/success-plans/).

When logging in, TAMs will begin on their dashboard.

### Gainsight Dashboard

Gainsight's homepage will show a "TAM Portfolio" Dashboard which is a full list and overview of each TAM's customers. This dashboard defaults to show the book of business for the current user but can be filtered and configured in a variety of ways to view the information for specific TAMs, teams, etc.

This dashboard is likely to be a TAM's most-frequented page, as it shows a summary of their entire book of business, including last activity dates, health scores, at-risk customers, upcoming renewals, stage adoption statistics, success plan progress, and more.

There are also other dashboards available to TAMs to look at, including the CS Leadership Dashboard which reviews aspects of all TAM-supported accounts, the Customer Onboarding Dashboard which shows the status of onboarding across all accounts, and the Stage Adoption Dashboard which goes into detail regarding which stages have been adopted and the success of adoption plays.

When hovering on the far left of the screen, a sidebar will pop up that has a few options:

- Home - you're here!
- Timeline - this [Timeline](/handbook/customer-success/tam/gainsight/timeline/#timeline-view) view shows all customers, rather than an individual customer which can be found on a [Customer 360](#customer-360).
- Cockpit - the Cockpit is where [CTAs](/handbook/customer-success/tam/gainsight/ctas) live; this Cockpit view shows all CTAs for all of your customers, including success plan objectives.

### Customer 360

The Customer 360 (or C360) is the full overview for each individual account.

The left side panel of the 360 contains the following sections:

- Summary - high-level overview of the account
- Attributes - account-related details and links; for lifecycle stage definitions, see our [vision handbook page](/handbook/customer-success/vision/#lifecycle-stages), and for deployment types see our [definitions](/handbook/customer-success/tam/gainsight/deployment-types/)
- Scorecard - [health score](/handbook/customer-success/tam/health-score-triage/)
- Success Plan - [success plans](/handbook/customer-success/tam/success-plans/)
- Account Hierarchy - provides a tree of parent and child account hierarchy if applicable
- Sponsor Tracking - ability to add your key customer contacts and be notified if they leave the company
- Cockpit - holds all of your tasks and [CTAs](/handbook/customer-success/tam/gainsight/ctas) for the account
- Contacts - all contacts for the account ([synced from Salesforce](#salesforce-and-zendesk-syncing))
- Zendesk Tickets - recent Zendesk tickets ([synced from Zendesk]((#salesforce-and-zendesk-syncing)))
- Adoption - license utilization and [stage adoption](/handbook/customer-success/tam/stage-adoption/)
- Subscriptions - GitLab subscription details ([synced from Salesforce](#salesforce-and-zendesk-syncing))
- Opportunities - open opportunities ([synced from Salesforce](#salesforce-and-zendesk-syncing))
- Salesforce Activities - "Activity History" section [from Salesforce](#salesforce-and-zendesk-syncing)

If you'd like, you can toggle the "Scrolling" button at the top of any 360 page to enable scrolling through all of the sections, rather than having to click into them.

Note at the top of the 360 page, there is a button for [Timeline](/handbook/customer-success/tam/gainsight/timeline/), which shows all logged activities for that specific customer. Gainsight has a number of options for logging a TAM's interactions with a customer. These are useful to build a historical record of what the customer has done with us, and the initiatives we've worked on.

#### Following Accounts

On each account's 360, there is a "Follow" button next to the account name. If you are assigned as a TAM to an account, there is no need to follow the account, as you will automatically receive all notifications for that account. If you are not the TAM assigned to an account, you can follow the account to receive the same notifications the TAM assigned does.

#### Referenceable Customers

The `Referenceable Customers` field on the C360 Attributes section highlights [if a customer is a Referenceable Customer](/handbook/marketing/strategic-marketing/customer-reference-program/index.html#customer-reference-program-at-gitlab). If a Customer is *not* a Referenceable Customer and they would make a great one, follow the process to [Nominate a Reference Customer](/handbook/marketing/strategic-marketing/customer-reference-program/#process-for-adding-new-reference-customers).

### Sally the Slack bot

Sally is an AI powered Slack bot that allows you to log customer calls, update customer data, provide information on health scoring, current risks, and opportunities.

While only Gainsight users can make inquiries with Sally, if she is in a channel and requested for information, her response will be visible to everyone in the channel. As a result, unless you want everyone in the channel to see the information, it's recommended to chat with Sally in a direct message.

To get started with Sally, send her a message that says "help" and she'll let you know what she can do. For more information, see Gainsight's [suggested queries](https://support.gainsight.com/Gainsight_NXT/Sally_AI_Bot/FAQ/Sally_FAQs#What_queries_can_I_ask_Sally_today.3F) and other Sally [user guides](https://support.gainsight.com/Gainsight_NXT/Sally_AI_Bot/User_Guides).

When updating account information, be sure that you select the correct account. Some larger organizations can have multiple entries in Salesforce. Requested updates should be available immediately in Gainsight.

### Emails

There are pre-filled email templates in Gainsight that TAMs can send to customers in one of two ways.

**1. Directly in Gainsight**: To send an email directly from Gainsight, create a basic CTA for the customer with the email subject/purpose. Once it's opened, click on the CTA, click the three vertical dots at the top right, then click "Send Email". Then choose the appropriate email template from the dropdown and fill in the recipient's email address and send.

**2. In Gmail through a Chrome extension**: Add the [Gainsight extension](https://chrome.google.com/webstore/detail/gainsight-assist/kbiepllbcbandmpckhoejbgcaddcpbno?hl=en-US) to your Google Chrome browser. Once added, to apply a template, open a blank email and click the "G" icon on the right sidebar, choose the template, and click "Apply template". Complete the email as normal. If a recipient's email address is in Gainsight under their account, it will auto-link any emails and update the account's timeline. See Gainsight's support article on [Email Assist](https://support.gainsight.com/Gainsight_NXT/Email_Assist) for more details.

Please note we recommend [BCCing Salesforce](/handbook/customer-success/using-salesforce-within-customer-success/#tracking-emails-within-salesforce) on all emails rather than syncing every email to Gainsight, although it is also possible to [BCC Gainsight](/handbook/customer-success/tam/gainsight/timeline/#bccing-emails).

## Salesforce and Zendesk Syncing

Gainsight is synched with Salesforce so that everything that happens in Gainsight is pulled into Salesforce, allowing Salesforce to remain our SSOT but also allowing us to not have to duplicate information. Gainsight is also integrated and syncs with Zendesk so TAMs can view customer support tickets within Gainsight.

**Salesforce** syncs are queued at 12AM Pacific Time (7AM UTC). The full sync typically is completed by 4AM PT (11AM UTC). Note that "Last Activity Date" field syncs every two hours (based on "Call" or "Meeting" [activity type](/handbook/customer-success/tam/gainsight/timeline/)).

**Zendesk** syncs are queued to run every day at 12AM Pacific Time (7AM UTC).

If you see a data issue (e.g. account hierarchy, ARR, etc.), check if this is the same information that's in Salesforce. If so, use Salesforce chatter and at-mention `sales-support` with the items that need to be updated and/or reviewed. If the issue is specifically Gainsight and not sourced from Salesforce, pull in CS Ops.

For information on how we manage the backend data for Gainsight, please see our [Go-To-Market technical documentation handbook page](/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/#gainsight).

### Updating fields

The `Technical Account Manager` field on an account is a bi-directional sync with Salesforce. You can update the TAM on an account either in Salesforce or Gainsight but since the sync occurs nightly it will take at least 1 day for the values in Gainsight and Salesforce to match after one of the systems is updated.

`Account Owner`, `Solutions Architect`, `Renewal Date`, `ARR`, subscription and opportunity info, etc. are all updated in Salesforce and synced to Gainsight.

To add customer contacts to an account, you can add them in either Salesforce or Gainsight, as we utilize a bi-directional sync. It is good practice is to check that any customer contacts we engage with are in Gainsight for the following reasons:

1. When scheduling a meeting, they can be [logged in the meeting](/handbook/customer-success/tam/gainsight/timeline/).
1. If any of these contacts open a Support Ticket, we want it assigned to the account. The contact must be in SFDC for that to work.
1. When we send emails to contacts (monthly release, marketing, etc.), the contact needs to be loaded into Gainsight.
1. To share a Success Plan, they need to be a contact in Gainsight.
1. Sponsor Tracking component requires the contact to be in Gainsight.

## Video enablement

The videos listed here are internal to GitLab only. You will need to be logged in to the "GitLab Unfiltered" YouTube channel to access them.

- [Gainsight Overview and Demo](https://youtu.be/6NuyNSNipgc)
- [Gainsight Foundations](https://education.gainsight.com/gainsight-foundations-nxt-fka-101)
- [Gainsight Enablement 1](https://youtu.be/PL9shBdCMmo): health score, call logging, and creating a success plan
- [Gainsight CTAs](https://www.youtube.com/watch?v=qkjmTh3Qad4&feature=youtu.be)
- [Gainsight TAM Dashboard and Customer 360](https://www.youtube.com/watch?v=01IhQpSN2us&feature=youtu.be)
- [Gainsight Assist Gmail Plugin](https://www.youtube.com/watch?v=7_gPQv-CHHA&feature=youtu.be)
- [Gainsight Account Triage](https://drive.google.com/file/d/1-jM7j-tpY3kC6kZR4xjXS8iUPrkoBrn9/view)
- [Executive Business Reviews with Gainsight](https://www.youtube.com/watch?v=LE1aNw4OiHw&feature=youtu.be)
- [Sally Slackbot](https://education.gainsight.com/series/end-user-training/gainsight-sally)
- [How a Gainsight CSM Uses Gainsight](https://education.gainsight.com/series/end-user-training-for-nxt/how-a-gainsight-csm-uses-gainsight)
- [Using Gainsight in Account Team Meetings](https://youtu.be/gT_pz9PoHHg)

## Feedback about Gainsight

### Feature Requests

New feature requests can be submitted by creating an issue and selecting the [Gainsight Request Template](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=).

Make sure you apply the `gainsight` label, and optionally apply `gainsight::feature_request` or `gainsight::bug` scoped labels.

The status of Gainsight issues can be viewed on the [Gainsight issue board](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/boards/1731118?&label_name[]=gainsight).

To request new email templates be added to Gainsight, or programs in [Journey Orchestrator](https://www.gainsight.com/journey-orchestrator/), use the Sales Ops board above and put the content and format of your email in Markdown (if possible). Then `@mention` a Gainsight administrator.

### Support tickets

To submit a support ticket about Gainsight, you have two options.

1. Email support@gainsight.com and cc GitLab's CS Ops Manager and Gainsight Account Manager.
1. Go to the [Gainsight support website](https://support.gainsight.com/), choose Gainsight NXT, and fill out the required fields.

#### Common errors & troubleshooting

##### Query API invalid response

If you receive the error message "Query API invalid response", try clearing your browser cache and cookies. We recommend also checking in a private browser (Incognito Mode, etc.) to verify it's a browser configuration issue.

##### Success plan objectives updated failed

If your receive the error message "SUCCESS_PLAN_OBJECTIVES_UPDATED_FAILED" when changing the status of a Success Plan from Draft to Active, it could be because there is one or more CTAs with a due date earlier than one of its tasks' due date. To correct this, re-apply the due date on tasks which will update the CTA's due date, and then try to change the Success Plan to Active again.

##### Account says "TO BE DELETED NO LONGER IN SFDC"

This is because two SFDC accounts were merged into one. What happens is this:
1. Salesforce has 2 records of the same account
1. SAL/or someone asks SalesOps/Deal Desk to merge
1. The two Salesforce accounts are merged
1. Gainsight does not "merge" because they were already merged in Salesforce
1. Gainsight recognizes one was deleted and marks it with the "TO BE DELETED" title for CS Ops to review and/or delete it
1. The remaining (merged) one in Salesforce remains synced to Gainsight

##### Error "Timeline: Invalid authentication credentials. Authentication failed" when opening an email in Chrome 

Usually, this type of error occurs if the Chrome extension version is out of date. Try [updating the Chrome extension](https://community.gainsight.com/timeline-17/update-your-chrome-plugin-39237) to the latest version. It should automatically refresh and begin working, but try logging out and back in if it doesn't resolve right away. 

If this doesn't solve the issue, reach out to Gainsight support and let them know you've already tried updating the extension and logging out and back in.
