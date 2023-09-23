---
title: "People Group Metrics"
description: "GitLab's team member metrics as tracked and reported by the People Group."
---

## Reporting

All People Group Metrics are being moved from manual calculation to an automated calculation of KPIs through Sisense (formerly Periscope).

## Average Location Factor

The average location factor of all team members per department or division. The location factor directly correlates to geographical area in the [Compensation Calculator]({{< ref "compensation-calculator" >}}).


## Percent Over Compensation Band

This metric is manually calculated by the Total Rewards Team. This metric is in the process of being moved to Periscope in the following [issue (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/2544).

The Total Rewards Analysts will analyze against how many team members in a division or department are compensated above the bands specific by our [Global Compensation]({{< ref "compensation#compensation-principles" >}}) policy. To determine this, use the "In Range? (Metrics)" column from the Low Location Factor Reporting and generate a pivot table using a count of "FALSE" per department and division. Add this information to the "Location Factor Graphs/Summary" tab to generate a percentage based on total headcount per department and division as well as the raw number. The number can help explain the percentage if a department or division is small, for example.

The percent over compensation band cap is <= 1%.

**Weight of Percent Over Compensation Band**:

| % Over Top End of Comp Band | Weighting |
|-----------------------------|-----------|
| 0.01% to 4.9%               | 0.25      |
| 5% to 9.9%                  | 0.5       |
| 10% to 14.9%                | 0.75      |
| 15%+                        | 1         |

The purpose of weighting how far over someone is from compensation band is to ensure if there are those over comp band slightly, they are not held at the same level as those hired well over range.

## Lead Time Alignment

Ensuring team member requests to the People Connect Team are carried out efficiently and in consistent aligment with the [lead times]({{< ref "/handbook/people-group#people-connect" >}}) documented within the handbook.

## Team Members

For calculating KPIs we define Team Members on the date measured as the number of full time equivalent employees or contractors who are providing services to GitLab and are listed on our Team page.
Excluded from this category are board members, board observers, core team members, and advisors.
The canonical source of truth of the number of team members comes from Workday.

## Team Member Voluntary Turnover

Voluntary turnover is any instance in which a team member actively chooses to leave GitLab. GitLab measures voluntary turnover over a rolling 12 month period, as well as over a calendar month.  (The default period is over a rolling 12 month period.) The rolling 12 month voluntary team member turnover cap is < 10%. In order to achieve the rolling 12 month voluntary team member turnover cap, the monthly voluntary team member turnover cap is < 0.83% (10/12). The data is housed in Workday.

Rolling Voluntary Team Member Turnover = (Number of Team Members actively choosing to leave GitLab/Average Total Team Members Count) x 100

## Team Member Retention

Team Member Retention = (1-(Number of Team Members leaving GitLab/Average of the 12 month Total Team Member Headcount)) x 100

GitLab measures team member retention over a rolling 12 month period, as well as over a calendar month. (The default period is over a rolling 12 month period.) The 12 month team member retention target is > 84%.   In order to achieve the rolling 12 month team member retention target, the monthly team member total turnover target is < 1.3% (16/12). The data is housed in Workday.

Retention is calculated in [Sisense](https://app.periscopedata.com/app/gitlab/482006/People-KPIs?widget=6251791&udv=904340).

## Promotion Rate

Promotion Rate = Number of promotions over a rolling 12 month period / Current Headcount. The target is a 12% promotion rate for divisions as well as departments. Promotion Rate is calculated in [SiSense](https://app.periscopedata.com/app/gitlab/482006/People-KPIs?widget=9298897). We set a promotion rate KPI since GitLab does not have specific promotion cycles (e.g. two times per year), but instead promotions can be submitted by the manager at any time. To ensure our promotions are in line with market, we analyze promotion rates each month to see trends for each group.

The promotion rate metric can be found in [Sisense](https://app.periscopedata.com/app/gitlab/756370/Promotion_Rate), which is aggregated at a company, division, and department level.

- The report itself can be found in the google drive with the title `Promotion Report` and is only shared with Total Rewards and the data team as it contains sensitive compensation data. This report and Spend per Team Member can be pulled from snowflake.
- The next iteration of this report is to have all related promotions and promotion budgets available in SiSense as well for the e-group leader and people business partner to review budgetary impacts of any promotions instantly.

## Compensation (Pay Equality)

1. Generate a chart for the compa ratio distribution by Division.
    - Using the "Comp Data Analysis & Modeling" Google spreadsheet, copy over the employee ID, first name, last name, and Comp Compa Ratio columns.
    - Using a vlookup, add the division to the report for filtering.
    - Create a pivot table to take the average compa ratio based on Division.
1. Determine the Total Target Compensation (inclusive of OTE) as of the end of the month
    - Using the Workday report, take the max of the USD OTE and Annual USD column.
    - Create a pivot table to sum the values by division.

## Performance Management

This PBP team will work on updating this as a Performance Indicator / revisiting the content.

1. Measure the variance of [PIPs](/handbook/leadership/underperformance/#performance-improvement-plan-pip) at GitLab.
    - Run the Employment Status History Report from Workday.
    - Sort by Employment Status and filter to "PIP"
    - Use the count function to determine the "Total Number of PIPs at GitLab"
    - Add the following information to the table: PIPs in last rolling 12 months, Number of PIPs Successfully completed, Number of PIPs resulting in a termination
    - Comment on any takeaways based on the data.

We should strive for a PIP success rate of 50% or more.
This indicates that we identify underperformance early when it is easier to remediate than later.
It also indicates to our team members a PIP means we still believe in them and want to make them successful, it isn't a one way street to job termination.
