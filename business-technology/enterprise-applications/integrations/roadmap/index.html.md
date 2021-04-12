---
layout: handbook-page-toc
title: "Integrations Roadmap"
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

<style>
#capabilities-table td.bg-green {
    background-color: #059669;
    color: white;
}

#capabilities-table td.bg-red {
    background-color: #DC2626;
    color: white;
}

#capabilities-table td.bg-yellow {
    background-color: #FCD34D;
}

table > tbody > tr > td {
    padding-top: 2px;
    padding-bottom: 2px;
}

</style>

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Integrations Roadmap
## Preamble
The Enterprise Applications Integrations team has spent the past ~3 Quarters establishing itself and establishing our processes. 
Our focus has now shifted towards designing a technical architecture and developing a roadmap for reaching our desired technical maturity.

We have spent the middle of Q1 researching and drawing inspiration from industry and domain knowledge developed by integrations companies and teams in order
to agree on a high-level architecture for a new integrations platform that we'll be resourcing and building in the coming quarters.
This integrations platform is designed to serve GitLab's Enterprise Applications ecosystem long into the future and assist us in consistently applying oustanding security, scalability, maintainability, reusability, and testing standards. It will also allow the Integrations Engineering team to provide reliable SLA's to our business partners and move quickly to implement new integrations and refactor existing integrations as GitLab's needs change in this high growth period for the company.

## Integrations Platform

### Capabilities shortfall

<table id="capabilities-table">
    <thead>
        <tr>
            <th>Capability</th>
            <th>Mulesoft</th>
            <th>Workato</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Something</td>
            <td class="bg-green">Yes</td>
            <td class="bg-red">No</td>
        </tr>
        <tr>
            <td>Something else</td>
            <td class="bg-green">Yes</td>
            <td class="bg-yellow">Maybe</td>
        </tr>
    </tbody>
</table>

### Capabilities?
Items marked with `*` are optional

- SDLC
    - Ability to review changes
    - Automated testing (with mocks)
    - Automated deployments
    - Environment/stage management
    - Secrets management
- Architecture Components
    - Message Queues
    - Pub/Sub
    - Event Sourcing*
    - Service definitions
    - Service discovery
    - Canonical Data Model
    - Ability to batch process
- Storage
    - Support for RDBMS and Data Lakes (Snowflake)
    - Supports blob storage (S3 / Google Storage)
    - ORM / similar
    - Schema Migrations
    - Encryption at rest
    - FTP
        - client
        - server
- Logging, Monitoring and Alerting (either natively supported or through third-party integrations)
    - Structured logging
    - Log severity
    - Log searching
    - Correlation ID and request tracing
    - Trigger alerts from logs
    - Monitoring Dashboards
- Network
    - TLS
    - IPSec
    - IP whitelisting
- APIs
    - Supports API tiering (Experience, Process and Service layers)
    - Versioning
    - GraphQL
    - REST
    - gRPC*
    - Flexible webhooks
    - Streaming endpoints
    - Rate limiting
    - Automated documentation ([Swagger](https://swagger.io/) & OpenAPI)
    - Security (at each API layer)
        - OAuth2 (All flows)
        - API Key
        - Role based authorization
- Platform Security
    - Custom roles
    - SAML / OAuth2 SSO
    - SCIM
- Infrastructure
    - Hosted on the cloud
    - Horizontally scalable

### Where are we falling short with our current platform?

- [ ] SDLC
    - [ ] Ability to review changes
    - [ ] Automated testing (with mocks)
    - [ ] Automated deployments
    - [ ] Environment/stage management
    - [x] Secrets management
- [ ] Architecture Components
    - [ ] Message Queues
    - [x] Pub/Sub
    - [ ] Event Sourcing*
    - [ ] Service definitions
    - [ ] Service discovery
    - [x] Canonical Data Model
    - [x] Ability to batch process
- [ ] Storage
    - [x] Support for RDBMS and Data Lakes (Snowflake)
    - [x] Supports blob storage (S3 / Google Storage)
    - [ ] ORM / similar
    - [ ] Schema Migrations
    - [ ] Encryption at rest
    - [ ] FTP
        - [x] client
        - [ ] server
- [ ] Logging, Monitoring and Alerting (either natively supported or through third-party integrations)
    - [ ] Structured logging
    - [ ] Log severity
    - [ ] Log searching
    - [ ] Correlation ID and request tracing
    - [ ] Trigger alerts from logs
    - [x] Monitoring Dashboards
- [ ] Network
    - [x] TLS
    - [ ] IPSec
    - [ ] IP whitelisting
- [ ] APIs
    - [ ] Supports API tiering (Experience, Process and Service layers)
    - [x] Versioning
    - [ ] GraphQL
    - [x] REST
    - [ ] gRPC*
    - [x] Flexible webhooks
    - [ ] Streaming endpoints
    - [ ] Rate limiting
    - [ ] Automated documentation ([Swagger](https://swagger.io/) & OpenAPI)
    - [ ] Security (at each API layer)
        - [ ] OAuth2 (All flows)
        - [x] API Key
        - [ ] Role based authorization
- [ ] Platform Security
    - [x] Custom roles
    - [x] SAML / OAuth2 SSO
    - [ ] SCIM
- [ ] Infrastructure
    - [x] Hosted on the cloud
    - [x] Horizontally scalable
