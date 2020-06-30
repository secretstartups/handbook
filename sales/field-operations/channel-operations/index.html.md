---
layout: markdown_page
title: "Channel Operations"
---
## Welcome to the Channel Operations page

## SFDC for Channel Business
 - A new Partner Information section has been added to all opportunities.  This will ensure proper tracking for all channel opportunities when filled in.  If you are working a deal with a GTM route of Channel, please ensure this section is properly reflecting the Partners of the deal.  In the case of a Partner Initiated Opportunity from the partner portal, these sections should already be populated, but please double check before closing your deal.  

## Channel Interim Deal Registration Process

Until the system is fully built out, you’ll need to do some manual steps to approve deal registration.  First, go to this [report](https://gitlab.my.salesforce.com/00O4M000004aAXt), this will show all deal registrations as a lead record in SFDC.
- Find the Area you cover
- Click on the Customer name to access the Lead record
 
**In Lead Record**

You’re now viewing the lead record which will show you the basic information that the partner submitted via the Partner Portal.  To approve this deal registration lead, click on the Convert button at the top.
 
**Click Convert**
 
This will convert a lead to an opportunity.  You’ll need to fill out a few details for the opportunity record. 
Account name - Select End User account record for opportunity or select to create a new end user account.
Opportunity Name -  This is a freeform field, please name the opportunity as you normally would.
 
In the Task Information section, please input “Other” for any blank section
 
**Opportunity is created**
 
- Move opportunity into Sales reps name
- Ensure the Partner Information section is correctly populated.





##  Channel Neutral

To incentivize working with our Channel partners, 'Channel Neutral' means that we will not reduce $ value to individual sellers even if the Channel business reduces total iACV to GitLab (via disocunts or rebates).
More information can be found on the [compensation page](/handbook/sales/commissions/#channel-neutral-compensation).

##  Program Definitions

**Program Compliance**
- For partners to transact, they must join the GitLab Partner Program via the partner portal.
- Non Contracted partners may transact on a one-off basis, only with approval of channel leadership.

**PIO - Partner Initiated Opportunity**
- Any opportunity that was brought to GitLab via a Deal Registration.
- The opportunity must be new to our sales team, and can be for a new or existing customer.
- This is an upfront discount and is dependent on the partners track within the GitLab Partner Program.

**Channel Assist Opportunity**
- Any opportunity where the partner assists our sales team to close the deal.
- This may be a customer demo, an executive introduction meeting, delivery of services, etc.
- This would be a Deal Registration, but for a GitLab sourced opportunity, so it does not qualify for PIO.
- The determination of Channel Assist is at the sales rep determination and tracked via SFDC opportunities.

**Channel Fulfill Opportunity**
- Any opportunity that was fulfilled by a partner but closed independently via the GitLab sales team.
- The partner has only processed the order and didn’t provide any meaningful support to close the deal.

**Services Attach**
- Any partner delivered services that are provided to the end user in support of a GitLab deployment.
- This will result in a 2.5% upfront discount from the product.
- This is stackable for up to three (3) independent services provided by the partner to a single end user.
- This will be administered as an upfront discount from the GitLab license price on the initial sale.
- The partner may sell their own services, after the initial sale, for a rebate of 2.5% of the Net license price for a period of up to nine (9) months.
- The maximum is 7.5% discount or rebate with any combination of upfront or post sales of partner branded services.
- Services may be delivered by a non-Authorized service partner, which will be paid as a referral fee.
- Rebates and referral fees may require CRO approval.

**Services Resale**
- Any partner that resales services that will be delivered by the GitLab Professional Services team.

**Channel Neutral Comp**
- For FY21 the sales team will not absorb any channel partners standard contractual discounts.
- They will be compensated at the non-channel net value of the deal.
- Channel Discount must come from the New Partner Program.  Any discount in excess of partner limits will not be factored into Channel Neutral compensation

**Incumbency Renewal Policy**
- If a partner transacts IACV, when renewal time comes, the partner will own that renewal unless formally communicated by the customer.
- The partner will be required to be program compliant (ie in good credit standing, have provided quarterly updates on customer, review within 30 days of renewal, etc).

**Tender Offers**
- Tender offers are ones where the customers are requesting multiple bids for a project.  
- Each partner bidding should register the deal. Since all partners would be engaged in the sales process and would be creating a bid, all partners qualify for Partner Assist discount (% based on their program track). If the first partner registering the deal was early in with the customer (pre-tender) and introduces the opportunity to GitLab, that partner could earn a Partner Initiated Opportunity (PIO) discount. If the partner earning the PIO is not awarded the deal, they would not receive additional referral compensation.
Any partner offering services would qualify for Services-Attach incentives in addition to any sales discounts for which they would qualify.

**Unauthorized Partners** 
- Unauthorized partners are ones that have not signed a GitLab Partner Agreement.  
- A key goal of the GitLab Channel Program is the success of our authorized partners.  We are developing our channel to provide coverage across geos, customer segments and vertical markets.  Since the program was just launched in April 2020, we have not onboarded enough partners to support every sales opportunity.  As we continue to build out our channel coverage, there will still be a need to utilize one-off, unauthorized partners for specific sales opportunities.  
- For Developed Regions - Most P0 and many P1 countries.  GitLab Sales teams, work with your CAM to identify authorized partners in your region.
GitLab Sales teams should use existing, authorized GitLab partners, including our distributors, whenever possible.
For FY21 Q2 and Q3, one-off partners can provide fulfillment transactions utilizing the Fulfillment contract.  Additional instructions for opportunities sold via fulfillment partners are available in the Handbook.
Q4 and beyond - VP approval required for one-off partner requests.
- For Developing Regions - GitLab Sales teams, work with your CAM to identify authorized partners in your region.
Use fulfillment contract for one-off partner deals
On a quarterly basis, the Channel team will revisit developing countries to determine if there is a continued need for fulfillment partners, or if we have the necessary coverage with authorized partners.

## Partner Applicant Approval / Denial - Granting Portal Acces

When a new partner company registers on the portal, they will receive an email confirming the receipt of their application, and CAMs will receive a New Partner Applicant email from Partnersupport@gitlab.com notifying you there is a new Partner applicant in your region. The first step is to contact the partner and qualify them.

If you want to move forward with onboarding the partner...
- Go to the Partner Account record in Salesforce - kindly check for duplicate accounts. 
- To begin the contract approval process, select Legal Request and request the appropriate contract addendum (resale, referral/services or both OR MSP OR OTHER)
- Once contract is signed, update the Partner Info section on the Salesforce Partner Account Record
    -  set Partner Status to "Authorized"
    -  select Partner Type
    -  select Partner Track
    - other fields as appropriate

- Once a Partner is authorized, each contact for that partner will automatically receive a message with login credentials to the portal.

- Additional partner employees can go to partners.gitlab.com to register.  
Once they attach to an Authorized partner account, they will automatically receive a message with login credentials. If the account is still a Prospect they will not have access until the account moves to Authorized. 

If you do not want to move forward with the partner:
1.  On the Salesforce Partner Account, set Partner Status to "Denied"

Visit the [Partner Applicant / Partner Portal FAQ](  https://docs.google.com/document/d/1aPCqF5-qb2XxFEhvkNzvexwsIYGuiJF8AhK_qeUgw0Y/edit?usp=sharing) for additional information.

##Channel Marketing Processes

Complete process for submitting an MDF proposal request for funds and detailed instructions regarding the approval and claim process can be found in the [Channel Partner Handbook under MDF.](https://about.gitlab.com/handbook/resellers/#requesting-market-development-funds---mdf )    

Select and Open Partners are able to submit MDF requests via the Marketing Page in the Partner Portal. Partners should be reviewing plans with you prior to submitting an MDF request in the Portal to ensure you are aligned with the proposal.  

Partner Logos may be accessed in GitLab Partner Portal in the Asset Library under Marketing.  Logos are segmented so only authorized Select Partners have access to the Select Logo. 

## Frequently Asked Questions

**Where can I find the Standard Channel Discounts for my Partners?**
- Follow [SFDC Discounting table](https://gitlab.my.salesforce.com/0694M000008xAk4)z

[Public Sector discount table](https://gitlab.my.salesforce.com/0694M000009YhAcQAK)

**Where can I find more information about our current Partners processes?**
- The current Resellers Handbook can be found [Here](/handbook/resellers/)

**Whats the current Deal Registration Process?**
- The current process can be found [Here](/handbook/resellers/#deal-registration)

**How do I track the opportunity of a partner deal?**
Please fill in at least one of the following Opportunity drop downs to identify the deal as a Channel opportunity.
- **If the partner registered the deal** the `Deal Registrar`field will need to be populated in the SFDC opportunity with the appropriate Partner Account.
- **If the Partner Assisted you** (see above for definition) please populate the `Partner - Assisted` field in the SFDC opportunity with the appropriate partner account.
- **If GitLab sourced and sold the deal directly, and the partner is simply fulfilling the deal**, please populate the `Partner - Fulfillment` field in the SFDC opportunity.

**How do I check what I'm being paid on?**

**What are some examples of Channel Neutral math?**

| **Deal Calculation** | **Direct Deal** | **Channel 1 (Neutral)** | **Channel 2 (Add’l Disc)** | **Channel 3 (Split Disc)** |
|----- | ----- | ------ | ------ | ------|
| List Price | $100,000 |  $100,000 | $100,000  | $100,000 |
| Channel Discount | 0% | 20% | 20% | 20% |
| Additional Rep Discount | 5% | 0% | +5% | +2.5% |
| **Total Discount** | **5%** | **20%** | **25%** | **22.5%** |
| IACV (Quota Relief) | $95,000 |  $80,000 | $75,000  | $77,500 |
| Channel Neutral (No Quota Relief @ BCR)  | +$0 |  +$20,000 | +$20,000  | +$20,000 |
| **Commissionable Amount** | **$95,000** |  **$100,000** | **$95,000**  | **$97,500** |
| Base Commission Rate (BCR) | % 8 |  % 8 | % 8  | % 8 |
| **Commission Payout** | **$7,600** | **$8,000** | **$7,600**  | **$7,800** |


**How do I get Channel deals/discount approvals?**
Follow [standard approval process](/handbook/business-ops/order-processing/#step-5---submitting-a-quote-for-discount-and-terms-approval) in SFDC 
    
**How does the Amazon Process work?**
Follow [Amazon Web Services (AWS) Private Offer Transactions](/handbook/business-ops/order-processing/#amazon-web-services-aws-private-offer-transactions) handbook

**I need HELP!  How to do I reach out to the experts?**

The quickest way to get help is by using the following Slack channels:
- #channel-sales
- #channel-ops
- #alliances

