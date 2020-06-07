---
layout: handbook-page-toc
title: "GitLab Service Inventory Catalog (gSIC)"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Issue: [`infra/5926`](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5926)

## Idea/Problem Statement

### Outline 
Imagine you walk into a chamber full of books everywhere, scattered all over the floor. You are looking for a set of books to read and learn, but don’t know where to start. You could ask folks around and you might get varying answers. Some might know where the books are, some might tell you what the books are about, but there might be books where you no one knows where to find . The chamber keeps getting updated and/or new books and the process of finding a book just won’t scale anymore. Therefore, cataloging the books, arranging them, entering the data into a system and having a librarian makes things a lot easier, scalable and helps people find what they need fast. 

We, GitLab, could consider our services analogue to the books. The amount of information around a single service is not easy to specify and measure. A service is written for a business purpose, it brings certain values, it has certain service level agreements to its users, it is designed, implemented and maintained by someone or some team, it runs and operates somewhere, it is configured somehow, it calls for action based on certain conditions and the actions could be carried out by one or more engineers, it creates issues and the issues are tracked and tackled somewhere by someone...etc. This list could go on and on and this is just for a single service. However, for a company growing at our speed our services are evolving fast as well. As time goes by, it becomes more and more challenging to keep up all of our services let alone all the information surrounding them. Engineers do love challenges but not the type of challenge that requires one to memorize tons of information and recall it. In short, if we delegate this work of memorizing everything about our services or having to lookup from various places and asking from different team members to a centralized place that could save us a lot of time. Us - here refers to existing team members as well as new team members that will join. Just like how a library helps with books, we could have our own “library” (abstractly) for our services.
Therefore, the idea here is to come up with a GitLab Service Inventory Catalog (gSIC). 

### Benefits 
* Centralized, source-of-truth information for our services
  * Which enables our ability to automate service management. 
* Speeds up time to search for information
* Saves Time 
* Better and more efficient onboarding of new engineers 
* Tribal knowledge is accessible to other functional teams
* Self-service questions / answers 

### Risks of not doing
* Onboarding will take longer
* More time and resources will be required from existing team members to propagate the knowledge
* Cross team communication on a growing team will become more complex 
* As our environment increases in complexity, our need to automate service management increases to 
  * a) be able to move faster and 
  * b) to avoid errors introduced by incorrect assumptions or changes.

### Approaches
The bare minimum must-to-do is to gather all the scattered information about our services in one place, we structure the information in a logical, navigable, searchable and comprehensible way.  In terms of storing and presenting the catalog, we considered the following approaches:

1. An internal wiki type of system 
2. GitLab projects -> folders -> files structure (similar to our Handbook) 
3. Reuse and extend the existing [service-catalog.yml](https://gitlab.com/gitlab-com/runbooks/blob/master/services/service-catalog.yml) (formerly known as `service-mapping.yml`)


## Design

### gSIC Information
The proposal is to categorize all the information of and surrounding a service into five buckets and the below is an illustration of it. 

![gSIC representation of a service](img/gsic-information.png)

Details on each item in the above diagram is below.

#### Service
This is the highest level of identity of a service. 
* Name
* Tier
* Teams 

#### Business 
A service is written to serve a business purpose and it must bring certain business values to our users whether they are internal or external. Having insight into the business level understanding of a service should help us to think backwards starting with our customers. This bucket aims to capture this type of information.

**Requirements**

What was/is the business requirement of this service? 
(Either a link to an existing requirement document or a paragraph)

**Customers**

Who are the customers/users of this service?
(Either a list of customers, their contacts or a link to a doc that has this info)

**Value**

What business value does this service bring?
(A sentence is good here)

**SLA**

This is purely from customer perspective. What do the customer of this service expect the SLA to be?
* Availability
* Response Time

#### Technical 
Once a business requirement is defined, the next logical step is implementation part. This bucket attempts to capture all technical aspect of the service from design/development/test perspective. Basically, what are all the things we wish to know about a service from concept to completion. 

**Project** 

Where is the project codebase that implements the service?

**Criticality**

If this service goes down, what is the criticality of the impact? 

**Documents** 

* Design
  Provide the design document of this service.
* Architecture
  Provide the architecture diagram of the service. 
* Service
  Provide the documentation, written by the developers, of this service.
* Security
  If any security document is available, provide it.

**Dependencies**

Dependency matrix is one of the most important assest of identifying a service. Being able to foresee impact on upstream and downstream dependencies helps us proactively come up with efficient solutions to prevent issues.

* Service
  Direct dependent services' names

**Configurations**

* Config name
* Location

**Chef** 

Chef roles for this service.

**Scalability**

Whether the service is cpu-bound, memory-bound, network-bound...etc and how the service scales. 

* Bound
* Scalable 

**Security** 

This is the section that captures security related information of this service. Example: If the service was reviewed by security, what classification of data the service handles and security related incidents. 

* Reviewed
* Data Classification
* Incidents 

**Logging** 

* Log Name 
* Permalink 

#### Infrastructure

**Provider**

Who is the infrastructure provider? (Azure, DO, AWS, GCP...etc)

**Architecture**

Link to architecture diagram just for this service, from infra perspective.

**Provisioning**

How is infra provisioning done for this service?

**Accesses** 

* Account Name
* Access Type
* Reviewed 

#### Operations

**Maintenance** 

Note known maintenance work for this service. 

**Runbooks**

Link to runbooks for this service. A runbook is a set of known procedures that produce expect results.

**Playbooks**

Link to playbooks for this service. A playbook is a set of procedures to handle unknown scenarios where the results might not be what is expected and that will require engineers to troubleshoot further.

**Error Budgets**

Link to the document regarding error budgets. 

**Incident Management**

If there is any specific incident management protocol/process for this service, then link to the document here. 

#### Observability 

**Monitors**

Mapping of monitor and links to dashboards.

**Alerts**

Our alerts have `type=` labels. Provide the corresponding label for this service. 

### gSIC Storage and Presentation
After considering the 3 options of storing and presenting the data, we have agreed that we should look at extending the existing [service-catalog.yml](https://gitlab.com/gitlab-com/runbooks/blob/master/services/service-catalog.yml) (formerly known as `service-mapping.yml`) which already brings benefits in co-relating a service to its owner, monitors, logging and severity. 


What we should do is to rename this file to `service-catalog.yml` because we are extending it to something beyond a mapping and start inputting the information gathered from previous section. Benefits of doing it the service-mapping yml approach:

* It reuses and extends existing work that already brings values
* It is machine readable, so we can even go as creative as generating a markdown from the yml 

#### Delta from existing service-mapping.yml: 
* Added `engagement_policy` to **teams**
* Added `oncall_schedule` to **teams**
* Added `business`, `technical`, `infrastructure`, `operations`, `observability` to **service**
* Moved `logging` to **technical**
* Moved `criticality` to **technical**
* Moved `primary_grafana_dashboard` to **observability.monitors**
* Moved `sentry_slug` to **observability.monitors**

### Deliverables

As of 1/18/19, we have **10** weeks left in 2019Q1. We need to come up with a list services we would want to include in the catalog, calculate how much time we need to spend per service and how many engineers can work at the same time in order to meet the OKR. 

The following service list is retrieved based on what is running in GCP and we should add more to the list: 

AlertManager, API, Blackbox, Console, Consul, Contributors, ELK, File, FluentD, Git, InfluxDB, License,  Load Balancer, Mailroom, Pages, Patroni, Postgres, PGBouncer, Postgres DR Archive, Postgres DR Delayed, Prometheus, Prometheus App, PSQL-Timing, Pubsub, Redis, Redis Cache, Redis Cache Sentinel, Registry, Runner, SD Exporter, Share, SideKiq, Web, Web Pages, Version

### Implementation Considerations

#### Testing

Given this is a cataloging effort, we don’t have much testing involved. However, once the service-mapping.yml is renamed/moved/updated/extended it must not break its existing functionalities and those would need to be tested. 

#### GitLab.com and Self-managed

TBD

### Operational Considerations

#### User Interface

We wanted to take the effort of cataloging our services to a next level where we provide a UI built on top of the service-catalog data. This would help facilitate us achieving some of the benefits listed towards the beginning of this design document such as helping new engineers onboard faster and helping existing team members to quickly look up information. Therefore, we went ahead and built [service-catalog-app](https://gitlab.com/gitlab-com/gl-infra/service-catalog-app). With this, users can search for a service, read everything we know about the service including, but not limited to, configurations, projects, owners, data classification, dependencies, runbooks and monitors. The UI also provides a nice view of engineering teams and their members so we would no longer have to remember who is on what team. For further details around how the UI works and how to contribute to it, check out the project link.

#### Automation

Given that the gSIC will be a machine-readable .yml file, we can look at automation efforts in the near future once we have completed our initial catalog and analyzed the workflow required to update it. The biggest reason of putting an automation layer on top of gSIC (i.e via API wrapper) would be for read operations. We could expose gSIC internal data, via (i.e serverless) API, to markdowns or even other automation scripts that could do audits, comparisons, reporting, data-aggregation and so on. 

####  Monitoring

Given that this is a heavy, data-driven entity, one way we could do monitoring is around the integrity of the file. The file structure is in .yml format and thus we could add a .yml syntax check and monitor the integrity of the file. Once we start iterating on Automation aspects, we could look at adding more monitoring belts. 

### Sample Template 

Checkout a [sample template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/handbook/engineering/infrastructure/design/service-inventory-catalog/sample/example-service-catalog.yml) prepared using API service as an example.