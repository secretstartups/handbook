---
layout: handbook-page-toc
title: "Demo Systems Roadmap"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

This page provides forward-looking plans for iterating our demo systems. As a rule of thumb, any current quarter initiatives are committed and any future quarter initiatives are wishlist items. 

The schedule for this quarter's projects can be found in the [Demo Systems - OKR issue tracker](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues?sort=due_date).

Most of our project due dates are flexible, and are subject to change to accommodate the changing needs of the business and being able to prioritize support and bug fixes for our users as needed.

### How We Plan

Since the demo systems team is small, we have made some adaptations to conventional project planning processes to meet our needs. 

Here's our loose guidelines for how we plan while keeping things simple.

1. **Epic Initiatives** - We decide high-level initiatives approximately 6-12 months in advance based on business outcomes related to our company values. For the demo systems, these usually revolve around Collaboration, Efficiency, and Iteration.
2. **Project Length** - We define the iterative steps for each initiative into 1-2 week projects. 
3. **Project Issues and Scope-of-Work** - We spend a few days at the beginning of each quarter to create the scope of work for the upcoming quarter projects. Based on this scope of work, we'll define the sequence of projects and assign estimated dates. Future iteration projects are usually placeholders that will be defined later after we learn more from our current iterations.
4. **OKR Alignment** - Our team OKRs focus on the needs of our users and may not always align with leadership OKRs.
5. **Long-Term Solutions** - We want to build for the future and not spend time on one-off solutions to solve short-term needs unless it has major impact to our sales targets or leadership-sponsored initiatives.
6. **Greater Good** - We cannot do everything for everyone, so we focus our time on projects that benefit the productivity of the majority of our users. We have the benefit at GitLab of many team members being self-sufficient and technical so they are able to solve their own problems if the demo systems do not offer a solution.
7. **Headspace Efficiency** - We try to group similar projects together for efficiency gains and minimize the switching cost between projects. This also allows us to integrate the backlog of feature requests into the respective project(s).

## Feature Requests

Please create an issue or comment on an existing issue in our [Demo Systems issue tracker](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests) to contribute a feature request for our demo systems. 

Our issue tracker has sub-projects to allow for easier organization. Add your issue to the [Demo Cloud - Bug Reports and Support](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demo-bugs) issue tracker if you're not sure which project to choose.

You can post on the `#demo-systems` Slack channel to discuss ideas informally.

## Legacy Roadmap

When the demo systems team was established in October 2019, we created a preliminary phased roadmap that is shown below for historical reference. This legacy roadmap has been deprecated and replaced with the [Current Initiatives](#current-initiatives) below with our ongoing iterations and OKRs.

## Current Initiatives

### [Efficiency: Implement Demo Data Designer and project import tools for sample data](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/31)

<table>
    <thead>
        <tr>
            <th>Quarter</th>
            <th>Issue/MR Link</th>
            <th>Title</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>FY21-Q1</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-portal/-/merge_requests/51">demosys-portal!51</a></td>
            <td>Create designer proof-of-concept with project issue tracking</td>
        </tr>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/2">demosys-okrs#2</a></td>
            <td>Add project and group API resources to Demo Data Designer</td>
        </tr>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/1">demosys-okrs#1</a></td>
            <td>Add generated sample data to Demo Data Designer with <a href="/handbook/marketing/strategic-marketing/roles-personas/">Marketing personas</a></td>
        </tr>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/4">demosys-okrs#4</a></td>
            <td>Create project templates or public importable projects with demo data pre-loaded</td>
        </tr>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/3">demosys-okrs#3</a></td>
            <td>Create perpetual data import capability for live instance</td>
        </tr>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/7397">www-gitlab-com#7397</a></td>
            <td>Collaborate with GitLab engineering team to integrate Demo Data Designer and Project Templates into GitLab product</td>
        </tr>
        <tr>
            <td>FY21-Q3</td>
            <td>TBD</td>
            <td>Add instance-level API to Demo Data Designer</td>
        </tr>
        <tr>
            <td>FY21-Q3</td>
            <td>TBD</td>
            <td>Create instance templates in GCP and AWS with demo data pre-loaded</td>
        </tr>
        <tr>
            <td>FY21-2H</td>
            <td>TBD</td>
            <td>Release Demo Data Designer as open source project</td>
        </tr>
    </tbody>
</table>

### [Efficiency: Implement Demo Portal and Catalog for easy-access infrastructure and content](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/32)

<table>
    <thead>
        <tr>
            <th>Quarter</th>
            <th>Issue/MR Link</th>
            <th>Title</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>FY21-Q1</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-portal/-/merge_requests/42">demosys-portal!42</a> <a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-portal/-/merge_requests/48">!48</a> <a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-portal/-/merge_requests/49">!49</a></td>
            <td>Add community catalog of videos and slide presentations</td>
        </tr>
        <tr>
            <td>FY21-Q2/Q3</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/11">demosys-okrs#11</a></td>
            <td>Create demo catalog contributor guide and docs </td>
        </tr>
        <tr>
            <td>FY21-Q2/Q3</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/12">demosys-okrs#12</a></td>
            <td>Add community catalog of Demo Data Designer playbooks</td>
        </tr>
    </tbody>
</table>

### [Efficiency: Deprecate legacy demo environments](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/34)

<table>
    <thead>
        <tr>
            <th>Quarter</th>
            <th>Issue/MR Link</th>
            <th>Title</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/5">demosys-okrs#5</a></td>
            <td>Collaborate with i2p Users on Transition Milestones</td>
        </tr>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/6">demosys-okrs#6</a></td>
            <td>Deprecate i2p Demo Infrastructure</td>
        </tr>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/7">demosys-okrs#7</a> <a href="https://gitlab.com/gitlab-com/business-ops/team-member-enablement/it-ops-issue-tracker/-/issues/301">it-ops#301</a></td>
            <td>Transition AWS `gitlab-np` account to new IT Ops AWS account</td>
        </tr>
        <tr>
            <td>FY21-Q3</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demo-cloud-integrations/-/issues/7">demo-cloud-integrations#7</a></td>
            <td>Deprecate GCP group-cs Kubernetes clusters</td>
        </tr>
    </tbody>
</table>

### [Efficiency: Implement 3rd party integrations and tools into Demo Cloud infrastructure](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/35)

This epic is based on prioritized requests in the [Demo Cloud Integrations issue tracker](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demo-cloud-integrations/-/issues).

### [Efficiency: Improvements to Demo Systems GCP Infrastructure-as-Code (IaC)](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/38)

<table>
    <thead>
        <tr>
            <th>Quarter</th>
            <th>Issue/MR Link</th>
            <th>Title</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/x">demosys-okrs#13</a></td>
            <td>Improve reliability of Kubernetes for CI/CD use cases</td>
        </tr>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/x">demosys-okrs#14</a></td>
            <td>Implement monitoring software for security and compliance</td>
        </tr>
    </tbody>
</table>

In addition to specific initiatives, this epic includes the ongoing collaboration with GitLab IT/SecOps to ensure best practices and security policy compliance

### [Efficiency: Improvements to Demo Cloud Omnibus Infrastructure](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/39)

<table>
    <thead>
        <tr>
            <th>Quarter</th>
            <th>Issue/MR Link</th>
            <th>Title</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/x">demosys-okrs#x</a></td>
            <td>Provision new Omnibus instance for Designer Data</td>
        </tr>
        <tr>
            <td>FY21-Q3</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/x">demosys-okrs#x</a></td>
            <td>Update Ansible with manually configured environment variables</td>
        </tr>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/x">demosys-okrs#x</a></td>
            <td>x</td>
        </tr>
    </tbody>
</table>

In addition to specific initiatives, this epic includes the implementation of extended GitLab features and prioritized requests in the [Demo Cloud GitLab Core issue tracker](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demo-cloud-gitlab-core/-/issues).

### [Efficiency: Improvements to Training Cloud infrastructure](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/40)

<table>
    <thead>
        <tr>
            <th>Quarter</th>
            <th>Issue/MR Link</th>
            <th>Title</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>FY21-Q2</td>
            <td><a href="https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues/8">demosys-okrs#8</a></td>
            <td>Provision new Omnibus instance for Training Cloud</td>
        </tr>
        <tr>
            <td>FY21-Q3</td>
            <td>TBD</td>
            <td>Create new Portal Laravel app for "GitLab Training Cloud"</td>
        </tr>
        <tr>
            <td>FY21-Q3</td>
            <td>TBD</td>
            <td>Create proof-of-concept of on-demand infrastructure for training use cases</td>
        </tr>
        <tr>
            <td>FY21-Q4</td>
            <td>TBD</td>
            <td>Collaborate with training team on demo data use cases</td>
        </tr>
    </tbody>
</table>

### [Efficiency: Implement Container Sandbox infrastructure with on-demand K8s clusters](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/41)

<table>
    <thead>
        <tr>
            <th>Quarter</th>
            <th>Issue/MR Link</th>
            <th>Title</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>FY21-Q3</td>
            <td>TBD</td>
            <td>Proof-of-concept with on-demand cluster provisioning</td>
        </tr>
    </tbody>
</table>

### [Efficiency: Implement Compute Sandbox infrastructure with on-demand provisioning](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/42)

<table>
    <thead>
        <tr>
            <th>Quarter</th>
            <th>Issue/MR Link</th>
            <th>Title</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>FY21-Q4</td>
            <td>TBD</td>
            <td>Proof-of-concept for compute sandbox</td>
        </tr>
    </tbody>
</table>

### [Collaboration: Ongoing team member side project requests](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/43)

This epic is based on prioritized requests in the [Demo Side Projects issue tracker](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/side-projects/-/issues).

### [Collaboration: Iterative bug fixes and tweaks](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/36)

This epic is based on prioritized requests in the [Demo Systems issue tracker](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/-/issues).

### [Collaboration: Provide support for demo systems users](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/37)

This epic is related to the day-to-day support that we provide in the `#demo-systems` Slack channel.

### [Collaboration: Iterative documentation and handbook pages](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/33)

This epic is related to as-needed updates to the documentation and handbook pages.

