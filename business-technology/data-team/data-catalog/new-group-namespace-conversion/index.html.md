---
layout: handbook-page-toc
title: "Group Namespace Conversion Metrics"
---

## On this page
{:.no_toc}

- TOC
{:toc}

---

## Group Namespace Conversion Metrics: GitLab.com

Once a new [group namespace](https://docs.gitlab.com/ee/user/group/index.html#namespaces) is created on GitLab.com, it is crucial that the namespace creators and users continue to further engage with GitLab.com by adding members to their namespaces, completing certain stage events, and eventually converting from a free trial to a paid plan. It is also important to know how quickly these events and actions are being taken after the namespace is created on GitLab.com.

### Questions answered by the dashboard:
* What percentage of new group namespaces upgrade from a free trial to a paid plan within a certain period?
* What percentage of new group namespaces consist of at least two members within a certain period?
* What percentage of new group namespaces engage with the 'Create' stage within a certain period?
* What percentage of new group namespaces engage with the 'Verify' stage within a certain period?
* Has there been a significant change in number of stage adoptions, conversions, and namespaces being created?


**The goal of this page:**
  * Help you understand how to navigate through our [Group Namespace Conversion Metrics](https://app.periscopedata.com/app/gitlab/761347/Group-Namespace-Conversion-Metrics)
  * Help you understand our data models (WIP)
  * And overall help everyone contribute!

### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://app.periscopedata.com/app/gitlab/761347/Group-Namespace-Conversion-Metrics" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">New Group Namespace Conversion Metrics Dashboard</a>


  <a href="https://app.periscopedata.com/app/gitlab/769464/Group-Namespace-Conversion-Metrics---Additional-Views" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Group Namespace Cohort Analysis Dashboard Views (WIP)</a>
</div>


### Data Caveats and Constraints
- Filtering by 'Free' or 'Paid' will reflect the group namespace's current status and does not capture the namespace's account status at the time of the adoption event.
- These reports include group namespaces created by new users and by users on existing paid accounts.
- Data may include namespaces created by spam users.
- The data only reflects the GitLab.com product and does not report on [self-managed](/handbook/marketing/strategic-marketing/dot-com-vs-self-managed/#why-you-probably-want-gitlabcom) usage.

### Data Security Classification
Much of the data within and supporting the Group Namespace Conversion Dashboard is [Orange](/handbook/engineering/security/data-classification-standard.html#orange) and should not be made publicly available. Care should be taken when sharing data from this dashboard to ensure that the detail stays within GitLab as an organization and that those appropriate approvals are given for any external sharing. In addition, when working with row or record level customer metadata care should always be taken to avoid saving any data on personal devices or laptops. This data should remain in [Snowflake](/handbook/business-technology/data-team/platform/#data-warehouse) and [Sisense](/handbook/business-technology/data-team/platform/sisensecdt/) and should ideally be shared only through those applications unless otherwise approved.


### Solution Ownership

- GitLab.com: `@craig-gomes`
- Data Team Subject Matter Expert: `@dpeterson1` `@kathleentam` `@mpeychet\_` `@iweeks` `@jeanpeguero` `@m_walker` `@pluthra`
- New Group Namespace Create Stage Adoption Rate: `@mkarampalas`
- New Group Namespace Verify Stage Adoption Rate: `@jstava`
  New Group Namespace with at least two users added: `@s_awezec`
- New Group Namespace Trial to Paid Conversion Rate: `@s_awezec`

### Key Terms

- Group Namespace: Top-level namespaces, which can hold subgroups and projects. The data in these KPIs and the related dashboard exclude personal namespaces.
- Namespace Creation Date: Date (week) that new group namespace was created
- [Verify Stage](https://about.gitlab.com/handbook/customer-success/tam/stage-adoption/#verify): Successful if group namespace registers a [ci_pipelines](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/ci/#continuous-integration) event in the first X days
- [Create Stage](https://about.gitlab.com/handbook/customer-success/tam/stage-adoption/#create):  Successful if group namespace completes the [action_monthly_active_users_project_repo](https://about.gitlab.com/handbook/product/stage-and-group-performance-indicators/#create---smau---mau-conducting-git-write-operations) event in the first X days
- Paid Plan: Indicates if namespaces are currently paid or free

### Available Dashboard Filters

- Paid Plan: Filter by free plans or paid plans
- First X Days Filter: The conversion and adoption rates for these KPIs within X days of the group namespace's creation. Current options include first 3, 7, 14, 30, 60, 90, and 180 days
- Aggregation: Aggregates the namespace creation date by a selected date interval (day, week, month, quarter, year)
- Date Range: Filter charts to only show group namespaces created within the last X days.

### Key Metrics, KPIs, and PIs

[New Group Namespace Trial to Paid Conversion Rate](https://about.gitlab.com/handbook/product/performance-indicators/#new-group-namespace-trial-to-paid-conversion-rate)

[New Group Namespace Create Stage Adoption Rate](https://about.gitlab.com/handbook/product/performance-indicators/#new-group-namespace-create-stage-adoption-rate)

[New Group Namespace Verify Stage Adoption Rate](https://about.gitlab.com/handbook/product/performance-indicators/#new-group-namespace-verify-stage-adoption-rate)

[New Group Namespace with at least two users added](https://about.gitlab.com/handbook/product/performance-indicators/#new-group-namespace-with-at-least-two-users-added)

#### Key Fields and Business Logic

- Data is primarily sourced from Snowflake.


#### Snippets

Snippets are used to create a string of SQL code that can be reused in different charts. For more information, visit the [Sisense SQL Snippets page](https://dtdocs.sisense.com/article/snippets).



#### Reference SQL

| Snippet Library                                                                                                            | Description |
| -------------------------------------------------------------------------------------------------------------------------- | -------- |
| [denominator_group_namespaces_on_trial](https://app.periscopedata.com/app/gitlab/snippet/denominator_group_namespaces_on_trial/55999de853174118a7426ed3d3b6fca6/edit)                                                                                           | This snippet is used as the denominator for the [New Group Namespace Trial to Paid Conversion Rate](https://about.gitlab.com/handbook/product/performance-indicators/#new-group-namespace-trial-to-paid-conversion-rate) KPI and calculates the total number of group namespaces created that began a trial within the first X days. |
| [denominator_all_group_namespaces](https://app.periscopedata.com/app/gitlab/snippet/Denominator_All_Group_Namespaces/554e6f29fe17450b92f143296f11bde4/edit) | Query is used as the denominator for the remaining three KPIs listed above. The denominator calculates the number of group namespaces that were created. Unlike the denominator_group_namespaces_on_trial snippet, this snippet does not exclude new group namespaces that haven't started a trial. |


#### Entity Relationship Diagrams

| Diagram/Entity                                                                                              | Grain | Purpose | Keywords |
| ------------------------------------------------------------------------------------------------------------| ----- | ------- | -------- |
| [Group Namespace Conversion Metrics ERD](https://app.lucidchart.com/invitations/accept/f332be8a-e48e-4cfa-be9c-e78b59a714c8) | Date, Location, Plan Type | Provide insight into new namespace adoption of key stage events and actions | Stage Adoption, Invite Members, New Groups, Paid Conversion, New Namespaces, GitLab.com |

## Data Platform Solution

### Data Lineage

`Coming Soon`

### DBT Solution

`Coming Soon`

### Trusted Data Solution

* [Trusted Data Framework](https://about.gitlab.com/handbook/business-technology/data-team/platform/#tdf)

`Coming Soon`

### EDM Enterprise Dimensional Model Validations

* [Enterprise Dimensional Model Validation Dashboard](https://app.periscopedata.com/app/gitlab/760445/Enterprise-Dimensional-Model-Validation-Dashboard)

`Coming Soon`

### RAW Source Data Pipeline validations

`Coming Soon`

### CustomerDB

* [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/751315/CustomerDB-Trusted-Data-Dashboard)
    * Reporting on all CustomerDB data tests which include the tdf tag.

`Coming Soon`

