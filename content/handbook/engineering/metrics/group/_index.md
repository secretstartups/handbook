---
title: "Group Engineering Metrics"
---

### How to navigate the dashboards

Welcome to our Engineering Metrics Dashboards hub – your go-to spot for checking out how things are rolling across our engineering org. The dashboards below capture data on key metrics such as past due issues, merge request types, open bugs, review time, merge request rate, and the age of bugs and issues. These metrics serve as vital indicators, offering a granular understanding of our development processes, code quality, and team efficiency. To ensure the accuracy of the presented data, please use the appropriate 'Group' filter. Please reach out to us in #g_engineering_analytics if you have any questions!

### Top Engineering Metrics Dashboard

{{< tableau src="https://10az.online.tableau.com/t/gitlab/views/TopEngineeringMetrics_16989570521080/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "stage"="Create" >}}
{{< /tableau >}}

(<a href="https://10az.online.tableau.com/#/site/gitlab/views/TopEngineeringMetrics_16989570521080/TopEngineeringMetricsDashboard" target="_blank">Tableau↗</a>)
<script type='module' src='https://10az.online.tableau.com/javascripts/api/tableau.embedding.3.latest.min.js'></script>
<tableau-viz 
  id='tableau-viz' 
  src='https://10az.online.tableau.com/#/site/gitlab/views/TopEngineeringMetrics_16989570521080/TopEngineeringMetricsDashboard' 
  width="100%" 
  height="500" 
  toolbar='hidden' 
  hide-tabs
  >
  <viz-parameter 
  name="<%= filter_type %>"
  value="<%= filter_value %>"
  ></viz-parameter>
  <viz-filter 
  field="<%= filter_type %>"
  value="<%= filter_value.downcase %>"
  ></viz-filter> 
</tableau-viz>

### MR Types Dashboard
{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/OKR4_7EngKPITest/PastDueSecurityIssues" >}}
  {{< tableau/params "Severity Select"="S2" >}}
  {{< tableau/filters "Subtype Label"="bug::vulnerability" >}}
{{< /tableau >}}

### Development Dashboard

### Infrastucture Dashboard

### Quality Dashboard

### Security Dashboard