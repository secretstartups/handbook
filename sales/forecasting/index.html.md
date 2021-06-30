---
layout: handbook-page-toc
title: "Sales Forecasting"
description: "This page details the Sales Forecasting process"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Sales Forecasting

The below page details the Sales Forecasting process. 

**Executive Cadence**

Forecasts are summarized weekly in Clari and shared formally in the Revenue Meeting or asynchronously on weeks that meeting does not take place.
Pipeline, deal status, next steps and account plans should always be current.
Dashboards and reports based on SFDC are considered current at any time.

- At any time, Clari is considered the current forecast.
Weekly after Tuesday evening, reviews from weekly team meetings will all be complete as well and is a good time to check and post any questions.
- Any questions should be added to the Revenue Meeting agenda and they will be answered asynchronously in that doc on weeks there is not a meeting.
- Every other week: Revenue meeting is a live forum for discussion of the entire GTM business and funnel including the forecast and key topics on the agenda.

**Team Cadence**

The Regional Director/Vice President of each team will establish weekly due date/time for your forecasts submissions.The RD/VP will be responsible for using your data for forecast the following:

* Net ARR Commit: this is your Gross ARR Commit minus your Renewal Loss Commit.
* Net ARR Best Case: this is your Gross ARR Best Case minus your Renewal Loss Best Case.
* Net ARR 50/50: this value serves as what you believe will be the actual forecast for your team. If you consider the Commit as the floor and Best Case as the ceiling, then the 50-50 is what is the most likely outcome.

(Note that the above requires Renewal Loss to be forecasted)

VIDEO COMING SOON on how to submit your ARR and your ARR Basis forecasts.
The following sections provide you with additional information on our forecasting methodologies and practices.

### Opportunity Management Requirements

See the [Command Plan](/handbook/sales/command-of-the-message/command-plan/) Handbook page for additional details

### Forecast Category and Churn Renewal Fields

* **Forecast Category** will be used when forecasting any opportunity with Net ARR. For example, if you are submitting a New Business, Add On Business, or Renewal opportunity to your forecast, the Net ARR portion of the opportunity will be included in your number.

* **Churn Renewal** will be used **only** when forecasting any renewal opportunities that have a probability to churn. In these cases, the ARR Basis portion of the deal will be included into your Renewal Loss forecast number.

### Default Salesforce Stage to Forecast Category and Churn Renewal Mapping

See the [Opportunity Stages overview](/handbook/sales/field-operations/gtm-resources/#opportunity-stages) for more information. 

### Forecast Categories Definitions
There are five types of categories we review when your forecasts are pushed to Clari:

* **Closed**: Closed includes only those opportunities that are "Closed Won" only. In forecasting, Closed includes Closed Won.
* **Commit**: Commit includes opportunities that you feel have a 95-100% probability to close in the given period as represented by the Close Date. If you do not believe it will close in that period, it should not be a Commit.  For forecasting purposes, Commit will include "Closed + Commit Deals".
* **Best Case**: Best Case includes opportunities that have a 50% and above probability to close in a period. These deals have a realistic possibility to close; however, only if certain events occur. The path to close should not be based on some miraculous event, as there should a credible plan for this deal to close this period. For forecasting purposes, Best Case includes Closed + Commit + Best Case.
* **Pipeline**: Pipeline consists of deals that are not going to close in the quarter, but should be expected to close in the next few quarters. You should not have deals that are in the Pipeline Forecast Stage with a close date in the current period.  For forecasting, Pipeline includes Closed + Commit + Best Case + Pipeline.
* **Omitted**: These are not included in the forecast and should reflect very early stage deals in 0-Pending Acceptance stage or those in a Lost, Unqualified, or Duplicate stage.

### Other Forecast Terminology

Please use these terms correctly and don't introduce other words. Apart from the above the company uses two other terms:

* **Plan**: Our yearly operating plan that is our promise to the board. The ARR number has a 50% chance of being too low and 50% chance of being too high but we should always hit the TCV - Opex number.
* **Forecast**: Our latest estimate that has a 50% of being too low and 50% chance of being too high.


### Overriding Forecast Categories

Early in a quarter, you may not have many opportunities in Stage 4 and beyond (Best Case and up).
With that in mind, you will have the ability to override the Forecast Category and Renewal Forecast Category for your opportunities in both Salesforce and Clari.
Note: this does not apply to Commercial SMB and Mid-Market forecasting.

In Salesforce, go to the Opportunities Home tab:
  1. Select either the *My Forecast* opportunity list view OR the *My Forecast* report.
  2. Click on the Opportunity Name of the record you want to update.
  3. Change the **Forecast Category** and/or **Churn Renewal** fields.
  4. Click Save.

In Clari, you will update records individually via Opportunity tab:
  1. Select the *CQ: Open Deals*, *CQ: Commit Deals*, *CQ: Best Case*  or *CQ: Open Renewals* view
  2. You can update the opportunities directly within the opportunity grid. Just to to the field you want to update and double click.
  2. Click on the row of the opportunity you want to edit. On the right, you should see additional details (if you don’t, click on the *Toggle Details* button).
  2. In the Details tab, scroll to Forecast Category and double-click the field to edit. Select the desired category.
  3. Click Save.

####  Opportunity Splits
Credit splits are allowed at an opportunity level and can be requested by native-quota carrying salespeople. Opportunity splits must be requested before any work is shared on an opportunity and approved prior to the closed won date. Opportunity splits must be documented in Chatter on the opportunity and require approval from Regional Director and VP. Under no circumstances will double compensation (more than 100% of deal value) on the same deal will be allowed. Note: Reports and Dashboards in Salesforce will reflect the opportunity ARR unless the report or dashboard is looking at the opportunity split object.  Clari will always pull in the split. 

* **Sales Team**
To request an opportunity split, a sales rep should indicate the split in Chatter, tag the ASM(s), RD(s), and VP(s) for each rep for approval, and tag Sales Support to make the update once approved. Opportunity splits should be requested before any work is shared on the opportunity.

* **SalesOps Team**
On receiving an approved request for the split, SalesOps team will update the Opportunity Splits section of the opportunity with the split details. On completion SalesOps team will cc Commissions team and Clari team to process these splits in the systems accordingly. Currently two types of splits have to be created, one for iACV splits and one for Net ARR Splits. All splits that are shared with the opportunity owner need to be created in the `Opportunity - Incremental ACV 2` and the `Net ARR` split types (AE's splitting an opportunity). Any splits relating to any other position (ISR, SDR etc.) are to be created using the overlay split, `Opportunity - iACV Overlay` and the `Net ARR Overlay` split types. 

* **Xactly**
Opportunity split crediting will automatically be calculated in the commissions system through formulas that the commissions team has set up. The Commissions team will ensure that the commissions are calculated accurately based on the split % and confirm in Chatter on the opportunity.

* **Clari**
As of FY22Q2, our Clari instance will pull in Opportunity Splits.  The splits in Clari will be pulled directly from the Opportunity Split section in Salesforce.

#### Advantages to Updating Opps in Clari

In Clari, we have provided a simplified layout meaning that we have designed the **Details** tab to include the most important fields that an RD/VP will review when determining whether they will include your opportunity in their regional forecast. **Purchasing Plan, MEDDPPICC, Next Steps** are atop this simplified layout. You won’t have to navigate through various sections of Salesforce to enter the most important details. What's more is that sales leadership will use this exact same view when reviewing your opportunities. So while you might be more familiar with updating opportunity records in Salesforce, over time, you should find updating in Clari will prove much more convenient.

### Clari for Salespeople Instructional Videos

The following instructional videos are located on the GitLab unfiltered YouTube channel as private videos. If you have trouble viewing these videos please refer to [this page](/handbook/communication/youtube/#unable-to-view-a-video-on-youtube) on how to access GitLab unfiltered.

* **Opportunity Grid Overview**
   - [Watch this 5 minute overview](https://youtu.be/Yg78GHckpv4) of the opportunity grid in Clari, what you're seeing, how to update deals, and what is at your disposal. Learn how to save time and improve productivity by being able to update multiple opportunities at once.
* **The Details & Insights Panel**
   - [Watch this 8 minute video](https://youtu.be/_m3gn1kki20) looking at the activity with a deal, diving into the CRM score, also highlighting where the Force Management fields are located.
* **Additional Functionality**
   - [Watch this 5 minute video](https://youtu.be/16-5cvEODAU) to learn more about Clari Connect, Open in Salesforce, LinkedIn Sales Navigator, and best practices.
* **Introduction to Gross and Net ARR**
   - VIDEO COMING SOON for an introduction on where to forecast using Gross ARR and Renewal fields and how they relate to Net ARR population.
* **Overview of Renewals**
   - VIDEO COMING SOON for a further look at the Renewal Tabs as well as how to view past and future quarters.
* **GitLab Forecasting 101**
   - [Watch this 20 minute video](https://youtu.be/3TGiyNHV4_k) on how we use Clari at GitLab led by Area Sales Manager Adam Johnson
* **Monthly Forecasting overview**
   - [Watch this 4 minute video](https://clari.zoom.us/rec/share/DvylG6q0l1yZWyrkFFmqkwUSO1G71QLTGs0cGTTvWFIYE0Yo6z7S5mS9N3yTFIX-.NSjsLeIMpnL9Ixtt) Password: 0TvRrgq!
* **Gitlab Renewals Forecasting 101**
   - [Watch the 2 minute video](https://youtu.be/1aNxkKpoblA) on how to forecast renewals using renewal loss commit and renewal loss best case.
* **Dashboards**
   - [Watch this 9 minute video](https://youtu.be/cOURhIQkj7Y) for an overview of the 1:1 Rep/Manager Dashboard.
* **Mobile App 101**
   - [Watch the 8 minute video](https://youtu.be/k-WMeeVZW5A) overview of the mobile app.
* **Clari for Salespeople Quiz**
   - Take this short quiz to [test your knowledge.](https://docs.google.com/forms/d/e/1FAIpQLSdTPFzDNACOKxJeY3PAzl-JEqG99Pe3ufAXFpgOd39YjUwsMw/viewform)

### Forecasting and Sales Leaders

If you are a Sales Leader, will have additional access to the **Forecasting Tab** in Clari. You will see the following tabs:

* **ARR**
   - On this tab, you will enter your forecast for the following:
      - Net ARR - Commit, 50/50 & Best Case
      - Gross ARR - Commit & Best Case
      - Renewal Loss - Commit & Best Case
   - Gross ARR will be your bookings, a positive value; Renewal Loss will be for lost ARR Basis, represented by a negative value.
      - The Net Won column is calculated dynamically. For Managers and certain sales teams it will be the Net ARR amount while for individual reps on Gross plans, it will be the Gross ARR amount, which excludes Renewals with Negative ARR.
   - The result will be your Net ARR, which will be your official value submitted.
   - Also note that you will see the following columns on this tab:
      - Plan: Net ARR Quota
      - Net Won: Total of Won deals in Net ARR (includes lost renewals)

* **Renewal ARR**
   - This will be a read only tab. You will see your rep’s Closed Won ARR Basis, Commit, Best Case, Renewal Loss Commit, and Renewal Loss Best Case.

* **TCV**
   - This will be a read only tab. You will see your rep’s Closed Won TCV, Commit, Best Case, and Pipeline.

* **Pipeline Gen**
   - This will be a read only tab. You will see your rep’s total open pipeline, pipeline in stage 3+ and coverage rates for both Next Quarter and Next Quarter+1. The pipeline coverage is calculated by looking at total pipeline in a given quarter divided by quota for that same quarter.

* **Net ARR Attainment**
   - For Sales Reps who are on a Net ARR plan, this tab reflects a consolidated view of the following details by rep:
      - **Plan**: Net ARR Quota
      - **Closed**: Net Won
      - **Gap to Go**: Plan minus Closed
      - **Open Pipeline**: Current quarter open pipeline (all stages)
   - The Net ARR Attainment tab will only show for individuals and/or Sales Leaders who are on a Net ARR plan (or have team members on a Net ARR plan). 
   - **Notable Items**: 
      - This view is an **estimate** of overall attainment 
      - Attainment numbers are pulled from Salesforce 
      - Xactly statements should be consulted for final attainment results

* **Gross ARR Attainment**
   - For Sales Reps who are on a Gross ARR plan, this tab reflects a consolidated view of the following details by rep:
      - **Plan**: Gross ARR Quota
      - **Closed**: Gross Won
      - **Gap to Go**: Plan minus Closed
      - **Open Pipeline**: Current quarter open pipeline (all stages)
   - The Gross ARR Attainment tab will only show for individuals and/or Sales Leaders who are on a Gross ARR plan (or have team members on a Gross ARR plan).
   - **Notable Items**: 
      - This view is an **estimate** of overall attainment 
      - Attainment numbers are pulled from Salesforce
      - Xactly statements should be consulted for final attainment results

#### Reviewing Forecasts

On the right of each tab, you will see a Toggle Details button.
You can click on this to expand the list of opportunities in the selected forecast category. You will have three options:
* **Total:**  shows the combined deals for Closed + Open in that category (Closed, Commit, Best Case, or Pipeline)
* **Closed:** shows deals Closed Deals
* **Open:** shows open deals in that category

Click on the radio button for the type of opportunities you want to see (normally for forecasting calls with AEs, you will select “Open”). Then click “View Deals” to go to a full list of opportunities.

##### To enter or overwrite your forecast: Quarterly View
1. In Clari, go to the Forecasting tab.
1. Go to the ARR tab.
1. Go to Gross ARR Commit box, double-click and enter/override the value.
1. Add a note on why the adjustment was made.
1. Click Save
1. Repeat this process for Gross ARR Best Case and the Net 50/50. Also, make sure to enter a Renewal Loss Commit and Best Case.

##### To enter or overwrite your forecast: Monthly View 
1. In Clari, go to the Forecasting tab.
1. Go to the ARR - Monthly Forecasting tab.
1. On the top/middle of the screen you'll see each month's forecast. To see the following months, click on the arrows pointing left or right next to the calendar.  **Select the right arrow to go to each month's view** within the given quarter. 
1. For each month within the quarter, go to the respective Gross ARR Commit box, double-click and override the value.
1. Add a note on why the adjustment was made.
1. Click Save
1. Repeat this process for Gross ARR Best Case and Net 50/50. Also, make sure to enter a Renewal Loss Commit and Best Case for each month.
1. Once these steps are completed, go to the ARR tab
1. Here you will need to enter your Quarterly Commit, 50/50 and Best Case calls.  
   1. In the Gross ARR Commit, Gross ARR Best Case and Net 50/50 boxes, manually enter the quarterly amount.


**Notable items related to Monthly Forecasting**
- If you want to hide previous month's forecast click on Actions at the top right corner within the ARR- Monthly Forecasting tab. Click on Configure Columns and within Forecasting disable the option to "Show Past Months". 
- When a new month begins, the forecast call from the previous month will be displayed until a new forecast call is submitted for the new month.
- When a new month begins, the quarterly forecast will not update based on the previous month's actuals until the forecast for the new month is updated. Clari does not update the quarterly forecast as soon as the month closes in case 1 or more opportunities slip from month 1 to month 2 (or month 2 to month 3), but not out of the quarter entirely — they do not want to assume that your quarterly forecast needs to be lowered in such cases. 
- Monthly Forecasting Knowledge Base article: [Link here](https://clari.zendesk.com/hc/en-us/articles/360053542271-Monthly-Forecasting)

#### Clari for Sales Leaders Instructional Videos

The following instructional videos are located on the GitLab unfiltered YouTube channel as private videos. If you have trouble viewing these videos please refer to [this page](/handbook/communication/youtube/#unable-to-view-a-video-on-youtube) on how to access GitLab unfiltered.

* **Opportunity Grid Overview**
   - [Watch this 5 minute overview](https://youtu.be/Yg78GHckpv4) of the opportunity grid in Clari, what you're seeing, how to update deals, and what is at your disposal. Learn how to save time and improve productivity by being able to update multiple opportunities at once.
* **The Details & Insights Panel**
   - [Watch this 6 minute video](https://youtu.be/D9SxEyPtXSg) looking at the activity with a deal, diving into the CRM score, also highlighting where the Force Management fields are located.
* **Additional Functionality**
   - [Watch this 5 minute video](https://youtu.be/io4ysgxkicQ) to learn more about Clari Connect, Open in Salesforce, LinkedIn Sales Navigator, and best practices.
* **Dashboards**
   - [Watch this 8 minute video](https://youtu.be/z_LT3JaR-78) for an overview of the 1:1 Rep/Manager Dashboard.
* **Introduction to Gross and Net ARR**
   - VIDEO COMING SOON for an introduction on where to forecast using Gross ARR and Renewal fields and how they relate to Net ARR population.
* **Overview of Renewals**
   - [Watch this 5 minute video](https://youtu.be/3b2Y3nY7-QY) for a further look at the TCV and Renewal Tabs as well as how to view past and future quarters.

#### Clari Analytics Instructional Videos

* **Pulse & Flow Analytics**
   - [Watch the 6 minute video](https://youtu.be/2BcKnEJBJvY) and learn how to set up filters for the Pulse view and explanation of AI predictions.
* **Pulse - Past & Future Performance**
   - [Watch the 7 minute video](https://youtu.be/NpifuNEfk_Q) to understand changes over time by looking back up to one year or forward by up to one quarter. This feature helps you make better predictions, understand the AI, and visualize the big picture regarding your forecast accuracy, vs. the AI and your team.
* **Trends**
   - [Watch the 10 minute video](https://youtu.be/dOAKr9DyTYo) for a deep dive on past & current trends, AI predictions, and how to interpret the results.
* **Flow**
   - [Watch the 11 minute video](https://youtu.be/QXW9roJ552M) to understand how to drill down into your current quarter deals and next quarter.

* **Clari for Sales Leaders Quiz**
   - Take this short quiz to [test your knowledge.](https://docs.google.com/forms/d/e/1FAIpQLSejL3MMRk_i8XcMykkhhswRDMaHgcj78UHWRDaYtmtBJpar6A/viewform)

### LAM Forecasting data capture
To allow our finance and analytics team to better understand the potential in our Total Landed Market (LAM or Customer Base), we ask that sales team members enter the total number of potential developers in their top 10 accounts by CARR.
* [Report to view top 10 accounts](https://gitlab.my.salesforce.com/00O4M000004aFOw)
* Please enter the total number of users a given account could purchase GitLab licenses for (including current users) into the `Potential Users Verify` field on the account. Note this should be for that individual account, not its entire hierarchy.
More [info can be found here](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/issues/938)
