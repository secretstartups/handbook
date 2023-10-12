---
title: "People Group Metrics"
description: "GitLab's team member metrics as tracked and reported by the People Group."
---

## Reporting

All People Group Metrics are being moved from manual calculation to an automated calculation of KPIs through Sisense (formerly Periscope).

## Average Location Factor

The average location factor of all team members per department or division. The location factor directly correlates to geographical area in the [Compensation Calculator]({{< ref "compensation-calculator" >}}).


## Percent Over Compensation Band

This metric is manually calculated by the Total Rewards Team. 

The Compensation team will analyze against how many team members in a division or department are compensated above the bands specific by our [Global Compensation]({{< ref "compensation#compensation-principles" >}}) policy. The weighted percentage over compensation band can be found on the Comp Data tab when refreshing the Total Compensation Analysis report.

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

Promotion Rate = Number of promotions over a rolling 12 month period / Current Headcount. The target is a 15% promotion rate for divisions as well as departments for on-cycle promotions. The promotion cycle takes place twice per year. Promotion Rate is calculated in [SiSense](https://app.periscopedata.com/app/gitlab/482006/People-KPIs?widget=9298897). 

## Compensation (Pay Equality)

Pay Equality is tracked quarterly as a KPI for gender and reviewed internally by the Compensation team for other URGs within the same analysis. When conducting the analysis, the average and median compa ratio of the URG is compared to the overall company using a percent differential. 

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
