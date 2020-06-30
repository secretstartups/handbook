---
layout: markdown_page
title: "Procurement - Purchase Order Process"
---

## On this page
{:.no_toc}

- TOC
{:toc}  

## Purchase Order Process

Once a Vendor issue has completed the [Procure to Pay Process](/handbook/finance/procure-to-pay), a Purchase Order is created in Netsuite by the procurement team. Before the Purchase Order can be completed, the vendor must self register/setup within Tipalti. Any delay in the Vendor Setup process will delay payment to the Vendor. Refer to [Vendor Master Management](/handbook/finance/accounting/#3-vendor-master-management) for the Vendor set up process.

Detailed Guide with screen shots is available [here](https://docs.google.com/document/d/1iJQHbG1qBFwwis8i_-dtytMP2HY8MNg8rxAH0VS2L3E/edit#).

### Creating a GitLab Standard Purchase Order in Netsuite
This form is used for the following purchase types:

1.  [New Software and/or Existing Software Provider](/handbook/finance/procurement/#1-purchase-type-new-software-andor-existing-software-provider)
2.  [Professional Services and all other contract types](/handbook/finance/procurement/#2-purchase-type-professional-services-and-all-other-contract-types)

Video Guide [here](https://drive.google.com/file/d/1zrcNkAeI-Z1LU4ONUIckcKLsTKkxqeCW/view).

**Steps to create a GitLab Standard PO in NetSuite:**

1.  Login to Netsuite
1.  Under the "Vendors" tab, follow the menu path:
    -  Vendors → Purchases → click on “Enter Purchase Orders”.
1.  **Primary Information** - Follow the below guidelines to create the PO correctly: 
    - Custom Form → Click on the drop-down, then select "GitLab Standard Purchase Order".
    - Date → This field should auto-populate to the current date.
       - If the date the Purchase Order is being completed is different from the date the contract is signed, update this field to reflect the date the contract is signed/executed.
    - Vendor # → This is an optional field and can be left blank.
    - PO # → "To Be Generated" should be displayed in this field with NO option to update.
    - Vendor → This is a drop down field to select the Vendor, found in step 1 of the finance issue.
        - The Vendor should already be set up prior to creating a new PO. If the Vendor has not been set up, please refer to [Vendor Master Management](/handbook/finance/accounting/#3-vendor-master-management).
    - Memo → Leave it blank.
    - Approval Status → Do not change the option in this box. All approvals should already be obtained and tracked in the Finance Issue.
    - Receive By → Leave it blank.
    - Next Approver → Leave it blank. All approvals should already be obtained and tracked in the Finance Issue.
1.  **Classification** - Follow the below guidelines to create the PO correctly:
    - Subsidiary → This field is auto-populated according to the Vendor selected in the Primary Section. 
    - Department → Leave it blank.
    - Class → Leave it blank.
1.  **Intercompany Management** - Follow the below guidelines to create the PO correctly:
    - Paired Intercompany Transaction → Leave it blank.
    - Currency → This field is auto-populated according to the Vendor selected in the Primary Section. Default should be "US Dollar".
    - JE Support: Google Drive Link → Copy and paste the GitLab Finance issue URL into this field.
    - JE Created By → This field is auto-populated with the user that is creating/entering the Purchase Order.
    - Created From → Leave it blank.
    - Estimated Start Date → Date in this field should reflect the date the contract/services will begin. It can be found in the Finance Issue, under step 6.
    - Estimated End Date → Date in this field should reflect the date the contract/services will expire. It can be found in the Finance Issue, under step 6.
    - Billed Amount → Leave it blank. Data in this field will be auto-populated.
    - Amount Remaining → Leave it blank. Data in this field will be auto-populated.
1.  Scroll down to the next section and click on “Items".
    - Click on “items” to add a new line.
        - Item → The GL account found in the Finance Issue, under step 4 and “Budget Approval”.
        - Quantity → The same quantity as the total cost (so an $100K PO would have the quantity of 100).
        - Units → Leave it blank.
        - Description → Mandatory field where a brief description of the Purchase Order needs to be added. This description is the Title of the issue.
        - Rate → Is always = 1.
        - Amount → Auto-populated after adding the quantity.
        - Options → Leave it blank.
        - Department → The department found in the Finance Issue, under step 4 and “Budget Approval”.
        - Class → Not mandatory for this template. The Campaign Finance Tag, if applicable, is found in the Finance Issue, under step 2.
        - Customer → Leave it blank.
        - Billable → Leave it blank.
        - Related Asset → Leave it blank.
        - Service date → Leave it blank.
        - IC → Leave it blank.
    - Click on "Add".
        - If additional items need to be added, you may add them by manually entering in the new information or selecting "Copy Previous" and updating the fields accordingly.
    - If no additional items need to be added, Click on the "Communication" tab.
    - Select the checkbox "To be E-Mailed" and populate it with the vendor email address.
1.  Open the Custom tab.
    - Requestor name → Person who opened the Finance issue.
    - Requestor’s email → Auto-populated after adding the requestor's name.
1.  Once all information has been entered, select "Save".
1.  The screen will refresh and a message at the top of the screen will be displayed with the transaction save confirmation.

### Creating a Marketing Purchase Order in Netsuite

This form is used for the following purchase type:

1.  [Field Marketing and Events withOUT Confidential Data](/handbook/finance/procurement/#3-purchase-type-field-marketing-and-events-without-confidential-data)
  
Video Guide [here](https://drive.google.com/file/d/1JMQP94gpOfQbMOddlhdXSKilml4Wz-OH/view).

**Steps to create a Marketing PO in NetSuite**
1. Login to Netsuite
1. Under the "Vendors" tab, follow the menu path:
    - Vendors → Purchases → Enter Purchase Orders.
1. **Primary Information** - Follow the below guidelines to create the PO correctly: 
    - Custom Form → Click on the drop-down, then select  "Marketing Purchase Order".
    - Date → This field should auto-populate to the current date.
        - If the date the Purchase Order is being completed is different from the date the contract is signed, update this field to reflect the date the contract is signed/executed.
    - Vendor # → This is an optional field and can be left blank.
    - PO # → "To Be Generated" should be displayed in this field with NO option to update.
    - Vendor → This is a drop down field to select the Vendor, found in step 1 of the finance issue.
        - The Vendor should already be set up prior to creating a new PO. If the Vendor has not been set up, please refer to [Vendor Master Management](/handbook/finance/accounting/#3-vendor-master-management).
    - Memo → Leave it blank.
    - Estimated Start Date → Required data entry. Date in this field should reflect the date the contract/services will begin. It can be found in the Finance Issue, under section 1.
    - Estimated End Date → Required data entry. Date in this field should reflect the date the contract/services will expire.  It can be found in the Finance Issue, under section 1.
    - JE Support: Google Drive Link → Enter the URL of the GitLab Finance issue. 
    - Billed Amount → Data in this field will be auto-populated.
    - Amount Remaining → Data in this field will be auto-populated.
1.  **Classification** - Follow the below guidelines to create the PO correctly:
    - Subsidiary →This field is auto-populated according to the Vendor selected in the Primary Section. 
    - Department → Leave it blank.
    - Class → Leave it blank.
1.  **Intercompany Management** - Follow the below guidelines to create the PO correctly:
    - Paired Intercompany Transaction → Leave it blank.
    - Currency → This field is auto-populated according to the Vendor selected in the Primary Section. Default should be "US Dollar".
    - Requestor Name → The Invoice Approver found in the Finance Issue, under step 5 and “Budget Approval”.
    - Requestor Email → This field should auto-populate after adding a requestor in the Requestor Name field.
1.  Scroll down to the next section and click on “Items".
    - Click on “items” to add a new line. 
        - Item → The GL account found in the Finance Issue, under step 3 and “Budget Approval”.
        - Quantity → The same quantity as the total cost (so an $100K PO would have the quantity of 100).
        - Units → Leave it blank.
        - Description → Mandatory field where a brief description of the Purchase Order needs to be added. This description is the Title of the issue.
        - Rate → Is always = 1.
        - Amount → Auto-populated after adding the quantity.
        - Options → Leave it blank.
        - Department → The department found in the Finance Issue, under step 3 and “Budget Approval”.
        - Class → The Campaign Finance Tag found in the Finance Issue (usually under section 1 or in the comments).
        - Customer → Leave it blank.
        - Billable → Leave it blank.
        - Related Asset → Leave it blank.
        - Service date → Leave it blank.
        - IC → Leave it blank.
    - Click on "Add".
1.  Once all information has been entered, select "Save".
1.  The screen will refresh and a message at the top of the screen will be displayed with the transaction save confirmation.

## Update the Vendor Contract Issue after PO has been created
Once a purchase order has been created and submitted in Netsuite, the below steps have to be followed to complete the process:
1. Add the Purchase Order number to the comments section of the Vendor Contract Issue.
1. Attach the Purchase Order PDF to the comments section of the Vendor Contract Issue.
1. Add the label “PO-Done” to the Vendor Contract Issue.

