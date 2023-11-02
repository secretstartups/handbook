---
layout: handbook-page-toc
title: "Service Data Inspector"
description: "Service Data Inspector is a dashboard that offers insights into account and subscription details for both Self-Managed and SaaS customers"
---
## On this page
{::options parse_block_html="true" /}
---
## Service Data Inspector
[**Service Data Inspector**](https://app.periscopedata.com/app/gitlab:safe-dashboard/924978/ML-Draft:-Paying-Account---Service-Data-Inspector) provides a comprehensive view into all active paying CRM accounts and their corresponding subscriptions, licenses/namespaces and service pings for Self-Managed and SaaS customers. JiHu accounts are not included in this data. This dashboard is intended to support the following major use cases:

- Review all available Service Usage Data for all Paying Accounts
- Inspection of the Service Data and Service Data-related Salesforce and Zuora data for a single account
- Data Quality Review of Product Usage Data Quality Issues for Gainsight
- The dashboard is 100% supported by Trusted Data Models and is based on the same models used by:
  - Gainsight
  - Sales Funnel Reports

### Layout of the Dashboard:
The dashboard is divided into 3 sections aligned with the major subject areas presented:
Section 1: Overview contains top-level metrics to quickly orient
Section 2: Subscription Reports contains drill-down into Zuora subscription information
Section 3: Service Data Reports contains summary and detailed data tables from mart_product_usage_paid_user_metrics_monthly

### Key Metrics and KPIs:
- Active Paying CRM Accounts: Distinct count of CRM accounts that have an Active status, a current or future subscription end date and CARR greater than $0
- Active Paying Accounts: Distinct count of CRM accounts that have an Active status, a current or future subscription end date and CARR greater than $0, broken down by Self-Managed, SaaS, or Other Products and Services
- Paying Subscriptions: Distinct count of subscriptions that have a current or future subscription end date and CARR greater than $0, broken down by Active/Inactive status, Self-Managed, SaaS, or Other Products and Services
- Licenses & Namespaces: Distinct count of licenses and namespaces, broken down by Active/Inactive status, Self-Managed or SaaS
- Service Ping: Distinct count of accounts, instances and namespaces with pings, broken down by Self-Managed or SaaS, with earliest/latest service ping date
- Subscription & License Reports include details on paying CRM accounts and their summary, Zuora subscription, and license detail
- Service Data Reports include [Product Usage](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/product-usage-data/) paid user metrics on an aggregate by snapshot month, paying CRM accounts and WAVE 1-3.2 usage metrics

In future iterations, we plan on adding the following:
- Prep/raw data
- Free account details
### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://docs.google.com/document/d/10EHqM8cfJifVi-DWLYZ1W_7A8-bTD6CE38NI5U8AM18/" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Service Data Inspector README</a>
  <a href="https://metrics.gitlab.com" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Metrics Dictionary</a>
  <a href="https://docs.google.com/spreadsheets/d/1ZR7duYmjQ8x86iAJ1dCix88GTtPlOyNwiMgeG_85NiA/edit#gid=0" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Project Compass Wave</a>
  <a href="https://docs.google.com/spreadsheets/d/1EhSXqx6YXcpqHg2TpS0ZN5Rk_d2hhrTPrW5FTbmuZjw/edit#gid=0" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Metric Dictionary to Snowflake Mapping</a>
</div>
<br><br><br><br><br><br><br><br><br>

### Solution Ownership
- Data Team Subject Matter Expert: `@mlaanen` `@snalamaru` `@ttnguyen28`
