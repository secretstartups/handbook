---
title: GitLab Dedicated Switchboard Troubleshooting
category: GitLab Dedicated
description: "Gitlab Dedicated Support - Switchboard"
---

## Overview

Swithcboard is a portal for GitLab Internal team members and customers to manage their GitLab Dedicated instance.
Read more about what the goals of Switchboard are on the [Category Direction page](https://about.gitlab.com/direction/saas-platforms/switchboard/).

## Accessing Switchboard

GitLab Dedicated Switchboard is a base-entitlement for Support Engineers, Support Engineering Managers and Support Directors.
You can access the Switchboard app by going into the **Okta Dashboard** -> **Search your apps** -> Search with the term **Switchboard (production)**.

## Accessing customer configuration

When launching Switchboard, you should default to the `/tenants` page with a list of tenant customers.
**Name**, **Identifier** (codename), and **External URL** are listed in a table.
Click on **Manage** to view settings for that customer.

### Version information

Check the `Tenant Details` collapsible section.

### Maintenance schedule

Check the `Maintenance` collapsible section.

### Opensearch links
  
Currently not available. There is an open [feature request](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team/-/issues/2307) to add that functionality.

### Customer contacts

Check the `Customer Communications` collapsible section.

Customer CSM (formerly TAM) is also included in this section.

### AWS regions

Check the `Cloud Account Config` collapsible section.

### View history

- Click the **Audit Logs** link at the top of the page.
- Filter for `Tenant`.
- Check the **Tenant#<tenant_id>** records to view changes.

## Accessing metadata for customers not in Switchboard

GitLab Dedicated tenants not migrated to Switchboard are defined in the
[Switchboard repository's `tenant_models` directory](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/sandbox/switchboard_la/-/tree/main/tenant_models).

- To view a customer's instance metadata, click on the appropriate `json` file.
- To view a customer's instance upgrade history, view the appropriate `json`
  file's commit history and search for commits that mention `gitlab`.
- Use the blame feature to find why individual lines or changes were added.
  It makes it easier to find MRs and Issues with additional context.
