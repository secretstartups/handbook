---
title: "Engineering Metrics Dashboards"
---

### Welcome

Welcome to our Engineering Metrics Dashboards hub – your go-to spot for checking out how things are rolling across our engineering org. The dashboards below capture data on key metrics such as past due issues, merge request types, open bugs, review time, merge request rate, and the age of bugs and issues. These metrics serve as vital indicators, offering a granular understanding of our development processes, code quality, and team efficiency. Please reach out to us in `#g_engineering_analytics` if you have any questions!

#### Dashboards

This page is populated from the following filterable dashboards.

- [Top Engineering Metrics Dashboard](https://app.periscopedata.com/app/gitlab/1000952/Top-Engineering-Metrics-Dashboard)
- [MR Types Dashboard](https://app.periscopedata.com/app/gitlab/976854/Merge-Request-Types-Detail)
- [Development Embedded Dashboard](https://app.periscopedata.com/app/gitlab/681347/Development-Embedded-Dashboard)
- [Quality Embedded Dashboard](https://app.periscopedata.com/app/gitlab/736012/Quality-Embedded-Dashboard)
- [Infrastructure Embedded Dashboard](https://app.periscopedata.com/app/gitlab/798401/Infrastructure-Embedded-Dashboard)
- [Security Embedded Dashboard](https://app.periscopedata.com/app/gitlab/758795/Appsec-Embedded-Dashboard)

#### Filtering your data
To ensure the accuracy of the presented data, please use the convenient filtering options (**'Group'**, **'Section'**, or **'Stage'**) at the top of the dashboard to tailor the displayed information to your group, section, or stage's metrics.

#### Save your settings

If you find yourself frequently accessing data specific to your group, section, or stage, we recommend embedding the following code to save your preferred settings.

<details markdown=1>
<summary>Code</summary>


```markdown
{{< tableau src="https://10az.online.tableau.com/t/gitlab/views/TopEngineeringMetrics_16989570521080/TopEngineeringMetricsDashboard" >}}
{{< tableau/filters "stage"="Create" >}}
{{< /tableau >}}
```



</details>

Simply copy and paste this code into your page. It will save your selected filters by defaulting to your own data without the need to manually set filters each time. Make sure to replace any placeholders in the code with the public dashboard URL and your actual group, section, or stage details.

### Top Engineering Metrics Dashboard

{{< tableau src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
{{< /tableau >}}

### MR Types Dashboard

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
{{< /tableau >}}

### Development Dashboard

### Infrastucture Dashboard

### Quality Dashboard

### Security Dashboard