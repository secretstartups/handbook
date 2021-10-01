---
layout: handbook-page-toc
title: "Using Gainsight within Customer Success"
description: "The key aspects of how Customer Success uses Gainsight to drive success for customers."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

*For an overview of Gainsight, and information about how to login, please refer to the [Gainsight Overview Page](/handbook/sales/gainsight/).*


## Gainsight workflow

Gainsight holds a lot of information and is great for reporting, but there can be a learning curve for TAMs to getting a good workflow where they feel productive. Below is a recommended workflow for using Gainsight.

Several TAMs find success by reviewing Gainsight at the beginning and/or end of their day, to see what action items (or [CTAs](/handbook/customer-success/tam/gainsight/ctas)) are due soon, [log their customer calls](/handbook/customer-success/tam/gainsight/timeline/) from the day, and check on the status of their [success plans](/handbook/customer-success/tam/success-plans/).

One of our TAMs created an [8 minute video](https://youtu.be/yk95b6u26So) of her workflow and how she integrates Gainsight into her day to day tasks to reduce the lift and ensure her accounts stay up to date.

### Gainsight Dashboard

When logging in, TAMs will begin on their dashboard. Gainsight's homepage will show a "TAM Portfolio" Dashboard which is a full list and overview of each TAM's customers. This dashboard defaults to show the book of business for the current user but can be filtered and configured in a variety of ways to view the information for specific TAMs, teams, etc.

This dashboard is likely to be a TAM's most-frequented page, as it shows a summary of their entire book of business, including last activity dates, health scores, at-risk customers, [upcoming renewals](/handbook/customer-success/tam/renewals/), stage adoption statistics, success plan progress, and more.

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
- Zendesk Tickets - recent Zendesk tickets ([synced from Zendesk](#salesforce-and-zendesk-syncing))
- Adoption - [license utilization](/handbook/customer-success/tam/gainsight/license-usage) and [stage adoption](/handbook/customer-success/tam/stage-adoption/)
- Subscriptions - GitLab subscription details ([synced from Salesforce](#salesforce-and-zendesk-syncing))
- Opportunities - open opportunities ([synced from Salesforce](#salesforce-and-zendesk-syncing))
- Salesforce Activities - "Activity History" section [from Salesforce](#salesforce-and-zendesk-syncing)
- Survey - holds all survey response data from Journey Orchestrator customer programs
- Program Logs - automatically logs Journey Orchestrator customer program emails to the account history for visibility

If you'd like, you can toggle the "Scrolling" button at the top of any 360 page to enable scrolling through all of the sections, rather than having to click into them.

Note at the top of the 360 page, there is a button for [Timeline](/handbook/customer-success/tam/gainsight/timeline/), which shows all logged activities for that specific customer. Gainsight has a number of options for logging a TAM's interactions with a customer. These are useful to build a historical record of what the customer has done with us, and the initiatives we've worked on.

#### Following Accounts

On each account's 360, there is a "Follow" button next to the account name. If you are assigned as a TAM to an account, there is no need to follow the account, as you will automatically receive all notifications for that account. If you are not the TAM assigned to an account, you can follow the account to receive the same notifications the TAM assigned does.

#### Referenceable Customers

The `Referenceable Customers` field on the C360 Attributes section highlights [if a customer is a Referenceable Customer](/handbook/marketing/strategic-marketing/customer-reference-program/). If a Customer is *not* a Referenceable Customer and they would make a great one, follow the process to [Nominate a Reference Customer]().

#### Customer NPS/CSAT Surveys

The purpose of these surveys are to measure customer loyalty, satisfaction, and enthusiasm with GitLab. The onboarding NPS/CSAT serves as an early warning system for the customer beyond what TAM sentiment or product usage data can tell us. It is another attribute that can point to risk early in an account, enabling faster time to resolution. The renewal NPS/CSAT serves as an additional attribute into our knowledge of the health of the renewal and enables an additional lens of focus for prioritization.

In order for our customers to receive the surveys,  a [`GitLab admin` role needs to be assigned](https://about.gitlab.com/handbook/sales/field-operations/customer-success-operations/cs-ops-programs/#gitlab-admin-contacts) in Gainsight to the appropriate contacts.  It is the TAM’s role to complete the role assignment, and this process has been added as a task in the customer onboarding playbook, and again in the customer renewal playbook. 

##### What is NPS?
- Net Promoter Score - From 1-10
- It is always one question - ‘how likely are you to recommend (company) to a friend or colleague?
- It is an attribute that can give another ‘lens’ into how a portion of the customer lifecycle has gone, or may go, such as onboarding (early enablement) and preparation to renew. 
- The ‘rolled up’ score can give insight into trends - such as onboarding/enablement being bumpy. 
- In companies that have more complex/longer onboarding processes, the NPS typically starts lower and rises as the customer begins to feel more return on investment later in the lifecycle.  

##### What is NPS not?
- A ‘determination’ of the health of a customer.  It is simply another attribute.

##### What is CSAT?
- There are customer satisfaction questions, that often accompany the NPS question to get a deeper understanding of the customer sentiment at that point in the lifecycle.

##### What CSAT / NPS questions are we asking?
- Post-Onboarding - 
   - Considering your experience with us so far, how likely are you to recommend GitLab to a friend or colleague?
   - Overall, how satisfied are you with your onboarding experience?
   - How can we improve your readiness to adopt the product?
- Pre-Renewal - 
   - How likely are you to recommend GitLab to a friend or colleague?
   - How satisfied are you with GitLab? 

##### What will we do with the scores?
- In addition to writing the score to a scorecard in the customer 360, we will also trigger CTA’s to action based on the feedback.
- Negative NPS Scores (0-6 OR Very Dissatisfied, Dissatisfied, Neutral) will create a CTA for the TAM Manager to follow-up with the contact.
- Positive NPS Scores (7-10 OR Satisfied, Very Satisfied) will create a CTA for the TAM to follow-up with the contact.
- All scores will be posted to #cs_programs_nps_results channel in Slack!

##### Who will receive the survey and when?
- We will send the NPS/CSAT survey at the 60 day mark for new customers (not those longer-standing that recently got a TAM) and again at 120 days before renewal.


### Sally the Slack bot

Sally is an AI powered Slack bot that allows you to log customer calls, update customer data, provide information on health scoring, current risks, and opportunities.

While only Gainsight users can make inquiries with Sally, if she is in a channel and requested for information, her response will be visible to everyone in the channel. As a result, unless you want everyone in the channel to see the information, it's recommended to chat with Sally in a direct message.

To get started with Sally, send her a message that says "help" and she'll let you know what she can do. For more information, see Gainsight's [suggested queries](https://support.gainsight.com/Gainsight_NXT/Sally_AI_Bot/FAQ/Sally_FAQs#What_queries_can_I_ask_Sally_today.3F) and other Sally [user guides](https://support.gainsight.com/Gainsight_NXT/Sally_AI_Bot/User_Guides).

When updating account information, be sure that you select the correct account. Some larger organizations can have multiple entries in Salesforce. Requested updates should be available immediately in Gainsight.

### Emails

Gainsight offers a semi-automated email feature called Email Assist, which is accessible to TAMs using Calls to action in the Cockpit. We recommend using Email Assist tasks when TAMs need more control over the scheduling and content of the email. A TAM will select the individual contacts to send the email to, and the email contents can be customized as needed.

A full list of available emails can be found in a GitLab-only [Google Doc](https://docs.google.com/document/d/1NSxAH_CynFMeHUo05_N_bsh0ZRg1xyV69174l15zYaI/edit?usp=sharing). In the future, we'll move this information to a GitLab project.

TAMs can send these emails to customers in one of two ways:

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
- [License Usage in Gainsight](https://youtu.be/ZqpmxoUy6EE)
- [Product Usage Data - Overview](https://youtu.be/5_J9Kfbu5JA)

