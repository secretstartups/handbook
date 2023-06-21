---
layout: handbook-page-toc
title: "Monte Carlo Guide"
description: "Monte Carlo Guide"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---
 
# Source system / application / data pipeline name

MailGun

## Business Use Case (Please explain what this data will be used for):
 
Allow more stakeholders across the company to have access to this data and save time pulling the data manually.

## Data Categorization

| Data Classficiation | MNPI | Sensitive data | 
| ------------------- | ---- | -------------- |
| `Red` | `No` | `Yes` |

## Data information 

* How often does the data need to be refreshed? `Every 24h`
* SLA Description: `..`
* Severity in case of an incident
  - [ ] Critical - S1
  - [ ] High - S2
  - [ ] Medium - S3
  - [ ] Low - S4
* Who will be using this data, and where (dashboards, snowflake UI, etc.)?
  - Sisense Dashboards
* Label used:
 * Relevant issues:
  - [Development EPIC](https://gitlab.com/groups/gitlab-data/-/epics/580)
  - [Original request](https://gitlab.com/gitlab-data/analytics/-/issues/8149)
  - [API Access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/15558)
 
## People matrix
| Role | Name | Gitlab Handle |
| ---- | ---- | ------------- |
| System owner | `Please provide` | `Please provide` | 
| Technical contact for data related questions | `See Data Team Source Contacts sheet` | `N/A` |
| Technical contact for infrastructural related questions | `See Data Team Source Contacts sheet` | `N/A` |
| Data access approval* | `Please provide` | `Please provide` |
| Business users who need to be informed in case of data outage | `Please provide` | `Please provide` |
 
* Data access approval will be involved in the Access Request process and need to give approval if a GitLab team member applies for raw data access.
 
## Data pipeline (technical) description

Below you will find further information regarding our general sending limits:
 
* A single `API` or `SMTP` request can have up to `1,000` recipients.
* For `API`, the maximum amount of recipients per second is 100,000. The maximum amount of API calls per second is 200,000. Exceeding this limit results in rejection messages being returned for each additional API call until this threshold is reset.
* For `SMTP`, the maximum amount of connections is `7,000` per IP and `7,000` connections per domain. Exceeding this limit results in rejection messages being returned for each additional SMTP call until this threshold is reset.
* `500,000` Queued messages at any given time. As such, if you send any further messages to our service once reaching this level, the domain will be temporarily disabled and the Messages API response will indicate requests are temporarily rejected.
* Our Messages API limits are as follows:
    * `100,000` recipients per second per account
    * `200,000` API calls per second per account
    * `960MB` per minute per domain
* All of our other endpoints have a hard limit of `300` requests per second per account.
 
> Note that Mailgun reserves the right to change these limits at any time without notice.