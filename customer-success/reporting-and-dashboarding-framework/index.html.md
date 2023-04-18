---
layout: handbook-page-toc
title: Customer Success Reporting and Dashboarding framework
description: This page describes the underlying philosophy and framework for how to consider and build toward the long term goal of effective and efficient reporting and dashboarding
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


## Problem statement

We have multiple systems (Salesforce, Gainsight, Tableau) where reporting can take place. Confusion and inefficiencies are created in the Field and Operations for when to use which tool and why. Furthermore, we need clear, crisp definitions to empower Ops and Strategy to guide stakeholders on reporting best practices.

## Vision 

Each tool has a different value driver. Each report must address, “what is the primary purpose of the report/dashboard? To be operationalized or develop visuals/insights?”

### Framework

* Operationalize: Use Gainsight and Salesforce when the purpose is to operationalize, such as a list of contacts to engage or CTAs to update. Typically for front-line and managers
* Insights and recommendations: Use Sisense/Tableau for slide deck visualizations, trend analyses, and to develop insights and recommendations. Typically for Leadership and deck preparation

### Example design

#### Tableau

Deliver insights: Field-wide C360 view of contract info, usage data, health data, Marketing campaigns, attribution data, PtC/PtE. *Generally for exec/BOD and analytical reporting

* _QBR prep_: create dashboards to help CSM Managers and SA leaders create quantitative QBR stories - users: CS management/leadership
* _CS KPIs_: core CS KPIs - users: CS Analytics/CS Leadership+
* _Coverage_: CSM/usage data coverage dashboards - users: CS Analytics/Leadership+
* _Detailed usage reporting_: usage dashboards - users: CSM/leadership+
* _Top customer report_: exec level reporting - users: CS Analytics/exec/BOD

#### Gainsight

Drive action: CSM-specific reporting for actioning CTAs, Success Plans, burn-down dashboard. For CSM teams to use (CSM Managers to start/end their day in Gainsight)

* _Drive action_: CSM portfolio/proactive planning required that day - users: CSM/CSMM
* _Drive action_: at-risk customer reporting to update and act on - users: CSM/CSMM
* _Customer onboarding_: which customers are in onboarding and next steps - users: CSM
* _Customer health_: overall health is calculated in Gainsight - CSM/CSMM
* _Stage enablement and expansion_: in Gainsight for detailing required actions and missing customers; data integrated for Tableau to provide aggregated analysis and attribution - users: CSM

### Guiding principles

1. **Clarity** around which tools to use for which purposes
1. **Mitigate duplication** across reporting tools (some duplication is necessary and encouraged)
1. **Actionable** for end-users where applicable to drill down and complete tasks or update activity logs
1. **Visually designed** to ensure clarity of recommendations



