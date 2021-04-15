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
            <th style="color:DodgerBlue;">Must-to-have</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>Design and development</th>
        </tr>   
        <tr>
            <td>Bulk data processing</td>
        </tr>
        <tr>
            <td>API specifcation design</td>
        </tr>
        <tr>
            <td>API Testing, Simulation and Mocking</td>
        </tr>    
        <tr>
            <td>Automated Build Pipeline (CI/CD pipeline)</td>
        </tr>          
        <tr>
            <td>Support event driven arch</td>
        </tr>      
        <tr>
            <td>API data model - Enterprise(Canonical) and Bounded Context (Business)</td>
        </tr>   
        <tr>
            <td>Custom Coding</td>
        </tr>  
        <tr>
            <td>Async and batch processing</td>
        </tr> 
        <tr>
            <th>Runtime execution and hosting</th>
        </tr>        
        <tr>
            <td>Runtime high availability</td>
        </tr>
        <tr>
            <td>Cloud hosting</td>
        </tr>
        <tr>
            <th>API Operations and Management</th>
        </tr>
        <tr>
            <td>API Versioning</td>
        </tr>
        <tr>
            <td>Runtime analytics and monitoring</td>
        </tr>
        <tr>
            <td>API Policy configuration and management</td>
        </tr>
        <tr>
            <td>API client credentials management</td>
        </tr>
        <tr>
            <th>Storage</th>
        </tr>
        <tr>
            <td>Support for RDBMS and Data Lakes (Snowflake)</td>
        </tr>
        <tr>
            <td>Supports blob storage (S3 / Google Storage)</td>
        </tr>
        <tr>
            <td>FTP and SFTP (Client and server)</td>
        </tr>
        <tr>
            <th>Security</th>
        </tr>
        <tr>
            <td>Encrypting data at rest and in transit</td>
        </tr>
        <tr>
            <td>Secret Management</td>
        </tr>
        <tr>
            <td>Supported protocols should include HTTPS, TLS, SFTP, SMTP/S, IPSec</td>
            <td class="bg-green"></td>
            <td class="bg-green"></td>
        </tr>
        <tr>
            <td>User roles and responsibilities</td>
        </tr>
        <tr>
            <td>API gateway</td>
        </tr>
        <tr>
            <th>Logging, Monitoring and Alerting (either natively supported or through third-party integrations)</th>
        </tr>
        <tr>
            <td>Different logs level</td>
        </tr>
        <tr>
            <td>Structured logging</td>
        </tr>
        <tr>
            <td>Log search and retention</td>
            <td class="bg-green"></td>
            <td class="bg-red"></td>
        </tr>
        <tr>
            <td>Correlation ID and request tracing</td>
        </tr>
        <tr>
            <td>Traffic metrics</td>
        </tr>
        <tr>
            <td>SSO</td>
        </tr>
        <tr>
            <th>API</th>
        </tr>
        <tr>
            <td>Data transformations - built in functions</td>
        </tr>
        <tr>
            <td>Flexible webhooks</td>
        </tr>
        <tr>
            <td>REST and SOAP</td>
        </tr>
        <tr>
            <td>Polling</td>
        </tr>
        <tr>
            <td>Transaction management</td>
        </tr>
        <tr>
            <th>Security - API policies</th>
        </tr>
        <tr>
            <td>Client ID enforcement</td>
        </tr>
        <tr>
            <td>Authentication/Authorization: OAuth, IP-based access control</td>
        </tr>
        <tr>
            <td>Cross-Origin Resource Sharing Control</td>
        </tr>
        <tr>
            <td>Payload threat protection</td>
        </tr>
        <tr>
            <td>Rate limiting</td>
        </tr>
        <tr>
            <td>Spike control</td>
        </tr>
        <tr>
            <td>Custom policy configuartions</td>
        </tr>
    </tbody>
    <thead>
        <tr>
            <th style="color:DodgerBlue;">Good-to-have</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Resuable asset discovery</td>
        </tr>
        <tr>
            <td>HTTP Caching to API invocations</td>
        </tr>
        <tr>
            <td>API usage and discoverability analytics</td>
        </tr>
        <tr>
            <td>Fault-tolerant API invocation</td>
        </tr>
        <tr>
            <td>API actionable documentation</td>
        </tr>
        <tr>
            <td>ORM / similar</td>
        </tr>
        <tr>
            <td>Schema Migrations</td>
        </tr>
        <tr>
            <td>Async and sync logging</td>
        </tr>
        <tr>
            <td>Trigger alert from logs</td>
        </tr>
        <tr>
            <td>Alerts on api policy or invocations</td>
        </tr>
        <tr>
            <td>ETL</td>
        </tr>
        <tr>
            <td>GraphQL</td>
        </tr>
        <tr>
            <td>Denial of service</td>
        </tr>
        <tr>
            <td>API proxy</td>
        </tr>
        <tr>
            <td>Tokenization and masking</td>
        </tr>
    </tbody>
</table>

### Enterprise integration business model for "New Busines - Direct, Web and SaaS"

