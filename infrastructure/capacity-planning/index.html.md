---
layout: handbook-page-toc
title: "Capacity Planning for GitLab.com"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Introduction

GitLab.com's capacity planning is based on a forecasting model. At present, we use Facebook's Prophet library for forecasting. The model is used to generate a report, which is published weekly to [https://gitlab-com.gitlab.io/gl-infra/tamland](https://gitlab-com.gitlab.io/gl-infra/tamland).

GitLab's Capacity Planning strategy is based on the following technologies:

![Tamland architecture diagram](img/architecture.png)

1. **[Saturation Monitoring Jsonnet Configuration](https://gitlab.com/gitlab-com/runbooks/-/tree/master/metrics-catalog/saturation)** - for saturation monitoring definition, recording rule generation, short term alerting configuration generation.
1. **Prometheus** - capturing and processing utilization and saturation metrics over the short-term.
1. **[Thanos](https://thanos.gitlab.net/)** - long-term storage of utilization and saturation metrics.
1. **[Tamland](https://gitlab.com/gitlab-com/gl-infra/tamland)** - the forecasting program.
1. **GitLab CI** - running weekly forecast reports.
1. **[Jupyter Book](https://jupyterbook.org/)** - static site generation for generating forecast content from Python based notebooks.
1. **[Facebook Prophet](https://facebook.github.io/prophet/)** - forecasting.
1. **[GitLab Pages Tamland Report Site](https://gitlab-com.gitlab.io/gl-infra/tamland)** - static site hosting of the generated forecasts.
1. **Prometheus Pushgateway** - accepting key metrics from Tamland forecasts.
1. **[GitLab Capacity Planning Issue Tracker](https://gitlab.com/gitlab-com/gl-infra/capacity-planning/-/issues)** - GitLab project used for tracking capacity planning forecast warnings. Alerts use the GitLab AlertManager integration.
1. **GitLab Slack Integration** - Slack notifications of new alerts in Tamland, to the [#infra_capacity-planning](https://gitlab.slack.com/archives/C01AHAD2H8W) channel.

### Workflow

We run the forecast on a regular basis. The forecasts are then reviewed in the weekly [Engineering Allocation meeting](https://docs.google.com/document/d/1j_9P8QlvaFO-XFoZTKZQsLUpm1wA2Vyf_Y83-9lX9tg/edit) and any required corrective actions are prioritized according to the timeframes for saturation predicted by the forecast, and the criticality of the resources.

### The Forecasting Process

### Source Data

The forecasting model uses the same saturation and utilization data model that we use
to monitor GitLab.com over the short-term. This ensures that anything that we feel is worth monitoring as a potential
saturation point will automatically be included in the forecasting model.

Because of this, all services used on GitLab.com are automatically included in the model.

The short-term saturation metric model used on GitLab.com models each resource as a percentage, from 0% to 100%, where 100% is completely saturated. Each resource has an alerting threshold. If this threshold is breached, alerts will fire and the engineer-on-call will be paged.

The thresholds are decided on a case-by-case basis and vary between resources. Some are near 100% while others are much lower, depending on the nature of the resource, the failure modes on saturation of the resource and the required time-to-mediation. Resources are classed as being either horizontally scalable or not. Horizontally scalable resources are generally considered lower priorities from a capacity planning point-of-view, whereas non-horizontally scalable resources (such as CPU on the primary Postgres instance, for example) require much longer-term strategies for remediation and are therefore considered higher priorities in the capacity planning process.

### Forecasting

The forecast process, Tamland, runs as a GitLab CI job on `ops.gitlab.net`. Usually this job will run on a weekly basis. The process starts by reading the historical short-term saturation metric data from Thanos, up to 1-year period, using an hourly resolution.

Tamland relies on Facebook Prophet for generating a forecasting model. Prophet performs analysis of hourly, daily, weekly and monthly trends to forecast a future trend in the data.

Even the most skilled engineer would struggle to predict future saturation, so it's unlikely that a model could do it either. We do not expect it to be totally accurate. Instead, with hundreds of resources on GitLab.com that could potentially become saturated, Tamland's forecasts are a bellweather for changes in trends, particularly upward changes, drawing the attention of engineers who review the data to specific issues.

Tamland will attempt to predict a range of outcomes. For saturation, we focus on the median prediction (50th percentile) and only the upper 80th percentile prediction. The lower 80th percentile is not as important for saturation purposes.

### Evaluation, Triage, Notification

When Tamland predicts that a resource will exceed its alerting threshold ([as defined in the metrics catalog](https://gitlab.com/gitlab-com/runbooks/-/tree/master/metrics-catalog/saturation)) within the next 60 days, an alert will be generated. This alert is forwarded to GitLab alerting and a Slack message is generated in [#infra_capacity-planning](https://gitlab.slack.com/archives/C01AHAD2H8W).

Tamland's forecasts are reviewed by an engineer. Not all forecasts are always accurate: a sudden upward trend in the resource saturation metric may be caused by a factor that is known to be temporary - for example a long running migration. The engineer will evaluate based on all information on-hand and determine whether the forecast is accurate. If so, a new incident issue is opened in the [Capacity Planning](https://gitlab.com/gitlab-com/gl-infra/capacity-planning/-/issues) tracker.

These reviews take place when new alerts arrive, or, at a minimum, prior to the [Engineering Allocation](https://docs.google.com/document/d/1j_9P8QlvaFO-XFoZTKZQsLUpm1wA2Vyf_Y83-9lX9tg/edit), which has a standing item for capacity planning, based on the outcome of the Tamland report.

Every week, the outstanding issues are reviewed and triaged, and appropriate measures are taken to address the potential saturation, including infradev issues, rapid actions or engineering allocation projects. When the resource is considered to no longer be a saturation threat, the issue should be closed.


