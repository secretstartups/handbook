---

title: "KPI Development"
description: "This page defines the process for developing KPIs."
---







## Introduction

{:no_toc}

This page defines the process for developing a new KPI or altering an existing KPI, part of the [GitLab KPIs Index](/handbook/company/kpis/). KPIs for each group are listed in a YAML file that are stored in a [common directory](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/performance_indicators) on GitLab.com. 

## KPI Development

KPIs require varying amounts of data discovery and development prior to final release into the handbook with an automated KPI dashboard. Given a clear business definition and available data, KPIs can be developed and published quickly. Others may take weeks or months if the business definition is not clear, targets are not defined, or data infrastructure is not in place. In general, KPIs which cross functional boundaries, cross subject matter boundaries, uncover source data quality problems, or require new data infrastructure are the most expensive and time consuming to implement.

### Development Workflow

```mermaid
graph LR
	A[KPI Definition in the Handbook] -->
	B[Data Discovery] -->
	C[Data Infrastructure Development] -->
	D[Develop KPI Chart] -->
  E[Quality Assurance and Sign-Off] -->
  F[Public KPI Chart in Handbook]
```

### Creating A New KPI

1. Create a merge request to add the KPI definition to the appropriate functional page of the handbook. Define the KPI as completely as possible with [all of its parts](/handbook/company/kpis/#parts-of-a-kpi).
    - The MR must be approved by the functional leader and the CEO.
    - Tag the CFO; VP, Finance; and Senior Director, Data in the MR for visibility into downstream changes that may need to occur.
1. Create a [Data Team issue](https://gitlab.com/gitlab-data/analytics/-/issues) using the _KPI Template_ and fill in the details. Include a link to the handbook page if merged or MR if not.
1. If necessary, the Data Team will contact you to arrange a discovery session and create a development plan.
1. KPI Development is considered complete once the KPI chart is published and the KPI entry on this page is tagged with the appropriate [operational status](/handbook/company/kpis/#legend).

### Updating An Existing KPI

1. Create a merge request for the changed KPI definition in the appropriate functional page of the handbook.
    - The merge request must be approved by the functional leader and the CEO.
    - Tag the CFO; VP, Finance; and Senior Director, Data in the MR for visibility into downstream changes that may need to occur.
    - FP&A will highlight changed KPIs in the Investor Metrics deck, along with a link to the Merge Request that describes the change.
1. Create a [Data Team issue](https://gitlab.com/gitlab-data/analytics/-/issues) using the _KPI Template_ and fill in the details. Include a link to the handbook page if merged or MR if not.
1. If necessary, the Data Team will contact you to arrange a discovery session and create a development plan.
1. KPI Development is considered complete once the KPI chart is published and the KPI entry on this page is tagged with the appropriate [operational status](/handbook/company/kpis/#legend).
