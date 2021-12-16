---
layout: handbook-page-toc
title: "Coupa Virtual Card Guide"
description: "Coupa Virtual Card Guide"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What is Virtual Card?

GitLab’s preferred method of payment for suppliers is electronic funds transfer with supplier invoice. In the instances where this option is not available with the supplier, the Virtual Card can be used as an alternative payment method. Virtual Card can be selected as a payment option by the requestor via the “Request Virtual Card” icon on the Home page in Coupa. 


## How to request a Virtual Card

There are two different scenarios for Virtual Cards:
  - **Scenario A:** Supplier paid by Virtual Card for one time purchase or emergency payment **(most common request)**
  - **Scenario B:** Supplier permanently paid by Virtual Card
  
Please view demo video here [TBD] or follow the instructions below.
<br>

<div class="panel panel-danger">
**IMPORTANT NOTE**
{: .panel-heading}
<div class="panel-body">

**Prerequisite: You must set up your 2FA in Coupa to view your Virtual Cards.** Review the [How to Enable Two-Factor Authentication (2FA)](/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-enable-two-factor-authentication) for more details. 

</div>
</div>

## How to request a Virtual Card for Scenario A
**(Supplier paid by Virtual Card for one time purchase or emergency payment)**
<br>

Step 1. Click on the "Request Virtual Card" icon from your Coupa Home page.

![vcard-image-1](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard1.png)
<br>

Step 2. Complete all the fields on the form. **NOTE** - for the last question, check "No" and click "Submit".

![vcard-image-9](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard9.png)
<br>

Step 3. After the form is submitted, it will create a Requisition Cart for you.
   - Go to your Cart and click on "Review Cart". 
   - Complete the fields on the General Info section (see below for required fields). 

![vcard-image-3](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard3.png)
<br>

Step 4. Review the Cart Items section and verify the Billing information is correct. 

<div class="panel panel-warning">
**NOTE**
{: .panel-heading}
<div class="panel-body">

The Cart Items section will list "Virtual Card" as the Supplier and will list the actual supplier's name under the "Requested Virtual Card Supplier" field.

![vcard-image-4](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard4.png)


</div>
</div>
<br>

Step 5. Click on "Submit for Approval". 
<br>

Once the Requisition is fully approved, a Purchase Order will be generated. You will receive an emailed notification that the Virtual Card is available for use for the Purchase Order. Click on the PO link. **NOTE** Only you, as the requestor, will have the ability to view the credit card details.
  
![vcard-image-6](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard6.png)
<br>

The Virtual Card information is provided on the Purchase Order under the "Payment" section. Click on the link to view the card details. You will be prompted to enter Two-Factor Authentication (2FA) verification code.

![vcard-image-7](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard7.png)  
<br>

The card number, expiration date, and CVV code will be available to the requester. At this point the requester can use the card information to complete the purchase or provide the card information to the supplier.

![vcard-image-8](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard8.png)  



## How to request a Virtual Card for Scenario B
**(Supplier permanently paid by Virtual Card)**

<div class="panel panel-danger">
**IMPORTANT NOTE**
{: .panel-heading}
<div class="panel-body">

**Prerequisite: The supplier must already exist in Coupa.** If the supplier is not yet set up, please follow the instructions [here](https://about.gitlab.com/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-request-a-new-supplier) to request a new supplier.  

</div>
</div>

- The supplier must meet the below requirements:
   - Supplier only accepts credit card as form of payment and you have documentation regarding this requirement.
   - GitLab frequently purchases goods and services from this supplier.
   - This is the first time you are requesting the permanent virtual card for the supplier.
- Accounts Payable will need to set up a Virtual Card as the supplier’s default form of payment. To facilitate this process, please select “Yes” to the last question in the Virtual Card form, then provide answers to the additional 4 questions. **NOTE** - insufficient information will delay the creation of the card.   

![vcard-image-10](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard10.png)
<br>

Submit the form and complete the requisition cart as outlined in above Scenario A steps 3-4.
<br>

<div class="panel panel-warning">
**NOTE**
{: .panel-heading}
<div class="panel-body">

You only need to request a permanent virtual card for the supplier once. After Accounts Payable sets up the virtual card, you can submit future requisitions through “Write a request” or "Submit a request" for the supplier.

</div>
</div>

## Virtual Cards FAQ

- How long is the Virtual Card valid?
   - By default, the Virtual Card is valid for 60 days. After that the card will expire due to security reasons. If you know you will need the Virtual Card to be valid for longer than 60 days, please indicate the necessary duration in the Payments Field with business justification. If you are unable to make payment within those 60 days and the Virtual Card has expired before payment was able to be made, email **ap@gitlab.com** with the business justification for extending. You **must** include the link to the Coupa PO in your email request before it will be processed.

- How do I request an amount to increase the Virtual Card?
   - Follow the same process as [How to do a Purchase Order Change Request](https://about.gitlab.com/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-do-a-purchase-order-change-request). Once the change request has been approved, the Virtual Card amount will be increased.

- What if I have an Urgent Request?
   - Urgent requests that need approval in less than 5 business days, need to be escalated in the #procurement channel for expediting per the below steps:
      - Your slack message **MUST** include:
         - Link to your Coupa Request. 
            - Contracts should not be posted directly in slack.
         - Date needed.
         - Specific and quantifiable impact to the business if date is missed. 
            - "Supplier wants it signed today" does not qualify as a reason for escalation and these requests will be denied. 
            - "Price will increase $45K if not signed by Friday" or "Material negative brand impact if not signed by Friday due to missed PR deadlines" are specific, tangible, business impacts, that will be reviewed.
   - Urgent requests will be evaluated. Please note these are disruptive to our workflow and our ability to meet SLA's for requests opened on time.
   - We may or may not be able to accommodate your urgent request based on the risk and bandwidth available.
   - If you have a critical request, **enter the request into Coupa 1-2 weeks prior to needing approval** to avoid needing escalation.

