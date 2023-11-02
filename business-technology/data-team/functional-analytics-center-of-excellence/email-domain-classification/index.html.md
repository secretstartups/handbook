---
layout: handbook-page-toc
title: "Email Domain Classification"
description: "The FACE is a cross-functional group of functional analytics teams that aim to make our teams more efficient by solving and validating shared data questions which results in cohesive measurement approaches across teams."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## Email Domain Classification

**What is this?** A data table to classify email domains in Personal/Business/Freemail/Junkmail. 

**Why was this created?** The product org realized the importance of how an user's email domain impacts their probability of conversion. Segmenting new namespaces and users by this information is a crucial way to study and identify high-value customers. 

Marketing also segments by email domain for communications and [scores new leads with a business email differently](https://about.gitlab.com/handbook/marketing/marketing-operations/marketo/#demographic-scoring) to those with personal or generic email domains. 

Previously, there have been a few Sisense snippets or sheets with email domain classifications, but this approach was not performant and did not act as a SSOT (Source of Truth) for classifying email domains. The Email Domain Classification table solves both of these issues.


### How to access it

The email domain classification table can be accessed in Sisense by querying the table [PROD.WORKSPACE_MARKETING.EMAIL_DOMAIN_CLASSIFICATION](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.email_domain_classification).

For ease of use for team members, the email domain classification has been surfaced to [PROD.COMMON.DIM_USER](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_user), the Dimensional Model table which contains information about GitLab.com users. The corresponding fields are:

1. **notification_email_domain_classification**: Email domain classification for the notification_email field.
1. **email_domain_classification**: Email domain classification for the email field.
1. **public_email_domain_classification**: Email domain classification for the public_email field.
1. **commit_email_domain_classification**: Email domain classification for the commit_email field.

An occurrence of a NULL value in the above fields indicates a business email domain.

### Updating the Email Domain Classification table

New email domains are emerging everyday, so a way to update this information is crucial. To upload the Email Domain Classification data table to our Data warehouse we rely on the GCP Driveload process. The following steps can be used to update the Email Domain Classification data table:

1. Go to the [Email Domain Classification Google Drive Folder](https://drive.google.com/drive/folders/1q0f9sGqsSfFNKYVPl-cv70_ciu4l-ok1)
2. Replace the old `email_domain_classification.csv` with the newest updated list. Make sure:

    a. The new CSV file only has two columns: `DOMAIN` and `CLASSIFICATION`. Keep the column names uppercase.

    b. There are no duplicates email domains.

    c. The `CLASSIFICATION` column is not empty for any email domain. Preferably, the value for Classification should be one of the following: personal, personal - junkmail and  personal - freemail.

3. The Driveload process runs everyday and it will automatically pick up the new CSV file dropped in the GDrive folder without any further manual inputs. Only need to wait for this process to complete.
 
