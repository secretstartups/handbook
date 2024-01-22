---
aliases: /handbook/engineering/infrastructure/team/scalability/observability.html
title: "Scalability:Observability Team"
---

## Observability

This is subject of expansion as we work out direction and vision for the team.

## Common Links
|                                |                                                                                                                                                                                                                                                                                                                                                                                                                                |
|--------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Workflow**                   | [Team workflow](/handbook/engineering/infrastructure/team/scalability/#how-we-work)                                                                                                                                                                                                                                                                                                                                            |
| **GitLab.com**                 | `@gitlab-org/scalability/observability`                                                                                                                                                                                                                                                                                                                                                                                        |
| **Issue Trackers**             | [Scalability](https://gitlab.com/gitlab-com/gl-infra/scalability) <br/> [Tamland](https://gitlab.com/gitlab-com/gl-infra/tamland/-/issues)                                                                                                                                                                                                                                                                                        |
| **Team Slack Channels**        | [#g_scalability-observability](https://gitlab.slack.com/archives/g_scalability-observability) - Team channel<br/> [#scalability_social](https://gitlab.slack.com/archives/g_scalability_social) - Group social channel                                                                                                                                                                                                         |
| **Project Slack Channels**     | [#scalability-tamland](https://gitlab.enterprise.slack.com/archives/C05JU82BJQH) Tamland development <br/> |
| **Information Slack Channels** | [#infrastructure-lounge](https://gitlab.slack.com/archives/infrastructure-lounge) (Infrastructure Group Channel), <br/>[#incident-management](https://gitlab.slack.com/archives/incident-management) (Incident Management),  <br/>[#alerts-general](https://gitlab.slack.com/archives/alerts-general) (SLO alerting), <br/>[#mech_symp_alerts](https://gitlab.slack.com/archives/mech_symp_alerts) (Mechanical Sympathy Alerts) |

## Team Members

The following people are members of the Scalability:Observability team:

{{< team-by-manager-slug "liam-m" >}}

The team is located all over the world in [different timezones](https://timezonewizard.com/p4-6e9).

## Topics we cover

This is an initial overview of topics we cover to help us reflect on and learn about our areas of ownership, duties, products and services following the recent team restructure.

1. Metrics stack
   1. Prometheus/Thanos
1. Logging stack
   1. ELK
1. Error budgets
   1. Ownership of concept and implementation
   2. Delivery of monthly error budget report
1. Provide underlying data and aggregate numbers for [GitLab.com availability](/handbook/engineering/monitoring/)
1. Capacity planning
   1. [Triage rotation for .com](/handbook/engineering/infrastructure/capacity-planning/#gitlabcom-capacity-planning)
   2. Developing [Tamland](https://gitlab.com/gitlab-com/gl-infra/tamland), the forecasting tool
   3. [Capacity reporting for GitLab Dedicated](https://gitlab.com/gitlab-com/gl-infra/capacity-planning-trackers/gitlab-dedicated)
1. SRE oncall rotation

## How we work

### Updates in Slack

In order to stay informed with everyone's immediate topics, we post regular status updates in our Slack channel.

These updates include whatever the team member is currently working on and dealing with, for example consider including current focus area, general work items, blockers, in-flight changes, learnings, side tracks, upcoming time off and other relevant information.

There is no strict frequency for posting updates, although we strive to make updates at least once per week.

When posting updates, consider providing enough context (e.g. through links) so that interested team members are able to dive in on their own ([low context](/handbook/communication/#top-tips-and-best-practices)).
