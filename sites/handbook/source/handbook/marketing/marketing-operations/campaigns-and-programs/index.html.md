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

#### Cohort

A method of tracking a group (cohort) of targeted known records and/or records included in an ABM strategy.

**Bizible:** touchpoints should be excluded.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Sales Nominated | ACCOUNTS/CONTACTS Sales has identified for inclusion that Marketing would otherwise be suppressing because of late-stage open opps &/or active sales cycle |  |
| Marketing List | ACCOUNTS/CONTACTS Marketing has identified for inclusion based on the target audience, the "ABM list", demographic, etc. |  |
| Organic Engaged | LEADS/CONTACTS added to the campaign through the listening campaigns that engage with the pages &/or assets for the integrated campaign that do not contain `utm_` params | Yes |

#### Conference

Any large event run by Corporate Marketing that we have paid to sponsor, have a booth/presence and are sending representatives from GitLab (example: AWS re:Invent, DevOps Enterprise Summit).

**Bizible:** This is tracked as an _offline_ channel, because we do not host a registration page, and receive a list of booth visitors post-event.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Sales Invited | Invitation/Information about event sent by Sales/SDR |  |
| Sales Nominated | Sales indicated record to receive triggered event email sent by Marketing |  |
| Marketing Invited | Marketing geo-targeted email |  |
| Meeting Requested | Meeting set to occur at conference |  |
| Meeting No Show | Scheduled meeting at conference was cancelled or not attended |  |
| Meeting Attended | Scheduled meeting at conference was attended | Yes |
| Visited Booth | Stopped by booth for any reason | Yes |
| Follow Up Requested | Requested additional details about GitLab to be sent post event | Yes |

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

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Registered | Registered to recieve direct mail via landing page or form |  |
| Queued | Shipment is being put together, waiting to be shipped |  |
| Shipped | Package has been shipped |  |
| Undeliverable | Package was returned or undeliverable to addressee |  |
| Delivered | Package was received by the addressee | Yes |
| Responded | Recipient took action or CTA (trackable on PURLs | Yes |

**This is for the Alyce Integration**

**Bizible:** TBD is these will be tracked

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| Gift is being researched | Alyce Gift Created |  |
| Need more information for gift| Alyce needs more information on the recipient |  |
| Gift options ready| Gift options ready to be viewed  |  |
| Gift invitation in fulfillment | Alyce gift invitation sent to fulfillment | |
| Gift invitation sent by email | Alyce gift invitation sent with email | |
| Physical gift invitation sent | Alyce physical gift invitation sent|  |
| Gift invitation delivered | Alyce physical gift invitation delivered|  |
| Gift invitation viewed | Alyce gift invitation viewed by the recipient|  |
| Gift accepted | Alyce gift accepted by the recipient| Yes |
| Gift expired | Alyce gift expired|  |
| Gift declined | Alyce gift declined by the recipient|  |
| Gift disabled | Alyce gift disabled or deleted|  |


#### Executive Roundtables

This is used for campaigns that can either be organised through a 3rd party vendor or GitLab, covering both in-person and virtual roundtables. It is a gathering of high level CxO attendees run as an open discussion between the moderator/host, GitLab expert and delegates. There usually aren't any presentations, but instead a discussion where anyone can chime in to speak. The host would prepare questions to lead discussion topics and go around the room asking delegates questions to answer. [R]ead More](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/external-virtual-events/#types-of-external-virtual-events).

**Bizible:** This is tracked as an _offline_ channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Waitlist | Holding state if registration is full will be moved to `Registered` if space opens |  |
| Registered | Registered for the event |  |
| No Show | Registered, but did not attend the event |  |
| Attended | Attended the Event | Yes |

#### Field Event

This is an event run by Field Marketing that we have paid to participate in (Demand generation events that the field team typically does (Ex. stand alone dinners, ballgames, etc).) 

**Bizible:** This is tracked as an _offline_ channel, because we do not host a registration page, and receive a list of attendees post-event.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Sales Invited | Invitation/Information about event sent by Sales/SDR |  |
| Sales Nominated | Sales indicated record to receive triggered event email sent by Marketing |  |
| Marketing Invited | Marketing geo-targeted email |  |
| Waitlisted | Holding state if registration is full will be moved to `Registered` if space opens |  |
| Registered | Registered for event |  |
| No Show | Registered but did not attend event |  |
| Attended | Attended event |  |
| Visited Booth | Stopped by booth for any reason | Yes |
| Follow Up Requested | Requested additional details about GitLab to be sent post event | Yes |

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

#### PathFactory Listener

This campaign type is used to track consumption of specific PathFactory assets. Details related to types of assets being tracked can be found on the [Marketing Operations - PathFactory](/handbook/marketing/marketing-operations/pathfactory/#listening-campaigns) page.

**Bizible:** This is tracked as an _offline_ channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Content Consumed | Status when the corresponding Marketo listener picks up the contents consumption. | Yes |
| Fast Moving Buyer | Reached engagement threshold and viewed 3 pieces of content | Yes |

#### Referral Program

This campaign type is used for our third party prospecting vendors or meeting setting services (Like BAO, DoGood).

**Bizible:** This is tracked as an _offline_ channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Target List | Identified as persona we want to speak with |  |
| Meeting Set | Vendor has set & confirmed a meeting time |  |
| Meeting No Show | Scheduled meeting was cancelled or not attended |  |
| Meeting Attended | Scheduled meeting at conference was attended | Yes |

#### Self-Service Virtual Event

This is a light weight virtual event that can be hosted on GitLabber's personal zoom.

**Bizible:** This is tracked as an _online_ channel if registrants come through a marketo form, otherwise it will be an _offline_ channel

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
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
| Follow Up Requested | Had conversation with speaker or requested additional details to be sent post event | Yes |

#### Sponsored Webcast

This is webcast hosted on an external partner/vendor platform. The status of `Attended On-demand` accounts for Gitlab hosted On-Demand and non-Gitlab hosted On-demand webcasts. [Read more](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/external-virtual-events/#types-of-external-virtual-events).

**Bizible:** This is tracked as an _online_ channel if registrants come through a marketo form, otherwise it will be an _offline_ channel

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
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
| Filled-out Survey | Filled out survey and opted-in to be contacted by GitLab | Yes |
| Follow Up Requested | Filled out survey and requested to be contacted by sales | Yes |

#### Trial

Track cohort of Trials for each product line (Self-hosted or SaaS) to see their influence.

**Bizible:** In-product trials are tracked as an **offline** Bizible touchpoint. Webform Self-hosted trials are an **online** Bizible touchpoint.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Target List | success, attended scheduled meeting | Yes |

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

#### Virtual Sponsorship

Synonomous with a `Sponsored Virtual Conference`. A virtual event that we sponsor and/or participate in that we do not own the registration but will generate a list of attendees, engagement and has on-demand content consumption post-live virtual event. In a virtual conference, GitLab will pay a sponsorship fee to receive a virtual booth and sometimes a speaking session slot or panel presence. Presence of a virtual booth is a requirement due to success criteria. [Read more](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/external-virtual-events/#types-of-external-virtual-events).

**Bizible:** This is tracked as an _offline_ Bizible channel.

| Member Status | Definition | Success |
| ------------- | ---------- | ------- |
| No Action | default starting position for all records |  |
| Sales Invited | Invitation/Information about event sent by Sales/SDR |  |
| Sales Nominated | Sales indicated record to receive triggered event email sent by Marketing |  |
| Marketing Invited | Marketing targeted email |  |
| Waitlisted | Holding state if registration is full will be moved to `Registered` if space opens |  |
| Registered | Registered for event |  |
| Meeting Requested | Meeting set to occur at event |  |
| No Show | Registered but did not attend event |  |
| Attended | Attended event |  |
| Visited Booth | Stopped by booth for any reason | Yes |
| Follow Up Requested | Requested additional details about GitLab to be sent post event | Yes |
| Attended On-demand | Watched/consumed the presentation materials post-event on-demand | Yes |

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
| Follow Up Requested | Requested additional details about GitLab to be sent post event | Yes |
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

For **Content Syndication**, follow the instructions documented in [the Content Syndication section](/handbook/marketing/marketing-operations/#steps-to-setup-content-syndication-in-marketo-and-sfdc).

For **Surveys run through SimplyDirect**, follow the instructions documented in [the SimplyDirect section](/handbook/marketing/marketing-operations/#steps-to-setup-simplydirect-surveys-in-marketo-and-sfdc).

For **Workshops**, follow the directions in the [Workshop set-up section](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/virtual-workshops/#workshop-set-up).

For **Alyce Direct Mail** or Direct Mail not needing a Marketo program, follow the directions in the [Alyce Direct Mail Section](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/virtual-workshops/#steps-to-setup-direct-mail-campaigns)

For **Linkedin Social Ads** follow the instructions documented in [the Linkedin section](/handbook/marketing/marketing-operations/#steps-to-setup-linkedin-lead-gen-form-gated-content-only)

For all other campaign types, follow Steps 1-5 below. All steps are required.

##### Step 1: Clone the Marketo program indicated below

- Sponsored Webcast: [YYMMDD_ExternalWebcastVendorName_Topic_Region](https://app-ab13.marketo.com/#PG5523A1)
- Virtual Conference: [YYYYMMDD_Vendor_VirtualConfName (Virtual Conference Template)](https://app-ab13.marketo.com/#ME5121A1)
- Self-Service Virtual Event with or without Promotion: [YYYYMMDD_SelfServiceTopic_Region](https://app-ab13.marketo.com/#ME5143A1)
- Vendor Arranged Meetings (1:1 meetings): [YYYYMMDD_ArrangedMeetingsVendorName_Region](https://app-ab13.marketo.com/#PG5698A1)
- Content Syndicaton: [skip to specific setup details here](/handbook/marketing/marketing-operations/#steps-to-setup-content-syndication-in-marketo-and-sfdc)
- Executive Roundtables: [YYYYMMDD_ExecutiveRoundtable_Topic_Region](https://app-ab13.marketo.com/#ME6028A1)
- Surveys (not SimplyDirect): [YYYYMMDD_SurveyName](https://app-ab13.marketo.com/#PG6402A1)
     - For SimplyDirect Surveys, [skip to specific setup details here](/handbook/marketing/marketing-operations/#steps-to-setup-simplydirect-surveys-in-marketo-and-sfdc)
- (MPM use only) Conference: [YYYYMMDD_Conference_Template](https://app-ab13.marketo.com/#ME5100A1)
- (MPM use only) Conference Speaking Session: [YYYYMMDD_SpeakingSession_Template](https://app-ab13.marketo.com/#ME5092A1)
- (MPM use only) Field Event: [YYYYMMDD_FieldEvent_Template](https://app-ab13.marketo.com/#ME5083A1)
- (MPM use only) Owned Event: [YYYYMMDD_OwnedEvent_Template](https://app-ab13.marketo.com/#ME4722A1)
- (Moving to FMM) Zoom GitLab Hosted Webcast: [YYYYMMDD_WebcastTopic_Region](https://app-ab13.marketo.com/#ME5512A1)
- (Moving to FMM) Zoom GitLab Hosted Workshops (please follow directions in the [workshop set-up section](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/virtual-workshops/#workshop-set-up)):
     - CI/CD Advanced Workshop: [YYYYMMDD_VirtualWorkshop_CI/CD](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/ME6807A1)
     - Project Management: [YYYYMMDD_VirtualWorkshop_ProjectManagement](https://app-ab13.marketo.com/#ME6536A1)
     - Security: [YYYYMMDD_VirtualWorkshop_SecurityWorkshop](https://app-ab13.marketo.com/#ME6521A1)
     - DevOps Automation: [YYYYMMDD_VirtualWorkshop_DevOpsAutomation](https://app-ab13.marketo.com/#ME6532A1)
     - Advanced CI/CD: [YYYYMMDD_VirtualWorkshop_CI/CD](https://app-ab13.marketo.com/#ME6807A1)
- (Coming in Nov) BrightTALK GitLab Hosted Webcast: [YYYYMMDD_WebcastTopic_Region]()
- (Campaigns Only) Gated Content: [YYYY_Type_Content_Template](https://app-ab13.marketo.com/#PG5111A1)
- (Campaigns Only/Phasing Out) PathFactory Listener: [TEMPLATE - `PF - Asset Type - Name of Asset`](https://app-ab13.marketo.com/#PG3875A1)
- (Campaigns Only) Integrated Campaign: [FY20IntegratedCampaign_Template](https://app-ab13.marketo.com/#PG4924A1)

##### Step 2: Sync to Salesforce

- At the program main screen in Marketo, where it says `Salesforce Sync` "not set", click on "not set"
    - Click "Create New." The program will automatically populate the campaign tag, so you do not need to edit anything.
    - Click "Save"

##### Step 3: Update Marketo tokens

- Complete the information for each token. Instructions for what to enter for each token are included in the template.
    - Note that it is important that all tokens are completed as the "Interesting Moments" Smart Campaigns pushes information to Salesforce based on the tokens. Depending on the campaign, some auto-responders and emails rely on tokens as well.
    - You do not need to update the following tokens upon setup:
        - ((my.email header image url}} - This is optional. You will need this if you had custom images created.
        - {{my.ondemandurl}} - This will be entered AFTER the event date. It is the link to the recorded webcast. You will need to come back after the event and update this token.
- Update the utm_campaign field using the following format: Campaign Tag, with no spaces, capitalization, underscores, or special characters.

##### Step 4: Activate Marketo smart campaign(s)
* If this is a `Vendor Arranged Meeting` or `Executive Roundtable`, skip this step. The campaign and interesting moments will be run as a batch campaign after the list is loaded.
* Click the "Smart Campaigns" folder
     * Select the `Interesting Moments` smart campaign. 
     * The correct program should automatically apply when cloned, so *you don't need to do anything here.* However, you can confirm that the campaign tag appears on in the Smart List and Flow. If the name of the template appears anywhere, replace it with the campaign tag.
     * Click to the "Schedule" tab and click `Activate`.
     * Select the `01 Processing` smart campaign.
     * The correct program should automatically apply when cloned, so *you don't need to do anything here.* However, you can confirm that the campaign tag appears on in the Smart List and Flow. If the name of the template appears anywhere, replace it with the campaign tag.
     * Click to the "Schedule" tab and click `Activate`.

- Keep in mind, sometimes the interesting moment happens in the `01 processing` campaign. If you do not see an `Interesting Moments` campaign, check to see if that step is in `01 Processing`

##### Step 5: Update the Salesforce campaign

- Now go to Salesforce.com and check the [All Campaigns by create date](https://gitlab.my.salesforce.com/701?fcf=00B4M000004oVF9) view. Sort by create date and your campaign should appear at the top. You may also search for your campaign tag in the search box. Select the campaign.
    - Change the `Campaign owner` to your name
    - Change the `Enable Bizible Touchpoints` to `Include only "Responded" Campaign Members`
    - Confirm that start date and end date populated correctly (this is automated). For events and webcasts, start date is 30 days prior to the event date and 60 days after. For all other campaigns, the start date is the date of launch, end date is 90 days from the date of launch (or if the campaign runs longer, update to the appropriate end date).
    - Update the event epic
    - Update the description (if any)
    - Update `Budgeted Cost`
    - Update `Region` and `Sub-region`, if these are local or targeted to a specific region
    - Update `Budget Holder`, if the campaign results in offline Bizible touchpoints based on campaign type (i.e. content syndication, sponsored webcast, etc.) - NOTE: an offling Bizible touchpoint happens when we gather a lead offline and in order for the system to have this name you must go through a [list upload process](/handbook/marketing/marketing-operations/list-import/).
    - Click "Save"
- Add the Marketo program link and SFDC campaign link to the epic.

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
    - Change the `Enable Bizible Touchpoints` to `Include only "Responded" Campaign Members`
    - Update the event epic
    - Update the description
    - Update `Start Date` to the date of launch
    - Update `End Date` to 90 days from date of launch (if this is an ongoing campaign, update appropriately)
    - Update `Budgeted Cost` if you have the data available
    - Update `Region` and `Subregion` if you have the data available
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
    - Change the `Enable Bizible Touchpoints` to `Include only "Responded" Campaign Members`
    - Update the event epic
    - Update the description
    - Update `Start Date` to the date of launch
    - Update `End Date` to 90 days from date of launch (if this is an ongoing campaign, update appropriately)
    - Update `Budgeted Cost` if you have the data available
    - Update `Region` and `Subregion` if you have the data available
    - Click Save
- Add the Marketo program link and SFDC campaign link to the epic.

##### Step 5: Troubleshooting:
1. Look at the `Results` tab of the smart campaign, if there are errors, you will clearly see them there.
1. If the lead is not pushing to SFDC? Make sure that the `Person Source` is not `SurveyName`
1. If existing leads are not being pulled into the program, it is likely the `SurveyName` field is capturing the wrong name.
1. If net-new leads are not being pulled into the program, it is likely the `Person Source` SurveyName was not updated correctly.

#### Steps to Setup Direct Mail Campaigns

##### Step 1: Create the Salesforce campaign
- For **ALYCE DIRECT MAIL** clone the [Alyce - Template](https://gitlab.my.salesforce.com/7014M000001dl5P).
- For **OTHER DIRECT MAIL** clone the [#TEMPLATE - Direct Mail](https://gitlab.my.salesforce.com/7014M000001dlh9)
- Update Campaign name to `whatever your campaign tag is`
- NOTE: You do NOT need a corresponding Marketo campaign. All information and tracking is done via this campaign.

##### Step 2: Update the Salesforce campaign
- Click on `Advanced Setup` to make sure statuses correspond to those listed in the [Alyce progression statuses](/handbook/marketing/marketing-operations/#direct-mail) or [Direct Mail progression statuses](/handbook/marketing/marketing-operations/#direct-mail). Do not edit these, if you need them updated, please reach out to MktgOps.
- Change the `Campaign Owner` to your name
- Confirm the `type` is `Direct Mail`
- Confirm the `Enable Bizible Touchpoints` is set to `Include only "Responded" Campaign Members`
- Update the event epic
- Update the description
- Update `Start Date` to the date of launch
- Update `End Date` to 90 days from date of launch (if this is an ongoing campaign, update appropriately)
- Update `Status` to `In Progress` or the approriate selection
- Update `Budgeted Cost` if you have the data available, if not, or if cost is $0, list `1` in the `Budgeted Cost` field - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by `0` you will always get `0` as the pipe2spend calculation. 
- Update `Region` and `Subregion` if you have the data available
- Click Save

#### Steps to Setup Linkedin Lead Gen Form *Gated Content Only
Currently any form starting with these are actively being added into a program and you do not need to add a new one.
- singleappci
- iacgitops
- vccusecase

##### Step 1: [Clone this Program](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG6911A1)
- Use format `YYYY_Social_Name_Linkedin Lead Gen`

##### Step 2: Sync to Salesforce

- At the program main screen in Marketo, where it says `Salesforce Sync` with "not set", click on "not set"
    - Click "Create New." The program will automatically populate the campaign tag, so you do not need to edit anything.
    - Click "Save"

##### Step 3: Update the Salesforce campaign

- Now go to Salesforce.com and check the [All Campaigns by create date](https://gitlab.my.salesforce.com/701?fcf=00B4M000004oVF9) view. Sort by create date and your campaign should appear at the top. You may also search for your campaign tag in the search box. Select the campaign.
    - Change the `Campaign Owner` to your name
    - Change the `Enable Bizible Touchpoints` to `Include only "Responded" Campaign Members`
    - Update the event epic
    - Update the description
    - Update `Start Date` to the date of launch
    - Update `End Date` to 90 days from date of launch (if this is an ongoing campaign, update appropriately)
    - Update `Budgeted Cost` if you have the data available, otherwise put $1
    - Update `Region` and `Subregion` if you have the data available
    - Click Save
- Add the Marketo program link and SFDC campaign link to the epic.

##### Step 4: Go back into Marketo Template
- Update local program tokens 
- Update the smart list with `contains` and the prefix
- Make sure `opt-in` language is on the Linkedin Form, if not, remove the `opt-in` step in the Flow
- Turn on 
- All linkedin programs with your form prefix will now flow through this campaign

##### Step 5: Update this Handbook page
- Update this handbook page with the prefix you are now tracking to prevent duplication of programs in the future.



