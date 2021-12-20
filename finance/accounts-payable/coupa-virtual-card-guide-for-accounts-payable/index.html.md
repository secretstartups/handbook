---
layout: handbook-page-toc
title: "Virtual Card Guide for Accounts Payable"
description: "Virtual Card Guide for Accounts Payable"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

This page contains guidelines regarding Accounts Payable (AP) related tasks for Virtual Cards. There are three different scenarios for Virtual Cards:
- **Scenario A**: Supplier paid by Virtual Card for one time purchase or emergency payment **(most common request)**.
- **Scenario B**: Supplier permanently paid by Virtual Card on PO (card issued on the PO to Requestor). 
- **Scenario C**: Supplier permanently paid by Virtual Card on invoice (card issued to Supplier after invoices have been processed/approved for payment).

<br>

**Scenario A** - there are no tasks for AP.

<br>

**Scenario B** - AP will need to create a new Supplier Payment Account (SPA) type for the Supplier. See below steps to create the SPA.
- Step 1. When the requisition arrives in the AP **To Do** queue, create a new Supplier Payment Account.

![apvcard-image-1](/handbook/finance/coupa-virtual-card-guide-for-accounts-payable/apvcard1.png)
<br>
- Step 2. You will be prompted to enter your 2FA. 
- Step 3. You will be directed to create the new Supplier Payment Account. See below regarding how to complete the necessary fields:

![apvcard-image-4](/handbook/finance/coupa-virtual-card-guide-for-accounts-payable/apvcard4.png)

<br>
- Step 4. Click **Create**. The new SPA request will then be routed to **Internal SPA Approval Group** for approval.
- Step 5. After the new SPA status = **Active**, AP will edit the requisition to update the Supplier Name (in the **Cart Items** section) from **Virtual Card** to the **actual Supplier's Name**, which is listed in the Requested Virtual Card Supplier field.

![apvcard-image-3](/handbook/finance/coupa-virtual-card-guide-for-accounts-payable/apvcard3.png)
<br>
- Step 6. After the new SPA is active and editing the Supplier Name change, update **Comments** section of the requisition stating permanent Virtual Card has been created.

<br>   

**Scenario C**: follow steps 1 - 2 as above Scenario B.
- Step 3. You will be directed to create the new Supplier Payment Account. See below regarding how to complete the necessary fields:

![apvcard-image-5](/handbook/finance/coupa-virtual-card-guide-for-accounts-payable/apvcard5.png)
<br>

<div class="panel panel-danger">
**IMPORTANT NOTE**
{: .panel-heading}
<div class="panel-body">

**Ensure the supplier's email address is entered correctly. Once the Virtual Card has been issued, it can't be resent to another email address.**

</div>
</div>

- Step 4. Click **Create**. The new SPA request will then be routed to **Internal SPA Approval Group** for approval.

<br>

After the new SPA is active, payments for the supplier will be issued by Virtual Card during the weekly payment run.
