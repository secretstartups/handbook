---
layout: handbook-page-toc
title: "Bizible"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

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




