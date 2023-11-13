---

title: "Quote to Cash Documentation"
description: "Enterprise Applications Quote to Cash Documentation"
---


<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />









## Quote to Cash Introduction

The quote-to-cash (QTC) process encompasses customer account management, order fulfillment, billing, and accounts receivables functions. The coordination of this process is owned by the Enterprise Applications team and this handbook page is intended to be used as a table of contents for key documentation of this process. Some of the major applications that make up this process are listed below.

#### Salesforce
- Salesforce is used as our CRM tool for managing customer Leads, Contacts, Accounts, Opportunities and Quotes.
- Salesforce is owned by the [Sales Systems](https://about.gitlab.com/handbook/sales/field-operations/sales-systems/) team at GitLab, and implements changes from the process owners.
- The [Quoting process](https://about.gitlab.com/handbook/sales/field-operations/order-processing/#quote-configuration) itself is owned by the [Deal Desk team](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/).

#### Zuora CPQ
- Zuora CPQ is our Configure, Price, Quote tool used for Sales Assisted deals
- Zuora CPQ is a managed package in Salesforce that has been extended for Quote Approvals by [Sales Systems](https://about.gitlab.com/handbook/sales/field-operations/sales-systems/)
- The [Quote Approval process](https://about.gitlab.com/handbook/sales/field-operations/order-processing/#standard-quote-approval) itself is owned by the [Deal Desk team](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/).

#### Zuora 360
- Zuora 360 is a stock connector between Zuora and Salesforce, is transfers Zuora subscription information to Salesforce.
- Zuora 360 the job is owned by [Enterprise Applications](/handbook/business-technology/enterprise-applications/), the extension of Zuora Subscription data in Salesforce for Add-ons and Renewals deal is owned by [Sales Systems](https://about.gitlab.com/handbook/sales/field-operations/sales-systems/).
- The [Add-On](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#amend-subscription-quote) and [Renewal](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#renew-subscription-quote) processes are owned by the [Deal Desk team](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/).

#### Zuora Billing
- Zuora is used as our billing and revenue tool for managing customer subscriptions, payments and invoicing.
- Zuora is owned by the [Enterprise Applications](/handbook/business-technology/enterprise-applications/) team at GitLab.
- The Billing process itself is owned by the [Billing Operations](/handbook/finance/accounting/finance-ops/billing-ops/) team

#### Zuora Revenue
- Zuora Revenue is our automated revenue recognition application that meets current and future U.S. GAAP, including the new ASC 606 and IFRS 15 revenue standards.

#### CustomersDot (Customers Portal)
- CustomersDot is used when the customer logs in to manage their subscriptions
- GitLab engineers created CustomersDot and it is owned by the [Fulfillment team](https://about.gitlab.com/handbook/engineering/development/fulfillment/)
- CustomersDot integrates with Zuora to enable self-service purchasing and subscription management

#### NetSuite
- NetSuite is the company Enterprise Resource Planning (ERP) system, which is primarily managed by the Finance team.
- The platform allows enhanced dimensional reporting as well as multi-currency and multi-entity reporting. This is where the General Ledger resides and all financial activity is ultimately recorded, which is critical to reporting the financial health of the company.



## Enterprise Systems Architecture

<div class="x-scrollable">
<div style="width: 1800px;">

```mermaid
flowchart TD
    subgraph A[ZUORA]
        subgraph B[ZUORA-CPQ]
            I[Product Catalog Management]
            J[Customer Selling Entity Management]
            K[OTC Contact Management]
            L[Quoting Rules]
        end
        subgraph C[ZUORA-Billing]
            M[Product Catalog Management]
            subgraph N[Account Management]
                AC[Customer Selling Entity Management]
                AD[OTC Contact Management]
            end
            O[Subscription Management]
            Q[Payment]
            P[Invoicing]
         end
        subgraph D[ZUORA-Revenue]
            subgraph R[Revenue Recognition]
                AE[Standalone Selling Price]
                AF[Allocation by Obligations/Revenue Streams]
            end
        end
    end
    subgraph E[NETSUITE]
        subgraph S[General Ledger]
            AG[Revenue Recognition]
            AH[Expense Recognition]
            AI[Equity Management]
        end
        T[Treasury Management]
        U[Financial Reporting]
    end
    subgraph F[TESORIO]
        V[Customer Dunning Campaigns]
        W[Accounts Receivable Reporting]
    end
    subgraph G[STRIPE]
        X[Credit Card Verification]
        Y[Credit Card Payment Processing]
        Z[Fraud Management]
    end
    subgraph H[AVALARA]
        AA[Tax Rate/Calculations]
        AB[Tax Remittance]
    end
    AJ[Salesforce]
    AK[CDot]
    B <--Zuora360--> C
    C --- D
    D ---Platypus--> E
    C ---Platypus--> E
    C <---> G
    C <---> H
    C ----> F
    AJ ---> B
    AK ----> C
A:::gray
B:::gray
C:::gray
D:::gray
E:::gray
F:::gray
G:::gray
H:::gray
I:::yellow
J:::red
K:::red
L:::green
M:::yellow
N:::gray
O:::yellow
P:::yellow
Q:::yellow
R:::gray
S:::gray
T:::yellow
U:::yellow
V:::green
W:::green
X:::green
Y:::green
Z:::yellow
AA:::yellow
AB:::yellow
AC:::red
AD:::red
AE:::yellow
AF:::yellow
AG:::yellow
AH:::yellow
AI:::yellow
classDef green fill:#DCFFE5;
classDef yellow fill:#FFFFDC;
classDef red fill:#FFDCDC;
classDef gray fill:#FFFFFF;
```

</div>
</div>

{::options parse_block_html="false" /}



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

#### Zero Touch: New Subscription

<div class="center">
<div style="width: 720px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:720px; height:480px" src="https://lucid.app/documents/embeddedchart/09ac03f9-ae40-4bbd-961c-f64bb44f5b4f" id="KWs5ZPs-THoH"></iframe></div>
</div>

## Entity Relationship Diagrams

- [Zuora Billing](./entity-relationship-diagrams#zuora-billing)
- [CustomersDot (Customers Portal)](./entity-relationship-diagrams#customersdot-customer-portal)
- [GitLab](./entity-relationship-diagrams#gitlab)

### Quote to Cash Systems Field Mapping

[This spreadsheet](https://docs.google.com/spreadsheets/d/1D159Osv6JvQtlHm2Bpekn8ADOWUfgcdszf_pewERBy0/edit#gid=769890791) provides a mapping of fields from the data models of Zuora Billing, CustomersDot and GitLab.  This document highlights some of the overlap and dependencies between the systems currently.

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
