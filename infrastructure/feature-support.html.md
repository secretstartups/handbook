---
layout: handbook-page-toc
title: "Infrastructure Feature Support"
description: "How the Infrastructure Department supports shipping features to Production."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Getting started

When a GitLab feature is released to Production, it can be released at one of these levels: Experiment, Beta, Generally Available.
(See the [product documentation](https://docs.gitlab.com/ee/policy/alpha-beta-support.html) for further details.)

The availability of a feature is closely related with our ability to support the feature on our SaaS Platforms.

These guidelines ensure that features in our Production environments can be operated by our Reliability teams to match the expected level of support.

### Requesting and creating new GCP infrastructure resources

Please use the [Sandbox Cloud GCP Group Project issue template](https://gitlab.com/gitlab-com/business-technology/engineering/infrastructure/issue-tracker/-/issues/new?issuable_template=gcp_group_account_create_request) to request new resources. After the GCP project is created, it can be configured as needed, this provides initial provisioning and IAM management. This provides basic resources and is available to anyone team-member. 

As we make progress on [Project Runway](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/969), we will encourage development teams to use Runway to provision new resources. Runway projects will include automated configuration and Runway provides many of the Infrastucture Readiness requirements as standard. Using Runway will make it easier and faster to promote new features into a Generally Available state in Production. 

## Feature Availability Support

### Experiment

1. Incidents for Experimental features are assigned as [Severity 4](/handbook/engineering/infrastructure/incident-management/#incident-severity)
1. If the feature requires a new service:
  1. A service catalog entry is created with a label, team and owner assigned along with references to documents if they are available ([example](https://gitlab.com/gitlab-com/runbooks/-/merge_requests/5800)).
  1. Basic troubleshooting information is added to the service's `doc/` directory in the [runbook repository](https://gitlab.com/gitlab-com/runbooks). At minimum, there should be instructions for how how to disable the feature.

### Beta

1. All underlying services exist in the Service Catalog
1. On-call SRE knows how to access services
1. On-call SRE knows who to contact for further diagnosis
1. Basic observability in place
1. Incidents for Beta features are assigned as [Severity 4](/handbook/engineering/infrastructure/incident-management/#incident-severity)

### Generally Available

1. Runbooks exist
1. Observability exists
1. Readiness review completed
1. Security review completed
1. Automatic alert routing in place
1. Incidents for Generally Available features are assigned according to the [incident severity table](/handbook/engineering/infrastructure/incident-management/#incident-severity) listed on the Incident Management page.

## How to expedite features to General Availability

We are able to help expedite features to General Availability.

In order to expedite a prototype feature, on the epic tracking the work required to reach General Availability, include the label `~expedite_prototype`.
Infrastructure leadership are subscribed to this label and will be notified that the intention is to expedite this feature. 

Infrastructure leadership will confirm with the epic DRI if they are able to support this. 

Epics with this label are visible in the [Prototype Status epic board](https://gitlab.com/groups/gitlab-org/-/epic_boards/44867).