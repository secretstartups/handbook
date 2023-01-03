---
layout: handbook-page-toc
title: "Product Catalog Guide"
description: "How to request the creation or modification of a SKU."
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## How to request the creation or modification of a SKU

We use issues to log requests related to SKUs. There are 3 issue templates in [this directory](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/financeops/finance-systems/-/issues/new#) that the user can choose from to help log their request.

<div class="panel panel-success">
**Common Use Cases**
{: .panel-heading}
<div class="panel-body">

1. To **create** or **update** a **Professional Services SKU**:
    - Open an issue in [this directory](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/financeops/finance-systems/-/issues/new#) using the `CM: Add_New_PS_SKU` template
    - Follow the steps from the **[How to Create New or Update a Professional Services SKU](#how-to-create-new-or-update-a-professional-services-sku)** section of this handbook page
2. To **create** or **update** a **Non-Professional Services SKU**:
    - Open an issue in [this directory](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/financeops/finance-systems/-/issues/new#) using the `CM: Add_New_SKU` template
    - Follow the steps from the **[How to Create New or Update a SKU](#how-to-create-new-or-update-a-sku)** section of this handbook page.
3. To **retire** an **existing SKU**:
    - Open an issue in [this directory](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/financeops/finance-systems/-/issues/new#) using the `CM: Retire_SKU` template
    - Follow the steps from the **[How to Retire a SKU](#how-to-retire-a-sku)** section of this handbook page

</div>
</div>


## How to Create New or Update a Professional Services SKU

It is the Submitters responsibility to ensure all required information and appropriate approvals are obtained for each Step prior to progressing forward in the SKU process. **Please assign the SKU Request issue to yourself by clicking on the `Edit` button on the right-hand panel of the issue.** To reduce the overall time required to get a new SKU reviewed and approved, consider making an accompanying slack channel similar to [this one](https://gitlab.slack.com/archives/C03KMK6LASY). 
{: .alert .alert-warning}

### Step 1. Product Information

**Overview of Product/Service**
- Provide an overview of the SKU that needs to be created and the value provided to the Customer.

**Name**
- Provide the proposed name of the SKU that will be displayed to customers.

**Rate Plan Charge Description**
- Provide a short description that is displayed next to the product during quoting

**Desired Go-Live Date**
- Add the specific date of when the new SKU is expected to be used.

**How is the proposed SKU (meant to be) sold to Customers**
- Select `Self-serve` if the customer can purchase the proposed SKU without having assistance from the sales team. (Fullfillment Approval required in Section 2).
- Select `Sales-assisted (SFDC Quote)` if the customer will need to go through the sales team to purchase the proposed SKU.

**Product/Service Type for Quoting**
- Add On Product is the only option for Professional Services SKUs.

**Charge Type**
- There are 3 charge types. Select the correct one for your use case based on the explanation below:
  - Recurring Charges: a charge that is billed on a regular basis until removed from a Subscription.
  - One-Time Charges: a charge that is only billed once.
  - Usage Charges: a charge that is billed in arrears based on consumption.
    - If `Usage` is selected, fill out the `Any Included Units?` section too. 
    - This is used to identify if there will be any units included in the charge, for example: _phone plan with 1000 included minutes with overage fees after_. 

**Unit of Measure (UOM)**
- The most common unit of measure is `Seat`. Select `Other` if your need is related to a different UOM and name it (example: Each, Instance, License, Workshop, Minutes, Packs).
   - If your product will be a `Flat Fee` Charge Model, this section can be left blank.
   - Most Professional Services SKUs do not have a UOM.

**Charge Model**
- There are 4 charge models. Select the correct one for your use case based on the explanation below:
   - With `Per Unit Pricing` the product/service is priced per unit of measure (UOM).
   - With `Flat Fee` the product/service is a single fixed price per purchase.
   - With `Tiered` the product/service is progressively priced as volume changes.
   - With `Volume` the product/service is priced based on the volume purchased.

**Charge Timing**
- Select how the Customer is expected to pay, if `after invoice upon completed services` or `upfront for amount of the services`.

**List Price**
- Add the dollar amount price of the SKU. If a unit of measure is associated to this SKU, explain the dollar amount per UOM (Example: _$250/seat/quarter_)

In the issue template, three asteriks (***) next to sections in Step 1 are considered a "non-standard" configuration request and require additional Cross-functional approvals in Step 2.
{: .alert .alert-warning}

### Step 2. Cross-functional Approval For Pricing and Non-Standard Requests

**Pricing approval required on ALL SKU creation or update requests**:
   - Provide a link to the Cost of Goods Sold (COGS) spreadsheet (Make a copy of [this template](https://docs.google.com/spreadsheets/d/1em_4RiKOzvA3W9N4FxjmDxH6Rtr4my_o6ZifSXEWz0o/edit#gid=1853638008))
   - Provide a justification if project margins are below 55% for internally delivered services
   - Obtain approval from the `Senior Director of Product Monetization`

**Fulfillment approval required if**:
   - Proposed SKU (meant to be) sold to Customers: `Self-serve`
   - Any non-standard (***) Charge Type, Charge Model, Charge Timing requests
   - Obtain approval from the `Principal Product Manager`
   
**Sales Operations approval required if**:
   - If SKU has limited quoting availability (only available to sell by certain groups)
   - Any non-standard (***) Charge Type, Charge Model, Charge Timing requests
   - Obtain approval from the `Senior Manager of Deal Desk`

<div class="panel panel-success">
**Next Steps**
{: .panel-heading}
<div class="panel-body">

- Once all required cross-functional approvals are obtained, appropiately assign the issue as described in Step 3 of the issue template to obtain Finance approvals:
   - For **Finance**, assign the issue to the `Senior Director of Revenue Accounting`
   - For **Revenue/Billing**, assign the issue to the `Senior Manager of Revenue Accounting` for input on the Invoicing, Revenue, and Custom Fields sections
   - For **Tax**, assign the issue to the `VP of Tax` for input on the Taxation section and confirm if these professional services are used to support the self-managed (SM) software, SaaS or both
- Once Finance approvals are obtained, send a request in the appropiate slack channel as described in Step 4 the issue template to obtain Management approvals:
   - For **Professional Services Management Approval**, tag either the `Senior Director of Education Services` or the `Director of Professional Services` in #professional-services
   - For **Finance Management Approval**, tag the `Chief Financial Officer` in #cfo-approvals
   - For **Sales Management Approval**, tag the following individuals:
      - `Senior Director of Sales Operations` in #sales-support
      - `VP of Customer Success` in #customer-success
      - `Chief Revenue Officer` in #cro-approvals
- After all management approvals are obtained from Step 4, please add the `BT Finance Systems` label and assign `@brianmwong` to configure the SKU in Zuora and Salesforce in Step 5
- If the SKU will be sold through the channel, assign the issue to the `Sales Operations Analyst` listed in Step 6 to add the SKU to the quarterly update issue, the upcoming Pricebook and any other necessary information
- If the SKU requires a service description, it is the submitter's responsibility to complete step 7

</div>
</div>

## How to Create New or Update a SKU

It is the Submitters responsibility to ensure all required information and appropriate approvals are obtained for each Step prior to progressing forward in the SKU process. **Please assign the SKU Request issue to yourself by clicking on the `Edit` button on the right-hand panel of the issue.** To reduce the overall time required to get a new SKU reviewed and approved, consider making an accompanying slack channel similar to [this one](https://gitlab.slack.com/archives/C03KMK6LASY). 
{: .alert .alert-warning}

### Step 1. Product Information

**Overview of Product/Service**
- Provide an overview of the SKU that needs to be created and the value provided to the Customer.

**Name**
- Provide the proposed name of the SKU that will be displayed to customers.

**Rate Plan Charge Description**
- Provide a short description that is displayed next to the product during quoting

**Desired Go-Live Date**
- Add the specific date of when the new SKU is expected to be used.

**How is the proposed SKU (meant to be) sold to Customers**
- Select `Self-serve` if the customer can purchase the proposed SKU without having assistance from the sales team. (Fullfillment Approval required in Section 2).
- Select `Sales-assisted (SFDC Quote)` if the customer will need to go through the sales team to purchase the proposed SKU.

**Product/Service Type for Quoting**
- Add On Product is the only option for Professional Services SKUs.

**Charge Type**
- There are 3 charge types. Select the correct one for your use case based on the explanation below:
  - Recurring Charges: a charge that is billed on a regular basis until removed from a Subscription.
  - One-Time Charges: a charge that is only billed once.
  - Usage Charges: a charge that is billed in arrears based on consumption.
    - If `Usage` is selected, fill out the `Any Included Units?` section too. 
    - This is used to identify if there will be any units included in the charge, for example: _phone plan with 1000 included minutes with overage fees after_. 

**Unit of Measure (UOM)**
- The most common unit of measure is `Seat`. Select `Other` if your need is related to a different UOM and name it (example: Each, Instance, License, Workshop, Minutes, Packs).
   - If your product will be a `Flat Fee` Charge Model, this section can be left blank.

**Charge Model**
- There are 4 charge models. Select the correct one for your use case based on the explanation below:
   - With `Per Unit Pricing` the product/service is priced per unit of measure (UOM).
   - With `Flat Fee` the product/service is a single fixed price per purchase.
   - With `Tiered` the product/service is progressively priced as volume changes.
   - With `Volume` the product/service is priced based on the volume purchased.

**Charge Timing**
- Select how the Customer is expected to pay for this SKU

**List Price**
- Add the dollar amount price of the SKU. If a unit of measure is associated to this SKU, explain the dollar amount per UOM (Example: _$250/seat/quarter_)

In the issue template, three asteriks (***) next to sections in Step 1 are considered a "non-standard" configuration request and require additional Cross-functional approvals in Step 2.
{: .alert .alert-warning}

### Step 2. Cross-functional Approval For Pricing and Non-Standard Requests

**Pricing approval required on ALL SKU creation or update requests**:
   - Provide a link to the Cost of Goods Sold (COGS) spreadsheet (Make a copy of [this template](https://docs.google.com/spreadsheets/d/1em_4RiKOzvA3W9N4FxjmDxH6Rtr4my_o6ZifSXEWz0o/edit#gid=1853638008))
   - Provide a justification if project margins are below 55% for internally delivered services
   - Obtain approval from the `Senior Director of Product Monetization`

**Fulfillment approval required if**:
   - Proposed SKU (meant to be) sold to Customers: `Self-serve`
   - Any non-standard (***) Charge Type, Charge Model, Charge Timing requests
   - Obtain approval from the `Principal Product Manager`
   
**Sales Operations approval required if**:
   - If SKU has limited quoting availability (only available to sell by certain groups)
   - Any non-standard (***) Charge Type, Charge Model, Charge Timing requests
   - Obtain approval from the `Senior Manager of Deal Desk`

<div class="panel panel-success">
**Next Steps**
{: .panel-heading}
<div class="panel-body">

- Once all required cross-functional approvals are obtained, appropiately assign the issue as described in Step 3 of the issue template to obtain Finance approvals:
   - For **Finance**, assign the issue to the `Senior Director of Revenue Accounting`
   - For **Revenue/Billing**, assign the issue to `Senior Manager of Revenue Accounting` for input on the Invoicing, Revenue, and Custom Fields sections
   - For **Tax**, assign the issue to the `VP of Tax` for input on the Taxation section and confirm if these professional services are used to support the self-managed (SM) software, SaaS or both
- Once Finance approvals are obtained, send a request in the appropiate slack channel as described in Step 4 the issue template to obtain Management approvals:
   - For **Product Management Approval**, tag the `Chief Product Officer` in #product
   - For **Finance Management Approval**, tag the `Chief Financial Officer` in #cfo-approvals
   - For **Sales Management Approval**, tag the following individuals:
      - `Senior Director of Sales Operations` in #sales-support
      - `VP of Customer Success` in #customer-success
      - `Chief Revenue Officer` in #cro-approvals
- After all management approvals are obtained from Step 4, please add the `BT Finance Systems` label and assign `@brianmwong` to configure the SKU in Zuora and Salesforce in Step 5
- If the SKU will be sold through the channel, assign the issue to the `Sales Operations Analyst` listed in Step 6 to add the SKU to the quarterly update issue, the upcoming Pricebook and any other necessary information
- If the SKU requires a service description, it is the submitter's responsibility to complete step 7

</div>
</div>

## How to Retire a SKU

It is the Submitters responsibility to ensure all required information and appropriate approvals are obtained for each Step prior to progressing forward in the SKU process. **Please assign the SKU Request issue to yourself by clicking on the `Edit` button on the right-hand panel of the issue.** Any missing or incomplete fields will result in a delay to the review and/or approval of your SKU retirement request.
{: .alert .alert-warning}

### Step 1. Product Information

**Identify Rate Plans to be retired**
- In this section, list all the rate plan IDs that need to be retired.

**When is the SKU expected to be retired**
- Add the specific date of when the SKU is expected to be retired.

### Step 2. Stakeholder Approval for SKU Retiring

**Approval Required Based on Request Type**
- If retiring Professional Services SKUs, tag the `Senior Director of Education Services` or `Director of Professional Services`
- If retiring Non-Professional Services SKUs, tag the Fulfillment `Principal Product Manager`

**Approval Required for ALL SKU Retirement Requests**
- For Sales, tag the `Senior Director of Sales Operations`
- For Sales Operations, tag the `Senior Manager of Deal Desk`
- For Finance, tag the `Senior Director of Revenue Accounting`

### Step 3. Business Technology to Retire SKU in Zuora & Salesforce

Once all SKU information in Step 1 and approvals from Step 2 are obtained, please add the label `BT Finance Systems` assign the issue to `@brianmwong` to retire the SKU in Zuora and Salesforce


## FAQ

1. **What are Non-Standard Requests?**
- They are SKU configurations that GitLab typically does not support/has not supported in the past and are marked by three asterisks (***) in Step 1 Product Information of the SKU process.
2. **Who is responsible for obtaining approvals for my new SKU request?**
- It is the Submitters responsibility to ensure all required information and appropriate approvals are obtained for each Step prior in the SKU process.
3. **Where can I find the issue templates described in this handbook page?**
- There are 3 issue templates in this [directory](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/financeops/finance-systems/-/issues/new#) that the user can choose from to help log their request.
4. **I only want to update the name/description of an existing SKU, do I need to go through this entire process?**
- If you are not changing the charge type, unit of measure, charge model, charge timing or list price then you can simply submit an issue in [this directory](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/financeops/finance-systems/-/issues/new#) using the template `CM: Configuration Change [Generic]` and fill out the `Requestor` section.

{::options parse_block_html="false" /}
