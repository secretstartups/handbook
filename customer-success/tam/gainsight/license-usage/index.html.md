---
layout: handbook-page-toc
title: "License Usage in Gainsight"
description: "using license usage data within Gainsight"

---

## License Usage in Gainsight

License Usage is calculated on a subscription level. In Gainsight, we roll up data from all subscriptions under an account and display it at the account level. All data comes from Seat Link (self-managed) or our SaaS customer database (none of it is currently derived from Usage Ping) and is brought over from Salesforce. For more information on the Salesforce data, see [License Usage App](/handbook/sales/field-operations/sales-systems/license-usage-app/). If you believe there is inaccuract data for an account, see how to [report bad data](/handbook/customer-success/tam/gainsight/license-usage/#reporting-bad-data) below.

You can watch the [5 minute Gainsight license usage overview video](https://youtu.be/ZqpmxoUy6EE) for the visuals and ways to leverage the tooling.

There are three main fields we bring over from Salesforce that contain the subscription-level usage data:

- **Activated Users**: Number of seats that have been activated for a given subscription, regardless of whether the user logs in or not
- **Licensed Users**: Total number of seats purchased for a given subscription
- **License Utilization (Subscription)**: Activated Users/Licensed Users percentage

Gainsight then rolls up this data to the account level, and you can see the aggregated data for your accounts.

### Customer 360 Page

On the Customer 360, you can view the following fields under the Adoption section:

- **Activated Users Sum**: Sum of the Activated Users field for all subscriptions under the account
- **Licensed Users Sum**: Sum of the Licensed Users field for all subscriptions under the account
- **Known License Utilization**: Activated Users Sum/Licensed Users Sum percentage
  - Note: For a given account, if Activated Users Sum is blank we exclude that and Licensed Users Sum from the calculation. The result is that Known License Utilization could vary from reality if a customer has multiple subscriptions and we have data for some subscriptions and not others

Please note that there may be situations where fields are blank or don't seem to include data from all subscriptions. This might occur for one of two reasons:
  - If an account has only one subscription and that subscription has a blank value in either the Activated Users or Licensed Users fields, the will be blank values in the Activated Users Sum, Licensed Users Sum, and Known License Utilization on the account level.
  - If an account has multiple subscriptions but one or more of those subscriptions has a blank value in either the Activated Users or Licensed Users fields, the user counts and license utilization at the account level will only reflect values from the subscriptions that have non-null values.

If neither of these two situations apply to your customer, see how to [report bad data](/handbook/customer-success/tam/gainsight/license-usage/#reporting-bad-data) below.

### Scorecard

There is a health scorecard measure called License Usage. This results in green/yellow/red based on the account's license usage health per [Gainsight Scorecard Attributes and Calculations](/handbook/customer-success/tam/health-score-triage/#gainsight-scorecard-attributes-and-calculations).

### High License Utilization CTA

When a customer's license utilization reaches or exceeds 98%, a [CTA](/handbook/customer-success/tam/gainsight/ctas) will automatically open in order to notify the TAM that the account is reaching its purchased licensed users number. Although customers are able to exceed their licensed users [in order to allow growth](/handbook/ceo/pricing/#true-up-pricing), the purpose of this CTA is to alert the TAM so they can proactively discuss growth and true-ups with the customer, especially if it occurs outside of the renewal process. This can also be a good opportunity to inform your customers of how to manage their subscription and continue to grow their account intentionally as opposed to reactively. This CTA will only fire once every 90 days as applicable for TAM-managed accounts.

The 98% is a first iteration to lower the volume of initial CTAs while we enable and iterate on this new playbook. We will move to 90% after this first iteration and in the second month of this playbook being live (expected 2021-03-01).

### Reporting Bad data

If you believe you found a data inaccuracy, here are several steps to to confirm and then report. First, the integration works by passing data from the data warehouse to Salesforce to Gainsight. In Gainsight, the health scorecard is based off subscriptions where we know both the `Activated Users` and `Licensed Users`; if we don't have either one then that subscription is excluded.

| Source | Steps to perform|
| ----- | ----- |
| **Gainsight** | First, look at the `Activated Users` and `Licensed Users`. If those are wrong, confirm the problem is in Salesforce. |
| **Salesforce** | If the data is correct in Salesforce and not in Gainsight, open a [Gainsight bug issue](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=). However, if the data in Salesforce matches Gainsight, then look at the Sisense table. |
| **Sisense table** | Open the [Master Subscription Table](https://app.periscopedata.com/app/gitlab/691733/Master-Subscription-Product-Usage-Data) and if the data is wrong there (meaning, the Sisense table is accurate and Gainsight/Salesforce are wrong), then open the bug ticket above and it'll get routed accordingly.<br> If, however, Sisense is also wrong, create a data quality issue in the [Data project](https://gitlab.com/gitlab-data/analytics/-/issues) and attach to the [data quality epic](https://gitlab.com/groups/gitlab-data/-/epics/216). |

**Data sources:**
- [Master Subscription Table](https://app.periscopedata.com/app/gitlab/691733/Master-Subscription-Product-Usage-Data)
- Salesforce (use `License Usage` on the Account tab - [see handbook](/handbook/sales/field-operations/sales-systems/license-usage-app/))
- Gainsight (example: the C360 or customer reports)
