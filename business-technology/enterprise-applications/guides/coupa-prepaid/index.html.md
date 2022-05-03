---
layout: handbook-page-toc
title: "Coupa Prepaid Automation Process"
description: "Coupa Prepaid Automation Process (as of 2022-04-01)"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

To facilitate an improved and efficient process, the Accounting Team has implemented the automation of amortization entries. The following changes will be needed when generating a new requisition in Coupa only if it is either a:

1. Prepayment **OR**
1. Deposit - which is any service charge that needs to be amortized/ capitalized according to [Prepaid Expense Policy](https://about.gitlab.com/handbook/finance/accounting/#prepaid-expense-policy), or those that correspond to events or services that will occur in the future.

<br>

When entering a new requisition in Coupa:

1. Check the box **Is this a prepaid?** if the requisition needs to be treated as Prepaid. 
1. If **Is this is a prepaid? = Yes**, then for the **Amortization Schedule**, select **Prepaid Expense Amortization** from the drop down list.

![coupaprepaid-image-1](/handbook/business-technology/enterprise-applications/guides/coupa-prepaid/coupaprepaid1a.png)

<br>

- Set the amortization period **Service Start Date** and **Service End Date** that matches the [Prepaid Expense Policy](https://about.gitlab.com/handbook/finance/accounting/#prepaid-expense-policy) or the future dates on which the event or service will occur. This determines the date on which this invoice will be booked as an expense. In case the dates have not been selected, Coupa will automatically fill these fields with the original date of the PO and this will have an impact on the corresponding month's Budget.
  - The start and end date will delimit the amortization period of the invoice. Example: If you want to refer to an invoice that needs to be amortized over 1 year, the correct dates would be 4/1/22 to 3/31/23.

![coupaprepaid-image-2](/handbook/business-technology/enterprise-applications/guides/coupa-prepaid/coupaprepaid2a.png)

<br>

- Select the appropriate Commodity for this requisition. **It will no longer need a special Prepaid commodity since Coupa has been modified to recognize a Prepaid by just checking the Prepaid box.**

![coupaprepaid-image-3](/handbook/business-technology/enterprise-applications/guides/coupa-prepaid/coupaprepaid3a.png)

<br>
<br>

<div class="panel panel-info">
**NOTE**
{: .panel-heading}
<div class="panel-body">

All the information selected on the requisition flows to the corresponding invoice when it is submitted. The invoice will require an additional review before it is approved for payment. If any incorrect information is noted, the invoice will be rejected with Comments.

</div>

{::options parse_block_html="false" /}
