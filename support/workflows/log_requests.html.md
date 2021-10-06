---
layout: handbook-page-toc
title: Log and audit requests
description: "Overview of agrigated information which GitLab Support may provide to customers, from the gitlab.com logs. Details beyond a summary require a Security request."
category: GitLab.com
subcategory: Legal
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Log requests for GitLab.com

Users often ask for access to GitLab.com logs, typically, due to [IP blocks](/handbook/support/workflows/ip-blocks.html), a possible security issue, or for internal auditing purposes.

Always include a link to the log as an internal note, with additional information if needed.

If required, you can escalate the ticket/issue by following our [escalation process](https://about.gitlab.com/handbook/support/internal-support/support-escalations.html).

A standard response is available in ZenDesk as a macro [`Support::SaaS::Audit logs access request`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360018514099).

Log requests beyond a summary (similar to the examples below) or where logs are not readily available on Kibana should be handled according to the process outlined in the handbook page dedicated to [providing assistance to GitLab.com customers during customer-based security incidents](/handbook/security/customer-requests/).

## Who can make a request

Requester must be a Group Owner of a paid namespace.
 - Must verify that this is who is making the request.

## What we can provide

We can provide the following information:
- Information found in the Audit Events Features
- Information about who has accessed the account/projects that the customers owns.  This can include:
  - number of users
  - number of times accessed
  - number of unique IPs
  - range of timestamp of occurance
  - project path
- Provide the above excluding a known list. For example, number of IP addresses not originating from a user's "work office".

## What we cannot provide

We cannot provide the following information: 

- Information about accounts or projects that the requester does not own.
- Any information considered [Personally Identifiable Information (PII)](pii_removal_requests.html) that is not about the requester.
- Any information that would disclose GitLab confidential information or processes.

## Examples

The following are examples to provide a better idea of what responses we can provide.

### Example 1: Who accessed a specific repo

A customer, who had accidentally set their project to the incorrect visibility setting, wanted to know if anyone outside the company accessed their project. Here is a modified excerpt of the response:

> Excluding users who have the company email domain, 2 users viewed the main project page a total of 4 times between 20:06 and 20:10 UTC 2019-08-15. However, I can confirm that all 4 instances originated from one of the IP addresses you provided as being from your office.

From ticket: [129594](https://gitlab.zendesk.com/agent/tickets/129594)

### Example 2: IP block

User writes in to say their entire team is getting blocked and they want to know the source. When the user writing in has access to the projects in question, we can provide the specific path(s).

> It appears that the majority of requests that returned `401`, which likely caused the temporary block, involved `/project/path`.

Example ticket: [132652](https://gitlab.zendesk.com/agent/tickets/132652)

Also see ["Identifying the Cause of IP Blocks on GitLab.com"](/handbook/support/workflows/ip-blocks.html).

### Example 3: GitLab requests action due to high load

GitLab reached out to the owners of a project that was causing concern for the production team, who asked Support to reach out. The user wanted to know where the requests were originating from.

> There are 3 different IPs showing in our logs, 2 of which are based in CountryA and 1 in CountryB (please note these locations may not be accurate as they are based purely on geolocation web searches). They also all have the same user agent.

Example ticket: [130153](https://gitlab.zendesk.com/agent/tickets/130153)
