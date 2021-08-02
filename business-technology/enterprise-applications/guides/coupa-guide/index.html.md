---
layout: handbook-page-toc
title: "Coupa Procure-to-Pay, Coupa Pay and Supplier Information Management"
description: "Coupa Procure-to-Pay, Coupa Pay and Supplier Information Management guide"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Business Need

The business had identified the need to optimize the Procure to Pay process with a tool that would allow the creation of Purchase Requests, Purchase Orders, 3-way invoice matching, vendor payments, and accounting protocols for SOX Compliance.

## Business Solution

The business decided to move forward with the implementation of Coupa for the Procurement and Payment Program. Coupa provides these functionalities within one platform and is integrated to decrease procurement approval turn-times and reduce manual workflow delays.

In scope for this first delivery is the implementation of Coupa Pay for the US and Netherlands entities.
{: .alert .alert-info}

## What is Coupa

Coupa is a cloud-based purchasing and payment platform that will be used by GitLab as from June 1st 2021 **for the US and Netherlands entities**. It has an easy-to-use interface that will improve the way suppliers connect with GitLab. All new purchase orders, invoices and communications will be managed through the Coupa Supplier Portal.

### How to access Coupa

Coupa is available via Okta. To access the platform:
1. Login to your [Okta home page](https://gitlab.okta.com/app/UserHome#).
1. Click on the Coupa (Prod) button.
   - A new tab should open with your user logged in.

Please note that every month all Coupa access will be reviewed and users who haven't been active in a period of 90 days will have their access removed. _(Note that this number may vary depending on the license count for the current month)_   
If you need to request access again, please reopen your initial Access Request issue and tag the Finance Systems Admins team using `@gitlab-com/business-technology/enterprise-apps/financeops` in a comment.
{: .alert .alert-warning}

If your job function requires you to submit purchase requests in Coupa, follow the below steps:
1. Open an [Access Request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new) for Coupa using the `Individual_Bulk_Access_Request` template.
1. In Step 2, in the _Justification for this access_ question, please describe:
   - What you need to buy.
   - What is the total cost of the purchase. 
   - How often you will need to purchase it.
   - When does it need to be submitted in Coupa.
1. Add the labels ~"FinSys - Coupa" and ~"FinSys::Service Desk". 
1. After the AR is approved, you MUST review the [tech stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) and follow the instructions for provisioning (either assign to the provisioner, add the correct labels or both if not clearly stated)

<div class="panel panel-success">
**Best Practices**
{: .panel-heading}
<div class="panel-body">

Due to the limited number of licenses available for Coupa, it is recommended that each department identify power users responsible for creating purchase requests on the team’s behalf.


</div>
</div>

## How to use Coupa

### Home Page Overview

![coupa-image-1](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa1.png)

1. **Home Icon** - This icon will bring you back to the homepage.
1. **Account Name** - Contains a number of personal settings related to managing your account in Coupa.
1. **Cart** - Links to your shopping cart, which contains any items selected but not yet submitted for approval.
1. **Search Bar** - Used to search or browse catalog items and create free text requests.
1. **Recent Activity** - Displays your 5 most recent transactions. Selecting “View All” will bring you to Activity to display all of your previous requisitions and other transactions.
1. **To Do’s** - Displays a list of action items within Coupa that are assigned to you. Selecting "View All" will bring you to your Coupa Inbox to display all of your to do’s.
1. **Additional Stores (“Punchouts”)** - Offers the possibility to search, select and submit purchases directly from the Supplier’s portal.
1. **GitLab - Important Links and Resources** - Displays important information about Coupa, along with links to training material and other important documents.

### User Account

![coupa-image-2](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa2.png)

Account Name contains a number of options related to managing your account in Coupa:

- **Activity**: Displays all of your previous requisitions, related orders, receipts, and invoices. In each transactional tab, you can perform the following:

![coupa-image-3](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa3.png)

1. **View**: allows you to quickly apply sets of filters to display reports such as all requisitions, requisitions requiring receipt, draft requisitions, and a number of other pre built reports, along with option of creating custom reports.
1. **Report Scheduling**: allows to set up recurring reports that are emailed to recipients on a regular basis (can be daily, weekly, or monthly).
1. **Advanced**: allows to apply a filter or set of filters to the list of requisitions.
1. **Search**: allows to quickly search all fields on a requisition for a match.
1. **Export**: allows downloading a report in CSV or Excel format based on the current filters applied to the list of requisitions.
1. **Actions**: the icons next to each requisition allow you to edit, copy, cancel, withdraw, and resend requisitions.

- **Groups**: Access to Groups setup and allows user to add members in the group he/she belongs to.
- **Settings**: Contains consolidated personal settings.
   - **General**: The General tab is where you can load a profile photo and check user forms.
   - **Address Book**: Allows you to view your default shipping address and change it as needed (you can also change the shipping address of a particular requisition on the requisition page).
   - **Delegates**: Users can delegate their receiving and approvals to another user by using the Delegates functionality (it is possible to add multiple, overlapping delegates, and enable notifications). _Check the [How to add a Delegate in Coupa](/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-add-a-delegate-in-coupa) section for more details_.
   - **Reports**: Users can schedule a report by going to a particular report view and specifying the scheduling details (only certain users will have access to reports and report views are dependent on role).
   - **Notifications**: Coupa notifications can be managed. For each type of notification, the User can choose whether they would like to receive notifications via email (Email), within Coupa (Online), both, or neither.
   - **Two-Factor Authentication (2FA)**: Should be enabled on user profiles to ensure that financial accounts and instruments are protected for control and use by the individual to whom they are intended. This extra authentication layer on the user profile is required before that user can be granted privileged permissions for working with payment features like creating batches for expense and invoice payments, creating accounts, and many other secured payment functions. _Check the [How to enable Two-Factor Authentication (2FA)](/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-enable-two-factor-authentication) section for more details_.
- **Inbox** - Displays all current and previous notifications.
- **Sign Out** - to exit the application.

#### How to add a Delegate in Coupa

![coupa-image-19](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa19.png)

1. Go to your "Account Name" > "Settings".
1. Click on the "Delegate" subtab.
1. Click “Create” and select a delegate type approval (Receiving, Delegate) for a specified timeframe and give a reason.
1. Click "Save".

Assigned delegates must be of an equivalent or greater management level.<br>
For approvals as part of an approval group, the individual must be a member of that group.
{: .alert .alert-info}

#### How to Enable Two-Factor Authentication
1. Go to your "Account Name" > "Settings".
1. Click on the "Two-Factor Authentication" subtab.
1. Click the "Enable" button.
1. Use your Google Authentication app to scan the QR Code.
1. Enter the 6-digits displayed in the authentication app in the Verification Code field.
1. Click "Submit".

> Anytime you are challenged for a 2FA verification code, just launch your authenticator and enter the latest code.

### How to Create a Requisition

#### Free-Form Requisition

![coupa-image-4](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa4.png)

- Click on the "Write a request" button on the homepage.
- Complete the form with the following information:

![coupa-image-5](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa5.png)

- a) Item Description _(required)_<br>
- b) Choose if Amt (amount) or Qty (quantity)_(required)_<br>
   - Amount should be selected for a service-based requisition.
   - Quantity should be selected for an item-based requisition and Receiving of goods will be required.
   - When Professional Services are bought together with a software, they should be added in different lines (since they will fall under different commodities). Software purchases are usually based in the amount and not the quantity.
- c) Supplier _(required)_<br>
   - The supplier has to be onboarded into Coupa in order to be displayed in this dropdown. Check the _[How to Request a New Supplier](/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-request-a-new-supplier)_ section for more information.
- d) Commodity _(required)_<br>
- e) Unit Price _(required)_<br>
- f) Currency _(required)_<br>
- g) Qty _(required if Qty-based)_<br>
- h) UOM _(required if Qty-based)_<br>
- i) Need by _(optional)_<br>
- j) Supplier Part Number _(optional)_<br>
- k) Manufacturer Name _(optional)_<br>
- l) Manufacturer Part Number _(optional)_<br>
- m) Service Start Date _(optional)_<br>
- n) Service End Date _(optional)_<br>
- o) Attachments _(optional)_<br>
- p) Write Multiple Request _(tick this box if you will create multiple lines)_<br><br>
- Click "Add to Cart" once completed.
- Review your cart by clicking on the "Cart" button at the top of the page.
   - All the cart details will be displayed and the requestor can review and/or edit the details as required. (This is the Purchase Request form that will be flipped into an Order when approved).


If a supplier is exclusively paid by credit card, the requester must tag `@Accounts Payable Approval Group` and note the credit card payment method in a comment before submitting the requisition. This will alert the AP Team so they can remove it from CoupaPay.
{: .alert .alert-warning}

**REQUISITION HEADER LEVEL**

![coupa-image-7](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa7.png)

- a) On Behalf Of _(optional)_<br>
   - Use this to create a request on behalf of another user. The approval chain will update following the person selected as “on behalf of”. This user will then have to approve the invoice once received.
- b) Description of Purchase _(optional)_<br>
- c) Hide Price _(optional)_<br>
   - Usually used by Procurement to hide Purchase Order price from the Vendor.
- d) Attachments _(required)_<br>
   - Add as many attachments as needed: Unsigned Contract, Previous Contracts and Security Documents.
   - After uploading the documentation, check the "supplier" box if any specific document needs to be shared with the supplier.
- e) Vendor has access to red/orange data? _(required)_<br>
   - If the requestor is unsure about the type of data, tag the `@security` and `@procurement` groups in a comment before submitting the requisition for approval.
   - Requisitions can be saved for later.
- f) Vendor’s Security Contact Email _(optional)_<br>
- g) Address _(required)_<br>
   - Defaulted based on the user entity. Click on the magnifying glass icon to select or create a different address.
- h) Attention (defaults from the User record).<br>

<div class="panel panel-info">
**NOTES**
{: .panel-heading}
<div class="panel-body">

- If you have any questions about the **entity** of the request, tag the `@taxinvoiceapproval` group in a comment before submitting the requisition for approval.
   - Requisitions can be saved for later.

</div>
</div>

**REQUISITION LINE LEVEL**

![coupa-image-8](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa8.png)

- Line Item
   - Click on this section to launch the edit mode and update line details as needed.
- Greyed-out fields are non-editable.
- Fields marked with a red asterisk are required fields.
- Click Save to apply the changes.

#### Adding a class/campaign tag

If the item being purchased requires a class/campaign tag, the user needs to manually add it **after** adding the line item to the request but **before** submitting the PR.

The class field is located in the `Billing String` section which only appears to the user after the line item has been added to the request.
{: .alert .alert-info}

![coupa-image-23](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa23.png)

![coupa-image-24](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa24.png)

To add a class, follow the below steps for more detail:

1. After adding line items to your cart, from the homepage, click on the "Cart" button at the top of the page.
1. Click on the "Cart Item" tab or scroll down to the requisition line level.
1. Click on the magnifying glass of the Billing string for the requested item.
1. On the "Choose an Account" pop up, find your tag by expanding the `clas - Class` field and click "Choose" when done.


<div class="panel panel-info">
**NOTES**
{: .panel-heading}
<div class="panel-body">

- If you have any questions about the **class** of the line items or need to request a new one, tag `@ggonzalez@gitlab.com` in a comment before submitting the requisition for approval.
   - Requisitions can be saved for later.
- The FP&A and Procurement teams will review the commodity for each line item during their approval and tag `@ggonzalez@gitlab.com` in a comment if there are any questions.


</div>
</div>

#### Punchout Requisition

![coupa-image-12](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa12.png)

1. On the Homepage Screen, click on any Punchout supplier located under Additional Stores section.
1. Clicking on the Punchout link will take you to an approved supplier website where you start ordering your items, just like any online shopping experience.
1. Start searching and add items to your cart.
1. When done adding items in your cart, click “Checkout”.
1. To go back to Coupa “Review Cart” screen, click “Transfer Shopping Cart”.
1. Once in Coupa "Review Cart screen", **populate the required information such as the Commodity and Billing Account**.
1. Review completeness of the requisition and click Submit for Approval.

<div class="panel panel-info">
**NOTES**
{: .panel-heading}
<div class="panel-body">

- Cart Checkout and returning to Coupa “Review Cart” screen depends on the Punchout site.
- It is recommended that users purchase via punchouts as often as possible. 
- Don’t add multiple punchout suppliers to one requisition.

</div>
</div>


### Approvals

Once all the required information (including the billing string) is populated on the cart, based on the system approval rules, the applicable approvers are displayed beneath the cart line.

> The greater the amount of the requisition, the more approvers will be needed.

![coupa-image-9](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa9.png)

#### How to Add an Approver

- Click on the "Add" button.
- Type in a few letters of the approver name and the system displays all possible entries. 
   - New approver must be an existing user in Coupa.
- Select if the person is to be added after the current approver, end of the chain, or only as a watcher.
   - A watcher cannot approve or reject the cart but will receive notifications about the requisition.

![coupa-image-10](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa10.png)

- At the bottom-right section of the review cart screen the user can:
   - a) Save the Purchase Request but not keep it active in their Cart by clicking on “Save for Later”.
      - The Purchase Request will be available on “Draft” status on the user’s “Activity” page under the ”Requisitions” section.
   - b) Save the Purchase Request on their cart by clicking on “Save”.
      - In this case the Purchase Request will be available on the requester’s “Cart” Icon (On the top right of the screen).
   - c) Once the cart has been verified for correct information, the User can submit the cart for approval by clicking on the “Submit for Approval” button below the approval chain.

![coupa-image-11](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa11.png)

#### Methods to Approve Transactions

There are several ways to approve transactions in Coupa:

- **To Do’s** notification on the homepage screen
   - To view the requisition/invoice/PO change request details, click on the subject line.
   - The approver may add comments on the “Approval Comments” section before clicking on the Reject or Approve buttons.
   - All approvers are displayed in the “Approvers” section.
   - When rejected, a requisition goes back to “Draft” status, the requestor needs to make changes and re-submit. (Please, remember leave a comment about the rejection for the requester).
      - When an invoice is rejected, it goes under “Rejected” status and the Accounts Payable needs to edit and resubmit the invoice (or void if necessary).
- **Inbox**
   - Users can access all their notifications through the “Inbox” section under “Account Name”.
   - The User can change the report View to "To Do" to filter all notifications requiring action.
- Via **Activity > “Transactional Tabs” > Requiring My Approval** view
   - In each Activity transactional subtabs, users can change the report view to Requiring My Approval.
- **Email**
   - The approver receives a system-generated email notifying about the requisition or invoice as soon as a user submits the transaction.
   - All the basic information is displayed on the email.
   - The approver selects an appropriate action (View Req / Approve / Reject).
      - The “View Req” option is a link to Coupa to see the transaction in the system.
   - Once a choice is selected, an automatic email is created. The approver needs to send the e-mail for the approval to be made in Coupa.
   - Once the e-mail is sent, the transaction will move to the next approver based on the approval chain in Coupa.
      - If rejecting the Purchase Request, the approver should include a comment explaining the rationale for rejecting it.
- **Coupa Mobile App**
   - A mobile application of Coupa can be downloaded either at the Apple or Android stores. Once you download the app you need to sign-in as you normally would to the instance.
   - The app allows you to do approvals for both Requisitions and Invoices:
      - To Approve: Open the requisition or invoice notification, review the information, and approve.
      - To Reject: Open the requisition or invoice notification, review the information, and reject.


<div class="panel panel-info">
**NOTE**
{: .panel-heading}
<div class="panel-body">

- If your requisition status is "Pending Buyer Action", it is in Procurement's To Do List and can be ignored. If there are any issues, Procurement will add comments to the requisition and you will receive notification via email or in your To Do List (depending on your notification setup in Coupa). 
- If you see "Onboarding" next to the Supplier's name on the line items of your requisition (see below screenshot), please reach out to your Supplier and request them to join Coupa's Supplier Portal to complete the onboarding process. Suppliers have to complete their onboarding in Coupa before the requisition can be finalized. 

![coupa-image-25](/handbook/business-technology/enterprise-applications/guides/coupa-guide/Coupa25.png)

</div>
</div>

### How to Copy a Requisition

Users can copy requisitions so they do not have to re-create the same order details multiple times again.

![coupa-image-14](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa14.png)

1. Go to “Recent Activity” or “Activity” section.
2. Click on the “Copy” icon and a copy of the requisition will automatically be added to your cart.
   - **Note**: on the “Recent Activity” section you have to click on the “Actions” dropdown to be able to see the “Copy” button.

<div class="panel panel-warning">
**Notes**
{: .panel-heading}
<div class="panel-body">

- If you are planning to create a similar requisition with some different details, copy a requisition you already made before then edit the details on the cart.
- Punchout Requisitions cannot be copied!

</div>
</div>

### How to Withdraw a Requisition

Provided that a Purchase Requisition has not been approved and flipped into an Order, the user can withdraw the Purchase Request and make any changes before submitting again.

![coupa-image-15](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa15.png)

1. Go to “Recent Activity” or “Activity” section.
1. Find your Purchase Request on “Pending Approval” status and click on the “withdraw requisition” icon (Red Arrow).

<div class="panel panel-warning">
**NOTES**
{: .panel-heading}
<div class="panel-body">

- On “Activity”, the user can select the “Pending Approval” view.
- If a Requisition has already been flipped into an Order, the user cannot withdraw the requisition. They will have to create a [Purchase Order Change Request](/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-do-a-purchase-order-change-request).

</div>
</div>

### How to Receive an Order

Receiving is only required for an item-based (quantity) requisition.
{: .alert .alert-info}

1. The requestor can locate all requisitions pending receipt via the "Activity" option under ‘My Account’. _This will display all the requisitions created by the Requestor._
   - It is only possible to select requisitions that are **pending receipt** from the view **Pending Receipt**.
1. Click on the receipt icon under the column "Actions". _This will open up the desktop receipt view._
1. On the receipt details screen, enter the Quantity (since receiving is only required for item-based requisitions).
1. Save the receipt by clicking on the "Submit" icon.
   - A message indicating successful receipt is displayed.

<div class="panel panel-warning">
**NOTES**
{: .panel-heading}
<div class="panel-body">

- The requestor can receive partially OR the entire quantity.
- Receiving of goods (quantity) related purchases is required for the vendor to be paid due to 3-Way match rules.
- Adding receipt date and attachments is also possible.

</div>
</div>

### How to Void a Receipt

There may be scenarios where a receipt needs to be voided (e.g. an incorrect receipt was made).

<div class="panel panel-danger">
**IMPORTANT NOTES**
{: .panel-heading}
<div class="panel-body">

- Only an ADMIN and Central Receiver will have the ability to void receipts.
- A receipt cannot be voided if the PO is already soft-closed or hard-closed (this will occur once a PO is fully received and invoiced).

</div>
</div>

As **Central Receiver**, follow the below steps:

1. Go to Inventory tab then "View Receipts".
1. Search for the line to be voided _(may use Advanced Search)_.
1. From the search results, identify the line to be voided then click the void icon under "Actions" column.
1. Below the void page, select the "Reason for Voiding" and add notes if needed.
1. Click the "Void Receipt" button.
   - Confirmation prompt appears and status should be Voided.

### How to do a Purchase Order Change Request

Requesters can take certain actions to manage their orders.

1. Under “Activity”, click the “Orders” subtab and select the purchase order which requires change.
1. Scroll down to the bottom of the screen and click on the "Request Change*" button to edit the contents of the Purchase Order.
1. The Purchase Order fields become editable and the user can make any changes needed to the information:
   - Request Purchase Order Cancellation (if not yet received or invoiced).
   - Save the Change Request (can be edited later).
   - Submit Change Request if ready for approval.
1. Once submitted, the Purchase Order will be routed for approval.
1. The requester can "Click to view pending change" to view the difference between the original and the changed Purchase Order.

![coupa-image-16](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa16.png)

Under Activity > Orders, the requestor can click on **Supplier Print View** to print or re-send a Purchase Order to another email address of their choosing.
{: .alert .alert-info}

### How to Request a New Supplier

A supplier must exist in Coupa prior to submitting a requisition for that supplier.

![coupa-image-17](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa17.png)

To raise a New Supplier Request:
1. Click on the "Forms" link on the Homepage and select the New Supplier Request.
1. Complete the form details and click "Review".
   - The approval Workflow will be displayed.
1. Click "Submit for Approval" to route to the approvers.

- Once the New Supplier request is approved, an External Supplier Form will be automatically sent to the Supplier to gather additional information.
   - The Supplier must complete the form and submit it back.
- After supplier submission, the external form will be routed to the Accounts Payable Approval Group for review and approval.
- After approval, the Supplier details will be integrated to NetSuite and it will flow back to Coupa to complete the New Supplier creation. By then, the Supplier should be available in Coupa when creating Purchase Requests and Invoices.

### How to Search for a Supplier

- On the Coupa Homepage, click the "Write a request" button.
- Type the supplier’s name on the Supplier field.
   - If the Supplier is active, the system will display the Supplier.
   - If a "No results match" message popped below the supplier box, then the Supplier is inactive or not yet existing in Coupa.

![coupa-image-18](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa18.png)

### How to complete the Professional Services Request Form

The Professional Services Request form must be filled out **before** creating a requisition for any professional services related purchase.

![coupa-image-21](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa21.png)

To complete the Professional Services Request form:
1. Click on the "Forms" link on the Homepage and select "Professional Services Request".
1. Fill out all the form questions and click "Submit".
   - The cart will be automatically updated with the provided answers in the line item.

![coupa-image-22](/handbook/business-technology/enterprise-applications/guides/coupa-guide/coupa22.png)

The user can now proceed with the [creation of the purchase request](/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-create-a-requisition) by adding the remaining details to the line item.

## Coupa Training Videos

All Coupa related videos can be found in our ["Coupa" playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0Kr1PNe_Ycz0x4G5aizUPDbM) on youtube.

## Coupa Support

### GitLab Internal Escalation Process

For any Coupa requests, [open an issue](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/intake/-/issues/new?issue%5Bmilestone_id%5D=#) using the `Coupa Request` template.

If your request involves a change to the current business process, either the Procurement and/or Accounts Payable Team will have to approve it depending on the type of request.  
{: .alert .alert-info}

If you have an urgent issue, send a message to the _#coupa_help_ slack channel explaining what you need. The Enterprise Apps team will help determine what is the best process to solve the request.


{::options parse_block_html="false" /}
