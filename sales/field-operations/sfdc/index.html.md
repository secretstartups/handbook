---
layout: handbook-page-toc
title: "Business Operations - Salesforce Reference"
description: "The purpose of this page is to provide insight into the internal workings of our Salesforce instance, how fields are populated, how fields are calculated, where they are used and more."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Page FYI 
- UPDATE MESSAGE - JAN, 13, 2021 - THIS PAGE IS CURRENTLY UNDERGOING MAINTENANCE - WE WILL BE UPDATING THIS PAGE WITH THE LATEST INFORMATION WHICH ENTAILS DELETING FIELDS THAT NO LONGER EXIST, UPDATING THE LOGIC THAT IS USED TO POPULATE FIELDS AND ADDING NEW KEY FIELDS. IF YOU SUSPECT THAT INFORMATION ON THIS FIELD IS INCORRECT OR HAVING QUESTIONS ABOUT THESE FIELDS PLEASE COMMENT ON [THIS ISSUE](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/1264)

## Purpose
The purpose of this page is to provide insight into the internal workings of our Salesforce (SFDC) instance, how fields are populated, how fields are calculated, where they are used etc. This page does not serve to describe how the systems should be used by our internal stake holders. Instead it is meant to be used as a reference point for continual development by our internal ops teams as well as a reference point for all GitLab team-members as to the source of the information that is shown within SFDC. The goal of this document is not to document every field that exists within SFDC but instead to highlight the hidden process that affect fields that meet 1 or more of the following criteria  

1. The main fields that are leveraged by the teams (Ex: IACV) 
1. Fields that are updated via automation rules (Ex: Sales Segmentation) 
1. Fields that are sourced from other systems (Ex: DiscoverOrg ID vs id)

### Structure of this Document
The structure and sequence of information in this document will follow these guidelines:
## SFDC Object
### SFDC Object - SFDC Field
* Description: What is the information in this field
* Populating: What is the workflow, process builder, tool etc that populates this field
* Use: What are other key process' that rely on this field


## Accounts
### Account - Count of Open ZD Tickets
* Description: This field counts the total number of Zendesk Tickets that are open on an Accounts in SFDC. If the Zendesk Ticket is not deleted and its `Status` is (`New` OR `Open` OR `Pending` OR `On-Hold`) then it is considered open and is included in the count for open tickets on this account. 
* Populating: Via a Rollup Helper Rollup
* Use: TO COME 

### Account - Number of Open Opportunities
* Description: This field counts how many open opportunities there are for an account. If the opportunity is not closed and not deleted then it counts towards this field.
* Populating: Via a Rollup Helper Rollup
* Use: TO COME

### Account - Total Account Value
* Description: This field aims to capture the dollar value that an account has committed to us. It sums the `Amount` field on all opportunities that meet the following criteria. They are all not deleted as well as they are ((Any closed won Opp that is `New Business` OR `Renewal`) OR (Any open `Renewal` Opp))
* Populating: Via a Rollup Helper Rollup
* Use: This field is used to help calculate Gemstone types

### Account - CMRR All Child Accounts
* Description: This field sums all of the CMRR amounts from all of an accounts child records. Its source field is `CMRR This Account`. The filter used is to sum only the `CMRR This Account` amounts that are from Accounts that are `Type`:`Customer`.
* Populating: Via a Rollup Helper Rollup
* Use: TO COME  

### Account - Number of Licenses All Child Accounts
* Description: This filed sums the number of Licenses from the field `Number of License This Account` from all child records to the parent record in SFDC. The filter used is for to Sum only the `Number of License This Account` that are from Accounts that are type `Customer`.  
* Populating: Via a Rollup Helper Rollup
* Use: TO COME  

### Account - CMRR This Account
* Description: This field Sums the MRR from all Zuora Subscriptions that are related with this account. It only sums the MRR from those subscriptions which are not deleted, where the `Status` is `Active` and the `Termination Date` is today or later. 
* Populating: Via a Rollup Helper Rollup
* Use: TO COME  

### Account - Count of Active Subscriptions
* Description: This field counts the number of Zuora Subscriptions that are related with this account. It only counts the subscriptions from subscriptions which are not deleted, the `Status` is `Active` and the `Termination Date` is today or later. 
* Populating: Via a Rollup Helper Rollup
* Use: TO COME

### Account - Count of Billing Accounts
* Description: This field is a count of the number of billing accounts that are associated with this account. The billing account is dictated via Zuora. 
* Populating: Via a Rollup Helper Rollup
* Use: TO COME

### Account - Count of Child Accounts
* Description: This field is a count of the number of accounts that are a child account to this account. This is based off of the `Parent Account` field connection in SFDC between accounts. 
* Populating: Via a Rollup Helper Rollup
* Use: TO COME

### Account - Next Renewal Date
* Description: This field picks the minimum date for any open subscriptions that this account has. It only looks at subscriptions that are related to this account and that are not deleted, where the `Status` is `Active` and the `Termination Date` is today or later. 
* Populating: Via a Rollup Helper Rollup
* Use: TO COME

### Account - Total Invoiced
* Description: This field sums the `ZInvoice Amount Without Tax` field that's associated with an account from its Zuora Invoices where the Zuora invoice is not deleted and the `Invoice Status` is `Posted`.
* Populating: Via a Rollup Helper Rollup
* Use: TO COME

### Account - Oldest Outstanding Invoice Date
* Description: This field taskes the earliest Due Date for the Zinvoice where the Zuora invoice is not deleted, the `Invoice Status` is `Posted`, the `Balance` is > 0 and the `Due Date` is before `Today`
* Populating: Via a Rollup Helper Rollup
* Use: TO COME

### Account - Total Invoiced Outstanding
* Description: This field sums the ZInvoice Balance associated with an account from its Zuora Invoices where the Zuora invoice is not deleted, the `Invoice Status` is `Posted`, the `Balance` is > 0 and the `Due Date` is before `Today`
* Populating: Via a Rollup Helper Rollup
* Use: TO COME

### Account - Total Invoiced Paid
* Description: This field sums the ZInvoice Payment Amount associated with an account from its Zuora Invoices where the Zuora invoice is not deleted and the `Invoice Status` is `Posted`.
* Populating: Via a Rollup Helper Rollup
* Use: TO COME

### Account - Count of Active Subscription Charges
* Description: TO COME
* Populating: Via a Rollup Helper Rollup
* Use: TO COME

### Account - Number of Licenses This Account
* Description: This field sums the number of licenses on for this account from the accounts Zuora Subscription where the Zuora subscription is `Active` and the subscriptions `Effective End Date` is later then `Today`
* Populating: Via a Rollup Helper Rollup
* Use: TO COME

### Account - Products Purchased
* Description: This field is a text rollup that brings in the `Zuora Rate Plan Names` on all `Zuora Product Charges` that are associated with this account where the `Zuora Subscription Product Charge` has an effective end date that is later then `Today` and `Status` of the subscription is `Active`.
* Populating: Via a Rollup Helper Rollup
* Use: TO COME


## Opportunities 
### Opportunity - Number of POV's
* Description: This rollup looks at all POV Objects in SFDC that are related to this opportunity. It counts the number of POVs that an account has gone through as long as the POV object is not deleted. The POVs are related to the account via a lookup field. 
* Populating: Via a Rollup Helper Rollup
* Use:  

### Opportunity - Count of Ultimate or Premium Products
* Description: This field counts the number of products from the related Zuora quote of the number of premium or ultimate products. The Filter that is used here looks at `Quote Charge Summaries` that are not deleted, and the `Names` are "Like" `Ultimate` OR `Premium` and not "Like" `Premium Support`
* Populating: Via a Rollup Helper Rollup
* Use:  

### Opportunity - Count of Professional Services Opportunities
* Description: This field counts the number of Professional Services Opportunities that are associated with this Opportunity. Opportunities are only included in this count if they are not deleted, their opportunity `Record Type` is `Professional Services` (based on the record type ID) and the Opportunity is the `Parent Opportunity` for that opportunity
* Populating: Via a Rollup Helper Rollup
* Use:  

### Opportunity - Count of Primary Contacts
* Description: This field is a count of the number of Primary Contacts there are on the Opportunity record. It only looks at Contact Roles on the opportunity that are marked as the `Primary` contact role on the Opportunity and are not deleted. 
* Populating: Via a Rollup Helper Rollup
* Use:  

