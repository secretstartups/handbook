---
layout: markdown_page
title: "Channel Operations"
---
## Welcome to the Channel Operations page



## Managing Channel Opportunities ##

**Policy and Process**

All channel opportunities require a Partner to submit a Deal Registration via the Partner Portal (Impartner). For more details on the partner deal registration process go [here](https://about.gitlab.com/handbook/resellers/#the-deal-registration-program-overview).  

When a deal registration is submitted a lead is created in SFDC. An email is also sent from the [Partners@GitLab.com](mailto:Partners@GitLab.com) alias to the Channel Sales Manager(s).  

Channel Sales Managers need to review the deal registration and do a search in SFDC to make sure another deal reg doesn’t already exist for the same opportunity. Only one deal registration can be approved for a specific opportunity. As a reminder, deal registrations are opportunity based and partners cannot register an account. 

A new Partner Information section has been added to all opportunities.  This will ensure proper tracking for all channel opportunities when filled in.  If you are working a deal with a GTM route of Channel, please ensure this section is properly reflecting the partners of the deal.  

In order to see if a deal registration or opportunity already exists perform the following steps



1. Search SFDC using the customers contact email address
2. If nothing is found, try searching by the company name
3. Check with the applicable sales rep as needed

Once the search is completed, then reach out to the applicable sales rep and discuss the deal registration and whether or not it should be approved based off the following guidance:

**Guidance for Deal Registration Processing** 

_Why is this important?_



*   Consistent and predictable partner experience
*   Efficient, simple, and objective approval process
*   Uphold integrity of deal reg reporting integrity
*   Mitigates liability
*   Reinforces our Transparency value  

**    **



<table>
  <tr>
   <td><strong><a href="https://about.gitlab.com/handbook/business-ops/resources/#opportunity-stages">Sales Stage</a> in SFDC</strong>
   </td>
   <td><strong>Partner Initiated (PIO)</strong>
   </td>
   <td><strong>Partner Assist  </strong>
   </td>
   <td><strong>Fulfill</strong>
   </td>
  </tr>
  <tr>
   <td><strong>00-Pre Opportunity</strong> 
   </td>
   <td><strong>X</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>0-Pending Acceptance</strong>
   </td>
   <td><strong>X</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>1-Discovery</strong>  
   </td>
   <td>CSM Discretion
   </td>
   <td>CSM Discretion
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>2-Scoping</strong>
   </td>
   <td>
   </td>
   <td><strong>X</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>3-Technical Evaluation</strong>
   </td>
   <td>
   </td>
   <td><strong>X</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>4-Proposal</strong>
   </td>
   <td>
   </td>
   <td>CSM Discretion
   </td>
   <td>CSM Discretion
   </td>
  </tr>
  <tr>
   <td><strong>5-Negotiating</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td><strong>X</strong>
   </td>
  </tr>
  <tr>
   <td><strong>6-Awaiting Signature</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td><strong>X</strong>
   </td>
  </tr>
</table>


**Other Resources:**

	Deal Registration Lead [Report](https://gitlab.my.salesforce.com/00O4M000004aAXt)

    Partner Program [Guide](https://about.gitlab.com/handbook/resellers) 

**Scenarios for Processing Deal Registration:**

**(1) Processing a Deal Registration where no other Deal Registration or Opportunity already exists**

1. From the lead record in SFDC, click on the CONVERT button at the top middle of the page
2. It will take you to an Account Creation page
    1. Update the Record Owner to yourself (applicable Channel Sales Manager)
    2. If a customer account already exists in SFDC, select it in the drop down, otherwise select Create New
    3. Update the opportunity name based off the GL naming guidance [here](https://about.gitlab.com/handbook/business-ops/resources/#opportunity-naming-convention)
    4. Fill out the required fields in the Task Information section
    5. Click CONVERT at the bottom once completed
3. The deal registration is now approved and an opportunity has now been created
    6. In order to save the opportunity the following fields will be required (some will map over from the deal reg conversion)
        1. DR - Partner
        2. DR- Partner Deal Type: Resale, Referral, Services Attach
            1. If Resale, then select PIO, Assisted, or Fulfilment in the Deal Engagement picklist
            2. If Referral, Deal Engagement will default to PIO
                1. If a different Partner is fulfilling the deal, please add the Fulfilment Partner Field
            3. If Services Attach will default to N/A
            4. Distributor, Influence, and Platform Partner as applicable
    7. Ensure that the owner of the opportunity is changed to the applicable sales rep once the opportunity is saved. 
        3. Do not select any of the checkboxes when changing the opportunity owner

**(2) Processing a Deal Registration when an Opportunity already exists**

1. Follow the same steps 1-3 in the previous section
2. Once completed, send a request to Channel Ops either from Chatter or Slack providing them the link to the opportunity you just created and the one that already exists
3. They will perform the necessary steps to update the records accordingly

**(3) Denying a Deal Registration when one already exists or does not meet program requirements**

1. From the deal registration lead record, click on DENY DEAL REGISTRATION button on the top of the page
    1. It will take you to another screen to confirm, check the box, and hit next
    2. Status of deal registration will now be changed to “Denied” and synched back with the Partner Portal (Impartner)

**SFDC Field Definitions:**

*   DR - Partner: Partner that submitted the Deal Registration 
*   DR - Partner Deal Type
    *   Resale: Partner is actually transacting the deal on their paper. 
    *   Referral: Partner is bringing us the lead/opportunity but will either transact direct with GL or thru another partner
    *   Services Attach_: Partner-delivered services provided to the end user related to their use of the GitLab software
*   DR - Partner Engagement: How the deal was sourced or the value the partner is brining
    *   PIO: Partner has “initiated” the opportunity. They have either found the original opportunity or an upsell to a current customer. 
    *   Assisted: GitLab-sourced opportunity where the partner assists our sales team in closing the deal
    *   Fulfillment: Partner only processes the order and doesn’t provide additional support to close the deal
*   Distributor: If the DR - Partner are buying from a GitLab authorized distributor
*   Fulfillment Partner: Only applicable if the _DR - Partner Deal Type_ is _Referral_ and the deal is being transacted thru another partner
*   Platform Partner: Customers Platform that GitLab is being deployed
*   Influence Partner: Other partners, generally GSI’s or alliances that have helped influence the deal

**Rules of Engagement on Channel Deals**

*   Deal registration approval is based upon order of receipt of the registration, qualification of the opportunity, partner ability to deliver in-country/region support, partner relationship with customer. Final deal registration approval decision will be made by GitLab Sales.
*   Only one partner can earn a deal registration discount per opportunity. Partners, other than the partner granted the deal registration discount that request a quote, will receive the fulfillment discount rate.
*   New customer opportunities or new opportunities with existing customers can qualify for deal registration. Add-on sales to renewals can qualify for deal registration.
*   Approved deal registrations have standard 90-day expiration from the date of original approval (Deal Registration extensions beyond the initial 90 days approval are at the sole discretion of GitLab).
*   GitLab collaborates with partners holding the approved deal registration and is available to support partners throughout the entire sales process.
*   In the event the engagement is dissolved, the GitLab Sales Rep will generally notify the partner by phone or email. GitLab will reconsider other deal registrations submitted for this deal, in chronological order of submission. If there are no other registration requests submitted, the GitLab sales rep will typically initiate engagement with a reseller of the GitLab sales rep’s choosing.




##  Program and Incentive Definitions

**Partner Program Discounts**
- The GitLab Partner Program provides partners with set discounts based on their engagement in opportunities (see definitions below) and their partner program track.
- Partners are not eligible for discounts on sales or renewals of Bronze / Starter licenses.
- GitLab employees can access the discount table [here.](https://gitlab.my.salesforce.com/0694M000008xAk4)  Partners can find the discount table in the Asset Library on the GitLab Partner Portal.

**Partner Initiated Opportunity - PIO**
- A PIO is any new sales opportunity that was brought to GitLab via a Deal Registration.  A PIO could be:
    -  An opportunity with new customer to GitLab
    -  An opportunity with a customer/prospect with which GitLab is already engaged, but was not aware of the specific opportunity
    -  An existing customer upgrade to a higher pricing plan - including from our free/core product.  This could be for a customer that was originally sold direct.
    -  Additional licenses sold, often at time of renewal. 
    -  True-ups to an original partner opportunity. 
- The opportunity must be new to our sales team, and can be for a new or existing customer.
- This can be for either a resale or referral opportunity.  
- The partner is expected to assist the GitLab Sales team in closing the sale. 
- For US Public Sector, each unique customer opportunity within a single government program can be partner initiated.
- For resale, the partner receives an upfront discount that is dependent on the partners track within the GitLab Partner Program.
- Referral rebate payments are paid out at the end of each GitLab fiscal quarter
- The determination of PIO is at the sales rep & CAM determination and tracked via SFDC opportunities.

**Partner Assist Opportunity**
- Any opportunity where the partner assists our sales team to close the deal.
- This may be a customer demo, an executive introduction meeting, delivery of services, etc.
- Partners need to submit a Deal Registration for Partner Assist.  Since it is for a GitLab sourced opportunity, it does not qualify for PIO, but should be tagged as Partner Assist in Salesforce.
- The determination of Partner Assist is at the sales rep & CAM determination and tracked via SFDC opportunities.

**Partner Fulfill Opportunity**
- Any opportunity that was fulfilled by a partner but closed independently via the GitLab sales team.
- The partner has only processed the order and didn’t provide any meaningful support to close the deal.

**Services Attach Opportunity**
- Any partner delivered services that are provided to the end user in support of a GitLab deployment.
- This will result in a 2.5% upfront discount from the product for resales opportunities and a rebate if partner is not involved in resale.
- The resale discount will be administered as an upfront discount from the GitLab license price on the most recent product sale net license price.
- This is stackable for up to three (3) independent services engagements over a twelve (12) month period, provided by the partner to a single end user.
- The maximum discount or rebate is 7.5% with any combination of upfront or post sales partner branded services.
- Partner Services engagements must meet the following partner services engagement deal size minimums to qualify:
    -  1st deal: => $7,500 in services
    -  2nd deal: =>$10,000 in services
    -  3rd deal: => $10,000 in services
- Partners must register a Services Attach deal registration to qualify for the incentive.
- Rebate payments are paid out at the end of each GitLab fiscal quarter.
- Rebates and referral fees may require CRO approval.

**Services Resale**
- Partners can earn a program discount for reselling GitLab Professional Services delivered services.
- To qualify for the Services discount, the services must be included on the order of a deal registered opportunity.

**Incumbency Renewals**
- Incumbent partners qualify for program renewal discounts.  The partners that transacts the most recent sale (IACV) are considered the incumbent
- A different partner can earn an incumbency discount only through formal written communications from the customer.
- In some cases, a customer purchased their most recent subscription directly from GitLab, but is directed to a partner for renewal. Partners are encouraged to engage with these customers, but their first renewal of a formerly direct customer will not be discounted for partners. 
- To earn partner discounts, partners will be required to meet compliance requirements (i.e. in good credit standing, have provided quarterly updates on customer, review within 30 days of renewal, etc).

**Tender Offers**
- Tender offers are ones where the customers are requesting multiple bids for a project.  
- Each partner bidding should register the deal. Since all partners would be engaged in the sales process and would be creating a bid, all partners qualify for Partner Assist discount (% based on their program track). If the first partner registering the deal was early in with the customer (pre-tender) and introduces the opportunity to GitLab, that partner could earn a Partner Initiated Opportunity (PIO) discount. If the partner earning the PIO is not awarded the deal, they would not receive additional referral compensation.
Any partner offering services would qualify for Services-Attach incentives in addition to any sales discounts for which they would qualify.

**Program Compliance**
- For partners to transact according to program discounts, they must agree to the GitLab Partner Agreement.
- To earn partner discounts, partners will be required to be program compliant.
- Non Contracted partners may transact on a one-off basis, only with approval of channel leadership.

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



## **Partner Applicant Approval / Denial - Granting Portal Access**

Channel Sales Managers and Alliance Managers are responsible for approving Partner sign ups in SFDC that fall within their region or area of responsibility. Sign ups must be initiated by the Partner from an Impartner application which can be found [here.](https://rv.treehousei.com/en/login.aspx)   If for any reason, a partner account needs to be created in Salesforce directly, requests for account creation can be made to #channel-ops within Slack. 

When a new partner company applies on the portal a Prospect Account in Salesforce is created. The partner will receive an email confirming the receipt of their application, and applicable Channel Sales or Alliance Manager will receive a New Partner Applicant email from Partnersupport@gitlab.com notifying there is a new partner applicant in that region. 

Upon receiving the New Partner Applicant email, the applicable Channels Sales Manager needs to complete the following:

1. Contact the partner and qualify them
2. If the decision is to move forward with the partner first check to see if a partner account already exists in Salesforce. If it is a duplicate, request for the accounts to be merged by the Channel Operations team. If the decision is to deny the partner then go to step #7.
3. To start the contracting process click the Legal Request button in SFDC on the partner account record. 
    1. Request the appropriate contract addendum (Resale, Referral/Services or both **OR** MSP **OR** OTHER).  Default should be Resale and Referral/Services.
4. Once the contract is fully executed and attached to the partner account record in SFDC the following fields need to be updated by the Channel Sales Manager and are required(*) in order to save the account
    2. *Change Partner Status = Authorized
        1. For Alliance Partner Partner Status = Active 
    3. *Select Partner Type
    4. *Select Partner Track
        2. For Alliances Partner Track = Technology
    5. *Select Partner Program Status (If contract was signed after 4/2/2020 then select “New”)
    6. Please include any other applicable information
    7. For additional information on the Partner Program review [here](https://about.gitlab.com/handbook/resellers/#partner-program-tracks) 
5. Once a partner is authorized, each SFDC contact for that partner will automatically receive a message with login credentials to the portal.
6. Additional partner employees can go to partners.gitlab.com to register. \
Once they are linked to an authorized partner account (they must select the correct account upon registering), they will automatically receive a message with login credentials. If the account is still a Prospect they will not have access until the account has an executed contract and is moved to Authorized. 
7. If the decision is to not move forward with the partner,
    8. Channel Sales Manager needs to set Partner Status = Denied


Visit the [Partner Applicant / Partner Portal FAQ](  https://docs.google.com/document/d/1aPCqF5-qb2XxFEhvkNzvexwsIYGuiJF8AhK_qeUgw0Y/edit?usp=sharing) for additional information.



##  Channel Neutral

To incentivize working with our Channel partners, 'Channel Neutral' means that we will not reduce $ value to individual sellers even if the Channel business reduces total iACV to GitLab (via discounts or rebates).
More information can be found on the [compensation page](/handbook/sales/commissions/#channel-neutral-compensation).

**Channel Neutral Comp**
- For FY21 the sales team will not absorb any channel partners standard contractual discounts.
- They will be compensated at the non-channel net value of the deal.
- Channel Discount must come from the New Partner Program.  Any discount in excess of partner limits will not be factored into Channel Neutral compensation



##Channel Marketing Processes

Complete process for submitting an MDF proposal request for funds and detailed instructions regarding the approval and claim process can be found in the [Channel Partner Handbook under MDF.](/handbook/resellers/#requesting-market-development-funds---mdf )    

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

