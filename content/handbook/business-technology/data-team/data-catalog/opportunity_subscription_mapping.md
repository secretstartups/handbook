---

title: "Opportunity-Subscription Mapping"
---



{:toc}

{::options parse_block_html="true" /}

---

The goal of this page:

- Help you understand the backfill of opportunity-subscription mapping
- Help you understand the reliability of this mapping
- And overall help everyone contribute!

## Opportunity-Subscription Mapping

The mapping between opportunities and subscriptions unlocks the quote to cash process for Go To Market Analytics including financial, marketing, and sales analytics.

Historically this was not tracked in our source systems and needed to be backfilled based on our knowledge of previous processes.

## Mapping Process

[Flow Diagram](https://lucid.app/lucidchart/e7661694-61ed-4317-b648-d054be9aff0e/edit?viewport_loc=-76%2C340%2C3590%2C1767%2C0_0&invitationId=inv_f50ea2e1-1ea8-47ca-b950-75b723273b00)


## Data Quality

The backfill mapping process has been performed for all subscriptions created after 2019-02-01. Before this point, the processes were not robust enough to create logic for the mapping. We believe the mapping processes has produced a hierarchy of opportunity-subscription mappings, as follows:

- 2021-04-12 - Present: Green - Due to the internal processes created by Enterprise Apps, we are confident in the data created on or after 2021-04-12. A recent bug has been identified for a small subset of Web Direct deals, but this is a small (< 3%) subset of the overall subscription population. The above mapping has been applied for the blank subscriptions found on or after 2021-04-12 while this is fixed in the source.
- 2019-02-01 - 2021-04-11: Yellow - The above mapping has been applied for this time range. We believe this is directionally correct based on testing, but cannot assure full fidelity.
- Beginning of Time - 2019-01-31: Red - No mapping has been applied to this data and it is known to be unreliable.

Additionally, we have created a flag in `dim_subscription` to call out the data which is considered likely to have data quality issues. This is based on the backfill logic explained above. If an opportunity has been filled in based solely on `opportunity_term` or `subscription_name`, it has a higher likelihood of being bad data, so we have created the `is_bad_mapping` flag to call out those opportunity-subscription connections which are made on loose assumptions.

## Data Quality Issue Remediation

If you observe a problem in the opportunity-subscription, open an [intake issue](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/intake/-/issues/new?issue%5Bmilestone_id%5D=) with Enterprise Apps to correct the opportunity id on the subscription.

### Quick Links

- [Go To Market Analytics Hub](https://app.periscopedata.com/app/gitlab/844281/Go-To-Market-Analytics-Hub-v1.0)
- [Getting started using Sisense Discovery](https://www.youtube.com/watch?v=F4FwRcKb95w&feature=youtu.be)

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Additional Resources </h1>

<details>
<summary markdown='span'>
  Trusted Data Solution
</summary>

ARR models use the `arr`, `arr_snapshots`, `mrr`, `zuora`, `billing_account`, and `crm_account` tags for Trusted Data tests and their results. This can be seen most easily using the [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/756199/Trusted-Data-Dashboard)

See overview at [Trusted Data Framework](https://about.gitlab.com/handbook/business-technology/data-team/platform/#tdf)

[dbt guide examples](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/#trusted-data-framework) for
details and examples on implementing further tests
</details>

<details>
<summary markdown='span'>
  EDM Enterprise Dimensional Model Validations
</summary>
The [(WIP) Enterprise Dimensional Model Validation Dashboard](https://app.periscopedata.com/app/gitlab/760445/WIP:-Enterprise-Dimensional-Model-Validation-Dashboard) reports on latest Enterprise Dimensional model test and runs.
</details>

<details>
<summary markdown='span'>
  RAW Source Data Pipeline validations
</summary>
[Data Pipeline Health Validations](https://app.periscopedata.com/app/gitlab/715938/Data-Pipeline-Health-Dashboard)
</details>

<details>
<summary markdown='span'>
  Data Security Classification
</summary>

Coming Soon

**ORANGE**

- Description: Customer and Personal data at the row or record level.

- Objects:
  -

  -

**YELLOW**

- Description: GitLab Financial data, which includes aggregations or totals.

- Objects:
  -

  -
</details>

<details>
<summary markdown='span'>
  Solution Ownership
</summary>
* Source System Owner:
  * Salesforce: `@jbrennan1`
  * Zuora: `@andrew_murray`
* Source System Subject Matter Expert:
  * Salesforce: `@jbrennan1`
  * Zuora: `@andrew_murray`
* Data Team Subject Matter Expert: `@paul_armstrong` `@jeanpeguero` `@jjstark` `@iweeks` `@michellecooper`
</details>

