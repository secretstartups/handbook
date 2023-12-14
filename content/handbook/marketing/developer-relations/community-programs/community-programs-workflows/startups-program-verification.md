---

title: "GitLab for Startups Program Verification"
description: "This page contains details regarding the verification process for the GitLab for Startups program."
---







# Overview
This page contains details regarding the verification process for the [GitLab for Startups](/solutions/startups/) program.

Please see the [Community Programs Application Workflow](/handbook/marketing/developer-relations/community-programs/automated-community-programs) for complete details on the application process.

# Forms
We use a Marketo form with the following fields:

- First Name
- Last Name
- Email Address
- Country (drop down list)*
- Company Name
- Billing Address
- City
- Postal Code
- Country (drop down)
- Please provide a crunchbase, pitchbook, or y-combinator profile. alternatively, upon contact, we will ask you to provide financial statements or any other reasonable substantiation to display your current funding status.
- Choose your GitLab product
- How many seats are you requesting
- Do you want to purchase support (checkbox)
- Marketing email opt-in (checkbox)

(*) Note: US Embargoed countries are not on the list. SheerID is not able to separate out the two different regions in Ukraine so we have asked them to remove Ukraine entirely from the list of countries. If someone from Ukraine does want to apply, they will need to contact us directly and we will determine if they qualify based on the region of origin.

##Legal Agreement
GitLab for Startups program members are subject to the same terms and conditions as regular customers since this program only allows them to have 12 months free. When the promotion period ends, startups will have the option of becoming regular paid customers.

# Verification flow

We currently only accept VC or Accelerator backed Startups who have not been a paying GitLab customer within one calendar year. 

We categorize their approval offering by two different funding qualifications 
- Seed Stage: Less than $5 million USD in funding 
- Early Stage: Greater than $5 million but less than $20 million USD

Startups must submit proof of assocaition to a VC or Accelerator fund, along with current funding status. The easiest way to obtain this information is a crunchbase,pitchbook,YC profile link which should be submitted upon application.
    

Here are some common workflows and how to qualify a Startup for the program:

1. Review application within Zendesk " Startups " view

Example: User Did not submit complete application 
Zendesk Actions  
Use Macro: "Funding Info"
Salesforce action: 
- 1. Open lead / contact in the ticket
- 2. Ctrl F "Startups Program Status" 
- 3. Change the status to Funding Docs Requested

2. User Submitted application with link to crunchbase or funding Status (Complete Application)
- What is their funding amount? If >$5 Million USD they are deemed Seed Stage. 
- *Seed Stage Flow*
- 1. Use Seed stage Macro to send over welcome email to customer
- 2. Insert a coupon code from the Coupon code sheet within the macro
- 3. Review Name, and fields to ensure correctly completed

2. Salesforce action: 
- 1. Open lead / contact in the ticket
- 2. Ctrl F "Startups Program Status" 
- 3. Change to "Qualified" Seed Y1


If they do not qualify, send them the [Startups:: Rejection macro](/handbook/marketing/developer-relations/community-programs/community-program-applications/email-and-zendesk-macros/#startups-startups-rejection) and offer to connect them to sales via the [Sales handoff process](/handbook/marketing/developer-relations/community-programs/community-program-applications/#handoff-process-to-sales).
