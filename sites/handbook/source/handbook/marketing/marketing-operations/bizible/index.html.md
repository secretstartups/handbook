---
layout: handbook-page-toc
title: "Bizible"
description: "Bizible unifies behavioral and ad data with sales outcomes and machine learning so you can make the right marketing decisions."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## About Bizible

Bizible unifies behavioral and ad data with sales outcomes and machine learning so you can make the right marketing decisions.

## Bizible Touchpoints

Bizible defines a touchpoint as: Touchpoints refer to the interactions a prospect/lead has with your online or offline marketing efforts.   

They capture a multitude of information about the interaction such as utm parameters, date/time of the interaction, and type of interaction (web visit, form submission, campaign response, etc.).    

In Salesforce, the abbreviations for the various touchpoints are as follows (see more in the diagrams below to see how these work in the different models):
- FT - First Touch, a prospect's first-ever interaction
- LC - Lead Created, prospect submits information
- OC - Opportunity Creation, prospect intentionally moves toward a purchase decision
- Closed - Customer Close, prospect makes a purchase
- Pending - The Pending touchpoint position is stamped only on BATs (Bizible Attribution Touchpoints) not on BTs (Bizible Tocuhpoints). This touchpoint position is shown **only when the opportunity is still open**, because attribution credit must always add up to 100%. To elaborate further, if we're using a [Full Path Model](https://about.gitlab.com/handbook/marketing/marketing-operations/bizible/#full-path) (22,5% to FT, LC, OC, Closed and the remaining 10% for middle touches), while the Opportunity is still open, the remaining 22,5% credit that is allocated to Closed(Lost,Won) must go somewhere else. So, Bizible, has the temporary touchpoint Position of Pending to hold this credit. As a second example, let's say we're using our [Custom Attribution Model](https://about.gitlab.com/handbook/marketing/marketing-operations/bizible/#custom-attribution-based-on-bizible-machine-learning-algorithm), in this case, if a opportunity is still open for that particular contact, the 10,1% attribution credit for Closed (Lost, Won) would be shown temporary as Touchpoint Position Pending until that opportunity is Closed, when the Touchpoint position pending will change to the usual Touchpoint Position Closed(Lost, Won). For more information visit this [link](https://nation.marketo.com/t5/marketo-whisperer-blogs/bizible-s-pending-touchpoint-position/ba-p/312477)

Here is Bizible's breakdown of how [Touchpoints are generated and mapped](https://docs.marketo.com/display/BIZ/Touchpoint+Generation+and+Mapping):    

#### Touchpoint Generation Methods
The touchpoint generation process answers the question, “How is Bizible going to know that this occurred?” Depending on your feature set and the types of interactions your prospective customers can have, there are up to three ways Bizible can pick up on an interaction and create a touchpoint to represent it.

| Type of Interaction                 | Example                                                                                       | Touchpoint Generation Method                                                                                                                                      |
|-------------------------------------|-----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Online, on your site(s)             | Form fill                                                                                     | Bizible JavaScript                                                                                                                                                |
| Offline; Online not on your site(s) | Tradeshows; BrightTalk Webcasts (for Attended status TPs); Content syndication partner delivers a list of leads who engaged with your content;  | CRM Campaign membership synced to Bizible, by setting the Campaign Sync Type directly in the campaign or by setting rules on the Campaigns page in Bizible. For the Brighttalk Webcasts it's done by the Marketo Programs Integration, through Marketo Program Rules |
| Sales activity                      | Outbound call by SDR                                                                          | CRM Activity (Task or Event) record synced to Bizible, through logic on the Activities page in Bizible                                                            |

#### Touchpoint Mapping Methods
The touchpoint mapping process answers the question, “Once this touchpoint’s been created, how is Bizible going to know what channel and subchannel it belongs to?” Each method of touchpoint generation has its own method of touchpoint mapping.

| Type of Interaction                  | Generation Method            | Mapping Method                                                                                                       |
|--------------------------------------|------------------------------|----------------------------------------------------------------------------------------------------------------------|
| Online, on your site(s)              | Bizible JavaScript           | Through the Online Channels page in Bizible, by referencing UTM values, landing page, and referring page information |
| Offline; Online, not on your site(s) | CRM Campaign membership sync or through the Marketo Programs Integration, through Marketo Program Rules | Through the Offline Channels page in Bizible, by referencing Campaign Type or the Marketo Program Channel Mapping|                                         |
| Sales activity                       | CRM Activity sync            | Through the Online Channels page in Bizible, by referencing the Campaign Name assigned on the Activities page        |


There are two types of Bizible Touchpoints as explained below. 

| Bizible Touchpoint (BT) | Bizible Attribution Touchpoint (BAT) |
| ----- | ----- | 
| Relates to the Lead, Contact, and Case Objects | Relates to the Contact, Account, and Opportunity Objects 
| Does not relate to the Opportunity Object | Does not relate to the Lead Object |
| Revenue is not associated to a Bizible Touchpoint |	Since a Bizible Attribution Touchpoint is associated to an Opportunity, all BATs have revenue associated to them |

##### Sales Activity Tracking in Bizible
Bizible looks at two key fields on a Task/Event to determine if a BT/BAT should be created for it, `Disposition` and `Type`. 
`Type` will become what system/activity category (IQM for example) created the touchpoint.
`Disposition` is used by Bizible to determine when a touchpoint should be created.    

In an ideal scenario, all systems will use one of two options for the `Disposition`. Either `meaningful engagement/move to SAO` or `meaningful engagement` to tell Bizible when to create a touchpoint. This will reduce the manual effort on the backend and simplify both reporting and system administration. 
`meaningful engagement/move to SAO` will be used when there was a quality engagement with the prospect and this lead to the creation of a SAO whereas `meaningful engagement` will be used when there was a quality engagement that did not lead directly to a SAO (such as a meeting that was useful, but didn't indicate the prospect was ready for a sales accepted opportunity).

Example: Initial Qualifying Meetings (IQMs)
When an IQM is had, the `Type` is set to `IQM` and the disposition currently is set to `Quality Meeting` to indicate that the meeting/IQM should be counted as a touchpoint and was useful to the sales/marketing process.    
Ideally, `Quality Meeting` would be changed to the more generic, `menaingful engagement`, so that we have parity between the tools and can use a tool-agnostic approach to touchpoint generation. 


### Online vs. Offline Touchpoint Management
#### Online
Online channels are any channels that would be directly associated with your website or any integrated site – any display advertising, paid search, paid social, organic search, organic social, email, chatbots, etc.    

Bizible touchpoints are automatically created when a form is submitted on one of the GitLab.com domains for these online channels, therefore we do not need to create SFDC campaigns to track these.

#### Offline
Offline channels are associated with initiatives like direct mail, trade shows or hospitality events, marketing or sales research, and pretty much any other channel where a person’s engagement cannot be tracked digitally or where they physically attend. A quick rule of thumb: if there is a list uploaded and they person took an action, they are offline touchpoints.

Bizible touchpoints are created by dispositioning `Enable Bizible Touchpoints` field on the Salesforce Campaign as `Include only "Responded" Campaign Members` for these offline channels.

[See progression statuses for the standard `Campaign Types` that will have offline bizible touchpoints enabled](/handbook/marketing/marketing-operations/#campaign-type--progression-status)

## Attribution Models

Marketing attribution is the process of assigning revenue credit to a marketing touchpoint. This is done by tracking a prospect’s entire customer journey, starting from their very first interaction with your company to when the deal closes. The revenue generated from the deal gets attributed back to the marketing touchpoints that drove the sale. The amount of revenue credit given to a touchpoint depends on how much that touchpoint influenced the customer’s purchasing decision.

[Here](https://www.bizible.com/blog/marketing-attribution-models-complete-list) is Bizible's breakdown of the major attribution models. 

**Note: GitLab uses a blended approach when it comes to attribution models. The Custom Attribution Model (Based on Bizible Machine Learning) is going to be used side-by-side the other attribution models in order to get us closer to the "true" attribution answer.**

Below are the major attribution models that GitLab marketing uses of that list: 

### U-Shaped
U-Shaped attribution is a great lead generation focused attribution model. It tracks every single touchpoint up to the point of lead creation. It emphasizes the importance of two touchpoints: the first touch that brought the lead to us (while anonymous) - `First Touch` and the touchpoint that converted the lead to a known prospect - `Lead Creation`. These two touches get 40% of the attribution each and the remaining touches equally share the remaining 20%.  

![image](/handbook/marketing/marketing-operations/bizible/U-Shaped-Bizible.png)

### W-Shaped
W-Shaped attribution takes U-Shaped and expands it to opportunity creation. It emphasizes the importance of three touchpoints: the first touch that brought the lead to us (while anonymous) - `First Touch`, the touchpoint that converted the lead to a known prospect - `Lead Creation`, and the touchpoint that converted that prospect to an opportunity - `Opportunity Creation`. These three touches get 30% of the attribution each and the remaining touches equally share the remaining 10%.

![image](/handbook/marketing/marketing-operations/bizible/W-Shaped-Bizible.png)

### Full Path
Full Path attribution (or the Z-Shaped model) tracks the entire lifecycle of the record from `First Touch` through the point of becoming a customer - `Customer Close`. Full Path expands on the W-Shaped model by adding a 4th important touchpoint of `Customer Close`, adding it to the 3 important touches of W-Shaped. Each of these 4 touches get 22.5% of the attribution and all of the other touches equally share the remaining 10%. 

![image](/handbook/marketing/marketing-operations/bizible/Full-Path-Bizible.png)

### Linear Attribution
Linear Attribution is the simplest and most all-encompassing of the multi-touch attribution models and is the model that GitLab is focused on for longterm attribution modeling. In this model every touchpoint from `First Touch` through to `Customer Close` and beyond share equal credit as shown below. 

![image](/handbook/marketing/marketing-operations/bizible/Linear-Bizible.png)

### Custom Attribution (Based on Bizible Machine Learning Algorithm)
Custom Attribution based on the Bizible machine learning attribution model uses our touchpoint data to calculate how much attribution weighting should be assigned to each stage. This is determined by how important each stage was in driving deals to close. 

**How is the Machine Learning model Calculated?**

Bizible calculates the importance of each custom stage by using the touchpoint data from our account. The criteria used to determine the importance of each stage are:

- **Model Accuracy:** If we build a predictive model with the touchpoint data to predict whether we will win a deal eventually, how accurate will the model be? Higher predictive accuracy means that the details of this stage correlates more with whether a deal will close
- **Conversion Rate:** If Leads or Opportunities at this certain stage convert to the next stage at a high rate, this suggests that the marketing activities that occurred at this stage didn't matter very much. Conversely, if a certain stage converts to the next stage at a low rate, this can suggest that the marketing activities that occurred at this stage were influential in driving the conversion.
- **Touchpoint Uniqueness Weight:** If a stage occurs as a standalone transition, meaning there weren't any other stage transitions that occurred at the same time, this stage could receive a higher attribution weight. Conversely, if a touchpoint for a stage is shared with other stages (e.g. the touchpoint shares the First Touch, Lead Conversion, and Opportunity Conversion stages) this stage could receive a lower attribution weighting. 
The final weight for a custom stage is calculated as such:

_**Model Percentage = Model Accuracy x Conversion Rate x Touchpoint Uniqueness Weight**_

At the end, all the custom stage weights are normalized and converted to % as shown below.

The Custom Attribution Model, based on the Machine Learning Algorithm is a living model. It constantly improves based on the new data coming in. 

To allow for the most up to date weights, the Marketing Operations team does constant refreshes of the Custom Attribution Model. As to have proper documentation, here in the handbook you can see the weight changes made, and when they occured.  

Currently, the custom machine learning model has the following weights for each stage (updated July 15th 2022): 

- **First Touch** - 18.9%
- **Lead Creation** - 18.7%
- **Opportunity Creation** - 18.2%
- **SAO** - 12%
- **Closed (Lost, Won)** - 22.2%
- **Middle Touches** - 10.0%

The custom model weights, is scheduled to be updated on a yearly basis, at the end of the FY (first week into the new FY). The previous weights can be seen [here](https://docs.google.com/spreadsheets/d/1gE0rLgVjz04kEEaZtw763SLcKlRcq5y4/edit#gid=1524071528). 

#### How GitLab Calculates Linear Attribution IACV
Here is an example of how we calculate linear IACV:    

There are two opportunities, Opportunity A and Opportunity B.   
Opportunity A has an IACV of $10,000. There are a total of 100 touchpoints (attribution touchpoints) associated with that opportunity. Each touchpoint is valued at $100 ($10,000 / 100 touchpoints). We call that the `Weighted Linear IACV`  

Opportunity B has an IACV of $15,000. There are a total of 100 touchpoints (attribution touchpoints) associated with that opportunity. Each touchpoint is valued at $150 ($15,000 / 100 touchpoints). We call that the `Weighted Linear IACV`

Of the Touchpoints on Opportunity A, they are split among 2 different campaigns - 60 touches in Campaign Y and 40 in Campaign Z.   

Of the Touchpoints on Opportunity B, they are split among 2 different campaigns - 40 touches in Campaign Y and 60 in Campaign Z. 

To calculate the linear attribution IACV in each of those two campaigns we use the following calculation:   
**Campaign Y** : 60 touches (from Opp A) at a `Weighted Linear IACV` of $100/touch = $6,000 + 40 touches (from Opp B) at a `Weighted Linear IACV` of $150/touch = $6,000. Total: $12,000 linear IACV.    

**Campaign Z** : 40 touches (from Opp A) at a `Weighted Linear IACV` of $100/touch = $4,000 + 60 touches (from Opp B) at a `Weighted Linear IACV` of $150/touch = $9,000. Total: $13,000 linear IACV. 


The Checksum is to combine the IACV of both opportunites ($10,000+$15,000=$25,000) and compare it to the sum of the linear IACV of all campaigns those opportunities are a part of: ($12,000+$13,000=$25,000). The results of the sums are equivalent - we are good.   


Note: If the IACV of the opportunity/opportunities is/are negative, then the resulting `Weighted Linear IACV` and final linear IACV of the campaign(s) could be negative. 

## Bizible Channel and Sub-Channel Mapping

### Online Channel Mapping
The channels and sub-hannels are mapped based on 5 attributes: 
1. Campaign - this is the `utm_campaign` value on the form URL the form submission occurs on. 
1. Medium - this is the `utm_medium` value on the form URL the form submission occurs on.
1. Source - this is the `utm_source` value on the form URL the form submission occurs on.
1. Landing Page - this is the landing page url that the form submission occurs on. 
1. Referring Website - this is the website that referred the submitter to the form submission page. 

These rules are hierarchical and will operate in a top-down fashion, so the first rule is checked and then the second, and so on.

**Note: Bizible reprocesses your data when you edit the mapping logic, so you won’t be able to change these rules more than once every 7 days.**

| Channel        | Sub Channel        | Campaign                   | Medium                             | Source                             | Landing Page                              | Referring Website        |
|----------------|--------------------|----------------------------|------------------------------------|------------------------------------|-------------------------------------------|--------------------------|
| Paid Search    | AdWords            |                            |                                    |                                    |                                           | [AdWords Paid Search]    |
| Paid Search    | Bing               |                            |                                    |                                    |                                           | [Bing Paid Search]       |
| Paid Search    | Bing               |                            | cpc                                | bing_yahoo                         |                                           |                          |
| Paid Search    | Yahoo              |                            |                                    |                                    |                                           | [Yahoo Paid Search]      |
| Paid Search    | AdWords            |                            | cpc,CPC                            | Google AdWords                     |                                           |                          |
| Display        | DoubleClick        |                            | display                        | doubleclick                                   |                                           |            |
| Display        | Google             |                            | display                        | google                                   |                                           |         |
| Display   | Demandbase          |                                | display                        | demandbase                                   |                                           |        |
| Display        | DoubleClick        |                            |                                    |                                    |                                           | [DoubleClick]            |
| Display        | Google             |                            |                                    |                                    |                                           | [AdWords Display]        |
| Paid Social    | Facebook           |                            |                                    |                                    |                                           | [Facebook Paid]          |
| Paid Social    | Facebook           |                            | paidsocial                         | facebook                           |                                           |                          |
| Paid Social    | LinkedIn           |                            |                                    |                                    |                                           | [LinkedIn Paid]          |
| Paid Social    | LinkedIn           |                            | paidsocial                         | linkedin                           |                                           |                          |
| Paid Social    | Twitter            |                            | paidsocial                         | twitter                            |                                           |                          |
| Paid Search    | Other              |                            |                                    |                                    |                                           | [Other Paid Search]      |
| Paid Search    | Google             |                            | cpc                                | google                             |                                           |                          |
| Paid Search    | Other              |                            | cpc                                |                                    |                                           |                          |
| Paid Social    | Other              |                            |                                    |                                    |                                           | [Other Paid Social]      |
| Paid Social    | Other              |                            | paidsocial                         |                                    |                                           |                          |
| Email          |                    |                            |                                    |                                    |                                           | [Web Mail]               |
| Email          |                    |                            |                                    | email;eml;e-mail;hs-email;emailsig |                                           |                          |
| Email          |                    |                            | email;eml;e-mail;hs-email;emailsig |                                    |                                           |                          |
| Organic Search | Google             |                            |                                    |                                    |                                           | [Google Organic Search]  |
| Organic Search | Bing               |                            |                                    |                                    |                                           | [Bing Organic Search]    |
| Organic Search | Yahoo              |                            |                                    |                                    |                                           | [Yahoo Organic Search]   |
| Organic Search | Other              |                            |                                    |                                    |                                           | [Other Organic Search]   |
| Social         | Facebook           |                            |                                    | Facebook                           |                                           |                          |
| Social         | Facebook           |                            | Facebook                           |                                    |                                           |                          |
| Social         | Facebook           |                            |                                    |                                    |                                           | [Facebook]               |
| Social         | LinkedIn           |                            |                                    | LinkedIn                           |                                           |                          |
| Social         | LinkedIn           |                            | LinkedIn                           |                                    |                                           |                          |
| Social         | LinkedIn           |                            |                                    |                                    |                                           | [LinkedIn]               |
| Social         | Twitter            |                            |                                    | Twitter                            |                                           |                          |
| Social         | Twitter            |                            | Twitter                            |                                    |                                           |                          |
| Social         | Twitter            |                            |                                    |                                    |                                           | [Twitter]                |
| Social         | Other              |                            |                                    | social                             |                                           |                          |
| Social         | Other              |                            | social                             |                                    |                                           |                          |
| Display        | Other              |                            | display                            |                                    |                                           |                          |
| Display        | Other              |                            |                                    | display                            |                                           |                          |
| IQM            | IQM                | Initial Qualifying Meeting |                                    |                                    |                                           |                          |
| Other          |                    |                            | *                                  |                                    |                                           |                          |
| Other          |                    |                            |                                    | *                                  |                                           |                          |
| Direct         | Web Store          |                            |                                    |                                    | customers.gitlab.com/                |                          |
| Direct         | CI Minutes         |                            |                                    |                                    | customers.gitlab.com/buy_pipeline_minutes |                          |
| Direct         | Trial Home         |                            |                                    |                                    | about.gitlab.com/free-trial/              |                          |
| Direct         | GitLabCom Trial    |                            |                                    |                                    | gitlab.com/-/trials/new                   |                          |
| Direct         | Self Managed Trial |                            |                                    |                                    | about.gitlab.com/free-trial/self-managed/ |                          |
| Direct         |                    |                            |                                    |                                    |                                           | direct;[Account Website] |
| Web Referral   |                    |                            |                                    |                                    |                                           | *                        |


### Bucket Channel Mapping
 These channels and subchannels are pulled into Salesforce and can be further filtered by using `medium` for those channels with overlap or with `Ad Campaign name` to search for specific UTMs or campaigns. The `Bucket Mapping` is a high-level grouping of each subchannel set to allow for additional reporting.:

| Bizible Channel.SubChannel | Bucket Mapping | Online/Offline | Type of Marketing                                                                                                                                                                                          |
|----------------------------- | -------------- | -------------- |---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Content.Content Syndication | Inbound Paid | Offline | White Paper or other content offer that is hosted by a third party.                                                                                                                                         |
| Content.Gated Content | Inbound Paid | Offline | White Paper or other content offer.                                                                                                                                                                               |
| Content.PF Content | Inbound Free Channels | Online | This campaign type is used to track consumption of specific PathFactory assets.                                                                                                                             |
| Digital.Inbound Request | Inbound Free Channels | Online | Any type of inbound request that requires follow up.                                                                                                                                                                                |
| Direct | Inbound Free Channels | Online | Unknown or direct (NOTE: this is not the same as Web direct/self-serve in SFDC, this is a Web referral where the original source was not captured)                                                                      |
| Display.Google | Inbound Paid | Online | A display ad from Google                                                                                                                                                                                                 |
| Display.Other | Inbound Paid | Online | A display ad from an unspecified source                                                                                                                                                                                   |
| Email | Inbound Free Channels | Online | Email driven engagement                                                                                                                                                                                                  |
| Event.Conference | Inbound Paid | Offline | Any large event run by Corporate Marketing that we have paid to sponsor, have a booth/presence and are sending representatives from GitLab (example: AWS re:Invent, DevOps Enterprise Summit).                         |
| Event.Executive Roundtables | Inbound Paid | Offline |  This is used for campaigns that can either be organised through a 3rd party vendor or GitLab, covering both in-person and virtual roundtables.                                                              |
| Event.Field Event | Inbound Paid | Offline | This is an event run by Field Marketing that we have paid to participate in                                                                                                                                           |
| Event.Owned Event | Inbound Paid | Offline | This is an event that we have created, own registration and arrange speaker/venue                                                                                                                                     |
| Event.Self-Service Virtual Event | Inbound Free Channels | Offline | This is a light weight virtual event that can be hosted on GitLabber's personal zoom.                                                                                                         |
| Event.Speaking Session | Inbound Paid | Offline | It is for tracking attendance at our speaking engagements.                                                                                                                                                       |
| Event.Sponsored Webcast | Inbound Paid | Offline | This is webcast hosted on an external partner/vendor platform. The                                                                                                                                              |
| Event.Vendor Arranged Meetings | Inbound Paid | Offline | Used for campaigns where a third party vendor is organizing one-to-one meetings with prospect or customer accounts.                                                                                      |
| Event.Virtual Sponsorship | Inbound Paid | Offline | A virtual event that we sponsor and/or participate in that we do not own the registration but will generate a list of attendees, engagement and has on-demand content consumption post-live virtual event. In |
| Event.Webcast | Inbound Free Channels | Offline | Any webcast that is hosted and held by GitLab.                                                                                                                                                                   |
| Event.Workshop | Inbound Free Channels | Offline | An in-person or virtual workshop where the attendees are guided through an agenda of real life use cases within GitLab.                                                                                         |
| IQM.IQM | Outbound | Online | SDR Initial Qualifying Meeting                                                                                                                                                                                                      |
| Organic Search.Bing | Inbound Free Channels | Online | Organic Search through Bing                                                                                                                                                                                |
| Organic Search.Google | Inbound Free Channels | Online | Organic Search through Google                                                                                                                                                                            |
| Organic Search.Other | Inbound Free Channels | Online | Organic Search through an unspecified search engine                                                                                                                                                       |
| Organic Search.Yahoo | Inbound Free Channels | Online | Organic Search through Yahoo search                                                                                                                                                                       |
| Other | Other | Online | Unknown/unspecified UTMs                                                                                                                                                                                                                 |
| Other.Direct Mail | Inbound Paid | Offline | This is when a package or piece of mail is sent out.                                                                                                                                                                  |
| Other.Survey | Inbound Paid | Offline | A survey that we or a 3rd party sends out.                                                                                                                                                                                 |
| Paid Search.AdWords | Inbound Paid | Online |  Google AdWords Paid Search                                                                                                                                                                                          |
| Paid Search.Bing | Inbound Paid | Online | Bing Paid Search                                                                                                                                                                                                       |
| Paid Search.Other | Inbound Paid | Online | Unspecified Paid Search                                                                                                                                                                                               |
| Paid Social.Facebook | Inbound Paid | Online | Facebook Paid Ads                                                                                                                                                                                                  |
| Paid Social.LinkedIn | Inbound Paid | Online | LinkedIn Paid Ads                                                                                                                                                                                                  |
| Paid Social.Other | Inbound Paid | Online | Unspecified Paid Ads                                                                                                                                                                                                  |
| Paid Social.Twitter | Inbound Paid | Online | Twitter Paid Ads                                                                                                                                                                                                    |
| Referral.Referral Program | Inbound Paid | Online | This campaign type is used for our third party prospecting vendors or meeting setting services                                                                                                                |
| Social.Facebook | Inbound Free Channels | Online | Referral from Facebook                                                                                                                                                                                         |
| Social.LinkedIn | Inbound Free Channels | Online | Referral from LinkedIn                                                                                                                                                                                         |
| Social.Other | Inbound Free Channels | Online | Referral from an unspecified social platform                                                                                                                                                                      |
| Social.Twitter | Inbound Free Channels | Online | Referral from Twitter                                                                                                                                                                                           |
| Trial.Trial | Trial | Online | SaaS Trials                                                                                                                                                                                                                        |
| Web Referral | Inbound Free Channels | Online | Referral from any site not otherwise defined                                                                                                                                                                      |

## Bizible Attribution with Pathfactory
**Asset Viewed**

A Bizible touchpoint will be created, based on the [Content Engagement Time Threshold](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/4945). If the *known* user spends the required amount of time on a PathFactory asset, a script in the backend will be executed, pushing the event to Bizible. 

A touchpoint will only be generated if the user has accepted the `Cookie Policy` and is identified by PathFactory via the `lb_email` parameter. 

Bizible parses the referral URL it receives for: `utm_medium`, `utm_campaign`, `utm_source`.

**Form Fill**

Similarly to asset views, upon a successfull form submission on a PathFactory asset, a Bizible touchpoint will be created.


**Downloaded Asset**
When an asset is downloaded on a PathFactory track, a Bizible touchpoint is being generated by the backend script.
<!-- This diagram is to be used internally and with Pathfactory to understand the attribution touchpoints created through our setup of Pathfactory listening campaigns and how the tracks are used in integrated campaigns and other tactics that drive straight to pathfactory.

<div style="width: 600px;" class="embed-thumb"> <h1 style="position: relative;vertical-align: middle;display: inline-block; font-size: 24px; line-height:22px; color: #393939;margin-bottom: 10px; font-weight: 300;font-family: Proxima Nova, sans-serif;"> <div style="padding-left:50px"> <span style="max-width:555px;display: inline-block;overflow: hidden; white-space: nowrap;text-overflow: ellipsis;line-height: 1; height: 25px; margin-top: -3px;">Bizible Online an Offline Touchpoints with Pathfactory</span> <span style="position:relative;top:-3px;font-size: 16px; margin-top: -6px; line-height: 24px;color: #393939; font-weight: 300;"> by Jackie Gragnola</span> </div> </h1> <div style="position: relative; height: 0;overflow: hidden; height: 400px; max-width: 800px; min-width: 320px; border-width: 1px; border-style: solid; border-color: #d8d8d8;"> <div style="position: absolute;top: 0;left: 0;z-index: 10; width: 600px; height: 100%;background: url(https://murally.blob.core.windows.net/thumbnails/gitlab2474/murals/gitlab2474.1597182505968-5f331229ffb2423070d75f73-4b73eb23-af5f-435c-8bd1-8181147a68af.png?v=c974be40-95fe-4d07-b865-12e38e430e73) no-repeat center center; background-size: cover;"> <div style="position: absolute;top: 0;left: 0;z-index: 20;width: 100%; height: 100%;background-color: white;-webkit-filter: opacity(.4);"> </div> <a href="https://app.mural.co/t/gitlab2474/m/gitlab2474/1597182505968/6c8778e0d022161c22d9a3530e47a110e6cd5ef0" target="_blank" rel="noopener noreferrer" style="transform: translate(-50%, -50%);top: 50%;left: 50%; position: absolute; z-index: 30; border: none; display: block; height: 50px; background: transparent;"> <img src="https://app.mural.co/static/images/btn-enter-mural.svg" alt="ENTER THE MURAL" width="233" height="50"> </a> </div> </div> </div>
!-->

## Bizible in SFDC
### [Bizible] SFDC Campaigns
These are part of Bizible's native and automatic functionality. Bizible will for every channel and subchannel, create a generic `[Bizible]` campaign within SFDC in order to attribute touchpoints.

But these are not official campaigns, that is why there are no members, but the touchpoints will reference these campaigns for use in reporting and analytics.

Example: [Web Direct [Bizible]](https://gitlab.my.salesforce.com/70161000000Cnzk)

### Bizible Reports in SFDC

Below are some frequently used bizible reports in SFDC and their use cases.

#### Use case: Track registration by source for GitLab owned gated landing pages

**Bizible report type used: Bizible person with Bizible touchpoints (Custom)**

Below are step-by-step instructions on how to track registration by driving channel for zoom webcasts, where the registration is set up on about.gitlab or Marketo pages.

- Step 1: Click SFDC report tab.
- Step 2: Create new report. In the search bar, type and select report type:`Bizible person with Bizible touchpoints (Custom)` and click `create`.
- Step 3: Within the SFDC report, make sure at the top the filters as set as `Show All bizible persons` and `Date Field Range is set to All Time`.
- Step 4: Add filter:  `Form url contains [insert webcast landing page unique identifier]` (e.g: Form url contains automate-security-ci)
- Step 5: Select summary format and group by `Marketing Channel - Path`.


Training Video:

<iframe width="560" height="315" src="https://www.youtube.com/embed/VbmqYu7WFOU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Bizible Person ID Deduplication

A Bizible Person ID is created for each lead/contact in our database. In the unfortunate situation in which duplicate leads get created in our database, it will also result in duplicate Bizible Person IDs which may or may not skew the data depending on the touchpoints we have on those Bizible Person IDs. 

Our data cleanliness effort takes this into consideration and deduplicates our database, taking care of the duplicate leads and contacts in the system. 

Removing the duplicate leads and contacts does not automatically result in the elimination of duplicate BP IDs, however this can be achieved through custom object deduplication with Ringlead of the Bizible Person object. 

To view the proper order of operations when it comes to deduplication and to find out more information on this topic please visit the [Ringlead handbook page](https://about.gitlab.com/handbook/marketing/marketing-operations/ringlead/).

