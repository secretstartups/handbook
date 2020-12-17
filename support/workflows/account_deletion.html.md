---
layout: handbook-page-toc
title: Account Deletion
category: GitLab.com
subcategory: Legal
description: "Support Engineering workflows for account deletion requests"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Use the appropriate workflow on this page when a user requests the deletion of their GitLab.com account either through a Zendesk ticket or via an email to `gdpr-request@gitlab.com` or `personal-data-request@gitlab.com` (which both forward to the [GDPR Request Service Desk](https://gitlab.com/gitlab-com/gdpr-request/issues/service_desk)). **These requests must be filled within 30 days.**

## Workflows

### Requests received through Zendesk

When a request is received through Zendesk as a ticket, do the following:

1. Apply the [**Support::SaaS::Account Deletion Instructions - GitLab.com**](https://gitlab.zendesk.com/agent/admin/macros/360027176693) macro and mark the ticket as solved.

This will simply advise the user to email `personal-data-request@gitlab.com` in order to have their request processed.

The request will then be serviced when received in the [GDPR Request Service Desk](https://gitlab.com/gitlab-com/gdpr-request/issues/service_desk) (process detailed below).

### Requests received through the GDPR Request Service Desk (`gdpr-request@gitlab.com` and `personal-data-request@gitlab.com)

When a user emails `gdpr-request@gitlab.com` or `personal-data-request@gitlab.com` an issue is automatically created in the [gdpr-request issue tracker](https://gitlab.com/gitlab-com/gdpr-request/issues) via the [Service Desk](https://docs.gitlab.com/ee/user/project/service_desk.html) feature, meaning comments made on the issue will be emailed to the submitter.

When a request is received in this manner, do the following:

1. Verify that the user has replied to the issue with their confirmation. It will be seen as a comment on the submitted issue. If confirmation is not received, do not proceed with creating a meta issue as seen in Step 2.
1. Create a new confidential issue in the `gdpr-request` issue tracker using the [`deletion_meta_issue` template](https://gitlab.com/gitlab-com/gdpr-request/issues/new?issuable_template=deletion_meta_issue) (click the link to create one) and populate the title with the email address of the original requestor.
1. Link the original issue in the **Related issue** field.
1. Complete each step in the issue template that begins with `Support Engineer:`.

---

**Macros**

* [Support::SaaS::Account Deletion Instructions - GitLab.com](https://gitlab.zendesk.com/agent/admin/macros/360027176693)

