---

title: "Enterprise Applications Integrations"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />







## Enterprise Applications Integrations

#### Quick links

1. [Integrations Work tracker](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/integrations-work/-/issues){:target="_blank"}
1. [Automation-Integration Inventory](https://docs.google.com/spreadsheets/d/1mGeG2ClY8GHz2RZUpu-5FN0wUPCaw1o2bWEGtS0qLXE/edit?usp=sharing)
1. [Workato Playbook](./workato-playbook){:target="_blank"}
1. [Change Management](./change-management){:target="_blank"}
1. [Integrations Wiki](./wiki){:target="_blank"}

#### Quick Reference: Integration Docs

- [GreenHouse to Workday](./wiki/integrations-list/greehouse-workday/)
- [Rolly Automation](./wiki/integrations-list/rolly-updates-automation/)
- [Zuora Billing <> NetSuite](./wiki/integrations-list/zuora-billing-netsuite/)
- [Workday > Navex Gloabl](./wiki/integrations-list/workday-navex-gloabl/)


## How we work

To learn about our processes please visit the [How We Work](./how-we-work) page

## Who are we?

### Dennis  - Senior Integrations Engineer

GitLab handle: [@dgriffin4](https://gitlab.com/dgriffin4){:target="_blank"}

Slack handle: [@dgriffin4](https://gitlab.slack.com/team/U052E2AGY3F){:target="_blank"}

Job Family: [Integrations Engineer](/job-families/finance/integrations-engineer/#senior-integrations-engineer){:target="_blank"}

### Karuna Singh - Integrations Engineer

GitLab handle: [@Karuna16](https://gitlab.com/Karuna16){:target="_blank"}

Slack handle: [@Karuna Singh](https://gitlab.slack.com/team/U01GEHXQZEK){:target="_blank"}

Job Family: [Integrations Engineer](/job-families/finance/integrations-engineer/#integrations-engineer){:target="_blank"}

### Durgesh Thakkar - Senior Manager, Integrations Engineering

GitLab handle: [@dthakkargit](https://gitlab.com/dthakkargit){:target="_blank"}

Slack handle: [@dthakkargit](https://gitlab.slack.com/team/U053SBVN3EX){:target="_blank"}

Job Family: [Integrations Engineer](/job-families/finance/integrations-engineer/#integrations-engineer){:target="_blank"}

### Contacting us

Slack: `#bt-integrations`

## What do we do?

We are the team that designs, builds and maintains the complex ecosystem of integrations and automations that exist in our Enterprise Applications ecosystem. We do this via the use of a hybrid integrations platform. We also fill a governance role in the organization for system integrations and real-time data flow by applying [standards and conventions](#standards-and-conventions) for all of our Enterprise Application systems and integrations.


### Workato - Integration Platform

Workato is low code - no code integrtaion platform in which we can create automations, integrations and APIs for all the integration needs. For more please visit the platform [page](https://www.workato.com/)

### Capabilities & Offerings

#### System Integrations and APIs
- Connecting System A to System B
- Understanding APIs and building custom connections between systems
- Evaluating Native connectors
- Working through the build vs. buy problem for integrations
- Understanding compliance requirements for your systems(s)
- Building custom APIs
- Building automations and workflows

#### Highly tested and robust data mapping

We use a combination of unit and integration testing to build automated tests that provide guarantees that the data models we're mapping to and from are correct now and into the future.

#### System decoupling

The integrations platform we use allows us to decouple event producing systems from the downstream consumers so that if and when we do decide to switch upstream systems or introduce new downstream systems, we can very quickly and easily do that without causing large amounts of rework for ourselves or for the system owners.

#### Scheduled automations

Through our CRON scheduling capabilities, we can build out extremely flexible time-based automations for you

#### Slack integration

If you require any slack integration automations and workflows we offer that through the Workato built in Slack connector. Reach out for more information on how we can help you.

#### Built in business system connectors

Through our integration with Workato we are able to offer out of the box connectors for many standard business systems. Look through the [Workato connectors list](https://docs.workato.com/connectors.html){:target="_blank"} for more information on what's available. If your system isn't listed on that website please reach out to us as we also regularly build custom connectors for additional systems.


### Standards and Conventions

#### Monitoring & Logging

We ship logs from all of our integrations to a central location which allows us to quickly and easily debug problems with integrations, as well as trigger automated alerts for system outages and errors.

#### Security

The Workato integrations platform provides out of the box solutions for common authentication and authorization requirements that we frequently encounter. We can also provide guarantees about data security at rest and in-flight through regular application security audits as well as CI/CD driven SAST and DAST testing that exposes critical vulnerabilities to us before code reaches production.

We are set up to handle [Red, Orange and Yellow data](/handbook/security/data-classification-standard.html#data-classification-levels) so that you don't need to worry about that when we're building out your integrations.

## Why do we do it?

As GitLab grows, we have increasingly complex needs for real time data flow and workflow automation across the business. We also need to meet higher standards of security and auditing to satisfy external compliance drivers. This all calls for a more robust, repeatable methodology for building both simple and complex software. To do this we follow a strict set of engineering and platform standards and conventions which provide us a batteries included approach to developing new capabilities so that we can stay agile when working with GitLab's rapidly growing team and needs.
