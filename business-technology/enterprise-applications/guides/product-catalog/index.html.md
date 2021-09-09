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

We use issues to log requests related to SKUs. There are 4 templates that the user can choose from to help logging their request.

Two things that you need to have in consideration when choosing your template:
- If the request is for a Professional Services SKU.
   - If it is, make sure to select the correct template (it should be either `New_PS_SKU` or `Retiring_PS_SKU`). 
- The request type.
   - If you're requesting a new SKU, updating an existing one or retiring it.
{: .alert .alert-warning}

The most common use cases are described below. Find the one that applies to your need and follow the proposed steps:
- If you need to **create** or **update** a **Professional Services SKU**, open an issue in [this directory](https://gitlab.com/gitlab-com/Finance-Division/finance/-/issues/new?issue%5Bmilestone_id%5D=) using the `New_PS_SKU` template and follow the steps from the **[How to Create New or Update a Professional Services SKU](url)** section to complete it.
- If you need to **retire** an existing **Professional Services SKU**, open an issue in [this directory](https://gitlab.com/gitlab-com/Finance-Division/finance/-/issues/new?issue%5Bmilestone_id%5D=) using the `Retiring_PS_SKU` template and follow the steps from the **[How to Retire a Professional Services SKU](url)** section to complete it.
- If you need to **create** a new SKU, open an issue in [this directory](https://gitlab.com/gitlab-com/Finance-Division/finance/-/issues/new?issue%5Bmilestone_id%5D=) using the `Add_New_SKU` template and follow the steps from the **[How to Create New or Update a SKU](url)** section to complete it.
- If you need to **retire** an existing SKU, open an issue in [this directory](https://gitlab.com/gitlab-com/Finance-Division/finance/-/issues/new?issue%5Bmilestone_id%5D=) using the `Retiring_SKU` template and follow the steps from the **[How to Retire a SKU](url)** section to complete it.

### How to Create New or Update a Professional Services SKU

#### Request Type

This section determine if the request is for the creation of a new SKU or for the update of an existing one.
Check the correct box according to your need.

#### Submitter

**Have you referenced if the SKU is already available in the Product Catalog to ensure it does not already exist?**

- If you have selected `New Professional Services SKU` in the previous section, make sure to confirm if the SKU you are requesting doesn't already exist.

**Please assign the SKU Request Issue to yourself and complete all sections of Step 1**

- On the right-hand panel of the issue, make sure to add yourself as the assignee by clicking on the `Edit` button and assigning yourself.

#### 1. Product Information

_Completion of all fields is necessary for approvals. Any missing or incomplete fields will result in a delay to the review and/or approval of your request._

**Description of Product/Service**
- Itemize exactly the SKU that needs to be created and the value provided to the Customer.

**Change Description**
- Describe the reasoning behind the need of the request.

**Name**
- List out what will be the display name that will show up on quotes and in the product.

**Desired Go-Live Date**
- Add the specific date of when the new SKU is expected to be used.

**How is the proposed SKU (meant to be) sold to Customers**
- Select `Self-serve` if the customer can purchase the proposed SKU without having assistance from the sales team.
- Select `Sales-assisted (SFDC Quote)` if the customer will need to go through the sales team to purchase the proposed SKU.

**Product/Service Type for Quoting**
- Add On Product is the only option for Professional Services SKUs.

**Charge Type**
- There are 3 charge types. Select the correct one for your use case based on the explanation below:
  - Recurring Charges / Period: a charge that is billed on a regular basis until removed from a Subscription.
  - One-Time Charges: a charge that is only billed once.
  - Usage Charges: a charge that is billed in arrears based on consumption.
    - When `Usage` is selected, the `Any Included Units?` option appears. Add here if anything will be included in the charge, for example: _phone plan with 1000 included minutes with overage fees after_. 

**Unit of Measure (UOM)**
- The most common unit of measure is `Seat`. Select `Other` if your need is related to a different UOM and name it (example: Each, Instance, License, Workshop, Minutes, Packs).

**Charge Model**
- There are 4 charge models. Select the correct one for your use case based on the explanation below:
   - With `Per Unit Pricing` the product/service is priced per unit of measure (UOM).
   - With `Flat Fee` the product/service is a single fixed price for 1 unit of measure (UOM).
   - With `Tiered` the product/service is progressively priced as volume changes.
   - With `Volume` the product/service is priced based on the volume purchased.

**Charge Timing**
- Select how the Customer is expected to be paid, if `after invoice upon completed services` or `upfront for amount of the services`.

**List Price**
- Add the dollar amount per unit of measure. Example: _$250/seat/quarter_

#### 2. Stakeholder Pre-Configuration Approval For Pricing and Non-Standard Requests (if applicable)
- Tag the Fulfillment stakeholder (`@tgolubeva`) for approval in case both `Usage` option has selected as the Charge Type **AND** `Self-serve` in the _How is the proposed SKU (meant to be) sold to Customers_ section. 
- Tag the Finance/SalesOps stakeholder (`@jrabbits`) for approval in case any non-standard Charge Type, Charge Model, Charge Timing options have been selected above.
   - Check the _[What are Non-Standard Requests](url)_ section for more information.
- Always tag the Pricing stakeholder (`@xli1`) for approval.



<div class="panel panel-success">
**Next Steps**
{: .panel-heading}
<div class="panel-body">

- Once all approvals from Step 2 are obtained, assign the issue to `@andrew_murray` for input in Step 3.
- Once Revenue/Billing and Tax tasks from Step 3. Finance are complete, assign the Issue to the approvers in Step 4 (`@michael_lutz`, `@brobins`, `@james_harrison`, `@dsakamoto`, `@mmcb`).
   - Note that it is the Submitters responsibility to ensure all the appropriate approvals are obtained before progressing to Step 5.
- After approvals are obtained, please add the `BT Finance Systems` label.
   - No assignee changes required.

</div>
</div>

### How to Retire a Professional Services SKU

#### Request Type

This section is for information only and determine the request type. No input needed here.

#### Submitter

**Please assign the SKU Retire Issue to yourself and complete all sections of Step 1**

- On the right-hand panel of the issue, make sure to add yourself as the assignee by clicking on the `Edit` button and assigning yourself.

#### 1. Product Information

_Completion of all fields is necessary for approvals. Any missing or incomplete fields will result in a delay to the review and/or approval of your request._

**Identify Rate Plans to be retired**
- In this section, list all the rate plan IDs that need to be retired.

**When is the SKU expected to be retired**
- Add the specific date of when the SKU is expected to be retired.

#### 2. Stakeholder Approval for SKU Retiring
- Once step 1 has been filled out, assign the issue to the approvers listed on Step 2 (`@tgolubeva`, `@james_harrison`, `@jrabbits`, `@andrew_murray`).
   - Note that it is the Submitters responsibility to ensure all the appropriate approvals are obtained before progressing to Step 3.
- After approvals are obtained, please add the `BT Finance Systems` label.
   - No assignee changes required.


### How to Create New or Update a SKU

#### Request Type

This section determine if the request is for the creation of a new SKU or for the update of an existing one.
Check the correct box according to your need.

#### Submitter

**Have you referenced if the SKU is already available in the Product Catalog to ensure it does not already exist?**

- If you have selected `New SKU` in the previous section, make sure to confirm if the SKU you are requesting doesn't already exist. 

**Please assign the SKU Request Issue to yourself and complete all sections of Step 1**

- On the right-hand panel of the issue, make sure to add yourself as the assignee by clicking on the `Edit` button and assigning yourself.

#### 1. Product Information

_Completion of all fields is necessary for approvals. Any missing or incomplete fields will result in a delay to the review and/or approval of your request._

**Description of Product/Service**
- Itemize exactly the SKU that needs to be created and the value provided to the Customer.

**Change Description**
- Describe the reasoning behind the need of the request.

**Name**
- List out what will be the display name that will show up on quotes and in the product.

**Desired Go-Live Date**
- Add the specific date of when the new SKU is expected to be used.

**How is the proposed SKU (meant to be) sold to Customers**
- Select `Self-serve` if the customer can purchase the proposed SKU without having assistance from the sales team.
- Select `Sales-assisted (SFDC Quote)` if the customer will need to go through the sales team to purchase the proposed SKU.

**License Type**
- If the license will be for SaaS (cloud-based) or self-hosted (On-premise) customers.

**Product/Service Type for Quoting**
- Add On Product is the only option for Professional Services SKUs.

**Charge Type**
- There are 3 charge types. Select the correct one for your use case based on the explanation below:
  - Recurring Charges / Period: a charge that is billed on a regular basis until removed from a Subscription.
  - One-Time Charges: a charge that is only billed once.
  - Usage Charges: a charge that is billed in arrears based on consumption.
    - When `Usage` is selected, the `Any Included Units?` option appears. Add here if anything will be included in the charge, for example: _phone plan with 1000 included minutes with overage fees after_. 

**Unit of Measure (UOM)**
- The most common unit of measure is `Seat`. Select `Other` if your need is related to a different UOM and name it (example: Each, Instance, License, Workshop, Minutes, Packs).

**Charge Model**
- There are 4 charge models. Select the correct one for your use case based on the explanation below:
   - With `Per Unit Pricing` the product/service is priced per unit of measure (UOM).
   - With `Flat Fee` the product/service is a single fixed price for 1 unit of measure (UOM).
   - With `Tiered` the product/service is progressively priced as volume changes.
   - With `Volume` the product/service is priced based on the volume purchased.

**Charge Timing**
- Select how the Customer is expected to be paid.

**List Price**
- Add the dollar amount per unit of measure. Example: _$250/seat/quarter_

#### 2. Stakeholder Pre-Configuration Approval For Pricing and Non-Standard Requests (if applicable)
- Tag the Fulfillment stakeholder (`@tgolubeva`) for approval in case both `Usage` option has selected as the Charge Type **AND** `Self-serve` in the _How is the proposed SKU (meant to be) sold to Customers_ section. 
- Tag the Finance/SalesOps stakeholder (`@jrabbits`) for approval in case any non-standard Charge Type, Charge Model, Charge Timing options have been selected above.
   - Check the _[What are Non-Standard Requests](url)_ section for more information.
- Always tag the Pricing stakeholder (`@xli1`) for approval.



<div class="panel panel-success">
**Next Steps**
{: .panel-heading}
<div class="panel-body">

- Once all approvals from Step 2 are obtained, assign the issue to `@andrew_murray` for input in Step 3.
- Once Revenue/Billing and Tax tasks from Step 3. Finance are complete, assign the Issue to the approvers in Step 4 (`@sfwgitlab`, `@brobins`, `@james_harrison`, `@dhong`, `@mmcb`).
   - Note that it is the Submitters responsibility to ensure all the appropriate approvals are obtained before progressing to Step 5.
- After approvals are obtained, please add the `BT Finance Systems` label.
   - No assignee changes required.

</div>
</div>

### How to Retire a SKU

#### Request Type

This section is for information only and determine the request type. No input needed here.

#### Submitter

**Please assign the SKU Retire Issue to yourself and complete all sections of Step 1**

- On the right-hand panel of the issue, make sure to add yourself as the assignee by clicking on the `Edit` button and assigning yourself.

#### 1. Product Information

_Completion of all fields is necessary for approvals. Any missing or incomplete fields will result in a delay to the review and/or approval of your request._

**Identify Rate Plans to be retired**
- In this section, list all the rate plan IDs that need to be retired.

**When is the SKU expected to be retired**
- Add the specific date of when the SKU is expected to be retired.

#### 2. Stakeholder Approval for SKU Retiring
- Once step 1 has been filled out, assign the issue to the approvers listed on Step 2 (`@tgolubeva`, `@james_harrison`, `@jrabbits`, `@andrew_murray`).
   - Note that it is the Submitters responsibility to ensure all the appropriate approvals are obtained before progressing to Step 3.
- After approvals are obtained, please add the `BT Finance Systems` label.
   - No assignee changes required.


## FAQ

### What are Non-Standard Requests?
- Non-standard requests are those that have at least one of the following parameters configured:
   - `Usage` based Charge Type.
   - `Tiered` or `Volume` Charge Model
   - `Upfront for a multi-year term`, `Annually + in advance of service for a multi-year term`, `Semi-Annually + in advance of service for at least a 1 year term`, `Quarterly + in advance of service for at least a 1 year term`, `Monthly + in advance of service for at least a 1 year term`, `In arrears Charge Timing`.




{::options parse_block_html="false" /}
