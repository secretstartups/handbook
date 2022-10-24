---
layout: handbook-page-toc
title: "Drift"
description: "Drift is a chat platform used by the Sales Development (SDR) organization to engage visitors on select webpages."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Drift is a chat platform used by the Sales Development organization to engage visitors on our webpages. Engagement with Drift begins when a site visitor opts into interacting with an available Drift playbook. Playbooks are customized workflows that help visitors find information as well as offer the option to chat directly or schedule time to speak with Sales Development Reps. 

### SDR Use Case
SDRs are inbound reps that will field a majority of conversations in Drift. Conversations are routed according to region/country on a round robin basis. Once Drift has routed a conversation to a rep, that SDR has 30 seconds to enter the conversation and begin a conversation with the site visitor. If 30 seconds elapses the conversation will route to the next available rep. If no rep on the team is available, the site visitor will have the option to schedule a meeting with the original rep or the first rep that has their calendar available and connected to Drift.

### BDR Use Case
BDRs are outbound reps that will have a specialized use case in Drift. A BDR with a high priority ABM account may be selected to recieve conversations in Drift from site visitors that have been identified as connected to the ABM account they cover. 

### Playbooks
We have Drift playbooks across most of our website as well as on select landing pages. The content of the playbook depends on the target audience and in the case of temporary playbooks on landing pages, the intended experience or use case. The playbooks that are currently deployed include a sitewide engage all playbook; Enterprise, Small Business, and Public Sector segment playbooks; and named ABM account playbooks designed to engage site visitors from specific companies.

If you are interested in or have a need for a playbook designed to target a specific audience please reach out #mktgops in Slack and create an issue in the Marketing Operations project using the `Drift_Campaign_Request` template.

#### Performance measurement
All Drift playbooks are associated with Saleforce campaigns to enable playbook performance to be measured outside of the Drift platform. Drift also provides reports for each playbook on the number of impressions, sends, conversations, emails captured, and meetings booked.

### Conversation routing
Drift is expected to mirror the lead routing logic in [LeanData](/handbook/marketing/marketing-operations/leandata/) as closely as possible. Our goal is to provide the best possible experience for site visitors by connecting them with their aligned resources in the Sales Development organization. This means site visitors during offline hours will be asked to schedule a meeting with an SDR that aligns to their region/country.

The account lists and playbook routing rules that govern how most Drift conversations are routed need to be refreshed to reflect changes to SDR alignment. Because this is not an automated process, Marketing Operations needs to be informed of needed changes via a [SDR alignment change request](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=sdr_alignment_change_request) from SDR leadership or as needed based on changes made to our marketing strategy that impact account alignment.

## SDR resources for using Drift

### New account set up and notification settings
SDRs and BDRs should follow these best practices when setting up their Drift account and notification settings. This Drift [resource](https://gethelp.drift.com/s/article/The-Drift-Starter-Guide-for-Sales-Teams) is a good step-by-step guide to getting your account activated and set up. Please upload a picture of yourself and enter your first and last name in your account settings.

### Rules of engagement  
-   Set yourself to away when done working / no longer want to receive chats. Please note: If you set yourself to away, prospects will still be able to interact with the bot, but once they answer the initial questions, they are automatically given the option to book time on your calendar. If you don’t set yourself to away they will have to wait while the bot attempts to notify you. It is reccommended to create a daily reminder to set yourself as "Away" at the end of your working day. If you click your picture in the bottom left corner of your Drift screen you will have the option to choose when Drift automatically sets you as "Available". Choose "Until tomorrow" if you plan to begin the next work day at 9:00 AM. You can also choose "Custom" if you plan to begin your workday at another time. 
-   SLA: please respond to chats within 60 seconds.
-   Drift has a feature called "Response Timer" which has been enabled for each team. This timer lets the Sales Dev rep know how much time has elapsed since the last response in the conversation. This is a helpful reminder to respond in a timely manner, even if you are researching a question.
-   If you are routed a chat from outside your territory, assist and qualify by continuing the conversation. If a lead is then created in Salesforce, change it to the appropriate owner.
-   In the event you aren't able to assist a site visitor on your own and escalation is needed, please reach out to your manager and/or the #mktgops slack channel.

### Best practices
* Ensure you set yourself to away when you won't be able to receive Drift notifications. The prospect will still be able to chat with the bot but will be given the option to book a time with you right away as opposed to waiting for the bot to ping you. 
* As people have the ability to book meetings with you if you are offline or don't respond fast enough, every morning look at the meetings that were scheduled. You will receive an email invite. If you want to reach out prior to the meeting or potentially reschedule, please email the prospect in advance. 
* Ensure that you have browser notifications enabled to ensure you can respond quickly. If you don't respond within 30 seconds, the prospect will be prompted to schedule time with you. *Note: if you are using the [Drift mobile app](https://gethelp.drift.com/hc/en-us/articles/360019664613-How-to-Use-the-Drift-Mobile-App) - turn notifications on within the app as well. 
* When available in Drift, we recommend having Zoominfo, Salesforce, the SSoT territory alignment, and Google Calendar open in other tabs to quckily look into things. 

### Working an inbound chat lead
1. Start the conversation with a professional greeting asking how you can help.
2. Begin to research the prospect with the information they have provided.
3. Use Zoominfo to begin confirming company details
4. Use Salesforce to see if this person is already in our system and in contact with another GitLabber (check for duplicates)
     - If you confirm that this prospect is not in your territory or wouldn't align to you, you can pull up the master territory spreadsheet to see which SDR should they should be working with. You can then add that SDR to [join the conversation](https://gethelp.drift.com/hc/en-us/articles/360019448174-How-to-Add-Participants-to-Conversations). If the appropriate SDR is unavailable, qualify to the best of your ability and ask if you can have the appropriate SDR or AE/SAL (for existing customers) reach out directly via email or phone. Relay this information with the appropriate GitLabber and share the lead/contact with them. (The Drift conversation will show up in the activity history section).
5. Qualify the prospect while assisting with their needs. 
6. If a meeting gets set up,  use the CQL “lightning” label on the right side of the drift browser to mark promising conversations. 

### Drift resources & training materials

**Drift Meetings configuration**

*  Follow [Drift's instructions](https://help-116779.drift.help/article/setting-up-your-drift-meetings/) to connect your calendar to the chat platform, set your availabilty, and update your personal meeting settings. If you have questions, please reach out to your manager or the #mktgops slack channel for assistance.

**Set yourself to available or away**

*  Change your status by clicking your avatar in the bottom left-hand corner. Whether you are available or away, you can still have your notifications on or off.
*  **Note:** If you close out of Drift, your status will not change. The only way to change your status is by updating in the tool.

**Chat notifications**
* GitLab has a preferred way to set up your Drift notifications, please ensure the following settings are selected:

##### “Get conversations notifications about…” 

✅ “Conversations I’m in”

##### “Also get notified when…

✅ “A contact comes to the site by clicking a link from an Outreach Sequence email”.

##### “Desktop notifications” 

✅ “Display desktop notifications even when Drift is not open in a browser”

✅ “Keep desktop notifications on-screen until I interact with them”.
Please select a sound that is different from your Slack, email, or other notification sounds you already have set up.

##### “Email notifications”

✅ “Send email notifications once every 15 minutes for Only conversations I’m in. 
*Please click the “update address” link to ensure you receive the email test and this setting is saved.

### Sales Dev Leadership
Drift has useful notification settings for Sales Dev leadership to get an overview of activity on the platform. 

Under "Advanced Settings" > "Send me administrator emails for..." select "Drift morning report". This will be the most useful report for Sales Dev leadership. The other selections apply mostly to operations/admin users.

**Close or open a conversations**
*  You can change your conversation status by clicking the drop-down in the top right-hand corner of your conversation.

**Marking a chat as a CQL**
*  A CQL is a Chat Qualified Lead. 
*  On the right hand side of your conversations view, you will be able to see information about the site visitor. Right below their name, you will see the four options of CQL in the form of a lightning bolt. Please mark a lead with the red line for `unqualified lead`, one lightning bolt for `Inquiry`, and three lightning bolts for `MQL`. Refer to this [term glossary](/handbook/sales/field-operations/gtm-resources/) for a refresher on `Inquiry` and `MQL` definitions. 

**Sharing your calendar in chat**
*  At the right-hand side of the conversation toolbar there is a small calendar icon. Click there and you can share your own calendar or anyone else’s calendar that is connected in Drift.

## Have a question or request? 
Would you like to learn more about Drift? Are you interested in adding a Drift playbook to a new or existing webpage? Have you noticed a potential Drift problem you would like investigated? 
* The best place to start is to open an issue. If you're an SDR manager requesting a change to conversation routing because of a team member update, please open use the lead routing change request [template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=leandata_change_sdralignment). Otherwise, please open an issue in the Marketing Operations project stating the reason for the issue, providing relevant details about the request and using the following labels:
    * `MktgOps::0 - To Be Triaged`: Starting point for any label that involves Marketing Operations
    * `Drift`: Used if directly related to the Drift chat platform
    * `Sales Dev`: Used if your request is from or involves the SDR organization
* If you have a quick question, you can use the #mktgops Slack channel.
