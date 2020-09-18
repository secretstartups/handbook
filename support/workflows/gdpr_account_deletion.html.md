---
layout: handbook-page-toc
title: GDPR Driven Account Deletion
category: Legal
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Use the appropriate workflow on this page when a user requests the deletion of their GitLab.com account either through a Zendesk ticket or via an email to `gdpr-request@gitlab.com` (which forwards to the [GDPR Request Service Desk](https://gitlab.com/gitlab-com/gdpr-request/issues/service_desk)). **These requests must be filled within 30 days.**

## Workflows

### Requests received through Zendesk

When a request is received through Zendesk as a ticket, do the following:

1. Apply the [**GitLab.com::GDPR Deletion - GitLab.com**](https://gitlab.zendesk.com/agent/admin/macros/360027176693) macro and mark the ticket as solved.

This will simply advise the user to email `gdpr-request@gitlab.com` in order to have their request processed.

The request will then be serviced when received in the [GDPR Request Service Desk](https://gitlab.com/gitlab-com/gdpr-request/issues/service_desk) (process detailed below).

### Requests received through the GDPR Request Service Desk (`gdpr-request@gitlab.com`)

When a user emails `gdpr-request@gitlab.com` an issue is automatically created in the [gdpr-request issue tracker](https://gitlab.com/gitlab-com/gdpr-request/issues) via the [Service Desk](https://docs.gitlab.com/ee/user/project/service_desk.html) feature, meaning comments made on the issue will be emailed to the submitter.

When a request is received in this manner, do the following:

1. Create a new confidential issue in the `gdpr-request` issue tracker using the [`deletion_meta_issue` template](https://gitlab.com/gitlab-com/gdpr-request/issues/new?issuable_template=deletion_meta_issue) (click the link to create one) and populate the title with the email address of the original requestor.
1. Link the original issue in the **Related issue** field.
1. Complete each step in the issue template that begins with `Support Engineer:`.

---

**Macros**

* [Account::GDPR Deletion - GitLab.com](https://gitlab.zendesk.com/agent/admin/macros/360027176693)

