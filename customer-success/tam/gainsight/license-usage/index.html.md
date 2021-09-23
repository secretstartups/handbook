---
layout: handbook-page-toc
title: "License Utilization in Gainsight"
description: "using license Utilization data within Gainsight"

---

## License Utilization in Gainsight

License Utilization is calculated on a subscription level. In Gainsight, we roll up data from all subscriptions under an account and display it at the account level. Billable User Count comes from Operational Metrics for both SaaS and Self-Managed customers (Self-Managed data is limited to customers in version 14.0 or later). Subscription data is brought over from Zuora. If you believe there is inaccurate data for an account, see how to [report bad data](https://about.gitlab.com/handbook/customer-success/tam/gainsight/license-usage/#reporting-bad-data) below.

You can watch the [5 minute Gainsight license utilization overview video](https://youtu.be/ZqpmxoUy6EE) for the visuals and ways to leverage the tooling. 

There are three main fields we use at the subscription-level utilization data:

* **Billable User Count**: From Operational Metrics. Number of users that can be billed for a license, excludes guest users.
* **Licensed Users**: From Zuora, via Salesforce. Total number of seats purchased for a given subscription.
* **License Utilization (Subscription)**: Calculated in Gainsight based on above metrics. Activated Users/Licensed Users percentage.

Gainsight then rolls up this data to the account level, and you can see the aggregated data for your accounts.

### Customer 360 Page

On the Customer 360, you can view the following fields under the User Adoption Metrics section:

* **Billable User Count Sum**: The number of current users that GitLab will bill the customer for across all subscriptions under the account 
* **Total Licenses Sold (Account)**: The number of licenses purchased across all subscriptions under the account 
* **License Utilization %**: Includes all subscriptions under the account. 
  * Sum of the Billable User Count field 
  * Sum of Total Licenses Sold 
  * Average % of license utilization (calculated as Sum of the Billable Users/Total Licenses Sold) 
* **Account License Utilization %**: Sum of the Billable User Count/Total Licenses Sold (for all subscriptions under the account).

Please note that there may be situations where fields are blank or don't seem to include data from all subscriptions. This might occur because:

* If any one subscription has a blank value in either the Billable User Count or Total Licenses Sold fields, the Account License Utilization % will be N/A, and Billable Users Sum and/or Licensed Users Sum will reflect N/A amount as well since the cumulative calculation cannot be made 

If the data looks good (no missing data), see how to [report bad data](https://about.gitlab.com/handbook/customer-success/tam/gainsight/license-usage/#reporting-bad-data) below.

### Scorecard

There is a health scorecard measure called License Usage within the Product Usage measure. This results in green/yellow/red based on the account's license usage health per [Gainsight Scorecard Attributes and Calculations](https://about.gitlab.com/handbook/customer-success/tam/health-score-triage/#gainsight-scorecard-attributes-and-calculations). 

For more on Product Usage Data health scoring in Gainsight, see [Product Usage Data](https://about.gitlab.com/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/) and [Customer Product Use Case Adoption](https://about.gitlab.com/handbook/customer-success/product-usage-data/use-case-adoption/).

### Reporting Bad Data

If you believe you found a data inaccuracy, here are several steps to confirm and then report. First, the integration works by passing data from the data warehouse to Salesforce to Gainsight. In Gainsight, the health scorecard is based on subscriptions where we know both the Billable Users and Total Licenses Sold; if we don't have either one then that subscription is excluded. 

If you want to report bad data, please refer to this handbook page on [Triaging Data Quality](https://about.gitlab.com/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/#triaging-data-quality).
