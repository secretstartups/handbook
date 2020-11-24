---
layout: handbook-page-toc
title: Log and audit requests
description: "Overview of agrigated information which GitLab Support may provide to customers, from the gitlab.com logs. Requests for details beyond a summary require a Security request."
category: Legal
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Log requests for GitLab.com

Users often ask for access to GitLab.com logs, typically, due to [IP blocks](/handbook/support/workflows/ip-blocks.html), a possible security issue, or for internal auditing purposes.

Due to privacy issues, GitLab cannot provide a copy of the logs without a court order which we should consult Legal on. What we can do is answer specific questions with a summary of our search results.

Always include a link to the log as an internal note, with additional information if needed.

If required, post in the #support_managers channel for a senior engineer or manager review.

A standard response is available in ZenDesk as a macro `GitLab.com::Audit logs access request`.

Log requests beyond a summary (similar to the examples below) or where logs are not readily available on Kibana require legal approval and are dealt with by [Security Incident Response Team (SIRT)](/handbook/engineering/security/#sirt---security-incident-response-team-former-security-operations) ([template for reference](https://gitlab.com/gitlab-com/gl-security/secops/operations/-/issues/new?issuable_template=Information_Request)). In these cases, please move the ticket to the Security queue with a note.

## What we can provide

The key is not providing any individual or identifiable information, so we provide answers to yes/no inquiries and can provide a summary. For example, depending on the query, we can provide:

- number of users
- number of times accessed
- number of unique IPs
- range of timestamp of occurance

In cases where the requestor is an owner or maintainer of a project, we can also provide the project path (such as in example 2).

## Examples

The following are examples to provide a better idea of what responses we can provide.

### Example 1: Who accessed a specific repo

A customer, who had accidentally set their project to the incorrect visibility setting, wanted to know if anyone outside the company accessed their project. Here is a modified excerpt of the response:

> Excluding users who have the company email domain, 2 users viewed the main project page a total of 4 times between 20:06 and 20:10 UTC 2019-08-15. However, I can confirm that all 4 instances originated from one of the IP addresses you provided as being from your office.

From ticket: https://gitlab.zendesk.com/agent/tickets/129594

### Example 2: IP block

User writes in to say their entire team is getting blocked and they want to know the source. When the user writing in has access to the projects in question, we can provide the specific path(s).

> It appears that the majority of requests that returned `401`, which likely caused the temporary block, involved `/project/path`.

Example ticket: https://gitlab.zendesk.com/agent/tickets/132652

### Example 3: GitLab requests action due to high load

GitLab reached out to the owners of a project that was causing concern for the production team, who asked Support to reach out. The user wanted to know where the requests were originating from.

> There are 3 different IPs showing in our logs, 2 of which are based in CountryA and 1 in CountryB (please note these locations may not be accurate as they are based purely on geolocation web searches). They also all have the same user agent.

Example ticket: https://gitlab.zendesk.com/agent/tickets/130153
