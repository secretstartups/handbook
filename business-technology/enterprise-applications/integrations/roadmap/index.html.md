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

{::options parse_block_html="true" /}

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
**Must have**

<details>
<summary markdown="span">Design and development</summary>

1. Bulk data processing
2. API specification design
3. API Testing, Simulation and Mocking
4. Automated Build Pipeline (CI/CD pipeline)
5. Support event driven arch
6. API data model - Enterprise(Canonical) and Bounded Context (Business)
7. Custom coding
8. Async and batch processing
</details>

<details>
<summary markdown="span">Runtime execution and hosting</summary>

1. Runtime high availability
2. Cloud hosting
</details>

<details>
<summary markdown="span">API Operations and Management</summary>

1. API Versioning
2. Runtime analytics and monitoring
3. API Policy configuration and management
4. API client credentials management
</details>

<details>
<summary markdown="span">Storage</summary>

1. Support for RDBMS and Data Lakes (Snowflake)
2. Supports blob storage (S3 / Google Storage)
3. FTP and SFTP (Client and server)
</details>

<details>
<summary markdown="span">Security</summary>

1. Encrypting data at rest and in transit
2. Secret Management
3. Supported protocols should include HTTPS, TLS, SFTP, SMTP/S, IPSec
4. User roles and responsibilities
5. API gateway
</details>

<details>
<summary markdown="span">Logging, Monitoring and Alerting (either natively supported or through third-party integrations)</summary>

<details>
<summary markdown="span">Logging</summary>

1. Different logs level
2. Authentication/Authorization: OAuth, IP-based access control
3. Log search and retention
4. Correlation ID and request tracing
</details>

<details>
<summary markdown="span">Monitoring Dashboards</summary>

1. Traffic metrics
2. SSO
</details>
</details>

<details>
<summary markdown="span">API</summary>

1. Data transformations - built in functions
2. Flexible webhooks
3. REST and SOAP
4. Polling
5. Transaction management

<details>
<summary markdown="span">API security</summary>

<details>
<summary markdown="span">API Policies</summary>

1. Client ID enforcement
2. Authentication/Authorization: OAuth, IP-based access control
3. Cross-Origin Resource Sharing Control
4. Payload threat protection
</details>
<details>
<summary markdown="span">Quality of Service(QoS)</summary>

1. Rate limiting
2. Spike Control
3. Custom policy configuartions
</details>
</details>
</details>

**Good to have**
 1. Resuable asset discovery
 2. HTTP Caching to API invocations
 3. API usage and discoverability analytics
 4. Fault-tolerant API invocation
 5. API actionable documentation
 6. ORM / similar
 7. Schema Migrations
 8. Async and sync logging
 9. Trigger alert from logs
 10. Alerts on api policy or invocations
 11. ETL
 12. Streaming endpoints
 13. GraphQL
 14. Denial of service
 15. API proxy
 16. Tokenization and masking


### Enterprise integration business model for "New Busines - Direct, Web and SaaS"
![Enterprise integration business model for New Busines - Direct, Web and SaaS](images/new_business_integration_landscape_arch.png)
