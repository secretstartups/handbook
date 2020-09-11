---
layout: handbook-page-toc
title: "LeanData"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview     
LeanData is an application used within Salesforce (SFDC) to process and assign [lead](#lead-routing-workflow) and [account](#account-routing-workflow) record types. LeanData allows for the creation of dynamic and complex record routing to support Go-to-Market (GTM) strategy.  

## Lead routing workflow
The LeanData lead routing flowbuilder can broken into three major sections: [record validation](#record-validation), [lead to account match](#lead-to-account-match) and [unmatched lead](#unmatched-lead). 

### Record validation
This initial phase reviews new and updated lead records to ensure they meet the criteria to route to an SDR. These checks include confirming the requirements below.
#### Leads were created by an admin user
#### Score thresholds are met
As of 2020-09-10, AMER, ABM and EMEA leads are eligible to route to aligned SDRs when their `Person Score` is greater than or equal to 0. APAC and LATAM leads are eligible to route when their `Person Score` is greater than 15.   
#### Company information is available
#### Last Interesting Moment listed does not require specialized routing or supression from SDR organization

### Lead to account match
Records that meet all [record validation](#record-validation) criteria and can be matched to an existing Salesforce account by LeanData are then assessed using the workflow below. If LeanData is able to identify the SDR responsible for engaging the lead, the record is assigned. If LeanData is not able to identify the aligned SDR, the lead progresses to the [unmatched lead](#unmatched-lead) workflow.
- **`SDR Assigned` match** - Used to route ABM, PubSec, APAC, EMEA Large and AMER Mid-Market leads. The custom account object field `SDR Assigned` is populated with SDR responsible for engaging and qualifying the lead.
- **Owner mapping available** - Used to route leads from `Named` accounts. Owner mappings are maintained within LeanData linking SDRs aligned to `Named` accounts with an account owner. If a lead is matched to an account with an owner mapping available, the record is assigned to the SDR listed in the owner mapping.
- **[TSP]-based alignment** - Used to route EMEA Mid-Market leads. LeanData uses a combination of `[TSP] Sub-Region`, `[TSP] Area` and `Account Owner` fields on matched accounts to route leads.

### Unmatched lead


## Account routing workflow
The LeanData account routing flowbuilder leverages LeanData's Territory Management functionality to populate or update the `[TSP] Territory`, `[TSP] Region`, `[TSP] Sub-Region`, `[TSP] Area`, and `[TSP] Approved Next Owner` fields on the account object.

## Advanced Functions  

### Owner Mapping

Extracted from LeanData:  
> Map an existing account owner to a new account team owner in LeanData Router for leads routed to matched accounts. This is typically used by organizations with account teams where SDRs first qualify leads for account exec owners.

The [Sales Development team](/handbook/marketing/revenue-marketing/sdr/) is responsible for qualification of all records both inbound/outbound.   

Utilizing **Owner Mapping** an ACCOUNT owner (i.e. Strategic Account Leader (SAL)) can be mapped to a designated Sales Development Representative (SDR), which will route any matched records to the SDR for qualification before handing it off to a SAL.   

The **Owner Mapping** functionality is leverated in the `Route to Matched Account` node of the [LEAD workflow](#lead-workflow).  

More information about [Record Ownership](/handbook/business-ops/resources/#record-ownership). 

### Need to make a change to lead routing? 
Open an issue using our [LeanData change request issue template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=leandata_change_sdralignment).