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

Please contact an Infrastructure Engineering Manager or Director with the following information to hand:

1. Link to the GA Epic for this feature
1. Names of the Product Manager and Engineering Manager
1. Name of the stage group that owns this feature
1. Name of an Engineering IC (preferably Staff level)

The Infrastructure leadership will help this group work through the table listed above so that
the feature can be made Generally Available as quickly as possible.
