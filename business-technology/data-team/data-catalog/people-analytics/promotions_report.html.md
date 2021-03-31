---
layout: handbook-page-toc
title: "Promotions Report"

---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page

- TOC
{:toc}

{::options parse_block_html="true" /}

---
## Promotions Report

This report is created for the Total Rewards team.

The reports can be found in this [google folder](https://drive.google.com/drive/folders/10CKygkheryBEVumzQMd_s79DYZnDWkrz?usp=sharing).


## Updating the Promotions Report
1) Update the `Promotions Last 12 Months` tab.
  A. Head to snowflake (login via Okta)
  B. Run the following code:
    ```
    SELECT *
    FROM "PREP"."SENSITIVE"."BAMBOOHR_PROMOTIONS_XF"
    WHERE promotion_month BETWEEN DATEADD(year,-1, DATE_TRUNC(month, CURRENT_DATE())) AND DATEADD(month,-1, DATE_TRUNC(month, CURRENT_DATE()))
    ORDER by promotion_date
    ```
  C. Download the resutls and place in the `Promotions Last 12 Months` tab

2) Update the `Budget Spend` tab
  A. In snowflake, running the following code:										
    ```
    SELECT *
    FROM "PREP"."SENSITIVE"."BAMBOOHR_BUDGET_VS_ACTUAL"
    ORDER BY fiscal_year, fiscal_quarter, division								
    ```										
  B. Download the results and and place in the Budget Spend tab										

3) Refresh the budget vs actual pivot						
Note: to update the budget totals go here: People Budget Sheetload. this data gets brought in to update the overall report						
												
4) Update the promo budget when refreshed here: [sheetload.budget_people](https://docs.google.com/spreadsheets/d/1rV0DgaG-zmnrPURRf8cs6shWneC1VWSDtAb_vn-Rbno/edit#gid=0)						 