---
layout: handbook-page-toc
title: "License Utilization in Gainsight"
description: "using license Utilization Statistics within Gainsight"

---

## License Utilization in Gainsight

License Utilization is calculated on a subscription level. In Gainsight, we roll up stats from all subscriptions under an account and display it at the account level. Billable User Count comes from Operational Metrics for both SaaS and Self-Managed customers (Self-Managed stats are limited to customers in version 14.0 or later). Subscription stats are brought over from Zuora. 

If you believe there is inaccurate stats for an account, see how to [report bad usage stats](/handbook/customer-success/product-usage-data/license-utilization/#reporting-bad-data) below.

There are three main fields we use at the Instance and Namespace level (generally subscription-level, too) for License Utilization stats:

* **Billable User Count**: From Operational Metrics. Number of users that can be billed for a license, excludes guest users.
* **Licensed Users**: Number of licenses purchased for a given subscription.
* **License Utilization (Subscription)**: Calculated in Gainsight based on above metrics: `Billable User Count/Licensed Users` represented as a percentage.

NOTE: these exist on the `Product Usage Metrics` object. This will be represented per Instance or Namespace.

Gainsight then rolls up these statistics to the account level, and you can see the aggregated stats for your accounts (see below). 

### Customer 360 Page

On the Customer 360, you can view the following fields under the User Adoption Metrics section:

* **Billable Users - Account**: The number of current users that GitLab will bill the customer for across all subscriptions under the account 
* **Total Licenses Sold (Account)**: The number of licenses purchased across all subscriptions under the account 
* **License Utilization - Account**: Sum of the Billable User Count/Total Licenses Sold (for all subscriptions under the account).

Please note that there may be situations where fields are blank or don't seem to include utilization stats from all subscriptions. This might occur because:

* If any one subscription has a blank value in either the Billable User Count or Total Licenses Sold fields, the Account License Utilization % will be N/A, and Billable Users Sum and/or Licensed Users Sum will reflect N/A amount as well since the cumulative calculation cannot be made 

If the reporting look good (no missing stats), see how to [report bad usage stats](/handbook/customer-success/product-usage-data/license-utilization/#reporting-bad-data) below.

### Scorecard

There is a health scorecard measure called License Usage within the Product Usage measure. This results in green/yellow/red based on the account's license usage health per [Gainsight Scorecard Attributes and Calculations](/handbook/customer-success/csm/health-score-triage/#gainsight-scorecard-attributes-and-calculations). 

For more on Product Usage Statistics health scoring in Gainsight, see [Product Usage Statistics](/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/) and [Customer Product Use Case Adoption](/handbook/customer-success/product-usage-data/use-case-adoption/).

### Reporting Bad Usage Statistics

If you believe you found an inaccuracy with the usage stats, here are several steps to confirm and then report. First, the integration works by passing data from the data warehouse to Salesforce to Gainsight. In Gainsight, the health scorecard is based on subscriptions where we know both the Billable Users and Total Licenses Sold; if we don't have either one then that subscription is excluded. 

If you want to report bad usage stats, please refer to this handbook page on [Triaging Data Quality](/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/#triaging-data-quality).
