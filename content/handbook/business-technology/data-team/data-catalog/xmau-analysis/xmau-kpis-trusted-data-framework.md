---

title: "Predicted XMAU Algorithm"
---

### xMAU Variations - Trusted Data Framework

xMAU KPIs are very important metrics that assess the health of the business and its growth. They are inspected with scrutiny during the Product Key Reviews held once a month. They are additionally showcased in the Product Performance Indicators Pages in the handbook.

For all of these reasons, the Data Team created a suite of tools (dashboards, alerts, custom tests) to allow direct KPI owners to easily monitor variations of the KPI and to potentially be alerted in case of extreme or suspicious trends.

#### Alerts in SiSense

SiSense has an alerting feature that allows users to send notifications whenever the result of a query is higher, equal or lower than a defined value/threshold.

We created a set of SQL alerts for the xMAU metrics that will help KPI owners to keep track of the variation of the
metrics:

- **[td_xmau] Est. CMAU Variations Monitoring**: This alert is triggered if the MoM changes of the CMAU KPI is over +/- 10%
- **[td_xmau] Est. UMAU Variations Monitoring**: This alert is triggered if the MoM changes of the UMAU KPI is over +/- 10%
- **[td_xmau] Est. SMAU Variations Monitoring**: This alert is triggered if any of the Stages has a MoM absolute change over 10%. Stages with SMAU values lower than 1000 are excluded (we assume that those stages have newly instrumented SMAU metrics and are subject to extreme volatility at the beginning)
- **[td_xmau] Est. GMAU Variations Monitoring**: This alert is triggered if any of the Groups has a MoM absolute change over 10%. Groups with SMAU values lower than 1000 are excluded (we assume that those stages have newly instrumented SMAU metrics and are subject to extreme volatility at the beginning)

Those alerts are currently sent every Monday and every 1st day of a month.

#### Dashboard in SiSense

The Data Team created also this [TD xMAU Dashboard](https://app.periscopedata.com/app/gitlab/813157/WIP-TD-XMAU-Variations) that compiles a set of visualisations that will help understand quickly the health status of these KPIs.

<iframe class="dashboard-embed" src="https://app.periscopedata.com/shared/e906c513-f836-4651-a3df-de7f254146f4?" height="700"> </iframe>

#### Next steps

Currently, the alerts are sent to only one team member (Mathieu Peychet). We will need to come up with a list of users receiving the Alerts (our proposal will be to send it to Analytics Instrumentation PM and Product Analytics Team).

We are also experimenting with other solutions to make this alerting system, better and smarter:

- We are currently moving our estimated xMAU calculation to dbt.
- We plan to try [Great Expectations](https://greatexpectations.io/), which is a open source solution designed to create custom data testing.
