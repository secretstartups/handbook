---

title: GitLab Dedicated Observability and Monitoring (Grafana)
category: GitLab Dedicated
description: "Gitlab Dedicated Support - Observability and Monitoring"
---

## Accessing Grafana

Credentials are stored in the `GitLab Dedicated - Support` Vault.  Just as with OpenSearch, the passwords are refered to by customer number. Use the `website` field to find the customer.

## Finding Dashboards

When logging in for the first time, dashboards are not immediately visible and you will be greeted by a Grafana welcome screen. To find the dashboards:

1. Locate the four-box icon situated in the left pane. When you hover over it, a tooltip will appear identifying it as the Dashboards link.
1. Choose either the Dashboard option or the Browse option. Both will lead you to the same destination.
1. At the center, there is a folder named `General`. Expand this folder to view the available dashboards.

## Grafana tips

The `General / Triage` dashboard is most useful for an emergency as it has the pods all laid out in a single view. By default it has 6 hours of data. It is helpful for finding blips & dips. Use this data to correlate to other dashboards.

Remember that Grafana is used for visualizing issues and spotting problems. It won't tell us directly what is wrong. You must correlate to the logs to find the exact problem.

As an example, the Triage dashboard may show that `webservice` errors are increasing. Use this to correlate an approximate time and filter out the other logs by the `kubernetes.labels.app` to find the error for just `webservice`.
