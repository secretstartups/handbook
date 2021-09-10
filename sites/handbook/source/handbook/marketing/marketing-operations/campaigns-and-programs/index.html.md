---
layout: handbook-page-toc
title: "Campaigns and Programs"
description: ""
---
## On this page
{:.no_toc .hidden-md .hidden-lg}
- TOC
{:toc .hidden-md .hidden-lg}


## Campaigns

Campaigns are used to track efforts of marketing tactics - field events, webcasts, content downloads. The campaign types align with how marketing tracks spend and align the way records are tracked across three of our core systems (Marketo, Salesforce and Bizible) for consistent tracking. Leveraging campaign aligns our efforts across Marketing, Sales and Finance.

### Campaign Large Buckets
Campaign buckets are used to improve reporting at a high level and Allocadia forecasting. A bucket must be selected when a new campaign is created.

|Name|Description|Examples|
|-------|--------------|---------|
|Brand          | Activities meant to elevant the GitLab brand          | All-Remote, share of voice campaigns        |
|Lead Generation|Efforts designed to bring in NEW leads to our database|Inbound Marketing, Conferences, Content Syndication, Webinars, Prospect Events in regions|
|Pipeline Generation & Acceleration|Efforts to develop and accelerate leads in our database to purchase|Webinars, Workshops, Owned Events|
|Users & Community| Campaigns geared towards GitLab users and Community|Commit, Meetups|
|E-Commerce Conversion|Campaigns that do not require a touch by sales to close|`Buy Now` in our store|

Campaign Types and Large Buckets will not always be 1:1, as certain programs could fall into multiple buckets (like webcasts, content).

### Campaign Cost Tracking

Campaign Managers track costs associated with campaigns - such as events, content, webcasts, etc. Campaign tags can be applied to Expensify reports, corporate credit card charges, and vendor bills processed by Accounts Payable. Campaign expenses that are incurred by independent contractors should be clearly noted with the appropriate tag and included in their invoices to the company. We then use these accumulated campaign tag costs for budget to actual analysis as well as to update the Salesforce campaigns with actual costs.

**The following steps are used to create and manage campaign tags:**

1. Event Owners create the campaign tag in the budget document, link to a procurement issue if it exists, and also the main tactic issue. 
1. Finance is notified by either the Procurement issue or the main tactic issue (if the tactic costs less than $5,000 and has no contract that needs to be signed) that a campaign tag needs to be created.  NetSuite, which then updates Expensify nightly.
1. The Salesforce campaign is set up to match the campaign tag exactly, so that it can be used as a unique identifier and tracked across multiple systems. We only need to set up campaign tags for events/campaigns or if there are multiple vendors for the same budget line item that we are trying to track.
1. If you are a Field Marketer, more information on campaign tags for Field Marketing can be [found here](/handbook/marketing/revenue-marketing/field-marketing/#field-marketing-campaign-tags). 
1. For the MCM team, additional details can be found in the campaign epic. 

**Things to Note:**

- All costs, including travel expenses for those working the event, must be tagged in order to capture the true cost of campaigns. Although travel expenses related to putting on the event hit a different GL code, they should be budgeted within the event line.
- Tagging expenses that are processed by Accounts Payable require Marketing to provide explicit instruction on when to apply tags, which should happen during the normal course of reviewing and approving vendor invoices.
- For event or campaign expenses that do not have a tag, include a note to Accounts Payable clearly stating that campaign tags are not applicable to the expense. In some cases, a general tag like Swag_Corporate may be more a more appropriate tag to track against budget.

### Campaign Type & Progression Status

A record can only progress **one-way** through a set of event statuses. A record _cannot_ move backward though the statuses.

i.e. Record is put into `Registered` cannot be moved backwards to `Waitlisted`


#### Conference

Any event  that we have paid to sponsor, have a booth/presence and are sending representatives from GitLab (example: AWS re:Invent, DevOps Enterprise Summit). This also includes any virtual event that we sponsor and/or participate in that we do not own the registration but will generate a list of attendees, engagement.

In a virtual conference, GitLab will pay a sponsorship fee to receive a virtual booth and sometimes a speaking session slot or panel presence. Presence of a virtual booth is a requirement due to success criteria. [Read more](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/external-virtual-events/#-sponsored-virtual-conference).

For list loads greater than 1,000 of `attendees` they will not be considered a `success` or `scored` as such.

**Bizible:** This is tracked as an _offline_ channel, because we do not host a registration page, and receive a list of booth visitors post-event.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Sales Invited | Invitation/Information about event sent by Sales/SDR |  |
| Sales Nominated | Sales indicated record to receive triggered event email sent by Marketing |  |
| Marketing Invited | Marketing geo-targeted email |  |
| Waitlisted| Holding state if registration is full will be moved to Registered if space opens| |
| Registered | Registered for event||
| No Show | Registered but no verification of attendance, presumed no show | |
| Meeting Requested | Meeting set to occur at conference |  |
| Meeting No Show | Scheduled meeting at conference was cancelled or not attended |  |
| Meeting Attended | Scheduled meeting at conference was attended | Yes |
| Attended| Attended the event| Yes |
| Visited Booth | Stopped by booth for any reason | Yes |
| Follow Up Requested | Requested to be followed up with by sales post event | Yes |
| Attended On-Demand | Watched/consumed conference materials post-event on-demand | Yes| 

#### Content Syndication

White Paper or other content offer that is hosted by a third party.

**Bizible:** This is tracked as an _offline_ channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Downloaded | Downloaded content | Yes |

#### Direct Mail

This is when a package or piece of mail is sent out.

**Bizible:** This is tracked as an _offline_ channel.

| Member Status | Definition | Success | E-gift Card or Physical Gift |
| ------------- | ---------- | ------- | ------------ |
| No Action | Default starting position for all records |  | Not applicable |
| Processed | Physical gift shipping request is being processed  |  | Physical |
| Sent | Email with e-gift card has been sent to recipient |  | E-gift card |
| Opened | The prospect has opened the Reachdesk offer emailed to them |  | E-gift card |
| Claimed | The recipient has claimed the Reachdesk gift | Yes | E-gift card |
| Clicked | The prospect has clicked the link in the offer emailed to them |  | E-gift card |
| Shipped | The recipient's gift has been shipped |  | Physical |
| Delivered | The selected gift has been successfully delivered to the recipient | Yes | Physical |
| Cancelled | The recipient has requested their gift be cancelled |  | Physical |
| Returned | The recipient has returned their gift |  | Returned |


#### Executive Roundtables

This is used for campaigns that can either be organised through a 3rd party vendor or GitLab, covering both in-person and virtual roundtables. It is a gathering of high level CxO attendees run as an open discussion between the moderator/host, GitLab expert and delegates. There usually aren't any presentations, but instead a discussion where anyone can chime in to speak. The host would prepare questions to lead discussion topics and go around the room asking delegates questions to answer. [Read More](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/external-virtual-events/#types-of-external-virtual-events).

**Bizible:** This is tracked as an _offline_ channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Waitlist | Holding state if registration is full will be moved to `Registered` if space opens |  |
| Registered | Registered for the event |  |
| No Show | Registered, but did not attend the event |  |
| Attended | Attended the Event | Yes |

#### Gated Content

White Paper or other content offer.

**Bizible:** This is tracked as an _online_ channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Downloaded | Downloaded content | Yes |


#### Inbound Request

Any type of inbound request that requires follow up.

**Bizible:** This is tracked as an _online_ channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Requested Contact | Filled out Contact, Professional Services, Demo or Pricing Request | Yes |


#### Owned Event

This is an event that we have created, own registration and arrange speaker/venue (example: GitLab Commit or Meetups).

**Bizible:** This is tracked as an _online_ channel because we manage the registration through our website.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Subscribed to Updates | Subcribed to GitLab event updates via form fill |  |
| Sales Invited | Invitation/Information about event sent by Sales/SDR |  |
| Sales Nominated | Sales indicated record to receive triggered event email sent by Marketing |  |
| Marketing Invited | Marketing geo-targeted email |  |
| Waitlisted | Holding state if registration is full will be moved to `Registered` if space opens |  |
| Registered | Registered for event |  |
| Cancelled | Registered, but cancelled ahead of the event |  |
| No Show | Registered but did not attend event |  |
| Attended | Attended event live| Yes |
| Attended On-demand| Watched/consumed the presentation materials post-event on-demand| Yes |
| Follow Up Requested | Requested additional details about GitLab to be sent post event | Yes |


#### Self-Service Virtual Event

This is a light weight virtual event that can be hosted on GitLabber's personal zoom.

**Bizible:** This is tracked as an _online_ channel if registrants come through a marketo form, otherwise it will be an _offline_ channel

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Sales Nominated | Status for when Sales and Marketing want to extend an event invitation | |
| Waitlisted | Holding state if registration is full will be moved to `Registered` if space opens |  |
| Registered | Registered for event |  |
| No Show | Registered but did not attend event |  |
| Attended | Attended event | Yes |
| Attended On-demand | Watched/consumed the presentation materials post-event on-demand | Yes |

#### Speaking Session

This campaign type can be part of a larger Field/Conference/Owned event but we track engagement interactions independently from the larger event to measure impact. It is something we can drive registration. It is for tracking attendance at our speaking engagements.

**Bizible:** This is tracked as an _offline_ channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Sales Invited | Invitation/Information about event sent by Sales/SDR |  |
| Sales Nominated | Sales indicated record to receive triggered event email sent by Marketing |  |
| Marketing Invited | Marketing geo-targeted email |  |
| Registered | Registered or indicated attendance at the session |  |
| No Show | Registered but did not attend event |  |
| Attended | Attended speaking session event | Yes |
| Follow Up Requested | Had conversation with speaker or requested to be followed up with by sales post event | Yes |

#### Sponsored Webcast

This is webcast hosted on an external partner/vendor platform. The status of `Attended On-demand` accounts for GitLab hosted On-Demand and non-GitLab hosted On-demand webcasts. [Read more](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/external-virtual-events/#types-of-external-virtual-events).

**Bizible:** This is tracked as an _online_ channel if registrants come through a marketo form, otherwise it will be an _offline_ channel

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Sales Nominated | Used by marketing for invitee tracking | | 
| Registered | Registered for webcast |  |
| Attended | Attended event | Yes |
| Follow Up Requested | Requested to be followed up with from GitLab | Yes |
| Attended On-demand | Watched/consumed the presentation materials post-event on-demand | Yes |

#### Survey

A survey that we or a 3rd party sends out. Tracks respondents and new leads we receive. 

**Bizible:** This is tracked as an _offline_ Bizible channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| Member | default starting position for all records |  |
| Invited | Was invited, but did not participate in survey |  |
| Filled-out Survey | Filled out survey | Yes |
| Follow Up Requested | Filled out survey and requested to be contacted by sales | Yes |

#### Trial

Track cohort of Trials for each product line (Self-hosted or SaaS) to see their influence.

**Bizible:** In-product self-managed and SaaS trials are tracked as an **offline** Bizible touchpoint. The self-managed trial utilizing a Marketo form is an **online** Bizible touchpoint.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Signed Up | Signed up for Trial | Yes |

#### Vendor Arranged Meetings

Used for campaigns where a third party vendor is organizing one-to-one meetings with prospect or customer accounts. This does not organize meetings set internally by GitLab team members. An example would be a "speed dating" style meeting setup where a vendor organized meetings with prospects of interest to GitLab. [Read more](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/external-virtual-events/#types-of-external-virtual-events).

**Bizible:** This is tracked as an _offline_ Bizible channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Registered | Registered for the event |  |
| No Show | Registered, but did not attend the event |  |
| Attended | Attended the Event | Yes |
| Follow Up Requested | Had conversation with speaker or requested additional details to be sent post event | Yes |

#### Webcast

Any webcast that is hosted and held by GitLab.

**Bizible:** This is tracked as an _online_ Bizible channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Sales Invited | Invitation/Information about event sent by Sales/SDR |  |
| Sales Nominated | Sales indicated record to receive triggered event email sent by Marketing |  |
| Marketing Invited | Marketing geo-targeted email |  |
| Registered | Registered through online form |  |
| No Show | Registered, but did not attend live webcast |  |
| Attended | Attended the live webcast | Yes |
| Follow Up Requested | Requested to be followed up with by sales post event | Yes |
| Attended On-demand | Watched the recorded webcast | Yes |

#### Workshop

An in-person or virtual workshop where the attendees are guided through an agenda of real life use cases within GitLab.

**Bizible:** This is tracked as an _offline_ Bizible channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Sales Invited | Invitation/Information about event sent by Sales/SDR |  |
| Sales Nominated | Sales indicated record to receive triggered event email sent by Marketing |  |
| Marketing Invited | Marketing geo-targeted email |  |
| Waitlisted | Holding state if registration is full will be moved to Registered if space opens |  |
| Registered | Registered or indicated attendance at the session |  |
| Cancelled | Registered, but cancelled ahead of the event |  |
| No Show | Registered, but did not attend event |  |
| Attended | Attended workshop event | Yes |
| Follow Up Requested | Requested additional details about GitLab to be sent post event | Yes |


## Marketo Program and Salesforce Campaign set-up

### Steps to Setup Marketo programs and Salesforce Campaigns

The Marketo programs for the corresponding campaign types have been prebuilt to include all the possible necessary smart campaigns, email programs, reminder emails and tokens that are to be leveraged in the building of the program.

For **Linkedin Social Ads** follow the instructions documented in [the Linkedin section](/handbook/marketing/marketing-operations/campaigns-and-programs/#steps-to-setup-linkedin-lead-gen-form-gated-content-only)

For virtual events, there are additional set up details on this [page](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events).

For all other campaign types, follow Steps 1-5 below. All steps are required. 

**Important Notes**:
1. The `Active` checkbox must be checked on the SFDC campaign for Marketo to be able to "see" the campaign. This will happen automatically if you follow the process below, but if there is a time you cannot find a SFDC campaign in Marketo, check to make sure that box is checked in SFDC. Additionally, if this box is unchecked, Marketo cannot send leads or update campaign member status for that SFDC campaign.
1. We have a trigger in SFDC that stamps the start date, end date, reporting date, and fiscal quarter by taking the first 8 characters of the name of the campaign (if they are numbers) and converting that into a date (example: 20210505 == 5/5/2021, so YYYYMMDD). So, campaigns starting with a number must contain a valid date, otherwise you will receive an error.


##### Step 1: Clone the Marketo program indicated below

Be advised that some templates are being used for both `in-person` and `virutal events`. These templates have been marked as `Hybrid template`. For these templates, the naming convention is slightly different in that additional campaign information appears in the name. When naming the program, `EventType` is replaced with either `Virtual` or `In-Person`. `LoadType` is replaced with `Manual` for programs that will require a manual list upload by MktgOps. `LoadType` is replaced with `Tool Name` for programs that utilize APIs to load leads, e.g. `Zoom`. 

- Sponsored Webcast: [YYMMDD_ExternalWebcastVendorName_Topic_Region](https://app-ab13.marketo.com/#PG5523A1)
- Conference - Virtual: [YYYYMMDD_Vendor_VirtualConfName (Conference - Virtual Template)](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/ME7624A1)
- Self-Service Virtual Event without Promotion: [YYYYMMDD_SelfServiceTopic_Region](https://app-ab13.marketo.com/#ME5143A1)
- Self-Service Virtual Event with Promotion (with or without Marketo Landing Page): [YYYYMMDD_SelfServiceTopic_Region (with Promotion)](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/ME8760A1)
- Vendor Arranged Meetings (1:1 meetings) - `Hybrid template`: [YYYYMMDD_ArrangedMeetingsVendorName_Region_EventType_LoadType](https://app-ab13.marketo.com/#PG5698A1)
- Executive Roundtables - `Hybrid template`: [YYYYMMDD_ExecutiveRoundtable_Topic_Region_EventType_LoadType](https://app-ab13.marketo.com/#ME6028A1)
- Content Syndicaton: [skip to specific setup details here](/handbook/marketing/marketing-operations/campaigns-and-programs/#steps-to-setup-content-syndication-in-marketo-and-sfdc)
- Direct Mail not needing a Marketo Program: [skip to specific setup detais here](/handbook/marketing/marketing-operations/campaigns-and-programs/#steps-to-setup-direct-mail-campaigns)
- Surveys (not SimplyDirect): [YYYYMMDD_SurveyName](https://app-ab13.marketo.com/#PG6402A1)
     - For SimplyDirect Surveys, [skip to specific setup details here](/handbook/marketing/marketing-operations/campaigns-and-programs/#steps-to-setup-simplydirect-surveys-in-marketo-and-sfdc)
- Zoom GitLab Hosted Webcast: [YYYYMMDD_WebcastTopic_Region](https://app-ab13.marketo.com/#ME5512A1)
- Zoom GitLab Hosted Workshops [please follow directions in the workshop set-up section](/handbook/marketing/revenue-marketing/field-marketing/workshop-webcast-how-to/#virtual-workshop-logistical-set-up):
     - Project Management: [YYYYMMDD_VirtualWorkshop_ProjectManagement](https://app-ab13.marketo.com/#ME6536A1)
     - Security: [YYYYMMDD_VirtualWorkshop_SecurityWorkshop](https://app-ab13.marketo.com/#ME6521A1)
     - DevOps Automation: [YYYYMMDD_VirtualWorkshop_DevOpsAutomation](https://app-ab13.marketo.com/#ME6532A1)
     - Advanced CI/CD: [YYYYMMDD_VirtualWorkshop_CI/CD](https://app-ab13.marketo.com/#ME6807A1)  
     - Jenkins [YYYYMMDD_VirtualWorkshop_Jenkins](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/ME8285A1) 
- Conference - `Hybrid template`: [YYYYMMDD_Conference_EventType_LoadType_Template](https://app-ab13.marketo.com/#ME5100A1)
- Conference Speaking Session - `Hybrid template`: [YYYYMMDD_SpeakingSession_EventType_LoadType_No Registration_Template](https://app-ab13.marketo.com/#ME5092A1)
- Owned Event - `Hybrid template`: [YYYYMMDD_OwnedEvent_EventType_LoadType_Template](https://app-ab13.marketo.com/#ME4722A1)
     - For Events using HopIn, follow all steps below in addition to steps outlined [here](/handbook/marketing/marketing-operations/campaigns-and-programs/#steps-to-use-hopin-connector).
- BrightTALK GitLab Hosted Webcast: [YYYYMMDD_WebcastTopic_Region](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/ME6946A1)
- Gated Content: [YYYY_Type_Content_Template](https://app-ab13.marketo.com/#PG5111A1)
- Integrated Campaign: [FY20IntegratedCampaign_Template](https://app-ab13.marketo.com/#PG4924A1) 

##### Step 2: Sync to Salesforce

- At the program main screen in Marketo, where it says `Salesforce Sync` "not set", click on "not set"
    - Click "Create New." The program will automatically populate the campaign tag, so you do not need to edit anything.
    - Click "Save"

If you are a user of Allocadia, in this step you will also add the Allocadia ID to the `Description` field. It does not matter if you use the Category, subcategory, or line item ID. To determine which one you should use, you should be thinking "What is the highest level ID that houses all the information I want pushed from Allocadia>Marketo>SFDC."

[Instructional Video](https://youtu.be/1681EBw5344)
[Sync Results Video](https://youtu.be/PocOPnJY4w0)

##### Step 3: Update Marketo tokens

- Complete the information for each token. Instructions for what to enter for each token are included in the template.
    - Note that it is important that all tokens are completed as the "Interesting Moments" Smart Campaigns pushes information to Salesforce based on the tokens. Depending on the campaign, some auto-responders and emails rely on tokens as well.
    - Note that the token for `Event Location` should be filled in with the `City` for `In-Person` events and `Virtually` for `virtual events`.
    - You do not need to update the following tokens upon setup:
        - ((my.email header image url}} - This is optional. You will need this if you had custom images created.
        - {{my.ondemandurl}} - This will be entered AFTER the event date. It is the link to the recorded webcast. You will need to come back after the event and update this token.
- Update the utm_campaign field using the following format: Campaign Tag, with no spaces, capitalization, underscores, or special characters.

##### Step 4: Activate Marketo smart campaign(s)
* If this is a `Vendor Arranged Meeting` or `Executive Roundtable`, skip this step. The campaign and interesting moments will be run as a batch campaign after the list is loaded. 
* If this is `Self-Service with Promotion` follow the below activation instructions:
     * Click the `Smart Campaigns` folder
     * Select the `00 - Processing - No Shows / Attendees` smart campaign
     * The correct program should automatically apply when cloned, so *you don't need to do anything here.* However, you can confirm that the campaign tag appears on in the Smart List and Flow. If the name of the template appears anywhere, replace it with the campaign tag.
     * Click to the `Schedule` tab and click `Activate`  
     * Select the `01a Registration Flow` smart campaign
     * The correct program should automatically apply when cloned, so *you don't need to do anything here.* However, you can confirm that the campaign tag appears on in the Smart List and Flow. If the name of the template appears anywhere, replace it with the campaign tag.
     * Click to the `Schedule` tab and click `Activate`         
* For all other campaign types, follow the below activation instructions:
     * Click the "Smart Campaigns" folder
     * Select the `Interesting Moments` smart campaign. 
     * The correct program should automatically apply when cloned, so *you don't need to do anything here.* However, you can confirm that the campaign tag appears on in the Smart List and Flow. If the name of the template appears anywhere, replace it with the campaign tag.
     * Click to the "Schedule" tab and click `Activate`.
     * Select the `01 Processing` smart campaign.
     * The correct program should automatically apply when cloned, so *you don't need to do anything here.* However, you can confirm that the campaign tag appears on in the Smart List and Flow. If the name of the template appears anywhere, replace it with the campaign tag.
     * Click to the "Schedule" tab and click `Activate`.

- If you do not see an `Interesting Moments` campaign, check to see if that step is in `01 Processing` or `Viewed on Demand` campaigns.

##### Step 5: Update the Salesforce campaign
*If you are utilizing the Allocadia, please see below instructions.*  

- Now go to Salesforce.com and check the [All Campaigns by create date](https://gitlab.my.salesforce.com/701?fcf=00B4M000004oVF9) view. Sort by create date and your campaign should appear at the top. You may also search for your campaign tag in the search box. Select the campaign.
    - Change the `Campaign owner` to your name
    - Update `Large Bucket` based on [criteria above](/handbook/marketing/marketing-operations/campaigns-and-programs/#campaign-large-buckets)
    - Change the `Enable Bizible Touchpoints` to `Include only "Responded" Campaign Members`
    - Confirm that start date and end date populated correctly (this is automated).
    - Update the `Is this an in person event` dropdown, based on `in-person` vs `virtual` type
    - Update the event epic
    - Update the description (if any)
    - Update `Budgeted Cost` - If cost is $0 list `1` in the `Budgeted Cost` field. - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by `0` you will always get `0` as the pipe2spend calculation.
    - Update `Status` to `In Progress` or the approriate selection
    - Update `Region` and `Sub-region`, if these are local or targeted to a specific region
    - Update `Budget Holder` -  Do keep in mind that the `Budget Holder` field should be updated **only if**:
        -  the campaign results in offline Bizible touchpoints based on campaign type (i.e. content syndication, sponsored webcast, etc.) - **NOTE:** an offline Bizible touchpoint happens when we gather a lead offline and in order for the system to have this name you must go through a [list upload process](/handbook/marketing/marketing-operations/list-import/);     
**OR:**
        -  there were Gitlab Dollars spent on the campaign (Field, Digital, Corporate, Community etc.) - can be left blank in the cases when we have campaigns that do not utilize budget; - **NOTE:** By updating the budget holder, we do **NOT** run the risk of double counting touchpoints, however, do keep in mind that since the field is not always filled out, it shouldn't be used for measuring each team's performance.   
    - All other fields on the campaign are not required and are not used for reporting - take `Status` as an example. You WOULD update this field to `Aborted` if the campaign was cancelled for any reason. We have a process that goes into more detail specifically when [offline events are cancelled](/handbook/marketing/events/#cancellation-of-offline-events). 
    - Click "Save"
- Add the Marketo program link and SFDC campaign link to the epic.

##### Step 5: Update the Salesforce campaign - Using Allocadia 
Using an integration from Allocadia>Marketo, Marketo>SFDC, the information you've given to Allocadia will push to your SFDC campaign. Based on the [Step 5. list above](/handbook/marketing/marketing-operations/campaigns-and-programs/#step-5-update-the-salesforce-campaign), the only thing you will need to manually update in SFDC is the following: 
    - Change the `Enable Bizible Touchpoints` to `Include only "Responded" Campaign Members`
    - Budgeted Cost in SFDC pulls from your `plan` number, not your `forecast` number from Allocadia. If you do not have a `plan` cost in Allocadia then Budgeted Cost in SFDC will remain blank. If this is the case, you will want to add in your Budgeted Cost manually into your SFDC campaign.  

You must NOT edit the campaign until the Allocadia connector has time to work. This is normally done near-real time, but if the data does not push immediately, be aware it can take minutes to hours to do so. You'll know the Allocadia connect has completed its work when you see the SFDC campaign owner change from `Marketo Integration` to the name of the actual person who is running the camapign as well as well as when all details are populated from Allocadia to SFDC. If you edit the campaign before the connector pushes the data over, it will break the build and you will manually have to edit all of the fields listed in [Step 5. above](/handbook/marketing/marketing-operations/campaigns-and-programs/#step-5-update-the-salesforce-campaign). 

The initial `Plan` Cost in the campaign needs 1 night to synch.  

The campaign meta data is a one time synch, where as the `Actual Cost in Campaign` (which is run off of the `Campaign Tag to be Created` field in Allocadia), synchs every nightly.   

#### Steps to Setup Content Syndication in Marketo and SFDC

##### Step 1: [Clone this program](https://app-ab13.marketo.com/#PG5149A1)

- Use format `YYYY_Vendor_NameofAsset`
- If the content syndication is part of a package with an external vendor, promoting several assets or webcasts, keep all of the Marketo programs together in a folder for easy access as part of a single vendor program.

##### Step 2: Sync to Salesforce

- At the program main screen in Marketo, where it says `Salesforce Sync` with "not set", click on "not set"
    - Click "Create New." The program will automatically populate the campaign tag, so you do not need to edit anything.
    - Click "Save"

##### Step 3: Update Marketo tokens

- Change the `Content Title` to be the title as it appears in the Content Syndication program
- Change the `Content Type` to be the type of content
    - The only available options are `Whitepaper`, `eBook`, `Report`, `Video`, or `General`
    - If you add a Content Type value other than the above, the record will hit an error when syncing to Salesforce because these are the only currently available picklist items for `Initial Source`

##### Step 4: Activate Marketo smart campaign

- In the `01 Downloaded` smart campaign, the "Smart List" should be listening for `Added to List > Vendor List`. This list is under the Asset folder in the program. It will contain all of the members that were uploaded who downloaded the content.
    - The correct program should automatically apply when cloned, so _you don't need to do anything here._
- In the `01 Downloaded` smart campaign, the "Flow" will trigger a program status change `Content Syndication > Downloaded`, that will trigger a scoring update. An interesting moment to be applied, the `Person Source` (note: this maps to `Initial Source` in Salesforce) will update IF a `Person Source` does not already exist (i.e. it is blank), the `Acquisition Program` will set if blank, the Marketo `Initial Source` will populate if blank, and the `Person Status` will update to `Inquiry` if `Blank` or `Raw`.
- Click to the "Schedule" tab and click `Activate`. It should be set that a person can only run through the flow once.
    - When the leads are loaded to the campaign by Marketing Ops, the leads will immediately have an interesting moment, +15 score, and initial source, person source and person status update as needed.

##### Step 5: Update the Salesforce campaign

- Now go to Salesforce.com and check the [All Campaigns by create date](https://gitlab.my.salesforce.com/701?fcf=00B4M000004oVF9) view. Sort by create date and your campaign should appear at the top. You may also search for your campaign tag in the search box. Select the campaign.
    - Change the `Campaign Owner` to your name
    - Update `Large Bucket` based on [criteria above](/handbook/marketing/marketing-operations/campaigns-and-programs/#campaign-large-buckets)
    - Change the `Enable Bizible Touchpoints` to `Include only "Responded" Campaign Members`
    - Update the event epic
    - Update the description
    - Update `Start Date` to the date of launch
    - Update `End Date`
    - Update `Budgeted Cost` - If cost is $0 list `1` in the `Budgeted Cost` field. - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by `0` you will always get `0` as the pipe2spend calculation.
    - Update `Region` and `Subregion` if you have the data available
    - Update `Status` to `In Progress` or the approriate selection
    - Click Save
- Add the Marketo program link and SFDC campaign link to the epic.

#### Steps to Setup SimplyDirect Surveys in Marketo and SFDC
Simply Direct will provide you with an unique `Survey Name` that they will pass over into Marketo via the API populating the `Person Source` and the `SurveyName` fields. This name is unique to each survey that is ran. `Person Source` will not update if the lead already exists in Marketo.

SimplyDirect is also passing over the survey Q&A through the `Comment Capture` field. This will populate via a URL on the Interesting Moment and the `Web Form` field, so that the SDR following up will have full access to all of the survey questions and answers.


##### Step 1: [Clone this program](https://app-ab13.marketo.com/#PG6164A1)
- Use format `YYYY_MM_SurveyName`

##### Step 2: Sync to Salesforce

- At the program main screen in Marketo, where it says `Salesforce Sync` with "not set", click on "not set"
    - Click "Create New." The program will automatically populate the campaign tag, so you do not need to edit anything.
    - Click "Save"

##### Step 3: Update SurveyName across Smart Lists and Flows
- Contact SimplyDirect and ask for the SurveyName they will pass to Marketo
- Click into `01 Processing`
     - In Smart List, change every `SurveyName` to the name you were given. There are 3 fields on the smartlist you must change. Tokens will not work, you must update in the smart list. Do not include any extra spaces!
     - In the Flow, on step 1 `Change Data Value` update `SurveyName` to the name you were given.
     - Click to the "Schedule" tab and click `Activate`. It should be set that a person can only run through the flow once.
- BEFORE launch of the survey, have SimplyDirect send an existing lead, and a new lead through to make sure both are being captured.


##### Step 4: Update the Salesforce campaign

- Now go to Salesforce.com and check the [All Campaigns by create date](https://gitlab.my.salesforce.com/701?fcf=00B4M000004oVF9) view. Sort by create date and your campaign should appear at the top. You may also search for your campaign tag in the search box. Select the campaign.
    - Change the `Campaign Owner` to your name
    - Update `Large Bucket` based on [criteria above](/handbook/marketing/marketing-operations/campaigns-and-programs/#campaign-large-buckets)
    - Change the `Enable Bizible Touchpoints` to `Include only "Responded" Campaign Members`
    - Update the event epic
    - Update the description
    - Update `Start Date` to the date of launch
    - Update `End Date`
    - Update `Budgeted Cost` - If cost is $0 list `1` in the `Budgeted Cost` field. - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by `0` you will always get `0` as the pipe2spend calculation.
    - Update `Region` and `Subregion` if you have the data available
    - Update `Status` to `In Progress` or the approriate selection
    - Click Save
- Add the Marketo program link and SFDC campaign link to the epic.

##### Step 5: Troubleshooting:
1. Look at the `Results` tab of the smart campaign, if there are errors, you will clearly see them there.
1. If the lead is not pushing to SFDC? Make sure that the `Person Source` is not `SurveyName`
1. If existing leads are not being pulled into the program, it is likely the `SurveyName` field is capturing the wrong name.
1. If net-new leads are not being pulled into the program, it is likely the `Person Source` SurveyName was not updated correctly.

#### Steps to Setup Direct Mail Campaigns

##### Step 1: Create the Salesforce campaign
- Clone the [#TEMPLATE - Direct Mail](https://gitlab.my.salesforce.com/7014M000001dlh9)
- Update Campaign name to `whatever your campaign tag is`
- NOTE: You do NOT need a corresponding Marketo campaign. All information and tracking is done via this campaign.

##### Step 2: Update the Salesforce campaign
- Click on `Advanced Setup` to make sure statuses correspond to those listed in the [Direct Mail progression statuses](/handbook/marketing/marketing-operations/campaigns-and-programs/#direct-mail). Do not edit these, if you need them updated, please reach out to MktgOps.
- Change the `Campaign Owner` to your name
- Confirm the `type` is `Direct Mail`
- Update `Large Bucket` based on [criteria above](/handbook/marketing/marketing-operations/campaigns-and-programs/#campaign-large-buckets)
- Confirm the `Enable Bizible Touchpoints` is set to `Include only "Responded" Campaign Members`
- Update the event epic
- Update the description
- Update `Start Date` to the date of launch
- Update `End Date`
- Update `Status` to `In Progress` or the approriate selection
- Update `Budgeted Cost` - If cost is $0 list `1` in the `Budgeted Cost` field. - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by `0` you will always get `0` as the pipe2spend calculation.
- Update `Region` and `Subregion` if you have the data available
- Click Save

#### Steps to Use HopIn Connector
Follow all of the set up steps [above](/handbook/marketing/marketing-operations/campaigns-and-programs/#steps-to-setup-marketo-programs-and-salesforce-campaigns). You will also need to do go into the `Hopin Integration` folder in the Owned Event Template and you will see several smart campaigns and a form.

**YOU MUST CONNECT HOPIN TO MARKETO BEFORE YOU TURN ON REGISTRATION IN HOPIN (STEP 1 BELOW)**

1. `01a Registration from Hopin` is used if you are using HopIn registration pages. This smart campaign triggers off of a custom activity `Registers for HopIn Event` and will add the registrant to the proper campaign. **THIS WILL ONLY PASS `First Name`, `Last Name`, `Email`, and the name of the event. In order to capture any of the custom fields (like company name), you'll need to set up the next step to capture registrants from Marketo. Otherwise, a dataload will be required**
   - To use, make sure you update the program token `{{my.hopin event name}}` with your HopIn event name. Use `starts with` as the operator to make sure you catch all registrants. You can pull the `Event Name` from the HopIn platform.
   - When token is updated, you can turn on. No changes are necessary for the Flow.
   - Do not turn on if you are not utilizing HopIn registration pages
1. `01b. Push Registrants to HopIn from Marketo` is used if you are utilizng a Marketo landing page to capture registration for the HopIn Event. Do not turn on if you are **only** utilizing HopIn registration pages
     - Before you start with the smart campaign, you need to make sure you update the copy for the registration confirmation email named `Hopin - Confirm`. First, update all tokens on the program and then fill in the missing pieces of the email itself. The button needs to contain the Magic Link, do not change this.
     - Next, you need to update the program token of `Ticket Integration Code` this field is already on the form, but must be updated to match the specific code in HopIn.
        - Find your Ticket Integration Code in Hopin by selecting an event, and going to the Tickets page of your event dashboard. There will be a code for each of the ticket types you have. Keep this handy for the next step.
     - If you are only registering for a single ticket, all you need to do is update the token, but if you have multiple ticket options, you will need to create a select dropdown in the form that holds the Integration Codes as stored values - ([ask Mops to do this for you](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new#form_request)).
    - No changes are necessary for the campaign flow. The flow will request a Webhook, which will push the registrant into HopIn, as well as send registrant a registration confirmation email. 
    - The landing page template is already set up to have this form.
    - Before you turn on, make sure you have updated tokens in the email `Hopin - Confirm`, as this will automatically send the `Magic Link` for the registrant to confirm their registration.
        - The magic link is automatically created by the webhook, do not update that field.
    - Turn on `01b. Push Registrants to HopIn from Marketo`. Then test by registering on that landing page. After 2 minutes, you will recieve an email asking to confirm your registration, click the link and follow prompts on the HopIn page. Once confirmed, you will receive an email from HopIn saying it was successful. You can also look into the `attendees` section in HopIn and make sure your test is there too - once you see it, you can `remove` your test lead from the list and go live with the landing page.
    - Check Registration error smartlist periodically to catch anyone being created incorrectly (see sectioin below)
1. `02 Attended Hopin` is used to track attendees of the event - it will not track individual sessions, only overall attendance.
   - To use, make sure you update the program token `{{my.hopin event name}}` with your HopIn event name. In the Smartlist, Use `starts with` as the operator to make sure you catch all registrants. You can pull the `Event Name` from the HopIn platform.
   - When token is updated, you can turn on. No changes are necessary for the Flow.
1. Registration Troubleshooting
 There is a list called `Registration Errors` that will populate if the Magic Link is not properly populated. If this is the case, you will need to send a magic link via the HopIn platform. Follow these directions:
    - Log into HopIn and navigate to your event
    - On left side nav, look for `Magic Link` and click the `Manage Invitations` tab. There you'll see who has registered (confirmed clicked) and those who haven't. You can send emails to these people who are not registered to ensure they are confirmed before the event starts.


#### Steps to Setup Linkedin Lead Gen Form *Gated Content Only
We have listeners set up in Marketo listening certain parameters. Please check the `Marketo Listener` column below to see if a program is already set up in Marketo. If it is, you do not need to create a new listener. Otherwise, please follow the process outlined below to ensure leads are being captured.

| Campaign                                 | Campaign Parameter for Tracking |Marketo Listener?|
|------------------------------------------|---------------------------------|-----------------|
| CI Use Case                              | singleappci                     |[Yes](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG6803A1)|
| GItOps Use Case                          | iacgitops                       |[Yes](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG6756A1)|
| Version Control & Collaboration Use Case | vccusecase                      |[Yes](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG6802A1)|
| Simplify DevOps                          | simplifydevops                  |[Yes](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG7218A1)|
| Jenkins                                  | cicdcmp2                        |[Yes](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG6976A1)|
| Increase Operational Efficiencies	       | operationalefficiences          ||
| Deliver Better Products Faster	       | betterproductsfaster            ||
| Reduce Security and Compliance Risk	   | reducesecurityrisk              ||
| CI Build & Test Auto	                   | cicdcmp3                        ||
| OctoCat	                               | octocat                         ||
| DevSecOps Use Case	                   | devsecopsusecase                ||
| AWS	                                   | awspartner                      ||
| PubSec                                   | amer-pubsec                     |[Yes](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG7588A1)|
| DevOps GTM                               | devopsgtm                       |[Yes](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG8342A1)|


##### Step 1: [Clone this Program](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG6911A1)
- Use format `YYYY_Social_Name_Campaign Parameter_Linkedin Lead Gen`

_e.g.: 2020_Social_GitOps_iacgitops_LinkedIn Lead Gen_

##### Step 2: Sync to Salesforce

- At the program main screen in Marketo, where it says `Salesforce Sync` with "not set", click on "not set"
    - Click "Create New." The program will automatically populate the campaign tag, so you do not need to edit anything.
    - Click "Save"

##### Step 3: Update the Salesforce campaign

- Now go to Salesforce.com and check the [All Campaigns by create date](https://gitlab.my.salesforce.com/701?fcf=00B4M000004oVF9) view. Sort by create date and your campaign should appear at the top. You may also search for your campaign tag in the search box. Select the campaign.
    - Change the `Campaign Owner` to your name
    - Add `Parent Campaign` of `2020_Social_LinkedIn_Lead Gen`
    - Update `Large Bucket` based on [criteria above](/handbook/marketing/marketing-operations/campaigns-and-programs/#campaign-large-buckets)
    - Change the `Enable Bizible Touchpoints` to `Include only "Responded" Campaign Members`
    - Update the event epic
    - Update the description
    - Update `Start Date` to the date of launch
    - Update `End Date`
    - Update `Budgeted Cost` - If cost is $0 list `1` in the `Budgeted Cost` field. - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by `0` you will always get `0` as the pipe2spend calculation.
    - Update `Region` and `Subregion` if you have the data available
    - Update `Status` to `In Progress` or the approriate selection
    - Click Save
- Add the Marketo program link and SFDC campaign link to the epic.

##### Step 4: Go back into Marketo Template
- Update local program tokens 
- Update the campaign smart list filter with `contains` and the prefix
   - `Fills out Linkedin Lead Gen Form`, `Lead Gen Form Name contains [parameter]` 
   - Available parameters are [listed above](/handbook/marketing/marketing-operations/campaigns-and-programs/#steps-to-setup-linkedin-lead-gen-form-gated-content-only), or create new if not listed.
- Make sure `opt-in` language is on the Linkedin Form, if not, remove the `opt-in` step in the campaign Flow
- Turn on / Activate the triggered campaign in the `schedule` tab of the smart campaign
- All linkedin programs with your form prefix will now flow through this campaign
- Update `Add to nurture (trigger)` smart list and flow steps. 
  - Update `member of program` filter in the smart list to be the program name.
  - Edit the `flow` steps to be the nurture program you desire to push leads into, and the stream.

##### Step 5: Update this Handbook page
- Update this [handbook page with the parameter](/handbook/marketing/marketing-operations/campaigns-and-programs/#steps-to-setup-linkedin-lead-gen-form-gated-content-only) with a `yes` and a link to the parameter and campaign you have set up.

## Removing Registrations from Marketo Programs

Once a landing page has been set up for a campaign, it is good practice to have multiple people test the registration to make sure everything is integrated and running properly. As a result, there are often various test registrations in the Marketo program. To remove these test registrations, follow the below instructions.

1. Log into Marketo and click into the appropriate program for your campaign
1. Click on the `Members` tab at the top of the page
1. Click on the line item for the member you wish to remove and make sure that line item is highlighted
1. Select `Change Status` at the top of the screen
1. Select `Not in Program` in the drop down 
1. Marketo will take a few moments to adjust the status and then the name will be removed from the `Members` list

## Pushing DemandBase Lists to Marketo
Notes: 
- DB1 Can only pass over existing leads to Marketo, if the prospect doesn't exist in Marketo, it will be skipped.
- You still need to include email compliance filters on your email sends. This action passes a list, some people may not have consent to email.

### Checklist before initiating push to Marketo:
1. Check your list type. DB1 can only pass `person` lists, not `account` lists. 
1. Make sure your list filters contain `Compliance Segment Value` not equal to `NULL` or empty, `Default`, `Do Not Email`
1. Check your numbers on the list. The following applies:
    - Any list over 10k - you need opps approval to send - tag @amy.waller in the issue if you need to send over 10k 
    - Please try to not include over 100 people at a single account to avoid triggering SPAM filters at that account
        - Add the `Engagement Minute` filter at the person level to get down under 100 people per account. If you send to more than 100 people per account, it will trigger spam filters.
    - For *geo wide* - i.e. all of AMER West - send should be no more than 10K
    - For *Sub-geo* - i.e all of NorCal - no more than 5k sends
    - For *territory* - i.e. Bay Area - no more than 2,500k


#### Instructions: (some lists and campaigns may already exist, we are in the process of updating templates to speed up this process)
[Refer to this video](https://www.youtube.com/watch?v=pjL1nNheheA&list=PL05JrBw4t0KrFeuJ4JbrDZKlp6gWX0uFf&index=6) for a walkthrough of the below steps.

1. Ensure your list fits the criteria above.
1. Navigate to the Marketo Program that you would like to add your DB1 list to.
1. Under the `Lists` folder, create a static list by right-clicking on `Lists` and then click `New Local Asset` and select `List` from the pop up box. Name your new list`DB List Push - Name of your Event`. No `Description` is needed. Click `Create`.
1. Under `Smart Campaigns` folder, create a new smart campaign (or if built already, click into the `DB1 List Push` smart campaign) by right-clicking `Smart Campaigns` and selecting `New Campaign`. The campaign name should be easily identifiable to you, as you will be searching for it in DB1. Please use `DB` prefix so it's purpose is easily identifiable in Marketo. You do not need to fill in `Description` or click `Executable`. Click `Create`.
     1. Update the Smart List in the campaign by clicking `Smart List` at the top of the page
        1. On the right hand side of the screen, type in `Campaign` in the search field
        1. Drag `Campaign is Requested` from the right side of the page to the middle section of the page
        1. Update the source in the drop down to `Web Service API`
        1. You can add other filters here as necessary. Since your list will be made in DB1, you likely won't need any additional filters here.
    1. Update Flow by clicking on `Flow` at the top of the page
        1. Drag `Add to List` from the right side of the page to the middle of the page 
        1. Find the list you created in the step above in the drop down by typing in name of the list. Note that your list name will include the name of the program as well. For example - if your list name is DB1 List Push - East Event, the full name that will pull is 20210610_EastEvent.DB1 List Push - East Event
        1. If you need this group to have a specific member status, you can add that step as well by dragging over `Change Program Status` and update the new status. However, this is generally not recommended.
    1. Turn on the program by clicking `Schedule` at the top of the page and clicking `Activate` and then `Activate` again in the pop up box. People should only pass through once.
1. Log into the DB1 platform and navigate to your list in the `Database` section of DB1 - *Must be a person list*
    1. You want to select all the names by clicking the checkbox at the top of the list next to `Name`. This will only select the page you are on so if you want to select all of the names on the list, click `Select All Rows` at the top of the list. Click the `Take Action` button.
    1. A sidebar on the right will pop up. Select `Add to Marketo Campaign` under `Partner Actions` section.
    1. Select the campaign in the drop down that you created a few steps ago. If you do not see your campaign, click the wheel next to the drop down to re-load the campaigns from Marketo. If it still does not show up, make sure that you activated the Marketo Smart Campaign in the previous steps above.
    1. Click `Confirm`
    1. Leads will momentarily populate your Marketo static list. In the sidebar, there will be a link to check the status of the push by clicking `See action history for status` and clicking `Job Status`. You can also view this in `Settings>History>Action History` in DB1. Loading the list may take some time but usually should take no longer than 15-20 minutes. Once your list is available, all the people in your list will show up under `Action Status` with a checkmark by `status`.
1. Go back to your Marketo program to make sure your list is available. To do this, go to the `List` folder and click on the list you created (DB1 List Push - East Event). Select `People` at the top of the page. This is where you will see all of the people in your list and can confirm the pull was successful.
    1. Once your list has successfully pulled to Marketo, deactivate the smart campaign. To do this, go to your Marketo program, click the `Smart Campaigns` folder on the left hand side of the screen under your program, click the name of your DB1 list push that you created steps above, click `Schedule` at the top of the page and click `Deactivate`.

Once your list is pushed from DB1 to Marketo, you will need to reference the static list that you created under the Marketo `List` folder (DB1 List Push - East Event) in your email programs or target lists (will be adding this to templates). **If you are working with Verticurl:** You will want to reference the static list you created under the Marketo `List` folder (DB1 List Push - East Event) in your invite issues so they know which list to pull for your email sends. Verticurl will also make sure all the correct compliancy filters have been applied in Marketo before scheduling your send. **You still need to have the proper email compliance filters on any of your email programs.**

