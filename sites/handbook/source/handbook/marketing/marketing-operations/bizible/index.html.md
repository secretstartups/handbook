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

Here is Bizible's breakdown of how [Touchpoints are generated and mapped](https://docs.marketo.com/display/BIZ/Touchpoint+Generation+and+Mapping):    

#### Touchpoint Generation Methods
The touchpoint generation process answers the question, “How is Bizible going to know that this occurred?” Depending on your feature set and the types of interactions your prospective customers can have, there are up to three ways Bizible can pick up on an interaction and create a touchpoint to represent it.

| Type of Interaction                 | Example                                                                                       | Touchpoint Generation Method                                                                                                                                      |
|-------------------------------------|-----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Online, on your site(s)             | Form fill                                                                                     | Bizible JavaScript                                                                                                                                                |
| Offline; Online not on your site(s) | Tradeshows; Content syndication partner delivers a list of Lead who engaged with your content | CRM Campaign membership synced to Bizible, either by setting the Campaign Sync Type directly in the campaign or by setting rules on the Campaigns page in Bizible |
| Sales activity                      | Outbound call by SDR                                                                          | CRM Activity (Task or Event) record synced to Bizible, through logic on the Activities page in Bizible                                                            |

#### Touchpoint Mapping Methods
The touchpoint mapping process answers the question, “Once this touchpoint’s been created, how is Bizible going to know what channel and subchannel it belongs to?” Each method of touchpoint generation has its own method of touchpoint mapping.

| Type of Interaction                  | Generation Method            | Mapping Method                                                                                                       |
|--------------------------------------|------------------------------|----------------------------------------------------------------------------------------------------------------------|
| Online, on your site(s)              | Bizible JavaScript           | Through the Online Channels page in Bizible, by referencing UTM values, landing page, and referring page information |
| Offline; Online, not on your site(s) | CRM Campaign membership sync | Through the Offline Channels page in Bizible, by referencing Campaign Type                                           |
| Sales activity                       | CRM Activity sync            | Through the Online Channels page in Bizible, by referencing the Campaign Name assigned on the Activities page        |


There are two types of Bizible Touchpoints as explained below. 

| Bizible Touchpoint (BT) | Bizible Attribution Touchpoint (BAT) |
| ----- | ----- | 
| Relates to the Lead, Contact, and Case Objects | Relates to the Contact, Account, and Opportunity Objects 
| Does not relate to the Opportunity Object | Does not relate to the Lead Object |
| Revenue is not associated to a Bizible Touchpoint |	Since a Bizible Attribution Touchpoint is associated to an Opportunity, all BATs have revenue associated to them |

### Online vs. Offline Touchpoint Management
Placeholder. 

## Attribution Models

Marketing attribution is the process of assigning revenue credit to a marketing touchpoint. This is done by tracking a prospect’s entire customer journey, starting from their very first interaction with your company to when the deal closes. The revenue generated from the deal gets attributed back to the marketing touchpoints that drove the sale. The amount of revenue credit given to a touchpoint depends on how much that touchpoint influenced the customer’s purchasing decision.

[Here](https://www.bizible.com/blog/marketing-attribution-models-complete-list) is Bizible's breakdown of the major attribution models. 

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

 In 4Q18, we are making updates to the Bizible Channel rules, but currently, these channels and subchannels are pulled into Salesforce and can be further filtered by using `medium` for those channels with overlap or with `Ad Campaign name` to search for specific UTMs or campaigns:

| Bizible Online Channel or subchannel | Type of marketing |SFDC Marketing Channel-path |
|---|---|---|
|`CPC`|Google Adwords or other Paid Search|CPC.Adwords|
|`Display`|Display ads in Doubleclick, Terminus, etc|Display|
|`Paid Social`|Ads in Facebook or LinkedIn |Paid Social.[Name of site]|
|`Organic`|Organic search|Marketing Site.Organic|
|`Other`|Not specifically defined |[Name of channel].Other|
|`Partners`|Google or events|	Marketing Site.Web Direct|
|`Email`|Nurture, Newsletter, Outreach emails|Email.[Name of email type]|
|`Field Event`|From Field event, will show Salesforce campaign as touchpoint source|Email.[Field Event]|
|`Conference`|From conference, will show Salesforce campaign as touchpoint source|Conference|
|`Social`|Any referral from any defined social media site| Social.[Name of site]|
|`Sponsorship`|Paid sponsorships, Display, and Demand gen as well as Terminus|Sponsorship|
|`Web Direct`|Unknown or direct (NOTE: this is not the same as Web direct/self-serve in SFDC, this is a Web referral where the original source was not captured)|Marketing Site.Web Direct|
|`Web Referral`|Referral from any site not otherwise defined|Marketing Site.Web Referral|

## Bizible Attribution with Pathfactory

This diagram is to be used internally and with Pathfactory to understand the attribution touchpoints created through our setup of Pathfactory listening campaigns and how the tracks are used in integrated campaigns and other tactics that drive straight to pathfactory.

<div style="width: 600px;" class="embed-thumb"> <h1 style="position: relative;vertical-align: middle;display: inline-block; font-size: 24px; line-height:22px; color: #393939;margin-bottom: 10px; font-weight: 300;font-family: Proxima Nova, sans-serif;"> <div style="padding-left:50px"> <span style="max-width:555px;display: inline-block;overflow: hidden; white-space: nowrap;text-overflow: ellipsis;line-height: 1; height: 25px; margin-top: -3px;">Bizible Online an Offline Touchpoints with Pathfactory</span> <span style="position:relative;top:-3px;font-size: 16px; margin-top: -6px; line-height: 24px;color: #393939; font-weight: 300;"> by Jackie Gragnola</span> </div> </h1> <div style="position: relative; height: 0;overflow: hidden; height: 400px; max-width: 800px; min-width: 320px; border-width: 1px; border-style: solid; border-color: #d8d8d8;"> <div style="position: absolute;top: 0;left: 0;z-index: 10; width: 600px; height: 100%;background: url(https://murally.blob.core.windows.net/thumbnails/gitlab2474/murals/gitlab2474.1597182505968-5f331229ffb2423070d75f73-4b73eb23-af5f-435c-8bd1-8181147a68af.png?v=c974be40-95fe-4d07-b865-12e38e430e73) no-repeat center center; background-size: cover;"> <div style="position: absolute;top: 0;left: 0;z-index: 20;width: 100%; height: 100%;background-color: white;-webkit-filter: opacity(.4);"> </div> <a href="https://app.mural.co/t/gitlab2474/m/gitlab2474/1597182505968/6c8778e0d022161c22d9a3530e47a110e6cd5ef0" target="_blank" rel="noopener noreferrer" style="transform: translate(-50%, -50%);top: 50%;left: 50%; position: absolute; z-index: 30; border: none; display: block; height: 50px; background: transparent;"> <img src="https://app.mural.co/static/images/btn-enter-mural.svg" alt="ENTER THE MURAL" width="233" height="50"> </a> </div> </div> </div>

## Bizible Reports in SFDC

Below are some frequently used bizible reports in SFDC and their use cases.

### Use case: Track registration by source for GitLab owned gated landing pages

**Bizible report type used: Bizible person with Bizible touchpoints (Custom)**

Below are step-by-step instructions on how to track registration by driving channel for zoom webcasts, where the registration is set up on about.gitlab or Marketo pages.

- Step 1: Click SFDC report tab.
- Step 2: Create new report. In the search bar, type and select report type:`Bizible person with Bizible touchpoints (Custom)` and click `create`.
- Step 3: Within the SFDC report, make sure at the top the filters as set as `Show All bizible persons` and `Date Field Range is set to All Time`.
- Step 4: Add filter:  `Form url contains [insert webcast landing page unique identifier]` (e.g: Form url contains automate-security-ci)
- Step 5: Select summary format and group by `Marketing Channel - Path`.


Training Video:

<iframe width="560" height="315" src="https://www.youtube.com/embed/VbmqYu7WFOU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
