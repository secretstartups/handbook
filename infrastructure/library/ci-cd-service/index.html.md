---
layout: handbook-page-toc
title: "CI/CD Service on GitLab.com"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Issue: [`infra/6123`](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6123)

# Overview
The CI (Verify) engineering team has had 1 person effectively oncall for all CI/CD services for GitLab.com.  As the scope and scale of GitLab.com has grown, this operational load is too much for one person.  This blueprint is the plan to have the core SRE infrastructure team take over oncall and operational work for CI / CD services for GitLab.com.  

At a high level, this blueprint has two main areas to consider:
1.  Prepare first one team to take on operational support of the CI/CD services
1.  Work with the Release and Verify engineering and product teams to understand future work to support their roadmaps

### Preparing the team to take over operational duties:
To start preparing the team to take on call, the SRE team will need to:
1. Perform a modified version of the [production_readiness review](https://gitlab.com/gitlab-com/gl-infra/infrastructure/blob/master/.gitlab/issue_templates/production_readiness.md)
1. Review the existing alerts for in Alert manager
1. Update or write new runbooks for alerts that will come to the team
1. Review Grafana Dashboards and update as needed.
1. Make plans for how to route the new alerts:  what levels of criticality - what to pager duty / what to channels/email?
1. Write up an SLO document that summarizes the key SLIs and translates those to SLOs.
1. Add the SLO doc and write up a relevant section for the new infra service inventory
1. Train the infra teams on the new items above.
1. Set a handoff date and do the handoff.

Most of the work for analysis will be done by breaking down the production readiness into multiple issues.
The output of the operational readiness should end up in the runbooks repo and feed into the new [service inventory work](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5926).

### Continuing the relationship with the CI/CD teams:

The SRE team that is a counterpart of the Release and Verify teams will also:
1. Setup recurring monthly meetings with PM and Engineering for Verify and Release to go over state of GitLab.com infra for CI/CD.  Also to get a vision of what is coming up that the infra team will collaborate on.  For example - Mac/Win shared runners.  Future vision with Kubernetes based shared runners in GKE.
1. Create a backlog and vision for what needs to be done in the future to be able to have all of CI/CD engineering share oncall with infra for their services.
