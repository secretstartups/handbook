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
This initial phase reviews new and updated lead records to ensure they meet the criteria to route to an SDR. These checks include confirming:
- [New leads only] Lead record was created by an integration user and the `Do Not Route?` checkbox is not checked.
- [New leads only] `Person Score` of the lead record is greater than or equal to 0. Note this means leads without a `Person Score` or leads that have a `Person Score` less than 0 will continue to be owned by the integration user that created the record. Also, the current `Person Score` threshold is a change from previous routing rules and at the moment, only impacts new leads, not historically created records.
- [New leads only] Company information is available and records missing company data have a standardized response in the `Company` field.
- [Updated leads only] No active SDR engagement with the lead. This is checked by confirming the lead does not have a `Lead Status` of `Accepted`, `Qualifying`, or `Qualifed` and the `Actively Being Sequenced` checkbox is not checked.
- [New and updated leads] Most recent `Last Interesting Moment` does not require specialized routing or supression from SDR organization.

### Lead to account match
Records that meet all [record validation](#record-validation) criteria and can be matched to an existing Salesforce account by LeanData are then assessed using the workflow below. If LeanData is able to identify the SDR responsible for engaging the lead, the record is assigned. If LeanData is not able to identify the aligned SDR, the lead progresses to the [unmatched lead](#unmatched-lead) workflow.
- **Owner mapping available** - When a SAL or AE aligns directly to an SDR, LeanData's [owner mappings functionality](https://leandatahelp.zendesk.com/hc/en-us/articles/360022422813-Routing-Owner-Mappings-Guide) is used to assign leads to SDRs. This mapping lives in LeanData and is not visibly reflected in Salesforce without access to the LeanData application. Because there is not always a direct 1:1 alignment between SALs / AEs and SDRs, the owner mappings functionality is only one compontent of our lead routing workflow for leads that match to accounts. 
- **`SDR Assigned` match** - The custom account object field `SDR Assigned` is populated with SDR responsible for engaging and qualifying the lead. When a lead is matched to a PubSec account or there is not an owner mapping available, LeanData references the `SDR Assigned` field on the matched account record and routes the lead to the SDR listed, if the field is populated. This field is used as a secondary routing mechanism for leads that match to Salesforce accounts because the `SDR Assigned` field is not maintained by an automated workflow and therefore relies on manual updates by the SDR organization or Marketing Operations team.

### Unmatched lead
Leads that match to accounts but are not able to be routed via owner mappings or the `SDR Assigned` field as well as leads that do not match to accounts are routed using LeanData's [territory management functionality](https://learn.leandata.com/datasheets-how-leandata-works-its-magic/territory-management-datasheet).

## Account routing workflow
The account routing flowbuilder leverages LeanData's territory management functionality to populate or update the `[TSP] Territory`, `[TSP] Region`, `[TSP] Sub-Region`, `[TSP] Area`, and `[TSP] Approved Next Owner` fields on the account object. LeanData monitors for changes to the `[TSP] Last Update Timestamp` field to know when an account record is ready to be processed. Details about the TSP process can be found on the [Sales Operations handbook page](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/#territory-success-planning-tsp). 

## Lead routing request or question?

### Request an SDR alignment update
New hire? Territory change needed? If requesting a proactive update to the lead routing workflow, open an issue using the [LeanData change request issue template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=leandata_change_sdralignment).

### Experiencing a lead routing problem?
Lead volume low? Receiving leads for an account or territory you're not assigned to? If you think you've found a bug :bug: in existing lead routing logic, open an issue using the [bug request issue template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=bug_request). 

### General questions
Open a [Marketing Operations issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new) following the format in the issue template. 