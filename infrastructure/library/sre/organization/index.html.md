---
layout: handbook-page-toc
title: "SRE Org in 2019"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Issue: [`infra/5231`](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6210)

## Overview

### Current State in early 2019:

The SRE org today consists of 3 teams with 3-6 engineers and will grow in 2019 to a full 3 teams with ~6 SREs and ~2 DBREs.
As we grow to a more mature team in 2019, we will continue to think about how we organize our teams and how work flows to them.

How does work flow to the SRE teams?
1.  Production support work (keeping the lights on).  These typically come from oncall and are reactive to how the system is being used
2.  Requests from other teams in GitLab.  This is work related to product or in support of other company initiatives.
3.  Internally prioritized work - Introspective OKRs

### How could we organize our teams?

Two major ways we could have teams cover their responsibilities.  
1. Geography - teams are stable in geography - all people are in similar timezones.  Each team covers all 3 areas of how work flows in to them.
2. Alignment in expertise. Teams are geographically distributed but align along focused areas for the work that flows to them.

See [Chapter 18 - SRE Engagement Model](https://landing.google.com/sre/workbook/chapters/engagement-model/) in the [SRE Workbook](https://landing.google.com/sre/workbook/toc/) for a good discussion of team organization and engagement models.

In aligning geographically, we can ensure a good model for a follow the sun strategy.  However, a lot of the strategies discussed cover co-located, but geographically diverse teams - think 3 co-located offices in 3 different timezones.  

Some unique challenges we have:

1.  We are completely distributed.  There are no offices for co-location.
2.  We already heavily rely on async communication within the SRE Teams.
3.  Interaction with other teams for how work flows to us for area 2 requests is all async and distributed. Since each of the other teams in GitLab are also distributed, a request can come from a team anywhere on the globe.  We don't gain anything by trying to align an SRE team to another team in a certain region.

In aligning on expertise, teams will own and develop expertise in alignment with certain development/product areas. See the "Structuring a Multiple SRE Team Environment" in Chapter 18. Further below "Running Cohesive Distributed SRE Teams", there are further tips that would be applicable to the distribution of SRE team members with GitLab. This model will likely give a better experience to the other teams we need to interact with. There will be a stable SRE team which can develop a relationship with their counterpart teams in GitLab. We could structure this along the lines of the [product categories and sections](/handbook/product/categories/). For areas of internal ownership, we could also then have more stable "shepherds" or owners for core parts of our infrastructure like Prometheus, Grafana, ELK, PagerDuty, Chef, and Terraform. Other SRE teams that are not owners of that infrastructure tooling can still make changes, but there can be a known subset for who/where MRs and design should go.

### The future of on call

Another consideration is how SRE and the rest of engineering envision alerting for their services on GitLab.com in the future.  This is largely item 1 in the how does work flow to our team above.  Currently all alerts go to the central SRE on call rotation.  The shifts are a pair of 12 hours starting at 4AM and 4PM UTC.  As the infrastructure teams and GitLab continue to grow, we have the opportunity to iterate on how we handle on call for GitLab.com.

A future desired state is to get the rotations to a 3 shifts of 8 hours model to better follow the sun.  This is largely dependent on having enough people in each rotation.  Six people is the rough minimum for a reasonable rotation that will allow people to focus on project work when they are not on call along with preventing burn out.  Many SRE models also have the engineering teams for services participate in on call along with SRE teams for monitoring and alerting for their services.  We could take steps to iterate towards that model.  However, there are some considerations on how we would approach this:

1. We would need to pick candidate engineering teams with which to work.
1. Start with 1 or 2 teams and establish a good working model for handoffs and dynamics in handling interrupts.
1. It will entail breaking up the current monolithic structure of alerting.  PagerDuty rotations will change dramatically.
1. A higher use of PagerDuty in the company
1. Security concerns around separation of duties and access to production environments.  
1. Building useful observability and tooling to help teams without production access have the ability to diagnose and fix their areas of responsibility

Further reading for thoughts and considerations about on call are in [Chapter 8 of the SRE Workbook](https://landing.google.com/sre/workbook/chapters/on-call/)

### References
1. https://landing.google.com/sre/sre-book/chapters/dealing-with-interrupts/
2. https://landing.google.com/sre/workbook/chapters/eliminating-toil/
3. https://landing.google.com/sre/workbook/chapters/engagement-model/
4. https://landing.google.com/sre/workbook/chapters/on-call/
