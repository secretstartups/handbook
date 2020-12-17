---
layout: handbook-page-toc
title: Personal Data Access Requests
category: GitLab.com
subcategory: Legal
description: "Support Engineering workflows for non-deletion requests relating to personal data"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Use the appropriate workflow on this page when a user is requesting information under GDPR Article 15, CCPA, or for other reasons either through a Zendesk ticket or via an email to `gdpr-request@gitlab.com` or `personal-data-request@gitlab.com` (both of which forwards to the [GDPR Request Service Desk](https://gitlab.com/gitlab-com/gdpr-request/issues/service_desk)). **These requests must be filled within 30 days.**

The request may look something like:

---

1. Please confirm to me whether or not my personal data is being processed. If it is, please provide me with the categories of personal data you have about me in your files and databases.
    - In particular, please tell me what you know about me in your information systems, whether or not contained in databases, and including e-mail, documents on your networks, or voice or other media that you may store.
    - Additionally, please advise me in which countries my personal data is stored, or accessible from. In case you make use of cloud services to store or process my data, please include the countries in which the servers are located where my data are or were stored.
    - Please provide me with a copy of, or access to, my personal data that you have or are processing.
1. Please provide me with a detailed accounting of the specific uses that you have made, are making, or will be making of my personal data.
1. Please provide a list of all third parties with whom you have (or may have) shared my personal data.
1. If you are additionally collecting personal data about me from any source other than me, please provide me with all information about their source, as referred to in Article 14 of the GDPR.
1. If you are making automated decisions about me, including profiling, whether or not on the basis of Article 22 of the GDPR, please provide me with information concerning the basis for the logic in making such automated decisions, and the significance and consequences of such processing.
1. I would like to know whether or not my personal data has been disclosed inadvertently by your company in the past, or as a result of a security or privacy breach.

---

## Workflows

### Requests received through Zendesk

When a request is received through Zendesk as a ticket, do the following:

1. Apply the [**General::Personal Data Access Request Instructions - GitLab.com**](https://gitlab.zendesk.com/agent/admin/macros/360043149613) macro and mark the ticket as solved.

This will simply advise the user to email `personal-data-request@gitlab.com` in order to have their request processed.

The request will then be serviced when received in the [GDPR Request Service Desk](https://gitlab.com/gitlab-com/gdpr-request/issues/service_desk) (process detailed below).

### Requests received through the GDPR Request Service Desk (`gdpr-request@gitlab.com` or `personal-data-request@gitlab.com`)

When a user emails `gdpr-request@gitlab.com` or `personal-data-request` an issue is automatically created in the [gdpr-request issue tracker](https://gitlab.com/gitlab-com/gdpr-request/issues) via the [Service Desk](https://docs.gitlab.com/ee/user/project/service_desk.html) feature, meaning comments made on the issue will be emailed to the submitter.

When a request is received in this manner, do the following:

1. Create a new confidential issue in the `gdpr-request` issue tracker using the [`personal_data_request` template](https://gitlab.com/gitlab-com/gdpr-request/issues/new?issuable_template=personal_data_access_request) (click the link to create one) and populate the title with the email address of the original requestor.
1. Link the original issue in the **Related issue** field.
1. Complete each step in the issue template that begins with `Support Engineer:`.

---

**Macros**

* [General::Personal Data Access Request Instructions - GitLab.com](https://gitlab.zendesk.com/agent/admin/macros/360043149613)

