---
layout: handbook-page-toc
title: "Business Systems Documentation"
description: "Business Systems Lead to Fulfillment Documentation"
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Quote to Cash Introduction
The quote-to-cash (QTC) process encompasses customer account management, order fulfillment, billing, and accounts receivables functions. This process is owned by the Enterprise Applications team and this handbook page is intended to be used as a table of contents for key documentation of this process. Some of the major applications that make up this process are listed below.

#### Salesforce
* Salesforce is used as our CRM tool for managing customer Leads, Contacts, Accounts and Opportunities.
* Salesforce is owned by the Sales Systems team at GitLab.

#### Zuora Billing
* Zuora is used as our CPQ, Billing and revenue tool for managing customer subscriptions, payments and invoicing.
* Zuora is owned by the Finance team at GitLab.

#### Zuora Revenue
* Zuora Revenue is our automated revenue recognition application that meets current and future U.S. GAAP, including the new ASC 606 and IFRS 15 revenue standards.

#### CustomersDot
* CustomersDot is used when the customer logs in to manage their account details for their subscription
* GitLab engineers created CustomersDot and it is owned by the [Fulfillment team](/handbook/engineering/development/fulfillment/)

##### NetSuite
* NetSuite is the company Enterprise Resource Planning (ERP) system, which is primarily managed by the Finance team. 
* The platform allows enhanced dimensional reporting as well as multi-currency and multi-entity reporting. This is where the General Ledger resides and all financial activity is ultimately recorded, which is critical to reporting the financial health of the company.

## Lead to Cash Flow

<div class="limit-width">
<div class="grid-container">
<div class="grid-item-large" style="grid-row-start: 1;grid-row-end: 2; grid-column-start: 1;grid-column-end: 2;background-color: #c4c4c4"><b>Business Process</b></div>
<div class="grid-item-small" style="grid-column-start: 2;grid-column-end: 4;background-color: #c4c4c4"><b>Supporting System</b></div>
<div class="grid-item-small" style="grid-column-start: 4;grid-column-end: 5;background-color: #c4c4c4"><b>Supporting Team</b></div>
<div class="grid-item-large" style="grid-row-start: 2;grid-row-end: 4; grid-column-start: 1;grid-column-end: 2;background-color: #fdbc60"><b>Market</b></div>
<div class="grid-item-small" style="grid-column-start: 2;grid-column-end: 4;background-color: #fca121">Demand Gen Effort (Marketo)</div>
<div class="grid-item-small" style="grid-column-start: 4;grid-column-end: 5;background-color: #fc9403">Marketing Ops</div>
<div class="grid-item-small" style="grid-column-start: 2;grid-column-end: 4;background-color: #fca121">Trial (Home Grown Application - Ruby on Rails)</div>
<div class="grid-item-small" style="grid-column-start: 4;grid-column-end: 5;background-color: #fc9403">Fulfillment Engineers</div>
<div class="grid-item-empty" style="grid-column-start: 1;grid-column-end: 5;grid-row-start: 4;grid-row-end: 5;"><i class="fas fa-arrow-down"></i></div>
<div class="grid-item-large" style="grid-row-start: 5;grid-row-end: 8;grid-column-start: 1;grid-column-end: 2;background-color: #f2b4a9"><b>Sell</b></div>
<div class="grid-item-small" style="background-color: #e67664; grid-column-start: 2;grid-column-end: 3;">Digital Purchase Path</div>
<div class="grid-item-small" style="background-color: #e67664; grid-column-start: 3;grid-column-end: 4;">Order Form Purchase Path</div>
<div class="grid-item-small" style="background-color: #e05842; grid-column-start: 4;grid-column-end: 5;">Sales Ops/ Deal Desk</div>
<div class="grid-item-small" style="background-color: #e67664; grid-column-start: 2;grid-column-end: 3;">CustomerDot</div>
<div class="grid-item-small" style="background-color: #e67664; grid-column-start: 3;grid-column-end: 4;">Sales Cycle (SFDC)</div>
<div class="grid-item-small" style="background-color: #e05842; grid-column-start: 4;grid-column-end: 5;">Sales Systems</div>
<div class="grid-item-empty" style="grid-column-start: 2;grid-column-end: 3;"></div>
<div class="grid-item-small" style="background-color: #e67664; grid-column-start: 3;grid-column-end: 4;">Contract (Salesforce, Zuora CPQ, DocuSign)</div>
<div class="grid-item-small" style="background-color: #e05842; grid-column-start: 4;grid-column-end: 5;">Fulfillment Engineers</div>
<div class="grid-item-empty" style="grid-column-start: 1;grid-column-end: 5;grid-row-start: 8;grid-row-end: 9"><i class="fas fa-arrow-down"></i></div>
<div class="grid-item-large" style="background-color: #d1d1f0; grid-row-start: 9;grid-row-end: 12; grid-column-start: 1;grid-column-end: 2;"><b>Bill</b></div>
<div class="grid-item-small" style="background-color: #a6a6de; grid-column-start: 2;grid-column-end: 4;">Zuora Subscription Lifecycle Management</div>
<div class="grid-item-small" style="background-color: #7c7ccc; grid-column-start: 4;grid-column-end: 5;">Billing</div>
<div class="grid-item-small" style="background-color: #a6a6de; grid-column-start: 2;grid-column-end: 4;">Zuora Billing</div>
<div class="grid-item-small" style="background-color: #7c7ccc; grid-column-start: 4;grid-column-end: 5;">Finance</div>
<div class="grid-item-small" style="background-color: #a6a6de; grid-column-start: 2;grid-column-end: 4;">Rev Rec (Netsuite)</div>
<div class="grid-item-small" style="background-color: #7c7ccc; grid-column-start: 4;grid-column-end: 5;">Enterprise Apps</div>
<div class="grid-item-empty" style="grid-column-start: 1;grid-column-end: 5;grid-row-start: 12;grid-row-end: 13"><i class="fas fa-arrow-down"></i></div>
<div class="grid-item-large" style="background-color: #73afea; grid-row-start: 13;grid-row-end: 14; grid-column-start: 1;grid-column-end: 2;"><b>Fulfill</b></div>
<div class="grid-item-small" style="background-color: #2e87e0; grid-column-start: 2;grid-column-end: 4;">License (Home Grown Application - Ruby on Rails)</div>
<div class="grid-item-small" style="background-color: #1f78d1; grid-column-start: 4;grid-column-end: 5;">Fulfillment Engineers</div>
<div class="grid-item-empty" style="grid-column-start: 1;grid-column-end: 5;grid-row-start: 14;grid-row-end: 15"><i class="fas fa-arrow-down"></i></div>
<div class="grid-item-large" style="background-color: #75d09b; grid-row-start: 15;grid-row-end: 18; grid-column-start: 1;grid-column-end: 2;"><b>Maintain</b></div>
<div class="grid-item-small" style="background-color: #37b96d; grid-column-start: 2;grid-column-end: 4;">Support (Zendesk)</div>
<div class="grid-item-small" style="background-color: #168f48; grid-column-start: 4;grid-column-end: 5;">Support Team</div>
<div class="grid-item-small" style="background-color: #37b96d; grid-column-start: 2;grid-column-end: 4;">Monitor (Home Grown Application "Version & SeatLink" - Ruby On Rails)</div>
<div class="grid-item-small" style="background-color: #168f48; grid-column-start: 4;grid-column-end: 5;">Fulfillment Engineers</div>
<div class="grid-item-small" style="background-color: #37b96d; grid-column-start: 2;grid-column-end: 3;">Digital Renewal</div>
<div class="grid-item-small" style="background-color: #37b96d; grid-column-start: 3;grid-column-end: 4;">Order Form Renewal (SFDC, Z-CPQ, DocuSign)</div>
<div class="grid-item-small" style="background-color: #168f48; grid-column-start: 4;grid-column-end: 5;">See Sell</div>
</div>
</div>


## Process Flow Diagrams

#### Sales-Assisted: New Subscription


<div class="center">
<div style="width: 720px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:720px; height:480px" src="https://lucid.app/documents/embeddedchart/0f691079-8ee9-4663-84d7-6d03e7f87ed8" id="PNs5p_JZW4yg"></iframe></div>
</div>

#### Sales-Assisted: Renewal
<div class="center">
<div style="width: 720px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:720px; height:480px" src="https://lucid.app/documents/embeddedchart/5243568d-6c04-4c52-a14c-ea3c5bf42ac0" id="gx25Mg96427t"></iframe></div>
</div>

#### Web Direct: New Subscription
<div class="center">
<div style="width: 720px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:720px; height:480px" src="https://lucid.app/documents/embeddedchart/09ac03f9-ae40-4bbd-961c-f64bb44f5b4f" id="KWs5ZPs-THoH"></iframe></div>
</div>

## Contact Us
### Slack Channels
- `#enterprise-apps`
- `#business-technology`
- `#bt-finance-operations`
- `#financesystems_help`
- `#bt-integrations`

### GitLab Issues
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://gitlab.com/gitlab-com/business-technology/business-technology/-/issues/new" class="btn btn-purple-inv" style="width:33%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Business Systems Analysts</a>
  <a href="https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/issue-tracker/-/issues/new" class="btn btn-purple-inv" style="width:33%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Integrations Engineering</a>
  <a href="https://gitlab.com/gitlab-com/business-technology/enterprise-apps/financeops/finance-systems" class="btn btn-purple-inv" style="width:33%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Finance Systems</a>
