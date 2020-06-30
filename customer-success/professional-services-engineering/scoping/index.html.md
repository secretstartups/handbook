---
layout: handbook-page-toc
title: "Scoping Professional Services"
---
# Scoping Custom Professional Services
{:.no_toc}

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview
Services engagements can take [two forms](/handbook/customer-success/professional-services-engineering/selling):
1. Standard SKUs: require no scoping or customization
1. Custom SOWs: require scoping and custom SOW creation/approval

For custom SOWs, the [workflow for SOW creation](/handbook/customer-success/professional-services-engineering/selling/#custom-scoped-services) involves a partnership between the SA/TAM and the Professional Services team.

This page provides scoping questions designed to collect details and uncover the customer's required capabilities. This ensures alignment of the SOW and PS delivery with the positive business outcomes the customer is looking for.  While not an exhaustive list, these questions and suggestions will help spark the discovery conversations.

## Migration scoping questions
Migrations are one of the most complex types of services in any technical field.  Systems store data in a variety of ways that evolves.  Also, customers and users often use the same data model and system to represent completely different logical units to their teams.  To ensure a transition that meets the customer's needs, we want to make sure we understand their usage of their current systems.

### GitLab to GitLab scoping questions
The following questions are about bringing multiple GitLab instances together into a single "parent" instance:

1. How many instances need to be migrated together?
1. Breakdown of repositories per instance (and total git storage space)
1. Breakdown of users per instance
1. Breakdown of groups per instance
1. Breakdown of disk space per instance
1. Do any of the users use SSO (LDAP, SAML, etc.) to log in users?
1. What is the version of every GitLab instance involved?
1. What integrations are used on each instance?
1. For each instance, how is artifact, upload, container registry and Git LFS storage handled?
 
### SVN to Git scoping questions

SVN to Git Questions:

1. What is the structure of the SVN repos and subprojects? Do they follow the "standard" of:
    ```
        Repository
            Project 1
                branches/trunks/tags
            Project 2
                branches/trunks/tags
    ```
    1. Any other variations? Example:
        ```
            Trunk
                Project 1
                Project 2
            Tags
                tag name
                    Project 1
                    Project 2
            Branches
                Branch name
                    Project 1
                    Project 2
        ```
1. How many SVN repositories are there? How are they broken up?
1. What is the overall size of the SVN repos?
1. How much history (e.g. tags, branches, etc.) should be migrated?
1. Are any binary files stored in SVN?
1. How are you currently using SVN externals? Do you have some example use cases?
1. Which migration/conversion environment (local, VM, cloud) and OS (Windows, Linux, macOS) is preferred?

### GitLab self-managed to GitLab.com scoping questions

Self-Manged to GitLab.com questions:

1. How many repositories are there?
1. What is the average size of the repositories? What is the size of the largest repositories?
1. How many groups are there?
1. How many users?
1. Do we want the same structure of groups/projects/user access? Do we want it to be restructured?
1. Do you use other tools with GitLab. If so, which ones?
1. How are the runners currently set up?
  1. Where are they hosted?
  1. How many specific runners do you have and what are the details of these runners?
  1. Are you looking to make any changes to the runner strategy at your organization or will it stay the same?
1. GitLab.com uses SAML for authorization. What SAML tool would your organization be using?

## Implementation scoping questions
For scoping infrastructure implementation, we have several questions that can help us understand the scope. To get started, make a copy of the spreadsheet below and fill in the answers. If there are questions you want to add, ping the `@ps-team` in Slack channel #[professional-services](https://gitlab.slack.com/archives/CFRLYG77X). Then you can attach this document to the issue created by the [GitLab Services (SoW) Calculator](https://services-calculator.gitlab.io/).

[Implementation Infrastructure Scoping Questions](https://docs.google.com/spreadsheets/d/1TsCUNLuWdpX1V_dTn5MMXIUqnAYKm9Megu5MO9S8eGM/edit?usp=sharing)

**Note:** This document contains tabs for various public and private cloud providers - AWS, GCP, Azure, OpenShift and other on-prem deployments - you should only have to fill out the tab(s) relative to your customer.

