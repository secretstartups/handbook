---
layout: handbook-page-toc
title: "Vartopia"
description: "Partner Deal Registration"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Vartopia Overview

Vartopia is a partner lead sharing and deal registration system designed to maximize the value of [GitLab partner program](https://about.gitlab.com/handbook/resellers/) for channel partners. Partner lead sharing is part of the Prospect Module, while deal registration is part of the New Registrations and Registration Module.

## Prospect Module

### Channel Partner Lead Flow Overview
Channel Partners can work with the Channel and Alliance Marketing team to create campaigns that will be shared to the Vartopia module. The [campaign types](/handbook/marketing/channel-marketing/partner-campaigns/#types-of-partner-campaigns) include Joint GitLab and Partner Events, Self-Managed Free Trials, and MDF funded campaigns. The flow starts from Marketo > Salesforce > LeanData > Vartopia.

The partner lead is: 
1. Created in Marketo via list import or form submission,
2. Synced SFDC via Salesforce Campaign Sync,
3. Assigned to `Partner Queue` via LeanData,
4. Added to the Prospect Module in Vartopia. 

#### Partner SLAs
(WIP - Future state) Partners have 5 business days to accept a lead once they are assigned the lead in Vartopia. After accepting, they then have 10 business days to revise the lead status before the lead is re-routed back to GitLab for follow up.

### Vartopia Sync Requirements
In order for the Partner to be able to see and action the lead in Vartopia, the SFDC record must have the following fields updated. Vartopia calls SFDC every hour looking for updates to the SFDC record.
1. `Vartopia Partner Account` not equal to `NULL` (set by Marketo)
1. `Prospect Share Status` = `Sending to Partner` (set by LeanData)
1. `Partner Prospect Status` = `Qualifying` (set by LeanData)

Once synced sucessfully between systems, the `Vartopia Transaction Id` in SFDC will update from Vartopia. If this ID is missing, the lead did not sync correctly. Make sure that the fields above are correctly populated, and if they are not, reach out to Vartopia support.

When assigned a lead in Vartopia, the admin will receive an email alert with information about the lead and SLAs attached to it. The `Vartopia Prospect Id` (ex. L-555555) is a unique lead number identified populated by SFDC that shows in Vartopia and SFDC. We can use this as a non-PII identifier in both systems.

Watch [this video](https://youtu.be/BmmiH_ctALk) for step by step instructions where partners can view, accept, reject, re-assign and convert leads to deal registration.

#### Vartopia Access
The account in SFDC must be set to `Vartopia Partner Account: Vartopia Access = Yes` in order to be passed leads. If that field is marked false, a SFDC error will occur when `Vartopia Partner Account` tries to be set. If this error occurs, the lead will not sync from marketo to SFDC, or if they are already existing in SFDC, that field will not be populated.

### SFDC Lead/Contact Page Layout

To retrieve information on a specific lead or contact, you can review the `Partner Lead Sharing Information` in Salesforce where the `Vartopia Partner Account`, `Prospect Share Status`, `Partner Prospect Status` and more can be found.

### Field Glossary

#### SFDC Partner Prospect Admin 
This SFDC field in the partner account MUST be filled in or else the records will be passed to no one. 

#### Prospect Share Status 
When a prospect is ready to be shared with a partner there are 2 fields related to the sharing process. 

The `Prospect Share Status` governs the sharing of the lead and the receipt of the lead by the partner. The prospect share status has statuses that are set by both the manufacturer and the partner.

1. **Sending to Partner**: This is the initial status set when sharing a lead to a partner. This status is set by GitLab.
1. **Pending**: This is an automated status, set when the lead is synced to the partner facing system. As part of the sync flow, the system sets the status to pending in both the partner facing system and SFDC. It is visible to both the reseller and the MFG.
   a. Meaning in SFDC: Pending indicates to the MFG that the lead has been successfully shared.
   b. Meaning in partner facing system: Pending indicates to the reseller they have a new lead shared from the MFG that they now need to accept or reject.
1. **Accepted**: Indicates the reseller has accepted the lead and intends to work the opportunity. This status is automatically updated in SFDC
1. **Rejected**: Indicates the reseller has refused the lead. This status is automatically updated in SFDC
a. *Note: rejecting a prospect immediately removes the prospect from the resellers’ system. They no longer have any visibility to the prospect. The sync ID is cleared from the prospect record in SFDC, and the record is ready to be assigned to a new reseller. The prospect will be in Rejected and Qualifying Status. A new partner can be selected, and the Share Status set back to “Sending to Partner” to reshare the prospect. 
1. **Recall**: Indicates the prospect is being recalled by the MFG. This is set by the MFG in SFDC. When the system syncs this will remove the prospect from the resellers view. It will also clear out the assignment fields and sync ID making the prospect ready to be shared with a different reseller. 
a. *Note: There is no alert or notification to a reseller when a prospect is recalled.

#### Partner Prospect Status

The `Partner Prospect Status` is updated by the partner and identifies the status of the lead as the partner works it though the sales process.

1. **Qualifying**: Indicates the reseller is working on the lead.
a. *Note: This status is initially set by the MFG when sharing the prospect.
It is visible to both the MFG and the reseller. The prospect remains in qualifying until updated by the reseller.
1. **Qualified**: Indicates the reseller has engaged the prospect and determined there is a valid opportunity. The status is automatically updated in SFDC.
1. **Disqualified**: Indicates the reseller has determined the prospect is not a valid opportunity. The status is automatically updated in SFDC.
1. **Converted to DR**: Indicates the reseller has converted the prospect to a deal. 

#### Vartopia Partner Account

`Vartopia Partner Account` is a lookup field based on the Account ID (18) in Salesforce. This field shows the partner account in which the lead is associated with via Vartopia. 

#### Vartopia Timestamps

1. [Vartopia] Created Date - this field is used to collect a time and date the partner lead is created in Vartopia. This is when `Prospect Share Status` = `Pending`. 
2. [Vartopia] Accepted Date - this field is used to collect a time and date the partner lead is accepted in Vartopia. This is when `Prospect Share Status` = `Accepted`.
3. [Vartopia] Recall Date - this field is used to collect a time and date the partner lead is recalled in Vartopia. This is when `Prospect Share Status` = `Recall`.

**Note: The timestamps were introduced on December 15, 2022. Any status updated prior to December 15, 2022 will not have a timestamp.**

### Scheduled Reports

Creating scheduled reports that sends to channel partners' inbox at the start of the week is the best way to stay on top of leads.

Follow the steps to create a report that summarizes new leads that are assigned to `Partner Prospect Admin`.

1. Log into Vartopia 
1. Go "Prospect" view, find "Custom Reports" located on the bottom left and click "New".
1. Create New Customer Report
   1. Update Report Name
   1. Update Advanced Filtering 
      1. Share Status Filter - Select `Pending`
      1. Status Filter - Select `Qualifying`
      1. Update Assigned User 
      1. Update the Selected Columns
   1. Update Date Filter
      1. Update Created Within (Number of days)
   2. Update Scheduling and Distribution
      1. Frequency - Select Weekly
      1. Day of Week - Monday
      1. Update the Distribution List
1. Click "Save Report"

### FAQ

**Q**: As an employee at GitLab, how do I get access to Vartopia? <br>
**A**: Vartopia is a platform strictly for Channel Partners. An administrative account is not a feature that is currently available as part of their solution.

**Q**: What notifications are active for Channel Partners? <br>
**A**: Presently real-time self-managed free trial notification are the only active notifications. The notification sends to the `Partner Prospect Admin` via Salesforce. We recommend the Channel Partner to [create scheduled reports](/handbook/marketing/marketing-operations/vartopia/#scheduled-reports) to review the new leads.

**Q**: What type of channel partners can use Vartopia? <br>
**A**: Vartopia is meant for resellers. We can't pass leads to distributors.

**Q**: How do you know if a partner lead has been synced to Vartopia? <br>
**A**: When a lead is synced to Vartopia, Vartopia will created for `Vartopia Transaction ID`.

**Q**: How do you tell apart a partner lead from a regular lead? <br>
**A**: `Partner Managed` = `True` for partner leads.


