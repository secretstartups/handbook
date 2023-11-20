
---
title: Tableau Test Page
type: docs
---

This is our tableau test page so we can test implementation of Tableau
visualisations with in the internal Handbook.

## Viz from public site

{{< tableau toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/OKR4_7EngKPITest/PastDueSecurityIssues" >}}
  {{< tableau/filters "Subtype Label"="bug::vulnerability" >}}
{{< /tableau >}}

## Viz from internal site

{{< tableau height="600" src="https://10az.online.tableau.com/t/gitlab/views/OKR4_7EngKPITest/PastDueInfraDevIssues" >}}
  {{< tableau/filters "Subtype Label"="bug::vulnerability" >}}
{{< /tableau >}}


### Viz with Paramers and Filters and Height

{{< tableau height="600" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/OKR4_7EngKPITest/PastDueSecurityIssues" >}}
  {{< tableau/params "Severity Select"="S2" >}}
{{< /tableau >}}



### Second Viz

{{< tableau height="600" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/OKR4_7EngKPITest/PastDueInfraDevIssues" />}}