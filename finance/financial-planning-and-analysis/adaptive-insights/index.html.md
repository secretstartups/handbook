---
layout: handbook-page-toc
title: "Adaptive Insights"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## General Information

[Adaptive Insights](https://www.adaptiveplanning.com/), a Workday company, is a cloud-based corporate performance management platform. The GitLab FP&A team utilizes Adaptive Inisghts to plan, budget, and forecast GitLab's planning cycles. 

## Administration

#### Versioning 

One of the most powerful features of Adaptive Insights is versioning. Adminstrators can create, edit, and lock versions of a plan. 

##### GitLab Version Nomenclature

Each version of GitLab should specify the fiscal year and label of the plan / forecast. Below is a few examples of the nomenclature used at GitLab

- `FY21 - 0 + 12 Plan`
- `FY21 - 1 + 11 Forecast`
- `FY 21 - 2 + 10 Forecast`

#### Roles

There are currently five different roles within GitLab's Adaptive Insights instance

1. Administrative - full control of Adaptive Insights
1. Analysis - can access sheets, reports, dashboards, and process trackers. Analysis can also share reports and complete tasks using the process tracker. 
1. IT Administrator - full control of Adaptive Insights with the exception to salary details
1. Report Only - same as Analysis but can upload files for reporting
1. Standard - full control of Adaptive Insights with the exception to edit, modify or change structure. Standard also does not have admin or integration access

#### Users

Within Adpative, the administrator can assign a name, position, user name, home page, time zone, country, role, and level(s) for each user. The adminstrator can also reset the password, if needed, for the User. Users should use Okta to sign into Adaptive Insights but keep their password in One Password when assigned one. 

If you need access to Adaptive Insights, please open an [access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests) and assign to the code owner of this page. 

#### Accounts

#### Assumptions

#### Currencies

#### Allocation Rules

## Sheets

### Level Assigned Sheets

#### Balance Sheet

A balance sheet is a financial statement that reports a company's assets, liabilities and shareholders' equity at a specific point in time. GitLab’s Balance sheet can be found by clicking Sheets and then Balance Sheet.

#### Income Statement

The income statement primarily focuses on the company’s revenues and expenses during a particular period. GitLab’s Income statement can be found by clicking Sheets and then Income Statement.

#### Cash Flow

A cash flow statement is a financial statement that provides aggregate data regarding all cash inflows a company receives from its ongoing operations and external investment sources. It also includes all cash outflows that pay for business activities and investments during a given period. GitLab’s Cash Flow Statement can be found by clicking Sheets and then Cash Flow.

#### Active Personnel 

Active Personnel is the active headcount by department and entity. GitLab’s Active Personnel can be found by clicking Sheets and then Active Personnel. 

It is recommended that historical headcount information and active headcount churn is uploaded into the Active Personnel sheets with an end date populated. This will ensure only active headcount information is included in the forecasts. Historical information will allow headcount related analysis to be conducted, such as past and future headcount ratio, growth by headcount type and ramping reps analysis.

#### Planned Personnel

Planned Personnel is the planned headcount by department and entity in a given time period. GitLab’s Planned Personnel can be found by clicking Sheets and then Planned Personnel. 

#### Program Spend

Program Spend focuses on the expenses of events, subscriptions, and other programs that will be spent in a given time period. Program Spend can be found by clicking Sheets and then Program Spend. 

In each forecast version, actuals for expenses from the previous period are recommended to be manually entered. Therefore, trends for each major vendor can be assessed and forecasts for future periods can be adjusted if necessary.

##### Expense Type
There are 4 Expense Types each with different calculations in Adaptive: (Column: EXPENSE_TYPE)
1) 	 Pre_paid One Time – This is a one time pre paid expense.
- a. 	Event start date drives when the expense will hit the Income Statement.
- b. 	Expense is spread based on the contracted amount divided by contracted months.
- c. 	This calculated expense drives the GL Account selected in the “GL_EXPENSE_ACCOUNTS” column.
 
2) 	Pre_paid Amortization – This is a prepaid amortization expense. This calculation takes into account:
- a. 	Event start date drives when the expense will hit the Income Statement.
- b. 	Expense is spread based on the contracted amount divided by contracted months
- c. 	This calculated expense drives the GL Account selected in the “GL_EXPENSE_ACCOUNTS” column.
- d. 	Chances of Renewal – based on a %.
- e.  Start Month Uplift – Takes into account any uplift that is expected to occur during the initial contract period and factors this into the renewal months.
- f. 	Monthly Growth Factor- based on a % of uplift that is expected to occur on the Start Month Uplift. (This is based on month over month uplift)
 
3) 	Per User – This calculates a per user expense. This calculation takes into account:
- a. 	This calculated expense drives the GL Account selected in the “GL_EXPENSE_ACCOUNTS” column.
- b. 	Per User Cost (Column)
- c. 	Number of users (entered in timespan) per month.
 
4) 	Periodic_Expense – This is a sporadic expense.
- a. 	This calculated expense drives the GL Account selected in the “GL_EXPENSE_ACCOUNTS” column.
- b. 	Expense (entered in timespan) on any given month.

#### Travel & Entertainment

Travel & Entertainment are expense assumptions related to travel & entertainment on a dollar amount per headcount. Travel & Entertainment can be found by clicking Sheets and then Travel & Entertainment. 

### User Assigned Sheets

#### Global Assumptions

#### SUI Assumptions by State

#### Allocations

#### Salary Range

#### Personnel Benefits by Level

#### Balance Sheet Assumptions

#### Commissions %

#### Revenue Model 


## Integrations

#### NetSuite

#### Adpative Loaders

#### Scheduling

## Formulas


## Reports

#### Report Structure 

The below image shows the current report structure in Adpative Insights. There are six main folders within the structure. The folders labeled `Annual Reports`, `Monthly Reports`,`Quarterly Reports`, and `YTD Reports` are considered production reports and should recieve sign off from the VP, Finance before moving to one of these folders. Before a report is considered production ready, a user must start a report in the `Sandbox Reports` folder, then get approval by the VP, Finance befor it can be moved into on of the production ready Reporting folders. Once sign off is approved, a user should ask an Adaptive Insights administrator to move the folder from Sandbox to the production ready folder. 

1. Annual Reports - folder that houses annual reports  
1. Implementation Requirements - folder that houses any requirements 
1. Monthly Reports - folder that houses monthly reports 
1. Quarterly Reports - folder that houses quarterly reports 
1. Sandbox Reports - folder that houses work in progress reports and where reports are created before moving to production
1. YTD Reports - folder that houses year to date reports

![alt text](/handbook/finance/financial-planning-and-analysis/adaptive-report.png "Report Structure")

#### Reports 





