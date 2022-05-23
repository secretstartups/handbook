---
layout: markdown_page
title: "Continuous Scanning Working Group"
description: "Implement continuous scanning for GitLab projects"
canonical_path: "/company/team/structure/working-groups/continuous-scanning/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property        | Value           |
|-----------------|-----------------|
| Date Created    | 2022-05-23 |
| Target End Date | - |
| Slack           | #wg_continuous_vuln_scans (only accessible from within the company) |
| Google Doc      | [Event Stream Working Group Agenda](https://docs.google.com/document/d/1ubcIkyL1rAThg_tsbm5gpEOQtOFLfKe9g9t-z8Cs95o) (only accessible from within the company) |
| Issue Label | ~WorkingGroup::ContinuousScanning |

## Goals

The goal for this working group is to complete the work described in [this Epic](https://gitlab.com/groups/gitlab-org/-/epics/7886).

## Exit Criteria 

Our exit criteria maps to the proposal found in [this Epic](https://gitlab.com/groups/gitlab-org/-/epics/7886):
 1. SBOM information is ingested and stored in the database
 1. Advisory DB information is ingested and stored the the database
 1. Scans are triggered automatically when any changes are detected for either the SBOM information or the Advisory DB information

## Roles and Responsibilities

| Working Group Role | Person             | Title                                           |
|--------------------|--------------------|-------------------------------------------------|
| Executive Sponsor  | Hillary Benson     | Director of Product Management, Sec & ModelOps  |
| Engineering DRI    | Thiago Figueiró    | Backend Engineering Manager, Secure:Threat Insights, Protect:Container Security |
| Product DRI        | Sam White          | Principal Product Manager, Protect              |
| Member             | Igor Frenkel       | Senior Backend Engineer, Secure:Composition Analysis |
| Member             | Brian Williams     | Senior Backend Engineer                         |
| Advisor            | Mehmet Emin Inac   | Staff Backend Engineer, Secure:Threat Insights  |
