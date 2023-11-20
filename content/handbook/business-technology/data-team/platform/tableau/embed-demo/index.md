
---
title: Tableau Embed Demo Page
type: docs
---

This is our Tableau embed demo page.  It is used to demonistate how we can embed Tableau visualizations into the handbook.  To facilitate uniform experaince nad presination we use a [shortcode](https://handbook.gitlab.com/docs/shortcodes/#tableau-embeds) to embed Tableau charts and dashboards.

## Viz from public site

This chart should be visible to anyone who loads the page.

{{< tableau toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/OKR4_7EngKPITest/PastDueSecurityIssues" >}}
{{< /tableau >}}

## Viz from internal site

This chart should only requer a log in to the Tableau site and only be visiable to thouse that hae a Tableau licesne. 

{{< tableau height="600px" src="https://10az.online.tableau.com/t/gitlab/views/OKR4_7EngKPITest/PastDueInfraDevIssues" >}}
{{< /tableau >}}


### Viz with Paramers and Filters and Height

This chart should be filtered to a preselected Sevetity and Subtype.

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/OKR4_7EngKPITest/PastDueSecurityIssues" >}}
  {{< tableau/params "Severity Select"="S2" >}}
  {{< tableau/filters "Subtype Label"="bug::vulnerability" >}}
{{< /tableau >}}



