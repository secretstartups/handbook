---
layout: handbook-page-toc
title: Subpoenas and other requests for information
category: Legal
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Overview
From time to time we may receive subpoenas or other legal requests for information about GitLab users, their data or activity.
This workflow clarifies how to handle these requests and subsequent workflow related to delivering information if
our counsel and CISO approve.


## Workflow

### Incoming Subpoena or other legal request
If a subpoena or other legal request not covered by another workflow (e.g. DMCA or GDPR)

1. CC `legal@gitlab.com`
1. Respond to the ticket:

```
Your request has been received and forwarded to our legal department (legal@gitlab.com) who will review this request.

Please direct any follow-up or additional queries of this nature directly to the legal team by using the email address legal@gitlab.com.

This ticket will be marked as "Solved"
```
1. Mark the ticket as "Solved"

### Incoming [Information Request](https://gitlab.com/gitlab-com/support/services/services-internal/blob/master/.gitlab/issue_templates/information_request.md)
In response to a subpoena, someone from legal may create an [Information Request](https://gitlab.com/gitlab-com/support/services/services-internal/blob/master/.gitlab/issue_templates/information_request.md). 
- Assign the issue to yourself to note that you'll be taking end-to-end ownership of it.
- If you need more details, feel free to ask clarifying questions in the issue or take it to a call.

#### Processing the request

Notes:
- Treat all information with extreme care. Delete any local copies once you've shared them.
- As some requests for logs may come in well after Kibana logs expire, you may need to contact infrastructure for access to historical logs.
- Package requested information into a .zip file and share them directly with the requestor's `@gitlab.com` account. 

