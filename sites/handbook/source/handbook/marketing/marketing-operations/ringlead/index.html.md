---
layout: handbook-page-toc
title: "Ringlead"
description: "The Ringlead platform orchestrates Salesforce and Marketing Automation processes like managing duplicates, data normalization, segmentation, enrichment."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### About Ringlead

RingLead is a SaaS application designed to enable sales and marketing to become efficient and productive.

The Ringlead platform orchestrates Salesforce and Marketing Automation processes like managing duplicates, data normalization, segmentation, enrichment.

As an introduction, below are a few items that will help with using the platform and understand how their tools help us reach our data goals.

<table>
  <tr>
        <td style = "text-align: center;"> <b>Product</b> </td> 
                 <td style = "text-align: center;"> <b>Overview</b> </td> 
                 		<td style = "text-align: center;"> <b>Feature</b> </td> 
                 				<td style = "text-align: center;"> <b>Description </b> </td> 
   </tr>
   <tr>
        <td rowspan = "4" style = "text-align: left; vertical-align: top;"> <b> Cleanse </b> </td>
      	<td rowspan = "4" style = "text-align: left; vertical-align: top;">Cleanse your database by removing costly duplicates or hundreds of custom object records while creating data records that are standardized and easily update with Cleanse. </td> 
          	<td style= "text-align: left; vertical-align: top;"> <a href = "https://ringlead.atlassian.net/wiki/spaces/DUG/pages/352714791/Deduplicate"> Deduplication</a> </td> 
        		<td style= "text-align: left; vertical-align: top;"> Scan	your database for duplicates based on specific criteria 											that you define. Once you've identified your duplicates, easily merge them saving you storage costs and time. </td> 
   </tr>
     <tr>
         <td style= "text-align: left; vertical-align: top;"> <a href = "https://ringlead.atlassian.net/wiki/spaces/DUG/pages/676462594">Normalize/Segment</a> </td>  
        	<td style= "text-align: left; vertical-align: top;"> Standardize your	addresses, websites, phone numbers, and more to keep data easy to	navigate and search on </td>
  </tr>
     <tr>
          <td style= "text-align: left; vertical-align: top;"> <a href = "https://ringlead.atlassian.net/wiki/spaces/DUG/pages/229539841/Mass+Update">Mass Update</a> </td>  
        	<td style= "text-align: left; vertical-align: top;"> Update fields on custom and standard objects after filtering and defining your new values </td>
   </tr>
     <tr>
          <td style= "text-align: left; vertical-align: top;"> <a href = "https://ringlead.atlassian.net/wiki/spaces/DUG/pages/229539841/Mass+Update">Mass Delete</a> </td>  
        	<td style= "text-align: left; vertical-align: top;"> Clean out your Salesforce by deleting custom and standard objects </td>
  </tr>
     <tr>
         <td rowspan = "6" style= "text-align: left; vertical-align: top;"> <b>Enrichment </b> </td>
        	<td rowspan = "6" style= "text-align: left; vertical-align: top;"> Make the most out of the data you have and fill in the gaps where you don't. Company firmographics and contact data can be completed and updated with this tool. Use your existing vendor, or let us help you find the best data from any vendor. </td> 
        	<td style= "text-align: left; vertical-align: top;"> <a href = "https://ringlead.atlassian.net/wiki/spaces/DUG/									pages/1526366213/Mass+Enrich">Mass Enrich</a> </td> 
        	<td style= "text-align: left; vertical-align: top;"> Enrich records directly from any data vendor. </td> 
   </tr>
     <tr>
          <td style= "text-align: left; vertical-align: top;"> <a href = "https://ringlead.atlassian.net/wiki/spaces/DUG/pages/67604991/					Intelligent+Forms">Intelligent Forms</a> </td>  
          <td style= "text-align: left; vertical-align: top;"> Allow web form users	to spend less time entering data with a RingLead powered address search	right on your form </td>
   </tr>
     <tr>
          <td style= "text-align: left; vertical-align: top;"> <a href = "https://ringlead.atlassian.net/wiki/spaces/DUG/pages/279805953/Enrich+API">API Enrichment</a> </td>  
        	<td style= "text-align: left; vertical-align: top;"> Enable expanded data	such as addresses and company information to come in with your form submissions </td>
  </tr>
     <tr>
         <td style= "text-align: left; vertical-align: top;"> <a href = "https://ringlead.atlassian.net/wiki/spaces/DUG/pages/646774785/					Unique+Entry+Enrichment">On-Demand Enrichment</a> </td>  
      	<td style= "text-align: left; vertical-align: top;"> Enrich data directly within your Salesforce Lead, Contact, and Account objects </td>
  </tr>
  <tr>
        <td style= "text-align: left; vertical-align: top;"> <a href = "https://ringlead.atlassian.net/wiki/spaces/DUG/pages/848494823/					Vendor+Key+Management">Outside Enrichment Vendor</a> </td>  
      	<td style= "text-align: left; vertical-align: top;"> Enrich data using a data vendor outside of RingLead. </td>
   </tr>
  <tr>
        <td style= "text-align: left; vertical-align: top;"> <a href = "https://ringlead.atlassian.net/wiki/spaces/DUG/pages/1376518149/					Package+Manage">Package Manage</a> </td>  
      	<td style= "text-align: left; vertical-align: top;"> Having multiple vendors with multiple delivery mechanisms can be challenging and Package Management offers a way to consolidate these into an easy to use and codeless system. </td>
  </tr>
</table>
 
Currently, Gitlab, uses Ringlead's Cleanse capabilities, specifically Deduplication, while the enrichment is done through [Zoominfo](https://about.gitlab.com/handbook/marketing/marketing-operations/zoominfo/), our SSOT when it comes to lead/contact enrichment. 

### Set Up & Access

Currently, Sales & Marketing Operations have access to Ringlead. To request access [please follow the access request process](https://about.gitlab.com/handbook/business-ops/team-member-enablement/onboarding-access-requests/access-requests/) as outlined in the business operations handbook.

### Ways to access Ringlead & Help

Once you have access you can follow [this link](https://dms.ringlead.com/auth/login/?next=/) to login. For more information about Ringlead and it's capabilities please visit the [Ringlead Help center](https://ringlead.atlassian.net/wiki/spaces/DUG/overview). 

### Account Deduplication

Account deduplication is currently being managed by Sales Ops. The deduplication job applies for Prospect Accounts w/o ZI Company ID and runs weekly every Saturday at 12:00 PDT. 

### Lead to Lead, Contact to Contact Deduplication

Lead to Lead and Contact to Contact deduplication is currently being managed by Marketing Ops and is in the final testing/troubleshooting phase before it's going to be rolled out. This is  will also be done through scheduled runs for different sub-sets of our leads/contacts databases with the goal of a full refresh/merge of duplicate of leads and contacts every quarter. 

### Lead to Contact Deduplication

Just as Lead to Lead and Contact to Contact deduplication, Lead to Contact Deduplication sits with Marketing Ops and is the final deduplication phase. As the naming implies this will make sure we have no duplicates between both objects (leads and contacts). This phase is to be finalised by end of Q3. 

## Current Process

The current process is currently being ironed out and will be detailed here once completed. 
