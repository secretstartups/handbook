---
layout: handbook-page-toc
title: "Allocadia"
description: "Allocadia is Marketing Performance Management Software."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## About Allocadia

Say good-bye to multiple spreadsheets, disparate data sets and misaligned marketing plans. The recognized leader in Marketing Performance Management (MPM), Allocadia’s budget management and strategic planning platform is the foundation for operational excellence for marketing leaders and their teams. Powered with data-driven insights, marketing leaders can visualize what’s working to enable greater planning agility. Learn how to run marketing like a business at Allocadia.com.

:moneybag: Version purchased: [Allocadia Optimize](https://allocadia.com/pricing/)

:key: Logins are available for Marketing budget holders

## High level - how does it work?

* We enter top down departmental budgets into an `Investment Target`, with annual and quarterly breakdown. These are the amounts that tie out to the board approved plan. Once the board has approved the plan from the CMO, we will lock down these targets which represent the envelope of money available to each department to plan and forecast.
* We enter bottoms up departmental `Plans` into a hierarchy grid much like we were doing in our non-HC or 5Q Rolling spreadsheets. Each budget holder can use categories and subcategories as needed to organize their budget, so it makes the most sense for them. This establishes the list of line item expenses they expect to use during the year. If the total doesn't equal the investment target envelope, the department does **not** lose the funds. Once plans are set, we can lock them for the quarter.
* We then enter `Forecasts` into these same line items, adding more details and more accuracy as we learn about the specifics of the events/campaigns/expenses.

Similar to prior year, if we do not use the full envelope provided to Marketing by the end of the **quarter**, we **will** lose those dollars.

## Fields to enter

### Main grid
* Hierarchy - this is where categories, subcategories and the line items are organized.
* Vendor - this needs to be the name of the Vendor for the expense so that it will match with our eventual PO system coming in FY22
* Comments - this can be used for any notes about the spend, but it is not reportable nor sortable

### Detail panel
* SFDC campaign - this is a dropdown that includes all FY22 campaigns that have been set up in SFDC; if it does not relate to an actual SFDC event/campaign, this can be left blank
* Spend type - relates to the account code, but slightly more granular detail to help the marketer
* Region - if the spend is for a specific region, choose it here
* (FM only) SubGeo - allows the field marketer to choose more detailed location
* (FM only) Geo - allows the field marketer to choose more detailed location
* (FM only) Country - allows the field marketer to choose more detailed location; is also tracked for Priority Country analysis
* Segment - if the spend is for a specific segment or segments, choose it/allocate percentage to them here.
* Start Date - the date the expense begins. This will be used for accruals and can be pulled into reports to show timing of software renewals, etc.
* End Date - the date the expense ends. This will be used for accruals and can be pulled into reports to show timing of software renewals, etc.
* Payment method (REQUIRED) - select the type of invoice or Expensify expense. Other will be rarely used.
* GitLab issue URL - link to the procurement issue (see more on integrations below)
* GL Account - will be selected for you based on your input in Spend Type above
* Campaign Type - should match the type used in Marketo and SFDC; limited based on input in Spend Type above

NOTE: any line items within a category or subcategory default inherit these details from the parent (category/subcategory) AND can be overwritten at any line item as needed.

## Integrations

### GitLab issues
We are adding a button so that you can create a procurement issue directly from Allocadia for a given line item. You will not be creating from category or subcategory lines as we need the expense to match the Vendor and the issue approvals.

### SFDC
As mentioned above, there is a listing of available FY22 SFDC campaigns to choose from in the detail panel. In addition, we will be sending over the updated forecast amounts into the SFDC Campaign Budget field as it gets updated. If there are multiple line items for a given SFDC campaing, they will be combined for the updated SFDC Campaign Budget.

### Okta
We are setting up SSO, so that all marketing budget holders can sign in easily without worrying about yet another login password.

### Adaptive/ Netsuite
We will eventually be able to use an FTP data integration to upload budgets to Adaptive and download actual expenses from Netsuite. In the meantime, we will be using CSV transfer files. Actual expenses will not be available though until after month end close for Accounting, so generally mid-month of the following month.

:metrics: ## Reporting available  - Allocadia `Insights`
These dashboards and reports are still being built as we enter more data into the system and understand what we will need. 

:knight: ## OKR connection - Allocadia `Strategy`
We are looking into the ability to enter the Corporate (CEO level), Marketing (CMO level) and Team (departmental level) OKRs in Allocadia so that we can connect our spend to our OKRs. This will NOT replace the current use of GitLab issues, but can supplement with reporting and mapping of dept to CMO to CEO OKRs to keep us all aligned.

:hash: ## Lead to Goal - Allocadia `Metrics'
There is an `Impact Modeler` that we can use to automatically calculate the effect of our marketing efforts to MQL and SAOs. Similar to the way these were calculated in the 5Q rolling for the Field Marketing team, Allocadia can keep track of how spend should affect our lead volume. 



