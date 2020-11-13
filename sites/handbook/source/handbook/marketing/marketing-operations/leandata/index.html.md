---
layout: handbook-page-toc
title: "LeanData"
description: "LeanData is an application used within Salesforce (SFDC) to process and assign lead and account records."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview     
LeanData is an application used within Salesforce (SFDC) to process and assign [lead](#lead-routing-workflow) and [account](#account-routing-workflow) records. LeanData allows for the creation of dynamic and complex record routing to support Go-to-Market (GTM) strategy.  

LeanData assigns each lead record to the member of the Sales Development (SDR) organization who is responsible for engagement and qualification of that individual using the [lead routing workflow](#lead-routing-workflow) outlined below. LeanData assigns each account record to the appropriate member of the Sales organization using the [account routing workflow](#account-routing-workflow) outlined below. Other Salesforce objects, including the contact object, are updated and maintained through workflows and processes outside of LeanData. 

## Lead routing workflow
The LeanData lead routing flowbuilder can broken into three major sections: [record validation](#record-validation), [lead to account match](#lead-to-account-match) and [unmatched lead](#unmatched-lead). This flowbuilder is live, meaning it monitors lead records as they're created or updated. 

### Record validation
This initial phase reviews new and updated lead records to ensure they meet the criteria to route to an SDR. These checks include confirming the requirements below.
#### Leads were created by an admin user

#### Score thresholds are met
Leads with a `Person Score` of greater than or equal to 0 are routed to SDRs for follow up. Note this is a change from previous `Person Score` thresholds and currently only impacts new leads, not historically created records.
#### Company information is available
#### Last Interesting Moment listed does not require specialized routing or supression from SDR organization

### Lead to account match
Records that meet all [record validation](#record-validation) criteria and can be matched to an existing Salesforce account by LeanData are then assessed using the workflow below. If LeanData is able to identify the SDR responsible for engaging the lead, the record is assigned. If LeanData is not able to identify the aligned SDR, the lead progresses to the [unmatched lead](#unmatched-lead) workflow.
#### `SDR Assigned` match
Used to route ABM, PubSec, APAC, EMEA Large and AMER Mid-Market leads. The custom account object field `SDR Assigned` is populated with SDR responsible for engaging and qualifying the lead.
#### Owner mapping available
Used to route leads from `Named` accounts. Owner mappings are maintained within LeanData linking SDRs aligned to `Named` accounts with an account owner. If a lead is matched to an account with an owner mapping available, the record is assigned to the SDR listed in the owner mapping.
#### [TSP]-based alignment 
Used to route EMEA Mid-Market leads. LeanData uses a combination of `[TSP] Sub-Region`, `[TSP] Area` and `Account Owner` fields on matched accounts to route leads.

### Unmatched lead
Coming soon

## Account routing workflow
The account routing flowbuilder leverages LeanData's Territory Management functionality to populate or update the `[TSP] Territory`, `[TSP] Region`, `[TSP] Sub-Region`, `[TSP] Area`, and `[TSP] Approved Next Owner` fields on the account object. LeanData monitors for changes to the `[TSP] Last Update Timestamp` field to know when an account record is ready to be processed. Details about the TSP process can be found on the [Sales Operations handbook page](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/#territory-success-planning-tsp). 

## Need to make a change to lead routing? 
Open an issue using our [LeanData change request issue template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=leandata_change_sdralignment).