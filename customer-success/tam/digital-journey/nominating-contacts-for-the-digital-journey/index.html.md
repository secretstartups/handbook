---
layout: markdown_page
title: "Nominating Contacts for the Digital Journey"
---

Currently the digital onboarding sequence is available to paying customers in Commercial that are less than 20,000 ARR and for EMEA customers regardless of size that may have language barriers that cause them to not want to engage in calls and meetings.


## Adding a Contact to the Digital Onboarding Sequence
To add a contact please follow these steps:
1. Find the relevant contact in Salesforce
1. Edit the 'Role' field 
1. Scroll through the picklist and select 'Technical' 
1. Save 

## Process Following Contact Role Assignment:
1. There is a campaign in Gainsight via the Journey Orchestrator that listens on a daily basis for new contacts
1. The conditions of this campaign are:
    1. Subscription start date =<30 days
    1. Segment = MM, SMB OR Region = EMEA
    1. Contact role = technical
1. The campaign will not send to the same contact more than once
