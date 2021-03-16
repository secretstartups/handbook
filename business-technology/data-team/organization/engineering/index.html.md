---
layout: handbook-page-toc
title: "Data Engineering Handbook"
description: "GitLab Data Engineering Team Handbook"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---

# Data Engineering at GitLab

The mission of the Data Engineering team is to build a secure and trusted data platform that makes it possible for **everyone to be an analyst** so that our _only_ limitations are the data or analysts themselves. We do this **by means of our [GitLab values](/handbook/values/)** and our **[Data Team Principles](/handbook/business-technology/data-team/#data-team-principles)**

## Data Engineering Responsibilities

Of the [Data Team's Responsibilities](/handbook/business-technology/data-team/#responsibilities) the Data Engineering team is directly responsible for:

- Building and maintaining the company's central Enterprise Data Warehouse to support Reporting, Analysis, Dimensional Modeling, and Data Development for all GitLab teams
- Integrating new data sources to enable analysis of subject areas, activities, and processes
- Building and maintaining an Enterprise Dimensional Model to enable Single Source of Truth results
- Developing Data Management features such as master data, reference data, data quality, data catalog, and data publishing
- Providing Self-Service Data capabilities to help everyone leverage data and analytics
- Help to define and champion Data Quality practices and programs for GitLab data systems
- Providing customizable Data Services, including Data Modeling, Data Quality, and Data Integration

## Handbook First on the Data Engineering Team

At GitLab we are [Handbook First](/handbook/handbook-usage/#why-handbook-first). Any changes to our codebase or process should have a handbook MR created before the work is started or concurrently with the MR to change the code.

For example: If we are adding a data source, we would first create the merge request to update our [the extract and load](/handbook/business-technology/data-team/platform/#extract-and-load) and [system diagram](/handbook/business-technology/data-team/platform/infrastructure/#system-diagram) sections of our handbook. This MR can be updated as the change is created and merged along with the change.

---

## Data Engineering Team Roles

In order to efficiently operate as a team we designate and assign the following responsibilities to members of the Data Engineering team. These assignments are not permanent, but do create a Directly Responsible Individual on the team for these responsibilities. The assigned Engineer is responsible for both maintenance and iterative improvement over these responsibilities.

### Production Operations

Production operations is always our [top standing priority](/handbook/business-technology/data-team/how-we-work/#standing-priorities) on the Data Engineering team and includes all technical operations that support or affect our production environment and the SLOs it supports. This includes, but is not limited to monitoring, testing, deployment, code reviews, and DevOps generally.

### Project Management and Planning

The Engineer assigned the Project Management and Planning responsibility oversees, directs, and improves our [workflow processes](/handbook/business-technology/data-team/how-we-work/#workflow-summary), [milestone planning](/handbook/business-technology/data-team/how-we-work/#milestone-planning), and issue triaging. They ensure that work is getting planned and completed efficiently and that the work being done appropriately supports and enables the goals of both the Data Team and GitLab.

### User Experience

This engineer is responsible for the usability of our data platform. As stated in the Data Engineering mission, we are building the platform for everyone. The assigned Engineer proactively finds and solutions around our data platform with special mind to those experiences that are the most difficult to use.

### Security, Compliance & Privacy

This role keeps our platform secure, private, and compliant and will be the point of contact for audit questions as well as the primary engineer responsible for reviewing changes that affect the security and privacy of our data platform. They should also be iteratively improving the security features of our platform.

### Data Warehouse Architecture

In order to keep our iterations inexpensive and increase the usability of our warehouse we have decided to implement a dimensional warehouse. This engineer is responsible for protecting the integrity of our warehouse architecture and leads the vision on where the architecture needs to be improved. All of these changes and protections should keep our customers, both internal an external, as their primary focus.
