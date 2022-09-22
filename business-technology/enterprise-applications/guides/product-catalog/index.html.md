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

Two things to consider when choosing your issue template:
- Are you requesting to create a new SKU or modify an existing SKU?
    - Select the issue template `CM: Add_New_PS_SKU` for Professional Service SKUs
    - Select the issue template `CM: Add_New_SKU` for Non-Professional Service SKUs
- Are you requesting to retire a SKU so that it will no longer be sold?
    - Select the issue template `CM: Retire_SKU` and indicate the type of SKU under the `Request Type` on the issue
{: .alert .alert-warning}

The most common use cases are described below. Find the one that applies to your need and follow the proposed steps:
- If you need to **create** or **update** a **Professional Services SKU**, open an issue in [this directory](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/financeops/finance-systems/-/issues/new#) using the `CM: Add_New_PS_SKU` template and follow the steps from the **[How to Create New or Update a Professional Services SKU](#how-to-create-new-or-update-a-professional-services-sku)** section of this handbook page.
- If you need to **create** or **update** a **Non-Professional Services SKU**, open an issue in [this directory](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/financeops/finance-systems/-/issues/new#) using the `CM: Add_New_SKU` template and follow the steps from the **[How to Create New or Update a SKU](#how-to-create-new-or-update-a-sku)** section of this handbook page.
- If you need to **retire** an **existing SKU**, open an issue in [this directory](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/financeops/finance-systems/-/issues/new#) using the `CM: Retire_SKU` template and follow the steps from the **[How to Retire a SKU](#how-to-retire-a-sku)** section of this handbook page.

### How to Create New or Update a Professional Services SKU

#### Request Type

This section determines if the request is for the creation of a new SKU or for the update of an existing one.
Check the correct box according to your need. If you are updating an existing Professional Services SKU, provide the rationale for the change requested.

#### Submitter

**Have you referenced if the SKU is already available in the Product Catalog to ensure it does not already exist?**

- If you have selected `New Professional Services SKU` in the previous section, make sure to confirm if the SKU you are requesting doesn't already exist.

**Please assign the SKU Request Issue to yourself and complete all sections of Step 1**

- On the right-hand panel of the issue, make sure to add yourself as the assignee by clicking on the `Edit` button and assigning yourself.

#### 1. Product Information

_It is the Submitters responsibility to ensure all required information is provided. Non-standard SKU configuration requests (marked with *** in the issue) will require Cross-functional Approval. Any missing or incomplete fields will result in a delay to the review and/or approval of your request._

**Overview of Product/Service**
- Provide an overview of the SKU that needs to be created and the value provided to the Customer.

**Name**
- Identify the name of the SKU that will be displayed in quotes and in the product.

**Desired Go-Live Date**
- Add the specific date of when the new SKU is expected to be used.

**How is the proposed SKU (meant to be) sold to Customers**
- Select `Self-serve` if the customer can purchase the proposed SKU without having assistance from the sales team. (Fullfillment Approval required in Section 2)
- Select `Sales-assisted (SFDC Quote)` if the customer will need to go through the sales team to purchase the proposed SKU.

**Product/Service Type for Quoting**
- Add On Product is the only option for Professional Services SKUs.

**Charge Type**
- There are 3 charge types. Select the correct one for your use case based on the explanation below:
  - Recurring Charges: a charge that is billed on a regular basis until removed from a Subscription.
  - One-Time Charges: a charge that is only billed once.
  - Usage Charges: a charge that is billed in arrears based on consumption.
    - When `Usage` is selected, the `Any Included Units?` option appears. Identify if there will be any units included in the charge, for example: _phone plan with 1000 included minutes with overage fees after_. 

**Unit of Measure (UOM)**
- The most common unit of measure is `Seat`. Select `Other` if your need is related to a different UOM and name it (example: Each, Instance, License, Workshop, Minutes, Packs).

**Charge Model**
- There are 4 charge models. Select the correct one for your use case based on the explanation below:
   - With `Per Unit Pricing` the product/service is priced per unit of measure (UOM).
   - With `Flat Fee` the product/service is a single fixed price for 1 unit of measure (UOM).
   - With `Tiered` the product/service is progressively priced as volume changes.
   - With `Volume` the product/service is priced based on the volume purchased.

**Charge Timing**
- Select how the Customer is expected to pay, if `after invoice upon completed services` or `upfront for amount of the services`.

**List Price**
- Add the dollar amount per unit of measure. Example: _$250/seat/quarter_

#### 2. Cross-functional Approval For Pricing and Non-Standard Requests (if applicable)
_For non-standard SKUs (marked with *** in the sections above), additional approval from key stakeholders is required before progressing to following steps. This will allow those teams to do a pre-evaluation of the request and escalate any concerns within their teams. It is the Submitters responsibility to accurately assign the Issue for approval and follow up with approvers before progressing to Step 3._

- To reduce the overall time required to get a new SKU reviewed and approved, consider making an accompanying slack channel similar to [this one](https://gitlab.slack.com/archives/C03KMK6LASY). 

### Pricing
Pricing approval required on ALL SKU creation or update requests and the following must be provided:
   - Link to Cost of Goods Sold (COGS) spreadsheet (Make a copy of [this template](https://docs.google.com/spreadsheets/d/1em_4RiKOzvA3W9N4FxjmDxH6Rtr4my_o6ZifSXEWz0o/edit#gid=1853638008))
   - Justification if project margins are below 55% for internally delivered services
### Fulfillment
Fullfillment approval required if:
   - Proposed SKU (meant to be) sold to Customers: `Self-serve`
   - Any non-standard (***) Charge Type, Charge Model, Charge Timing requests
### Sales Operations
Sales Operations approval required if:
   - If SKU has limited quoting availability (only available to sell by certain groups)
   - Any non-standard (***) Charge Type, Charge Model, Charge Timing requests

<div class="panel panel-success">
**Next Steps**
{: .panel-heading}
<div class="panel-body">

- Once all approvals from Step 2 are obtained, assign the issue to `@andrew_murray` for Finance Approval in Step 3.
- After Finance Approval is obtained assign the issue to:
   - `@msubramanian` for input on the Invoicing, Revenue, and Custom Fields sections
   - `@jgladen` for input on the Taxation section and confirm if these professional services are used to support the self-managed (SM) software, SaaS or both
- Once Finance is complete, assign the Issue to the approvers in Step 4 (`@michael_lutz`, `@brobins`, `@james_harrison`, `@dsakamoto`, `@mmcb`).
   - Note that it is the Submitters responsibility to ensure all the appropriate approvals are obtained before progressing to Step 5.
- After approvals are obtained, please add the `BT Finance Systems` label and assign `@brianmwong` to configure the SKU in Zuora and Salesforce.
- After the SKU is configured and the SKU will be sold through the channel, assign `@bpippala` to add this link to the [quarterly update issue](https://gitlab.com/gitlab-com/sales-team/field-operations/channel-operations/-/issues/485) to ensure this new SKU/Product is added in the upcoming Pricebook and any other necessary information
- If the SKU requires a service description, it is the submitter's responsibility to complete step 7

</div>
</div>

### How to Create New or Update a SKU

#### Request Type

This section determines if the request is for the creation of a new SKU or for the update of an existing one.
Check the correct box according to your need. If you are updating an existing Non-Professional Services SKU, provide the rationale for the change requested.

#### Submitter

**Have you referenced if the SKU is already available in the Product Catalog to ensure it does not already exist?**

- If you have selected `New SKU` in the previous section, make sure to confirm if the SKU you are requesting doesn't already exist. 

**Please assign the SKU Request Issue to yourself and complete all sections of Step 1**

- On the right-hand panel of the issue, make sure to add yourself as the assignee by clicking on the `Edit` button and assigning yourself.

#### 1. Product Information

_It is the Submitters responsibility to ensure all required information is provided. Non-standard SKU configuration requests (marked with *** in the issue) will require Cross-functional Approval. Any missing or incomplete fields will result in a delay to the review and/or approval of your request._

**Overview of Product/Service**
- Provide an overview of the SKU that needs to be created and the value provided to the Customer.

**Name**
- Identify the name of the SKU that will be displayed in quotes and in the product.

**Desired Go-Live Date**
- Add the specific date of when the new SKU is expected to be used.

**How is the proposed SKU (meant to be) sold to Customers**
- Select `Self-serve` if the customer can purchase the proposed SKU without having assistance from the sales team. (Fullfillment Approval required in Section 2)
- Select `Sales-assisted (SFDC Quote)` if the customer will need to go through the sales team to purchase the proposed SKU.

**Product/Service Type for Quoting**
- Add On Product is the only option for Professional Services SKUs.

**Charge Type**
- There are 3 charge types. Select the correct one for your use case based on the explanation below:
  - Recurring Charges: a charge that is billed on a regular basis until removed from a Subscription.
  - One-Time Charges: a charge that is only billed once.
  - Usage Charges: a charge that is billed in arrears based on consumption.
    - When `Usage` is selected, the `Any Included Units?` option appears. Identify if there will be any units included in the charge, for example: _phone plan with 1000 included minutes with overage fees after_. 

**Unit of Measure (UOM)**
- The most common unit of measure is `Seat`. Select `Other` if your need is related to a different UOM and name it (example: Each, Instance, License, Workshop, Minutes, Packs).

**Charge Model**
- There are 4 charge models. Select the correct one for your use case based on the explanation below:
   - With `Per Unit Pricing` the product/service is priced per unit of measure (UOM).
   - With `Flat Fee` the product/service is a single fixed price for 1 unit of measure (UOM).
   - With `Tiered` the product/service is progressively priced as volume changes.
   - With `Volume` the product/service is priced based on the volume purchased.

**Charge Timing**
- Select how the Customer is expected to pay, if `after invoice upon completed services` or `upfront for amount of the services`.

**List Price**
- Add the dollar amount per unit of measure. Example: _$250/seat/quarter_

#### 2. Cross-functional Approval For Pricing and Non-Standard Requests (if applicable)
_For non-standard SKUs (marked with *** in the sections above), additional approval from key stakeholders is required before progressing to following steps. This will allow those teams to do a pre-evaluation of the request and escalate any concerns within their teams. It is the Submitters responsibility to accurately assign the Issue for approval and follow up with approvers before progressing to Step 3._

- To reduce the overall time required to get a new SKU reviewed and approved, consider making an accompanying slack channel similar to [this one](https://gitlab.slack.com/archives/C03KMK6LASY). 

### Pricing
Pricing approval required on ALL SKU creation or update requests and the following must be provided:
   - Link to Cost of Goods Sold (COGS) spreadsheet (Make a copy of [this template](https://docs.google.com/spreadsheets/d/1em_4RiKOzvA3W9N4FxjmDxH6Rtr4my_o6ZifSXEWz0o/edit#gid=1853638008))
   - Justification if project margins are below 55% for internally delivered services
### Fulfillment
Fullfillment approval required if:
   - Proposed SKU (meant to be) sold to Customers: `Self-serve`
   - Any non-standard (***) Charge Type, Charge Model, Charge Timing requests
### Sales Operations
Sales Operations approval required if:
   - If SKU has limited quoting availability (only available to sell by certain groups)
   - Any non-standard (***) Charge Type, Charge Model, Charge Timing requests

<div class="panel panel-success">
**Next Steps**
{: .panel-heading}
<div class="panel-body">

- Once all approvals from Step 2 are obtained, assign the issue to `@andrew_murray` for Finance Approval in Step 3.
- After Finance Approval is obtained assign the issue to:
   - `@msubramanian` for input on the Invoicing, Revenue, and Custom Fields sections
   - `@jgladen` for input on the Taxation section and confirm if these professional services are used to support the self-managed (SM) software, SaaS or both
- Once Finance is complete, assign the Issue to the approvers in Step 4 (`@david`, `@brobins`, `@james_harrison`, `@dsakamoto`, `@mmcb`).
   - Note that it is the Submitters responsibility to ensure all the appropriate approvals are obtained before progressing to Step 5.
- After approvals are obtained, please add the `BT Finance Systems` label and assign `@brianmwong` to configure the SKU in Zuora and Salesforce.
- After the SKU is configured and the SKU will be sold through the channel, assign `@bpippala` to add this link to the [quarterly update issue](https://gitlab.com/gitlab-com/sales-team/field-operations/channel-operations/-/issues/485) to ensure this new SKU/Product is added in the upcoming Pricebook and any other necessary information
- If the SKU requires a service description, it is the submitter's responsibility to complete step 7

</div>
</div>

### How to Retire a SKU

#### Request Type

This section is to determine whether the request is to retire a Professional Services SKU or a Non-Professional Services SKU. Check the correct box according to your need. Different stakeholder approval is required depending on the request type.

#### Submitter
_It is the Submitters responsibility to ensure all required information and appropriate approvals are obtained for each Step prior to progressing forward in the SKU retirement process._

**Please assign the SKU Retire Issue to yourself and complete all sections of Step 1**

- On the right-hand panel of the issue, make sure to add yourself as the assignee by clicking on the `Edit` button and assigning yourself.

#### 1. Product Information

_Completion of all fields is necessary for approvals. Any missing or incomplete fields will result in a delay to the review and/or approval of your request._

**Identify Rate Plans to be retired**
- In this section, list all the rate plan IDs that need to be retired.

**When is the SKU expected to be retired**
- Add the specific date of when the SKU is expected to be retired.

#### 2. Stakeholder Approval for SKU Retiring

_Approval from key stakeholders is required before progressing to following steps. This will allow those teams to do a pre-evaluation of the request and escalate any concerns within their teams. It is the Submitters responsibility to accurately assign the Issue for approval and follow up with approvers before progressing to Step 3._

### Approval Required Based On Request Type
- Professional Services: Michael Lutz `@michael_lutz` - {+Required for retiring a Professional Services SKU+}
- Fulfillment: Tatyana Golubeva `@tgolubeva` - {+Required for retiring a Non-Professional Services SKU+}

### Approval Required for ALL SKU Retirement Requests
- Sales: James Harrison `@james_harrison`
- Sales Operations: Jesse Rabbits `@jrabbits`
- Finance: Andrew Murray `@andrew_murray` 

<div class="panel panel-success">
**Next Steps**
{: .panel-heading}
<div class="panel-body">

- Once all approvals from Step 2 are obtained, please add the label `BT Finance Systems` assign the issue to `@brianmwong` to retire the SKU in Zuora and Salesforce

</div>
</div>


## FAQ

### What are Non-Standard Requests?
- Non-standard requests are those that have at least one of the following parameters configured:
   - `Usage` based Charge Type.
   - `Tiered` or `Volume` Charge Model
   - `Upfront for a multi-year term`, `Annually + in advance of service for a multi-year term`, `Semi-Annually + in advance of service for at least a 1 year term`, `Quarterly + in advance of service for at least a 1 year term`, `Monthly + in advance of service for at least a 1 year term`, `In arrears Charge Timing`.




{::options parse_block_html="false" /}
