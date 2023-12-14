---

title: "GitLab for Startups Program Verification"
description: "Details of the verification process for the GitLab for Startups Program."
---

# Overview

This page contains details regarding the verification process for the [GitLab for Startups](/solutions/startups/) program.
Please see the [Community Programs Application Workflow](/handbook/marketing/developer-relations/community-programs/automated-community-programs) for complete details on the application process.

Currently, only VC- or accelerator-backed startups are eligibile for the program.
Startups are not eligible for the program if they have been paying GitLab customers within one calendar year. 

We categorize their approval offering by two different funding qualifications:

- Seed Stage: Less than $5 million USD in funding 
- Early Stage: Greater than $5 million but less than $20 million USD

Startups must submit proof of association with a VC or accelerator fund, along with current funding status.
The easiest way to obtain this information is a Crunchbase, PitchBook, or Y Combinator profile link, which should be submitted upon application.

# Forms

Our application is a Marketo form with the following fields:

- First Name
- Last Name
- Email Address
- Country (drop down list)*
- Company Name
- Billing Address
- City
- Postal Code
- Country (drop down)
- Please provide a crunchbase, pitchbook, or y-combinator profile. Alternatively, upon contact, we will ask you to provide financial statements or any other reasonable substantiation to display your current funding status.
- Choose your GitLab product
- How many seats are you requesting
- Do you want to purchase support (checkbox)
- Marketing email opt-in (checkbox)

(*) Note: US Embargoed countries are not on the list. SheerID is not able to separate out the two different regions in Ukraine so we have asked them to remove Ukraine entirely from the list of countries. If someone from Ukraine does want to apply, they will need to contact us directly and we will determine if they qualify based on the region of origin.

## Legal Agreement

GitLab for Startups Program members are subject to the same terms and conditions as regular GitLab customers, since this program only grants them 12 months of GitLab Ultimate for free. When the promotion period ends, startups will have the option of becoming regular paid customers.

# Verification Flow

Here are some common workflows associated with managing the program, including qualifying a startup:

1. Review application within Zendesk "Startups" view

Scenario: User did not submit complete application  
**Zendesk Actions**  
Use macro: "Funding Info"  
Thenm in Salesforce: 

- 1. Open lead / contact in the ticket
- 2. Ctrl F "Startups Program Status" 
- 3. Change the status to Funding Docs Requested

2. User Submitted application with link to crunchbase or funding Status (Complete Application)

- What is their funding amount? If less than $5 Million USD they are deemed Seed Stage. 
- *Seed Stage Flow*
- 1. Use "Seed stage" Macro to send over welcome email to customer
- 2. Insert a coupon code from the Coupon code sheet within the macro
- 3. Review Name, and fields to ensure correctly completed
- Salesforce action: 
- 1. Open lead / contact in the Zendesk ticket
- 2. Ctrl F "Startups Program Status" 
- 3. Change to "Qualified" Seed Y1

 - *Early Stage Flow* If less than $20 Million USD and greater than $5 Million USD they are deemed Early Stage. 
 - 1. Use "Early Stage" Macro within Zendesk 
 - 2. Set ticket status to open 
- Salesforce action: 
 - 1.Open lead / contact in the Zendesk ticket
 - 2. Ctrl F "Startups Program Status" 
 - 3. Change to "Qualified" Early Y1
 - 4. Convert the Lead to an Opp 
 - 5. Rename the Opportunity as "Customer Name, Seats, License Type, Startups - Early - Y(1) 
 - 6. Chatter Mktgops to assign the correct AE 
 - 7. Once the AE has been confirmed handoff the customer via the Zendesk Ticket

For more clarification regarding the Startups sales process please refer to this [highspot page](https://gitlab.highspot.com/items/6410e355fb9e0fe9d2823fcc?lfrm=irel.1#3)

If they do not qualify, send them the [Startups:: Rejection macro](/handbook/marketing/developer-relations/community-programs/community-program-applications/email-and-zendesk-macros/#startups-startups-rejection) and offer to connect them to sales via the [Sales handoff process](/handbook/marketing/developer-relations/community-programs/community-program-applications/#handoff-process-to-sales).
