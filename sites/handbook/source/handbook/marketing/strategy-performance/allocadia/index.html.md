---
layout: handbook-page-toc
title: Allocadia
description: Allocadia is Marketing Performance Management Software.
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

- We enter top down departmental budgets into an `Investment Target`, with annual and quarterly breakdown. These are the amounts that tie out to the board approved plan. Once the board has approved the plan from the CMO, we will lock down these targets which represent the envelope of money available to each department to plan and forecast.
- We enter bottoms up departmental `Plans` into a hierarchy grid much like you've done in the past within non-head count spreadsheets. Each budget holder can use categories and subcategories as needed to organize their budget, so it makes the most sense for them. This establishes the list of line item expenses they expect to use during the year. If the total `planned` doesn't equal the `investment target` envelope, the department does **not** lose the funds. Once plans are set, we can lock them for the quarter. More in [Allocadia docs](https://support.allocadia.com/hc/en-us/articles/115004969767-What-is-a-Plan-Column-).
- We then enter `Forecasts` into these same line items, adding more details and more accuracy as we learn about the specifics of the events/campaigns/expenses.

Similar to prior year, if we do not use the full envelope provided to Marketing by the end of the **quarter**, we **will** lose those dollars.

## Great links for more details in Allocadia support pages:

- [Allocadia terms glossary](https://support.allocadia.com/hc/en-us/articles/115005305868-Glossary)
- [Navigating Allocadia](https://support.allocadia.com/hc/en-us/articles/115004960047-Navigating-Allocadia)
- [Navigating the Activities tab](https://support.allocadia.com/hc/en-us/articles/115004968067-Navigating-the-Activities-Tab-)
- [Searching for your activity/ budget line item](https://support.allocadia.com/hc/en-us/articles/115005135427-Searching-your-Budget)
- [Understanding Forecast Status Tags](https://support.allocadia.com/hc/en-us/articles/115000885934-Understanding-Forecast-Status-Tags)
- [Switching between activity plans](https://support.allocadia.com/hc/en-us/articles/115004969207-Switching-Between-Activity-Plans)

## Activity Planning Tab

The activity planning section will be where you add the tactics of your plan and where can you see quick high level metrics to help you understand your `Investment Target` and your `Plan` vs. `Forecast`. Depending on what view you are in will depend on if you see this data based on the quarter or based on the FY.

### View

In the top right hand section of the screen, you will see a drop down different views. When making changes to your actual activity prior to the Allocadia `plan` being locked, be sure you are in the `plan` view. Once the `plan` has been locked, you must be in the `Forecast` view to make any changes.

Within the view drop down you have the option to look at your targets by quarter or annually. Use whichever view best helps you run your business.

### Fields to enter

#### Main grid

- Hierarchy - this is where categories, subcategories and the line items are organized.
- Vendor - this needs to be the name of the Vendor for the expense so that it will match with our eventual PO system coming in FY22.
- Comments - this can be used for any notes about the spend, but it is not reportable nor sortable.
- Months - this is where you enter the dollar amounts by month. You can use the cut and paste feature and tab between months for ease of entry. You can also enter formulas, such as 12000/12 if you have an annual $12K cost that you want calculating the $1K per month.

#### Detail panel

- Spend type - relates to the account code, but slightly more granular detail to help the marketer.
    - Field Marketing (FM) only - using the [Allocadia Impact Modeller](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance/-/issues/159), the spend type you choose, will spit out the expected ROI based on historical conversion rates.
    - Field Marketing (FM) only: If `Spend Type` is as follows, then you will be asked a Y/N on if the event is `In person`.
        - Conferences
        - Executive Roundtable
        - Field Event
        - Owned Event
        - Speaking Session
        - Vendor Arranged Meetings
        - Workshop
- (FM only) Is a Channel Partner involved? Y/N. If the answer is Y, then you will need to manually enter in the Channel partner name.
- (FM only) Is an Alliance Partner involved? Y/N. If the answer is Y, then you will need to manually enter in the Alliance partner name.
- GitLab Marketing issue URL - a link to the issue where the marketer is managing the activity (not procurement issue - see below); leave blank if N/A
- Region - if the spend is for a specific region, choose it here
- (FM only) SubGeo - allows the field marketer to choose more detailed location
- (FM only) Geo - allows the field marketer to choose more detailed location
- (FM only) Country - allows the field marketer to choose more detailed location; is also tracked for Priority Country analysis
- Campaign Type - should match the type used in Marketo and SFDC; limited based on input in Spend Type above
- Existing SFDC campaign - this is a dropdown that includes all FY22 campaigns that have been set up in SFDC; if it does not relate to an actual SFDC event/campaign, this can be left blank.
    - Note: If the SFDC campaign has not been created at the time of the entry you will not need to manually go back and add the campaign in the details panel. Once the SFDC campaign has been created the Allocadia<>SFDC synch will match the Allocadia line item to the SFDC campaign and your campaign will then show up in your details panel.
    - We likely will be revising the naming to enable the SFDC campaign name (aka Campaign Tag) concatenated with the 7 digit Allocadia (line item) ID to fit within the required 31 characters allowed for this field in Netsuite and Expensify.
- Campaign Tag to be Created - add the historic campaign tag name here
- Payment method - select the type of invoice or Expensify expense. Other will be rarely used.
- (FM only) Segment - if the spend is for a specific segment or segments, choose it/allocate percentage to them here.
- Start Date - the date the expense begins. This will be used for accruals and can be pulled into reports to show timing of software renewals, etc.
- End Date - the date the expense ends. This will be used for accruals and can be pulled into reports to show timing of software renewals, etc.
- GitLab Procurement issue URL - this will auto populate for you if you've created the issue with a click of a button within Allocadia
- GL Account - will be selected for you based on your input in Spend Type above

NOTE: any line items within a category or subcategory default inherit these details from the parent (category/subcategory) AND can be overwritten at any line item as needed.

## Insights Tab

Most reporting is done within the Insights tab within Allocadia. Reports are built at the highest level and then use a drill down feature so each team does not have to recreate reports.

### Dashboards

This section is where you can see the highest level of detail.

### Reports

The reports are broken out in folder format and once you click into the folders, more reports open up.

#### Reports Field Marketing uses

1. To understand your regions budget (referred to in Allocadia as `Target`) and what you are forecasting to spend -
    - Video walk through - <span class="colour" style="color:rgb(34, 0, 204)">[https://youtu.be/QTQeOKp3wDU](https://youtu.be/QTQeOKp3wDU)</span> - (YOU MUST BE LOGGED IN TO UNFILTERED TO SEE)
1. `Pipeline Planning - All Pipeline Plan by Segment - Drill In` - This report allows you to see the ROI data (MQL, SAO, expected pipeline), based on the impact modeller -
    - Video walk through - [https://youtu.be/ewqvzQo-hX0](https://youtu.be/ewqvzQo-hX0) - (YOU MUST BE LOGGED IN TO UNFILTERED TO SEE).
1. `Strategy Planning (OKRs), Strategy Planner - Objective Details (Team)` - This report allows you to see how your plans are aligned to the Strategy feature within Allocadia.
    - Video walk through - [https://youtu.be/_VQG1BLjwmw](https://youtu.be/_VQG1BLjwmw)  - (YOU MUST BE LOGGED IN TO UNFILTERED TO SEE.)

##### Reporting folders breakdown 
While the above listed reports are reports you use to get the information for your QBR, here's a breakdown on the other reporting folders. 

1. Finance - we will view actuals here. We aren't using this folder in detail yet. More to come! 
2. Health Check - We aren't using this folder in detail yet. More to come! 
3. Investment Planning 
    1. Target vs. Plan Full - here you can view your target vs. plan in full detail - this is same information that is reflected in the Investment Tracking Summary. 
    2. Vendor Plan details - Management uses this section to understand how much we are spending with DemandBase because we open insertion orders (IOs) on a qtly basis this is essential for us to know how much we need to open. We also use this section to understand the 

## Integrations

### GitLab Procurement issues

You have the ability to create a GitLab procurement issue directly from Allocadia for a given line item. You will not be creating from category or subcategory lines as we need the expense to match the Vendor and the issue approvals.

[Here is a video walk through](https://youtu.be/6yDttqjRWoM) on how to create a procurement issue for vendor contracts. 

For Field Marketing, the reviewer/approver will click into the linked Allocaida line item and will review the impact modeller there, as well as have the ability to click into the Marketing issue from your line item, so you will not need to address the ROI question in the issue template. You will however, need to address the justification question on if you're requesting to spend more than $500 per MQL in the procurement issue. 

You may also create a procurement issue for software & that video will be forthcoming.

#### Procurement issues that can be created from Allocadia
1. Vendor Contracts Marketing Events 
1. Software Vendor Contract Requests 
1. General Vendor Requests 

#### Making changes to the Procurement issues
If you find yourself needing to update a procurement issue template for any of the issues above - nedd to add link, please [submit an issue](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance/-/issues/new) for the Marketing Strategy & Performance team, as this must be done through our Allocadia CSM. 

#### Wrong procurement issue template was pushed...what now? 
If you've hit the GitLab Procurement issue template button and the wrong issue tempalte has been created, not to fear! More info coming soon! But we won't leave ya hanging! 

### SFDC

As mentioned above, there is a listing of available FY22 SFDC campaigns to choose from in the detail panel. In addition, we will be sending over the updated forecast amounts into the SFDC Campaign Budget field as it gets updated. If there are multiple line items for a given SFDC campaign, they will be combined for the updated SFDC Campaign Budget.

### Okta

Please login using SSO, so that all marketing budget holders can sign in easily without worrying about yet another login password.

### Adaptive

We will be using CSV transfer files to upload plans from Allocadia to Adaptive. Our finance business partner will be the DRI for this.

### Netsuite

We will eventually be able to use an FTP data integration to download actual expenses from Netsuite. In the meantime, we will be using CSV transfer files. Actual expenses will not be available though until after month end close for Accounting, so generally mid-month of the following month.

## Reporting available - Allocadia `Insights` :metrics:

These dashboards and reports are still being built as we enter more data into the system and understand what we will need. AND you may build your own reports if you'd like.

## OKR connection - Allocadia `Strategy` :knight:

We are looking into the ability to enter the Corporate (CEO level), Marketing (CMO level) and Team (departmental level) OKRs in Allocadia so that we can connect our spend to our OKRs. This will NOT replace the current use of GitLab issues, but can supplement with reporting and mapping of dept to CMO to CEO OKRs to keep us all aligned.

## Lead to Goal - Allocadia `Metrics' :hash:

Today our Field Marketing team is the only team using this function. If you are interested in having this added to your view please open [this issue](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance/-/issues/new) for Marketing Strat & Performance. 

By using the `Impact Modeller` feature we can forecast the ROI of our marketing efforts from an MQL>SAOs, SAO>Won, and pipeline standpoint taking into consideration the regional converstion rates by campaign type.

We have loaded the past two fiscal years worth of influenced conversion data from campaigns run by field marketing for both the MQL>SAO conversion rates as well as SAO>Closed Won data. We have loaded two FY worth of data to get to these conversion rates given how different our campaigns types were in FY21 due to the pandemic. If a region did not have a conversion rate for the campaign type (likely because the region did not run that campaign), then the global conversion rate was used. Also, because our MQLs can "skip" MQL status (meaning an SDR can work a lead BEFORE its actually hit our MQL scoring threshold), we used the `MQL Inferred Date` field to assume MQLs. Live MQL>SAO regional data [can be found here](https://app.periscopedata.com/app/gitlab/628217/WIP:-Field-Marketing-Metrics-Deprecated?widget=11400216&udv=991807) and then live SAO>Won data [can be found here](https://app.periscopedata.com/app/gitlab/628217/WIP:-Field-Marketing-Metrics-Deprecated?widget=11400418&udv=991807). These charts will be added to the FMM Dashboard in a future iteration. 

This calculation is done by then taking into account the MQLs and segment data that has been given at the line item level in the details panel. The ASPs (which we used the ASPs from the TOPO model per segment) are also loaded for calculation purposes. [Video walk through](https://youtu.be/LPMmah5tvT8) (and yes, you know you need to be logged into Unfiltered to see! ;))   


## GitLab Internal Calendars

Certain groups within GitLab have the ability to create a calendar invite directly from the details panel within Allocadia.

### Groups who have calendar creation access

- Field Marketing
- Brand Activation

### How the calendar process is mapped

- You may ONLY create a calendar invite at the `line item` level. Meaning you CANNOT create a calendar invite at the `Category` OR `Sub-category` level.
- Based on the inputs from the details panel, the logic is built as follows:
    - Question within Allocadia: `Is this an in person event?`
        - If value is YES it uses the `in person events and sponsorships` calendar - regardless of spend type, if it’s an in person event it WILL show up on this calendar.
        - If value is null or no, check next column
    - Next Column: `Spend Type` (Campaign Type)
        - If value is `Self-Service Virtual Event` use the `GitLab Hosted Self-Service Virtual Events` calendar
        - If value is any of the following:
            - `Vendor Arranged Meetings`
            - `Executive Roundtable`
            - `Sponsored Webcast`
            - `Virtual Sponsorship`
                - use the `External Virtual Events` calendar
        - All else, do not create calendar invite and present error message `Cannot create calendar invite for this Spend Type`.

While Workshops & Webcasts DO require a calendar invite, we intentionally left the auto create calendar invite out of the plug in. We did this because the `GitLab Hosted Zoom Webcasts` calendar requires Zoom integration work and is a locked calendar, given the technical work required to run the campaign types. For more information on booking a GitLab-hosted Workshop or Webcast, please visit [this handbook page](/handbook/marketing/revenue-marketing/field-marketing/workshop-webcast-how-to/#securing-a-virtual-workshop-or-buyer-progression-webcast-date).

The calendar invite is set for the entire day. If you would like the event to be on the calendar for a specific time, then you may go in and manually change the time.

Here is a [quick video walk through](https://youtu.be/xa8OpqMDrJw) to show you how the calendar invite gets created, if you're more of a visual learner!
