---
layout: handbook-page-toc
title: "Tech Stack - Applications"
description: "Index of all applications we manage and important links to important data, integrations, and dashboards."
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Zuora Billing

[Zuora Billing](https://www.zuora.com/products/billing-software/) is used as our billing and revenue tool for managing customer subscriptions, payments and invoicing.

---

* **Data Model:** [Zuora Billing business object model](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/A_Zuora_Billing_business_object_model)
* **Snowflake Import Process:** [Stitch Zuora Integration](https://www.stitchdata.com/integrations/zuora)
* **Raw Data:** [`zuora.*`](https://gitlab-data.gitlab.io/analytics/#!/source_list/zuora). Key objects include:
  * [`zuora.account`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.account)
  * [`zuora.invoice`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.invoice)
  * [`zuora.product`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.product)
  * [`zuora.subscription`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.subscription)
* **Modeled Data:** [Bus Matrix](https://docs.google.com/spreadsheets/d/1j3lHKR29AT1dH_jWeqEwjeO81RAXUfXauIfbZbX_2ME/edit#gid=430467333). Key objects include:
  * [`dim_billing_account`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_billing_account)
  * [`dim_invoice`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_invoice)
  * [`dim_product_detail`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_product_detail)
  * [`dim_subscription`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_subscription)
* **Sisense Dashboards:**
  * [TD: Customer Segmentation](https://app.periscopedata.com/app/gitlab:safe-dashboard/919364/TD:-Customer-Segmentation)
  * [Zuora ATR (Available to Renew)](https://app.periscopedata.com/app/gitlab:safe-dashboard/919223/Zuora-ATR-%7C-MYB---Live---v1.1)
  * [FY22 Zuora ATR](https://app.periscopedata.com/app/gitlab:safe-dashboard/919260/FY22:-Zuora-ATR---Based-on-FY21-Exit-ARR,-Snapshot-Date---2021-02-04)
  * **Model Tests:** [Trusted Data Tests](https://app.periscopedata.com/app/gitlab/765375/Trusted-Data-Tests)
  * **Model Health Dashboard:** [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/756199/TD:-Trusted-Data-Operations-Dashboard)
* **Integrations:**
  * Zuora Data to [Salesforce](#salesforce-sales-cloud) via [Zuora CPQ](#zuora-cpq)
  * CustomersDot data to Zuora via [IronBank GEM](https://gitlab.com/gitlab-org/customers-gitlab-com/-/tree/main/#ironbank) using the [Zuora Subscribe API](https://www.zuora.com/developer/api-reference/#tag/Subscriptions) and [Zuora Amend API](https://www.zuora.com/developer/api-reference/#tag/Amendments)
       * [Orders Harmonization plans to transition](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/intake/-/issues/616) to the [Zuora Orders API](https://www.zuora.com/developer/api-reference/#tag/Orders)

## Zuora CPQ

[Zuora CPQ](https://www.zuora.com/products/cpq-software/) is our Configure, Price, Quote tool used for Sales Assisted deals and is a critical tool used in the [Quote to Cash](/handbook/business-technology/enterprise-applications/quote-to-cash/) process.

Zuora CPQ is a managed package in Salesforce that has been extended for Quote Approvals by [Sales Systems](/handbook/sales/field-operations/sales-systems/).

The [Quote Approval process](/handbook/sales/field-operations/order-processing/#standard-quote-approval) itself is owned by the [Deal Desk team](/handbook/sales/field-operations/sales-operations/deal-desk/).

---

* **Data Model:** [Zuora CPQ business object model](https://knowledgecenter.zuora.com/CPQ/A_Zuora_CPQ/A2_Zuora4Salesforce_Object_Model)
* **Snowflake Import Process:** [Stitch Zuora Integration](https://www.stitchdata.com/integrations/zuora)
* **Raw Data:** [`zuora.*`](https://gitlab-data.gitlab.io/analytics/#!/source_list/zuora). Key objects include:
  * [`zuora.product`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.product)
  * [`zuora.product_rate_plan`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.product_rate_plan)
  * [`zuora.product_rate_plan_charge`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.product_rate_plan_charge)
  * [`zuora.product_rate_plan_charge_tier`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.product_rate_plan_charge_tier)
  * [`zuora.quote`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.zuora.quote)
* **Modeled Data:** [Bus Matrix](https://docs.google.com/spreadsheets/d/1j3lHKR29AT1dH_jWeqEwjeO81RAXUfXauIfbZbX_2ME/edit#gid=430467333). Key objects include:
  * [`dim_quote`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_quote)
  * [`dim_product_detail`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_product_detail)
* **Sisense Dashboards:**
  * [Pricing Dashboard- Customer Discounts](https://app.periscopedata.com/app/gitlab:safe-dashboard/919322/Pricing-Dashboard---Customer-Discounts)
  * **Model Tests:** [Trusted Data Tests](https://app.periscopedata.com/app/gitlab/765375/Trusted-Data-Tests)
  * **Model Health Dashboard:** [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/756199/TD:-Trusted-Data-Operations-Dashboard)
* **Integrations:**
  * Zuora Data to [Salesforce](#salesforce-sales-cloud) via [Zuora CPQ](#zuora-cpq)
  * CustomersDot data to Zuora via [IronBank GEM](https://gitlab.com/gitlab-org/customers-gitlab-com/-/tree/main/#ironbank) using the [Zuora Subscribe API](https://www.zuora.com/developer/api-reference/#tag/Subscriptions) and [Zuora Amend API](https://www.zuora.com/developer/api-reference/#tag/Amendments)
       * [Orders Harmonization plans to transition](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/intake/-/issues/616) to the [Zuora Orders API](https://www.zuora.com/developer/api-reference/#tag/Orders)
  
## Zuora 360

[Zuora 360](https://knowledgecenter.zuora.com/CPQ/E_Zuora_360_plus_and_360/Z_Zuora_360_Introduction) is a stock connector between Zuora and Salesforce, is transfers Zuora subscription information to Salesforce.

Zuora 360 the job is owned by [Enterprise Applications](/handbook/business-technology/enterprise-applications/), the extension of Zuora Subscription data in Salesforce for Add-ons and Renewals deal is owned by [Sales Systems](/handbook/sales/field-operations/sales-systems/).

The [Add-On](/handbook/sales/field-operations/sales-operations/deal-desk/#amend-subscription-quote) and [Renewal](/handbook/sales/field-operations/sales-operations/deal-desk/#renew-subscription-quote) processes are owned by the [Deal Desk team](/handbook/sales/field-operations/sales-operations/deal-desk/).

---

* **Data Model:** [Zuora 360 Sync Field Mapping](https://knowledgecenter.zuora.com/CPQ/E_Zuora_360_plus_and_360/Z_Zuora_360_Introduction/Sync_Field_Mapping_of_Account_and_Related_Objects) identifies the objects and fields included in the connector.
* **Import Process:** N/A
* **Sisense Dashboards:** Zuora 360 monitoring dashboards are a part of the [Zuora 360 Application](https://knowledgecenter.zuora.com/CPQ/E_Zuora_360_plus_and_360/Z_Zuora_360_Introduction). There are no separate Sisense dashboards covering the Zuora 360 connector.
* **Integrations:**
  * N/A

## Zuora Revenue

Zuora Revenue is our automated revenue recognition application that meets current and future U.S. GAAP, including the new ASC 606 and IFRS 15 revenue standards.

---

* **Import Process:** [Stitch Zuora Integration](https://www.stitchdata.com/integrations/zuora)
* **Raw Data:** [`zuora_revenue.*`](https://gitlab-data.gitlab.io/analytics/#!/source_list/zuora_revenue#sources)
* **Modeled Data:** [Bus Matrix](https://docs.google.com/spreadsheets/d/1j3lHKR29AT1dH_jWeqEwjeO81RAXUfXauIfbZbX_2ME/edit#gid=430467333). Key objects include:
  * [`dim_revenue_contract`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_revenue_contract)
* **Sisense Dashboards:**
  * [Zuora Revenue ARR Adjustments](https://app.periscopedata.com/app/gitlab:safe-dashboard/945482/Zuora-Revenue-ARR-Adjustments)
  * **Model Tests:** [Trusted Data Tests](https://app.periscopedata.com/app/gitlab/765375/Trusted-Data-Tests)
  * **Model Health Dashboard:** [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/756199/TD:-Trusted-Data-Operations-Dashboard)
* **Integrations:**
  * None

## CustomersDot

[CustomersDot](https://gitlab.com/gitlab-org/customers-gitlab-com) is a customer-facing license and subscription management application.

---

* **Architecture:** [CustomersDot Architecture](https://gitlab.com/gitlab-org/customers-gitlab-com/-/blob/main/doc/architecture/customersdot_architecture.png)
* **Data Model:** [CustomersDot ERD](https://gitlab.com/gitlab-org/customers-gitlab-com/-/blob/main/doc/db_erd.pdf)
* **Snowflake Import Process:** [pgp](https://gitlab.com/gitlab-data/analytics/-/tree/master/extract/postgres_pipeline)
* **Raw Data:** [`customers.*`](https://gitlab-data.gitlab.io/analytics/#!/source_list/customers#sources)
* **Modeled Data:**
  * [`customers_db_leads`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_leads)
  * [`customers_db_trials`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_trials)
* **Sisense Dashboards:**
  * [CustomersDot End-to-End Dashboard](https://app.periscopedata.com/app/gitlab/817532/CustomersDot-End-to-End-Dashboard)
  * **Model Tests:** [Trusted Data Tests](https://app.periscopedata.com/app/gitlab/765375/Trusted-Data-Tests)
  * **Model Health Dashboard:** [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/756199/TD:-Trusted-Data-Operations-Dashboard)
* **EA Integrations:**
  * **Current Integrations:**
    * [IronBank GEM](https://gitlab.com/gitlab-org/customers-gitlab-com/-/tree/main/#ironbank)
        * [Subscribe API](https://www.zuora.com/developer/api-reference/#tag/Subscriptions) 
        * [Amend API](https://www.zuora.com/developer/api-reference/#tag/Amendments)
  * **Planned Integrations:**
    * [Zuora Orders API](https://www.zuora.com/developer/api-reference/#tag/Orders)

## Salesforce Sales Cloud

[Salesforce Sales Cloud](hhttps://www.salesforce.com/products/sales-cloud/features/) is our CRM management tool and is a critical tool used in the [Quote to Cash](/handbook/business-technology/enterprise-applications/quote-to-cash/) process.

* **Data Model:** [Salesforce Sales Cloud Object Model](https://architect.salesforce.com/design/architecture-gallery/sales-cloud-overview-data-model)
* **Snowflake Import Process:** [Stitch Salesfoce Integration](https://www.stitchdata.com/integrations/salesforce)
* **Raw Data:** [`Salesforce.*`](https://gitlab-data.gitlab.io/analytics/#!/source_list/salesforce). Key objects include:
  * [`salesforce.account`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.salesforce.account)
  * [`salesforce.contact`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.salesforce.contact)
  * [`salesforce.lead`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.salesforce.lead)
  * [`salesforce.opportunity`](https://gitlab-data.gitlab.io/analytics/#!/source/source.gitlab_snowflake.salesforce.opportunity)
* **Modeled Data:** [Bus Matrix](https://docs.google.com/spreadsheets/d/1j3lHKR29AT1dH_jWeqEwjeO81RAXUfXauIfbZbX_2ME/edit#gid=430467333). Key objects include:
  * [`dim_crm_account`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_crm_account)
  * [`dim_crm_person`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_crm_person)
  * [`dim_crm_opportunity`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_crm_opportunity)
* **Sisense Dashboards:**
  * [TD: Current Account](https://app.periscopedata.com/app/gitlab:safe-dashboard/996284/TD:-Current-Account-Set:-Sales-Funnel---Target-vs.-Actual)
  * [SS&A - Pipeline Velocity & Generation - CRO](https://app.periscopedata.com/app/gitlab:safe-dashboard/919343/SS&A---Pipeline-Velocity-&-Generation---CRO)
  * [TD: Sales Funnel](https://app.periscopedata.com/app/gitlab:safe-dashboard/996284/TD:-Current-Account-Set:-Sales-Funnel---Target-vs.-Actual)
 * **Model Tests:** [Trusted Data Tests](https://app.periscopedata.com/app/gitlab/765375/Trusted-Data-Tests)
  * **Model Health Dashboard:** [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/756199/TD:-Trusted-Data-Operations-Dashboard)
* **Integrations:**
  * [Snowflake Subscription Data Pump](/handbook/business-technology/data-team/platform/#operational-data-pumps)
  * [Snowflake Free User Data Pump](/handbook/business-technology/data-team/platform/#operational-data-pumps)  
