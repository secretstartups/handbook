---
layout: handbook-page-toc
title: "Channel Partner Migration Services"
---


## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />
{::options parse_block_html="true" /}

# Partner Migration Services
{: .gitlab-orange}

For migrations to GitLab SaaS, there are three options for migration from today:

1.  Congregate
2.  Migration via Direct Transfer (Beta)
3.  API-driven Group + Project Import/Export

### 1.  Congregate
[Congregate](https://gitlab-org.gitlab.io/professional-services-automation/tools/migration/congregate/) - used by GitLab Professional Services - this is GitLab's most mature migration pattern and supports many . Note, Migrations to SaaS require the involvement of GitLab PS due to access/privilege to GitLab SaaS (multi-tenant) data. 

Important to note about Congregate:

- [Migration Readiness Checklist - Congregate FAMQ](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/blob/master/customer/migration-readiness-checklist.md)
- [What are a customer's obligations and responsibilities prior, during and after a migration? - Congregate FAMQ](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/blob/master/customer/famq.md#what-are-a-customers-obligations-and-responsibilities-prior-during-and-after-a-migration)
- [Limitations of Self-Managed to SaaS Migration via Congregate - Congregate FAMQ](https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/blob/master/customer/famq.md#what-level-of-instance-access-and-permission-are-needed-for-migrating)
A dedicated migration VM is used to orchestrate the user, group and project data transfers via source and destination API. For that reason at least this VM, and for certain (streaming/clone import) sources gitlab.com itself, need access to the source system's API via port 443.
Additionally, on both the source and destination instance, an Admin user account and personal access token (PAT), with full api or equivalent scope, is needed to export/import or stream/clone the data over.
 
To request an Admin PAT with full api or equivalent scope, you'll need to request one by getting in touch with our PS team either directly or via an issue in the Congregate project. Our PS Team has also supported partners in debugging/root-cause analysis on migration failures with Congregate on a case-by-case basis (billing hours from GitLab PS may need to be purchased by the partner requiring support).
https://gitlab.com/gitlab-org/professional-services-automation/tools/migration/congregate/-/issues/

### 2.  Migration via Direct Transfer (Beta)
GitLab Migration via Direct Transfer (Beta) - This was just recently released, and is the direction our Product team is moving towards for migrating GitLab projects from instance to instance or to SaaS. Please review the following resources:

[Migrated Group Items (Direct Transfer)](https://docs.gitlab.com/ee/user/group/import/index.html#migrated-group-items)

[Migrated Project Items (Direct Transfer)](https://docs.gitlab.com/ee/user/group/import/index.html#migrated-project-items-beta)

1.  [Project Import/Export](https://docs.gitlab.com/ee/user/project/settings/import_export.html)

[Items that are Exported via Project Import/Export](https://docs.gitlab.com/ee/user/project/settings/import_export.html#items-that-are-exported)

[Items that are not Exported via Project Import/Export](https://docs.gitlab.com/ee/user/project/settings/import_export.html#items-that-are-not-exported)

### 3.  API-driven Group + Project Import/Export
API-driven Group + Project Import/Export
https://docs.gitlab.com/ee/api/group_import_export.html
https://docs.gitlab.com/ee/api/project_import_export.html

For GitLab Server Migrations, please refer to the following handbook page for more details.

https://about.gitlab.com/handbook/customer-success/playbooks/server-migrations.html

Depending on the source Git provider, size/scope of the migration, the artifacts are important to the customer to be preserved, carefully consider each option given each option's limitations/benefits.

GitLab Channel Programs provides the following [resources to our partners to construct your own Services Packages](https://partners.gitlab.com/prm/English/c/Channel_Service_Packages) in our Partner Portal, including our Migration+ Services Offering.

# GitLab Professional Migration Services
{: .gitlab-orange}
GitLab Professional Services team has a [full service catalog of offerings avaialable](https://about.gitlab.com/services/catalog/) for direct to customers to utilize. Partners may want to review the offerings for inspiration towards delivering same or similar Professional (consultative) Service offerings. 

The [GitLab Professional Services Migration Package](https://drive.google.com/file/d/1SK4iEg3XKx2nBWNo7xDlBbjLfOe1cFhB/view) is one popular offering.

Our [GitLab Partner Portal](https://partners.gitlab.com/English/) has [Channel Service Packages](https://partners.gitlab.com/prm/English/c/Channel_Service_Packages) that many partners choose to deliver as paid offerings. The link above includes Service Names, Data Sheets, Statement of Works (SOWs), Project Plans, Delivery Kits. The table also outlines GitLabs expectations for the certicications held by our partners under the `Aligned Partner Certification` column.