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
1. [Integrations Platform (Nexus)](./nexus){:target="_blank"}

## How we work
To learn about our processes please visit the [How We Work](./how-we-work) page

## Who are we?

### Daniel Parker - Senior Integrations Engineer
GitLab handle: [@dparker](https://gitlab.com/dparker){:target="_blank"}

Slack handle: [@dparker](https://gitlab.slack.com/team/U01760T6R6Y){:target="_blank"}

Job Family: [Integrations Engineer](/job-families/finance/integrations-engineer/#senior-integrations-engineer){:target="_blank"}

### Karuna Singh - Integrations Engineer
GitLab handle: [@Karuna16](https://gitlab.com/Karuna16){:target="_blank"}

Slack handle: [@Karuna Singh](https://gitlab.slack.com/team/U01GEHXQZEK){:target="_blank"}

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
        <img style="background-color: #000; padding: 5px" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0nMTIzJyBoZWlnaHQ9JzIwJyBmaWxsPSdub25lJyB4bWxucz0naHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnPjxwYXRoIGZpbGwtcnVsZT0nZXZlbm9kZCcgY2xpcC1ydWxlPSdldmVub2RkJyBkPSdNMzIuMzUxIDIuMjY3YzEuMTcgMS45MS42MDcgNC40MzYtMS4yNzkgNS42MjgtMS4yNTYuNzk1LTIuNzY3Ljc4NC0zLjk4OC4xNTJsLS4wMi0uMDA4LS4wMi0uMDA5YTEuNjY4IDEuNjY4IDAgMDAtLjQzMi0uMTE0IDEuNzMzIDEuNzMzIDAgMDAtLjc1LjA3MmwtLjAxNC4wMDRhMS45NCAxLjk0IDAgMDAtLjM5OS4xOTkgMS43OCAxLjc4IDAgMDAtLjU2NyAyLjQwM2wxLjg2OCAzLjA0OGMxLjE3IDEuOTA5LjYwNyA0LjQzNi0xLjI3OSA1LjYyOGEzLjk2NyAzLjk2NyAwIDAxLTUuNTI3LTEuMzAzbC0xLjgzMi0yLjk5Yy0uNTEtLjgyOC0xLjU4Mi0xLjA4MS0yLjM4NC0uNTYzYTEuNzY4IDEuNzY4IDAgMDAtLjgxMyAxLjQ3MnYuMDE4YzAgMS4zNjgtLjY2MSAyLjcwMy0xLjg4NiAzLjQ3NmEzLjk2NyAzLjk2NyAwIDAxLTUuNTI3LTEuMzAyTC42MSA2Ljg0NEMtLjU2IDQuOTM1LjAwMyAyLjQwOCAxLjg5IDEuMjE3YTMuOTY3IDMuOTY3IDAgMDE1LjUyNiAxLjMwMkw5LjI1OCA1LjUyYy41MDQuODIgMS41NiAxLjA3NyAyLjM2LjU3OGwuMDI0LS4wMTVjLjUxLS4zMi43OTEtLjg3Mi44MTMtMS40MzRhNC4wOSA0LjA5IDAgMDExLjg4Ni0zLjUzMiAzLjk2NyAzLjk2NyAwIDAxNS41MjcgMS4zMDNsMS44NTMgMy4wMjNjLjUxLjgyOCAxLjU4MiAxLjA4MSAyLjM4NC41NjMuMTktLjEyMS4zNjUtLjMzLjUyNy0uNjI1YTEuNDMgMS40MyAwIDAxLjAxNy0uMDM3Yy4xMTItLjIxNy4xODQtLjM4OS4yMTYtLjUxNS4wMzEtLjEyMy4wNTQtLjI0LjA2OC0uMzU1LjE0Ny0xLjU2My42Ny0yLjcyNiAxLjg5LTMuNTA5YTMuOTY3IDMuOTY3IDAgMDE1LjUyOCAxLjMwMnonIGZpbGw9JyM2N0VBREQnLz48cGF0aCBkPSdNNDMuMTA0IDE3LjgzNmwyLjgwMi04LjE4OCAyLjkyNSA4LjE4OGgyLjA4OGw0LjIwMy0xMS41NTNoLTIuNzAzbC0yLjY4IDcuNzkzLTIuNjUzLTcuNzkzaC0yLjM2bC0yLjY1NCA3Ljc5My0yLjY1NC03Ljc5M2gtMi43MDNsNC4zMjUgMTEuNTUzaDIuMDY0em0xOC40MjQuMjQ3YzMuMjY4IDAgNi4wMi0yLjQgNi4wMi02LjA2IDAtMy42NjItMi43NTItNS45ODctNi4wMi01Ljk4Ny0zLjI0NCAwLTUuOTcyIDIuMzI1LTUuOTcyIDUuOTg2IDAgMy42NjIgMi43MjggNi4wNjEgNS45NzIgNi4wNjF6bTAtMi40NzRjLTEuODkyIDAtMy40NjUtMS40MS0zLjQ2NS0zLjU4NyAwLTIuMTI3IDEuNTcyLTMuNDg4IDMuNDY1LTMuNDg4IDEuOTE3IDAgMy40OSAxLjM2MSAzLjQ5IDMuNDg4IDAgMi4xNzctMS41NzMgMy41ODctMy40OSAzLjU4N3ptMTAuNTM1IDIuMjI3VjEzLjY4YzAtMy4wNjguOTA5LTUuMjQ1IDMuMDcxLTUuMjQ1LjQ5MiAwIDEuMDU3LjA3NSAxLjY5Ni4zOTZsLjQxOC0yLjM1Yy0uMzY5LS4yNDctMS4yMjktLjQ0NS0yLjA0LS40NDUtMS40MjUgMC0yLjU1Ni44NDEtMy4xNDUgMi44OTRWNi4yODNINjkuNTN2MTEuNTUzaDIuNTMxem04Ljk2MSAwdi00LjU4MWw0LjI2NCA0LjU4aDMuMzE4bC01LjQ0NC01Ljc0MyA1LjQ0NC01LjgwOWgtMy4zMThsLTQuMjY0IDQuNTk3VjBoLTIuNTA2djE3LjgzNmgyLjUwNnptMTMuNTA5LjI0N2MxLjQyNSAwIDMuMDk2LS42NDMgMy44NTgtMS45MDV2MS42NThoMi41MDdWNi4yODNoLTIuNTA3djEuNjMzYy0uNzg3LTEuMzExLTIuNDgyLTEuODgtMy44NTgtMS44OC0zLjA5NyAwLTUuODI1IDIuMzI1LTUuODI1IDYuMDExczIuNzI4IDYuMDM2IDUuODI1IDYuMDM2em0uMjk0LTIuNDc0Yy0xLjkxNiAwLTMuNTE0LTEuNDYtMy41MTQtMy41ODcgMC0yLjEyNyAxLjU5OC0zLjUxMiAzLjUxNC0zLjUxMiAxLjcyIDAgMy41NCAxLjIzNyAzLjU0IDMuNTEyIDAgMi4yNzYtMS42NzIgMy41ODctMy41NCAzLjU4N3ptMTIuMjMxIDIuMjI3di05LjQ1aDIuNDMzVjYuMjgzaC0yLjQzM1YxLjkwNWgtMi41MzF2NC4zNzhoLTIuMDY1djIuMTAzaDIuMDY1djkuNDVoMi41MzF6bTkuMDYuMjQ3YzMuMjY4IDAgNi4wMjEtMi40IDYuMDIxLTYuMDYgMC0zLjY2Mi0yLjc1My01Ljk4Ny02LjAyMS01Ljk4Ny0zLjI0NCAwLTUuOTcyIDIuMzI1LTUuOTcyIDUuOTg2IDAgMy42NjIgMi43MjggNi4wNjEgNS45NzIgNi4wNjF6bTAtMi40NzRjLTEuODkyIDAtMy40NjUtMS40MS0zLjQ2NS0zLjU4NyAwLTIuMTI3IDEuNTczLTMuNDg4IDMuNDY1LTMuNDg4IDEuOTE3IDAgMy40OSAxLjM2MSAzLjQ5IDMuNDg4IDAgMi4xNzctMS41NzMgMy41ODctMy40OSAzLjU4N3onIGZpbGw9JyNmZmYnLz48L3N2Zz4=" height="50px"/>
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
