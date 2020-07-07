---
layout: handbook-page-toc
title: "TAM Infrastructure Upgrade Coordination"
---

## Overview

Customers on self-hosted GitLab deployments may need to upgrade to new
infrastructure for a number of reasons, including moving to a cloud provider,
utilizing technologies such as Kubernetes, or because GitLab growth requires
more computational resources. GitLab provides recommended [Reference Architectures](https://docs.gitlab.com/ee/administration/reference_architectures/#available-reference-architectures)
for different scales.

TAMs are the primary point of contact for customers and are responsible for
coordinating with the customer and internal teams so that an infrastructure upgrade
plan can be established. TAMs may provide documentation and high-level guidance
but the technical implementation should ideally be provided by Professional
Services via [Dedicated Implementation
Services](https://about.gitlab.com/services/implementation/enterprise/).

### Infrastructure upgrade coordination

This is a high-level process for TAMs coordinating an infrastructure upgrade:

1. TAM establishes specific customer requirements for the hardware upgrade e.g.
   what growth a customer anticipates.
1. Recommended: TAM involves Professional Services and recommends using [Dedicated
   Implementation
   Services](https://about.gitlab.com/services/implementation/enterprise/) to
   facilitate the migration to new hardware.
   1. **NOTE**: For large hardware
   upgrades (5000+ users) it is **highly recommended**  that Professional
   Services are involved via [Dedicated Implementation
   Services](https://about.gitlab.com/services/implementation/enterprise/). This
   ensures that the customer's hardware upgrade plan is sufficient and that the
   migration can be performed with minimal interruption. Migrations of this size
   often take at least three months to plan and execute.
1. Should a customer choose not to procure Professional Services, a TAM can
   provide relevant documentation e.g. for [Reference
   architectures](https://docs.gitlab.com/ee/administration/reference_architectures/#available-reference-architectures)
   but won't provide a detailed hardware upgrade plan.
   1. Other internal teams (Product, Quality, Support, etc.) may assist if specific questions arise.
1. Once a hardware upgrade plan is created, either via Professional Services or
   by the customer, the TAM shares the plan with Support. The Support team will
   review the plan for feedback..
1. During a non-ProServ assisted migration, if the customer encounters problems 
   during the migration itself, then Support will be the primary point of contact via our support process.
