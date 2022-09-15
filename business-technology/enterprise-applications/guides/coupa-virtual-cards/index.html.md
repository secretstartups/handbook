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

GitLab’s preferred method of payment for suppliers is electronic funds transfer with supplier invoice. In the instances where this option is not available with the supplier, the Virtual Card, which is a temporary credit card, can be used as an alternative payment method. Virtual Card can be selected as a payment option by the requestor via the **Request Virtual Card** icon on the Home page in Coupa. 



## How to request a Virtual Card

Please either follow the below instructions or view the [Requesting a Virtual Card](https://www.youtube.com/playlist?list=PL05JrBw4t0Kr1PNe_Ycz0x4G5aizUPDbM) video.

There are two different scenarios for Virtual Cards:  
  - **Scenario A:** Supplier paid by Virtual Card for one time purchase or emergency payment **(most common request)**
  - **Scenario B:** Supplier permanently paid by Virtual Card
  
<br>

<div class="panel panel-danger">
**IMPORTANT NOTE**
{: .panel-heading}
<div class="panel-body">

**Prerequisite: You must set up your 2FA in Coupa to view your Virtual Cards.** Review the [How to Enable Two-Factor Authentication (2FA)](/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-enable-two-factor-authentication) for more details. 

</div>
</div>
<br>

## How to request a Virtual Card for Scenario A
**(Supplier paid by Virtual Card for one time purchase or emergency payment)**
<br>

**Step 1.** Click on the **Request Virtual Card** icon from your Coupa Home page.

![vcard-image-1](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard1.png)
<br>

**Step 2.** Complete all the fields on the form. **NOTE - for the last question, check "No" then click "Submit".**

![vcard-image-9](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard_selectno.png)
<br>

**Step 3.** After the form is submitted, it will create a Requisition Cart for you.
   - Go to your Cart and click on **Review Cart**. 
   - Complete the fields on the General Info section (see below for required fields). 

![vcard-image-2](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard2.png)
<br>

<div class="panel panel-danger">
**IMPORTANT NOTE**
{: .panel-heading}
<div class="panel-body">

**The Virtual Card Supporting Documentation must match the amount of the Requisition.** If the amount charged to the Virtual Card differs from the PO amount, updated documentation must be provided. 

</div>
</div>
<br>
**Step 4.** Review the Cart Items section and verify the Billing information is correct.

<div class="panel panel-warning">
**NOTE**
{: .panel-heading}
<div class="panel-body">

The Cart Items section will list **American Express- Virtual Card** as the Supplier and will list the actual supplier's name under the **Requested Virtual Card Supplier** field.
<br>

![vcard-image-4](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard_actual.png)


</div>
</div>
<br>
**Step 5.** Click on **Submit for Approval**. 
<br>

Once the Requisition is fully approved, a Purchase Order will be generated. You will receive an emailed notification that the Virtual Card is available for use on that Purchase Order. Click on the PO link to view the Virtual Card details. **NOTE - only you, as the requestor, will have the ability to view the Virtual Card details.**
  
![vcard-image-6](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard6.png)
<br>

The Virtual Card information is provided on the Purchase Order under the **Payment** section. Click on the link to view the card details. You will be prompted to enter Two-Factor Authentication (2FA) verification code.

![vcard-image-7](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard7.png)  
<br>

The card number, expiration date, and CVV code will be available to the requester. At this point the requester can use the card details to complete the purchase. Please use **GitLab Inc; 268 Bush Street #350; San Francisco, CA 94104** for the Billing Address when using the Virtual Card.
<br>

![vcard-image-8](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard8.png)  
<br>


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
   - This is the first time you are requesting the permanent Virtual Card for the supplier.
- Click on the **Request Virtual Card** icon on the Coupa Home page.
- Accounts Payable will need to set up a Virtual Card as the supplier’s default form of payment. To facilitate this process, please select **Yes** to the last question in the Virtual Card Request form, then provide answers to the additional 2 questions. **NOTE - insufficient information will delay the creation of the card.**   

![vcard-image-10](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard_scenariob.png)
<br>

Submit the form and complete the requisition cart as outlined in above Scenario A steps 3-4.
<br>

<div class="panel panel-warning">
**NOTE**
{: .panel-heading}
<div class="panel-body">

You only need to request a permanent virtual card for the supplier once. After Accounts Payable sets up the virtual card, you can submit future requisitions through **Write a request** or **Submit a request** for the supplier.

</div>
</div>
<br>

## How to request a Virtual Card submitted via Allocadia

If you are a Marketing team member that uses Allocadia to submit Coupa requisitions, please first review the above instructions to get an overall understanding for requesting and receiving a Virtual Card then follow the instructions below.

### Suppliers with a one time payment / emergency payment by Virtual Card
- Submit the requisition through Allocadia.
- On the **Create PR in Coupa** screen, enter **American Express- Virtual Card** on the **Supplier** field.

![vcard-image-11](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard_allocadia.png)
<br>
- Click **Submit**
- Click on the **Go to PR in Coupa to submit** link.
- On the **Review Cart** screen in Coupa, complete the requisition.    
   - In the **Cart Items** section, edit the line(s) to enter the **actual Supplier name** in the **Requested Virtual Card Supplier** field then click **Save**. 


![vcard-image-14](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/vcard_actual.png)
<br>

- Click **Submit**.
- After the requisition has been approved, the PO will be issued and the requester will receive the Virtual Card number for use.
<br>
### Suppliers to be paid permanently by Virtual Card
- Submit the requisition through Allocadia using the **actual Supplier name**.
- When completing the requisition in Coupa, tag **@Accounts Payable Approval Group** in the **Comments** section requesting the supplier to be set up with Virtual Card as the permanent payment method. **You only need to request a permanent virtual card for the supplier once.**
- AP will set up the permanent Virtual Card as a **Requester Card** and will confirm in the requisition comments that it has been created.
- After the requisition has been approved, the PO will be issued and the requester will receive the Virtual Card for use.

<br>

## Virtual Cards FAQ

- **How long is the Virtual Card valid?**
   - By default, the Virtual Card is valid for 365 days. After that, the card will expire for security reasons. If you are unable to make payment within those 365 days and the Virtual Card has expired, tag **@Accounts Payable Approval Group** in the **Comments** section of the Purchase Order. You must include the business justification for reissuing a card in your comments.

- **How do I request an amount to increase the Virtual Card?**
   - Follow the same process as [How to do a Purchase Order Change Request](https://about.gitlab.com/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-do-a-purchase-order-change-request). Once the change request has been approved, the Virtual Card amount will be increased.

- **How do I attach a receipt or invoice after Purchase Order is issued?**
   - Receipts are **NOT REQUIRED** for virtual card charges. 
   - If you get a notification to attach a receipt, click your name at the top right > Settings > Notifications > and remove the following notifications

 ![vcard-image-16](/handbook/business-technology/enterprise-applications/guides/coupa-virtual-cards/chargenotification.png)  


<br>

- **What if I have an Urgent Request?**
   - Urgent requests that need approval in less than 5 business days, need to be escalated in the #procurement channel for expediting per the below steps:
      - Your Slack message **MUST** include:
         - Link to your Coupa Request. 
            - Contracts should not be posted directly in slack.
         - Date needed.
         - Specific and quantifiable impact to the business if date is missed. 
            - "Supplier wants it signed today" does not qualify as a reason for escalation and these requests will be denied. 
            - "Price will increase $45K if not signed by Friday" or "Material negative brand impact if not signed by Friday due to missed PR deadlines" are specific, tangible, business impacts, that will be reviewed.
   - Urgent requests will be evaluated. Please note these are disruptive to our workflow and our ability to meet SLA's for requests opened on time.
   - We may or may not be able to accommodate your urgent request based on the risk and bandwidth available.
   - If you have a critical request, **enter the request into Coupa 1-2 weeks prior to needing approval** to avoid needing escalation.

<br>

- **What if I have questions or issues?**
   - Reach out in the #coupa_help Slack Channel for assistance.

   
{::options parse_block_html="false" /}
