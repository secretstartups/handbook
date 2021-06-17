---
layout: handbook-page-toc
title: "Enterprise Applications Integrations"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Enterprise Applications Integrations
##### Quick links

1. [Milestone board](https://gitlab.com/groups/gitlab-com/-/boards/1937586){:target="_blank"}
1. [Integrations Work tracker](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/integrations-work/-/issues){:target="_blank"}
1. [Integrations Platform (Nexus)](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/nexus){:target="_blank"}

## How we work
To learn about our processes please visit the [How We Work](./how-we-work) page

## Who are we?

### Daniel Parker - Senior Integrations Engineer
GitLab handle: [@dparker](https://gitlab.com/dparker){:target="_blank"}

Slack handle: [@dparker](https://gitlab.slack.com/team/U01760T6R6Y){:target="_blank"}

Job Family: [Integrations Engineer](/job-families/finance/integrations-engineer/#senior-integrations-engineer){:target="_blank"}

### Karuna Singh - Integrations Engineer
GitLab handle: [@Karuna16](https://gitlab.com/Karuna16){:target="_blank"}

Slack handle: [@dparker](https://gitlab.slack.com/team/U01760T6R6Y){:target="_blank"}

Job Family: [Integrations Engineer](/job-families/finance/integrations-engineer/#integrations-engineer){:target="_blank"}

### Contacting us
Slack: `#bt-integrations`

## What do we do?
We are the team that designs, builds and maintains the complex ecosystem of integrations and automations that exist in our Enterprise Applications ecosystem. We do this via the use of a hybrid integrations platform. We also fill a governance role in the organization for system integrations and real-time data flow by applying [standards and conventions](#standards-and-conventions) for all of our Enterprise Application systems and integrations.

### GitLab's Hybrid Integrations Platform
At GitLab we have a hybrid integrations platform philosophy. Our core integrations platform is Nexus. It's built with the open source Node.js framework [Nest.js](https://nestjs.com/){:target="_blank"} and maintained by the Integrations Engineering team. In addition to Nexus we also use an IPaaS platform called Workato.

<p style="display: flex; flex-direction: column; align-items: center; justify-content: center;">
    <a href="https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/nexus" target="_blank">
        <img style="padding: 5px" src="https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/nexus/-/raw/master/logos/logowidecropped.svg" width="400px">
    </a>
    <i class="fas fa-plus" style="font-size: 2em; margin-top: 10px; margin-bottom: 10px"/>
    <a href="https://www.workato.com/" target="_blank">
        <img style="background-color: #000; padding: 5px" src="data:image/svg+xml;charset=utf-8,%3Csvg width='123' height='20' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M32.351 2.267c1.17 1.91.607 4.436-1.279 5.628-1.256.795-2.767.784-3.988.152l-.02-.008-.02-.009a1.668 1.668 0 00-.432-.114 1.733 1.733 0 00-.75.072l-.014.004a1.94 1.94 0 00-.399.199 1.78 1.78 0 00-.567 2.403l1.868 3.048c1.17 1.909.607 4.436-1.279 5.628a3.967 3.967 0 01-5.527-1.303l-1.832-2.99c-.51-.828-1.582-1.081-2.384-.563a1.768 1.768 0 00-.813 1.472v.018c0 1.368-.661 2.703-1.886 3.476a3.967 3.967 0 01-5.527-1.302L.61 6.844C-.56 4.935.003 2.408 1.89 1.217a3.967 3.967 0 015.526 1.302L9.258 5.52c.504.82 1.56 1.077 2.36.578l.024-.015c.51-.32.791-.872.813-1.434a4.09 4.09 0 011.886-3.532 3.967 3.967 0 015.527 1.303l1.853 3.023c.51.828 1.582 1.081 2.384.563.19-.121.365-.33.527-.625a1.43 1.43 0 01.017-.037c.112-.217.184-.389.216-.515.031-.123.054-.24.068-.355.147-1.563.67-2.726 1.89-3.509a3.967 3.967 0 015.528 1.302z' fill='%2367EADD'/%3E%3Cpath d='M43.104 17.836l2.802-8.188 2.925 8.188h2.088l4.203-11.553h-2.703l-2.68 7.793-2.653-7.793h-2.36l-2.654 7.793-2.654-7.793h-2.703l4.325 11.553h2.064zm18.424.247c3.268 0 6.02-2.4 6.02-6.06 0-3.662-2.752-5.987-6.02-5.987-3.244 0-5.972 2.325-5.972 5.986 0 3.662 2.728 6.061 5.972 6.061zm0-2.474c-1.892 0-3.465-1.41-3.465-3.587 0-2.127 1.572-3.488 3.465-3.488 1.917 0 3.49 1.361 3.49 3.488 0 2.177-1.573 3.587-3.49 3.587zm10.535 2.227V13.68c0-3.068.909-5.245 3.071-5.245.492 0 1.057.075 1.696.396l.418-2.35c-.369-.247-1.229-.445-2.04-.445-1.425 0-2.556.841-3.145 2.894V6.283H69.53v11.553h2.531zm8.961 0v-4.581l4.264 4.58h3.318l-5.444-5.743 5.444-5.809h-3.318l-4.264 4.597V0h-2.506v17.836h2.506zm13.509.247c1.425 0 3.096-.643 3.858-1.905v1.658h2.507V6.283h-2.507v1.633c-.787-1.311-2.482-1.88-3.858-1.88-3.097 0-5.825 2.325-5.825 6.011s2.728 6.036 5.825 6.036zm.294-2.474c-1.916 0-3.514-1.46-3.514-3.587 0-2.127 1.598-3.512 3.514-3.512 1.72 0 3.54 1.237 3.54 3.512 0 2.276-1.672 3.587-3.54 3.587zm12.231 2.227v-9.45h2.433V6.283h-2.433V1.905h-2.531v4.378h-2.065v2.103h2.065v9.45h2.531zm9.06.247c3.268 0 6.021-2.4 6.021-6.06 0-3.662-2.753-5.987-6.021-5.987-3.244 0-5.972 2.325-5.972 5.986 0 3.662 2.728 6.061 5.972 6.061zm0-2.474c-1.892 0-3.465-1.41-3.465-3.587 0-2.127 1.573-3.488 3.465-3.488 1.917 0 3.49 1.361 3.49 3.488 0 2.177-1.573 3.587-3.49 3.587z' fill='%23fff'/%3E%3C/svg%3E" height="50px"/>
    </a>
</p>

### Capabilities & Offerings
#### System Integrations and APIs
* Connecting System A to System B
* Understanding APIs and building custom connections between systems
* Evaluating Native connectors
* Working through the build vs. buy problem for integrations
* Understanding compliance requirements for your systems(s)
* Building custom APIs
* Building automations and workflows

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
The Nexus integrations platform provides out of the box solutions for common authentication and authorization requirements that we frequently encounter. We can also provide guarantees about data security at rest and in-flight through regular application security audits as well as CI/CD driven SAST and DAST testing that exposes critical vulnerabilities to us before code reaches production.

We are set up to handle [Red, Orange and Yellow data](https://about.gitlab.com/handbook/engineering/security/data-classification-standard.html#data-classification-levels) so that you don't need to worry about that when we're building out your integrations.

## Why do we do it?
As GitLab grows, we have increasingly complex needs for real time data flow and workflow automation across the business. We also need to meet higher standards of security and auditing to satisfy external compliance drivers. This all calls for a more robust, repeatable methodology for building both simple and complex software. To do this we follow a strict set of engineering and platform standards and conventions which provide us a batteries included approach to developing new capabilities so that we can stay agile when working with GitLab's rapidly growing team and needs.
