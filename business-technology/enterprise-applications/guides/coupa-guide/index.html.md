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

Coupa provides this functionality within one platform and is integrated to decrease procurement approval turn-times and reduce manual workflow delays.

## Business Solution

The business decided to move forward with the implementation of Coupa for the Procurement and Payment Program. Coupa provides these functionalities within one platform and is integrated to decrease procurement approval turn-times and reduce manual workflow delays

In scope for this first delivery is the implementation of Coupa Pay for the US and Netherlands entities.
{: .alert .alert-info}

## What is Coupa

Coupa is a cloud-based purchasing and payment platform that will be used by GitLab as from June 1st 2021 **for the US and Netherlands entities**. It has an easy-to-use interface that will improve the way suppliers connect with GitLab. All new purchase orders, invoices and communications will be managed through the Coupa Supplier Portal.

### How to access Coupa

Coupa is available via Okta. To access the platform:
1. Login to your [Okta home page](https://gitlab.okta.com/app/UserHome#).
1. Click on the Coupa (Prod) button.
   - A new tab should open with your user logged in.

> If you need access to Coupa, please open an [Access Request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new).

## How to use Coupa

### Home Page Overview

ADD IMAGE 1

1. **Home Icon** - This icon will bring you back to the homepage.
1. **Account Name** - contains a number of personal settings related to managing your account in Coupa.
1. **Cart** - This links to your shopping cart, which contains any items selected but not yet submitted for approval.
1. **Search Bar** - Used to search or browse catalog items and create free text requests
1. **Recent Activity** - This displays your 5 most recent transactions. Selecting “View All” will bring you to Activity to display all of your previous requisitions and other transactions.
1. **To Do’s** - displays a list of action items within Coupa that are assigned to you. Selecting View All will bring you to your Coupa Inbox to display all of your to do’s.
1. **Additional Stores (“Punchouts”)** - Offers the possibility to search, select and submit purchases directly from the Supplier’s portal.
1. **GitLab - Important Links and Resources** - This will contain important information about Coupa, along with links to training material and other important documents.

### User Account

ADD IMAGE 2

Account Name contains a number of options related to managing your account in Coupa:

- **Activity**: Displays all of your previous requisitions, related orders, receipts, and invoices.
   - In each transactional tab, you can perform the following:
      - 1) **View**: allows you to quickly apply sets of filters to display reports such as all requisitions, requisitions requiring receipt, draft requisitions, and a number of other pre built reports, along with option of creating custom reports.
      - 2) **Report Scheduling**: allows to set up recurring reports that are emailed to recipients on a regular basis (can be daily, weekly, or monthly).
      - 3) **Advanced**: allows to apply a filter or set of filters to the list of requisitions.
      - 4) **Search**: allows to quickly search all fields on a requisition for a match.
      - 5) **Export**: allows downloading a report in CSV or Excel format based on the current filters applied to the list of requisitions.
      - 6) **Actions**: the icons next to each requisition allow you to edit, copy, cancel, withdraw, and resend requisitions.

ADD IMAGE 3

- **Groups**: Access to Groups setup and allows user to add members in the group he belongs to.
- **Settings**: Contains consolidated personal settings.
   - **General**: The General tab is where you can load a profile photo and check user forms.
   - **Address Book**: Allows you to view your default shipping address and change it as needed (you can also change the shipping address of a particular requisition on the requisition page).
   - **Delegates**: Users can delegate their receiving and approvals to another user by using the Delegates functionality (it is possible to add multiple, overlapping delegates, and enable notifications).
      - Assigned delegates must be of an equivalent or greater management level.
      - For approvals as part of an approval group, the individual must be a member of that group.
   - **Reports**: Users can schedule a report by going to a particular report view and specifying the scheduling details (only certain users will have access to reports and report views are dependent on role).
   - **Notifications**: Coupa notifications can be managed. For each type of notification, the User can choose whether they would like to receive notifications via email (Email), within Coupa (Online), both, or neither.
   - **Two-Factor Authentication (2FA)**: Should be enabled on user profiles to ensure that financial accounts and instruments are protected for control and use by the individual to whom they are intended. This extra authentication layer on the user profile is required before that user can be granted privileged permissions for working with payment features like creating batches for expense and invoice payments, creating accounts, and many other secured payment functions. _Check the [How to enable Two-Factor Authentication (2FA)]() section for more details_.
- **Inbox** - Displays all current and previous notifications.
- **Sign Out** - to exit the application.

### How to enable Two-Factor Authentication (2FA)
1. Go to your Account Name > Settings
2. Click on the Two-Factor Authentication subtab
3. Click the Enable button
4. Use your Google Authentication app to scan the QR Code
5. Enter the 6-digits displayed in the authentication app in the Verification Code field.
6. Click Submit

Anytime you are challenged for a 2FA verification code, just launch your authenticator and enter the latest code.

### How to Create a Requisition

#### Free-Form Requisition

ADD IMAGE 4

1. A Requestor clicks on the ‘Write’ button on the homepage.
1. Complete the “write” screen with following information:
   - a) Item Description **(required)**
   - b) Choose if Amt (amount) or Qty (quantity) **(required)**
   - c) Supplier **(required)**
   - d) Commodity **(required)**
   - e) Unit Price **(required)**
   - f) Currency **(required)**
   - g) Qty **(required if Qty-based)**
   - h) UOM **(required if Qty-based)**
   - i) Need by **(optional)**
   - j) Supplier Part Number **(optional)**
   - k) Manufacturer Name **(optional)**
   - l) Manufacturer Part Number **(optional)**
   - m) Service Start Date **(optional)**
   - n) Service End Date **(optional)**
   - o) Attachments **(optional)**
   - p) Write Multiple Request – tick this box if you will create multiple lines

ADD IMAGE 5

<div class="panel panel-warning">
**NOTES**
{: .panel-heading}
<div class="panel-body">

- Quantity vs Amount:
   - Amount should be selected if it is for a service-based requisition.
   - Quantity should be selected if it is an item-based requisition.
   - When Professional Services are bought together with a software, they should be added in different lines (since they will fall under different commodities). Software purchases are usually based in the amount and not the quantity.

</div>
</div>

1. Click Add to Cart once completed. You can add more items by repeating Step 2.
1. Once a requester clicks on ‘Add to Cart’, they can review it by clicking on the ‘Cart’ button at the top of the page.

ADD IMAGE 6

1. After clicking Review Cart, the requestor will be directed to the ‘Review Cart’ screen and all the cart details will be displayed. (This is your Purchase Request form that will be flipped into an Order when approved). _In the review cart screen a requestor can review and edit cart details as required_

**HEADER LEVEL**
- a) On Behalf Of (optional. Use this to create a request on behalf of another user).
- b) Description of Purchase (optional).
- c) Hide Price (optional. To hide PO price from the Vendor).
- d) Attachments: Unsigned Contract, Previous Contracts, and Security Document (required).
- e) Vendor has access to red/orange data? (required - see notes below).
- f) Vendor’s Security Contact Email (optional).
- g) Address (required. Click on the magnifying glass icon to select an address).
- h) Attention (defaults from the User record).

ADD IMAGE 7

<div class="panel panel-warning">
**NOTES**
{: .panel-heading}
<div class="panel-body">

- If the requestor is unsure about the type of data, tag the @security and @procurement groups in a comment before submitting the requisition for approval.
   - Requisitions can be saved for later

</div>
</div>

**LINE LEVEL**
- Line Item - click on this section to launch the edit mode. Update line details as needed.
- Greyed-out fields are non-editable.
- Fields marked with a red asterisk are required fields.
- Click Save to apply the changes.

ADD IMAGE 8

### Approvals

Once all the required information including the billing string is populated on the cart, based on the system approval rules, the applicable approvers are displayed beneath the cart line. _The greater the amount of the requisition, the more approvers will be needed._

ADD IMAGE 9

#### Approvals Section

- A requester can make following changes to the approval chain:
   - Add an Approver.
   - This opens a window to add an approver. A User can type in a few letters of the approver name and the system displays all possible entries below the window. 
   - The requester can then select if the person is to be added after the current approver, end of the chain, or only as a watcher.

**NOTE:**A watcher cannot approve or reject the cart but will receive notifications about the requisition.
{: .alert .alert-info}

ADD IMAGE 10

- At the bottom-right section of the review cart screen the user can:
   - a) Save the Purchase Request but not keep it active in their Cart by clicking on “Save for Later”. The Purchase Request will be available on “Draft” status on the user’s “Activity” page under the ”Requisitions” section.
   - b) Save the PR on his/her cart by clicking on “Save”. In this case the PR will be available on the requester’s “Cart” Icon (On the top right of the screen)
   - c) Once the cart has been verified for correct information, the User can submit the cart for approval by clicking on the “Submit for Approval” button below the approval chain.
- Once the requisition is submitted, the user sees a green banner with confirmation that the Purchase Request has been sent for approvals.

ADD IMAGE 11

#### Methods to Approve Transactions

There are several ways to approve transactions in Coupa:

- Via **To Do’s** notification on the homepage screen.
   - To view the requisition/invoice/PO change request details, click on the subject line.
   - The approver may add comments on the “Approval Comments” section before clicking on the Reject or Approve buttons.
   - All approvers are displayed in the “Approvers” section.
   - When rejected, a requisition goes back to “Draft” status, the requestor needs to make changes and re-submit. (Please, remember leave a comment about the rejection for the requester).
      - When an invoice is rejected, it goes under “Rejected” status and the Accounts Payable needs to edit and resubmit the invoice (or void if necessary).
- Via **Inbox**.
   - Users can access all their notifications through the “Inbox” section under “Account Name”.
   - The User can change the report View to "To Do" to filter all notifications requiring action.
- Via **Activity > “Transactional Tabs” > Requiring My Approval** view.
   - In each Activity transactional subtabs, users can change the report view to Requiring My Approval.
- Via **Email**.
   - The approver receives a system-generated email notifying about the requisition or invoice as soon as a user submits the transaction.
   - All the basic information is displayed on the email.
   - The approver selects an appropriate action (View Req / Approve / Reject).
      - The “View Req” option is a link to Coupa to see the transaction in the system.
   - Once a choice is selected, an automatic email is created. The approver needs to send the e-mail for the approval to be made in Coupa.
   - Once the e-mail is sent, the transaction will move to the next approver based on the approval chain in Coupa.
      - If rejecting the Purchase Request, the approver should include a comment explaining the rationale for rejecting it.
- Via **Coupa Mobile App**.
   - A mobile application of Coupa can be downloaded either at the Apple or Android stores. Once you download the app you need to sign-in as you normally would to the instance.
   - The app allows you to do approvals for both Requisitions and Invoices:
      - To Approve: Open the requisition or invoice notification, review the information, and approve.
      - To Reject: Open the requisition or invoice notification, review the information, and reject.

#### Punchout Requisition

ADD IMAGE 12

1. On the Homepage Screen, click on any Punchout supplier located under Additional Stores section.
1. Clicking on the Punchout link will take you to an approved supplier website where you start ordering your items, just like any online shopping experience.
1. Start searching and add items to your cart.
1. When done adding items in your cart, click “Checkout”.
1. To go back to Coupa “Review Cart” screen, click “Transfer Shopping Cart”.
1. Once in Coupa Review Cart screen, populate the required information such as the Commodity and Billing Account.
1. Review completeness of the requisition and click Submit for Approval.

ADD IMAGE 13

<div class="panel panel-info">
**NOTES**
{: .panel-heading}
<div class="panel-body">

- Cart Checkout and returning to Coupa “Review Cart” screen depends on the Punchout site.
- Purchase via punchouts as often as possible. 
- Don’t add multiple punchout suppliers to one requisition.

</div>
</div>

### How to Copy a Requisition

Users can copy requisitions so they do not have to re-create the same order details multiple times again.

1. Go to “Recent Activity” or “Activity” section.
2. Click on the “Copy” Icon and a copy of the requisition will automatically be added to your cart.
   - Note: on the “Recent Activity” section you have to click on the “Actions” dropdown to be able to see the “Copy” button.

ADD IMAGE 14

<div class="panel panel-warning">
**Notes*
{: .panel-heading}
<div class="panel-body">

- TIP: If you are planning to create a similar requisition with some different details, copy a requisition you already made before then edit the details on the cart.
- NOTE: Punchout Requisitions cannot be copied!

</div>
</div>

### How to Withdraw a Requisition

Provided that a Purchase Requisition has not been approved and flipped into an Order, the user can withdraw the Purchase Request and make any changes before submitting again.

1. Go to “Recent Activity” or “Activity” section.
1. Find your Purchase Request on “Pending Approval” status and click on the “withdraw requisition” icon (Red Arrow).

ADD IMAGE 15

<div class="panel panel-warning">
**NOTES**
{: .panel-heading}
<div class="panel-body">

- TIP: On “Activity”, you can select a “Pending Approval” view
- NOTE: If a Requisition has already been flipped into an Order, the user cannot withdraw the requisition. He/she will have to create a PO Change Request (Detailed later in this training)

</div>
</div>

### How to Receive an Order

Receiving is only required for an item-based (quantity) requisition.
{: .alert .alert-info}

1. The requestor can locate the requisitions pending receipt via the **Activity** option under ‘My Account’. _This will display all the requisitions created by the Requestor._
   - It is only possible to select those requisitions that are **pending receipt** from the view **Pending Receipt**.
1. Click on the receipt icon under the column ‘Actions’. _This will open up the desktop receipt view._
1. On the receipt details screen, enter the Quantity (since receiving is only required for item-based requisitions).
1. Save the receipt by clicking on the ‘Submit’ icon.
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

As Central Receiver, follow the below steps:

1. Go to Inventory tab then "View Receipts".
1. Search for the line to be voided _(may use Advanced Search)_.
1. From the search results, identify the line to be voided then click the void icon under Actions column.
1. Below the void page, select the "Reason for Voiding" and add notes if needed.
1. Click the **Void Receipt** button.
   - Confirmation prompt appears and status should be Voided.

### How to do a PO Change Request

Requesters can take certain actions to manage their orders.

1. Under “Activity”, click the “Orders” subtab. The requester selects the purchase order which requires change.
1. Scroll down to the bottom of the screen and click on the **Request Change** button to edit the contents of the purchase order.
1. The PO fields become editable and the user can make any changes needed to the information:
   - Request PO Cancellation (if not yet received or invoiced).
   - Save the Change Request (can be edited later).
   - Submit Change Request if ready for approval.
1. Once submitted, the purchase order will be routed for approval.
1. The requester can 'Click to view pending change' to view the difference between the original PO and the changed PO.

ADD IMAGE 16

<div class="panel panel-info">
**NOTES**
{: .panel-heading}
<div class="panel-body">

- Under Activity > Orders, the requestor can click on **Supplier Print View** to print or re-send a PO to another e-mail address of their choosing.

</div>
</div>

### How to do a New Supplier Request

A supplier must exist in Coupa prior to submitting a requisition for that supplier.

To raise a New Supplier Request:
1. Click on the "Forms" link on the Homepage and select the New Supplier Request.
1. Complete the form details and click "Review".
1. Approval Workflow will be displayed. Click Submit for Approval to route to the approvers.

ADD IMAGE 17

- Once the New Supplier request is approved, an External Supplier Form will be automatically sent to the Supplier to gather additional information (the Supplier must complete the form and submit it back).
- After supplier submission, the external form will be routed to the Accounts Payable Approval Group for review and approval.
- After approval, the Supplier details will be integrated to NetSuite. Once the supplier is successfully created in NetSuite, it will flow back to Coupa to complete the New Supplier creation. By then, the Supplier should now be available when creating Purchase Requests and Invoices.






{::options parse_block_html="false" /}
