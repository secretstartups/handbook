---
layout: handbook-page-toc
title: "Core DevOps Solutions"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Core DevOps Solution Definition

A DevOps solution is:
* A customer problem or initiative that needs a solution and attracts budget
* Defined In customer terms
* Often aligned to industry analyst market coverage (i.e. Gartner, Forrester, etc. write reports on the topic)
* Relatively stable over time.
* These are discrete problems that we believe GitLab solves and are reasons customers choose GitLab (hence which we should seek out in prospects)
* Aligned to value plays and revenue programs

More information on how GitLab uses solutions can be found on the [Solutions Go-to-market page](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/)


## SCore DevOps Solutions go-to-market motions

#### [1. Usecase: DevOps Platform](/handbook/marketing/strategic-marketing/usecase-gtm/devops-platform/)
**Want to achieve expected results of DevOps given siloed teams, lack of visibility and collaboration which inhibits my speed of delivery** - (**DevOps Platform**)
I want to manage my entire DevOps lifecycle more efficiently with better outcomes. The number of tools and maintenance of integrations is overwhelming and costly and security is challenging to integrate. My processes may include planning to production or may be a segment of the SDLC. (GitLab examples: Epics, Issue Boards, Source Code Management, CI, CD, Security Scans and Monitoring from GitLab. Value Stream Management: (VSM) helps you visualize and manage the flow of new innovation from ideas to customers. In GitLab, cycle analytics is a key element of managing the value stream.)

   **Analyst Coverage**: Platform report (link tbd)

   **Value Drivers:**
   1. *Increase Operational Efficiencies:* consistent and efficient dev experience with single source of truth and simplify tool chain
   1. *Deliver Better Products Faster:* More collaboration, working in parallel
   1. *Reduce Security and Compliance Risk:* Testing early, and enforcing common controls like single sign on, and shared view for collaboration, reporting and visibility.

#### **2. Software Delivery Automation** 
This is a new term for us and is being better defined. It will include (CI/CD)](/handbook/marketing/strategic-marketing/usecase-gtm/ci/), and more.
**Increase the quality of my code while decreasing time to delivery** - Continuous Integration (**CI**)
I need to automate the build and testing processes to consistently integrate code and continuously test. I want to run the unit and integration tests, measure performance and automate manual QA processes. I may use GitLab SCM or another. (Examples in GitLab include Pipeline, CI Runner, Jobs, Scheduled Jobs, Testing, Security Scanning (SAST), and Code Quality).

   **Analyst Coverage**: Forrester CI and Forrester Cloud CI

   **Value Drivers:**
   1. *Increase Operational Efficiencies:* Single source of truth between SCM and CI; consistent and efficient dev experience.
   1. *Deliver Better Products Faster:* Automation to speed the process.
   1. *Reduce Security and Compliance Risk:* test my code automatically and early to reduce risks

**Continuous Delivery (CD)](/handbook/marketing/strategic-marketing/usecase-gtm/cd/)**
**Want to speed up my build and release process and empower my developers to automatically deploy code** - (CI/**CD**)
I want to automate the build, test and packaging, configuration and deployment of applications to a target environment. (Examples in GitLab include: Pipeline, CI Runner, Jobs, Scheduled Jobs, Testing, Security Scanning (SAST), and Code Quality. CI Runner, Container Repository, Deploy Boards, Canary Deploys, Partial Deploys, Manual Deploys, Environments.)  

   **Analyst Coverage**: Gartner ARO, Forrester CDRA

   **Value Drivers:**
   1. *Increase Operational Efficiencies:* Scalable, self-service, reusable deployment template. Deploy anywhere.
   1. *Deliver Better Products Faster:* Automatically deploy and test application with early feedback.
   1. *Reduce Security and Compliance Risk:* Enforce common controls and scan for vulnerabilities at the point of code change.

#### **3. Continuous Software Security Assurance**
Aligns to what was DevSecOps (Shift Left Security)](/handbook/marketing/strategic-marketing/usecase-gtm/devsecops/)
**Test for application security vulnerabilities early in my app dev lifecycle** 
I need to identify vulnerabilities during development with actionable information to empower dev to remediate vulnerabilities earlier in the life cycle. (In GitLab, SAST, DAST, Dependency Scanning, and Container Scanning, etc.)

   **Analyst Coverage**: Forrester SCA Wave, Gartner Application Security MQ

   **Value Drivers:**
   1. *Increase Operational Efficiencies:* Fix vulnerabilities at point of code change to reduce rework
   1. *Deliver Better Products Faster:* Ability to start testing early in dev process to eliminate vulnerabilities at the source
   1. *Reduce Security and Compliance Risk:* Fix vulnerabilities with actionable feedback to the developer at point of code change. Auto remediate when possible.

#### [4. Continous Software Compliance](/handbook/marketing/strategic-marketing/usecase-gtm/compliance/)
**Reduce risk by ensuring pipelines are compliant with common controls and popular industry regulations**
I need to enforce standardized CI pipelines that include requesite testing and the ensure common compliance controls are followed (such as separation of duties).

**Analyst coverage:** none yet

**Value Drivers:**
   1. *Reduce security and compliance risk:* through standardization and policy enforcement
   1. *Increase operational efficiences:* simplified audits
   1. *Deliver better products faster:* Find compliance flaws earlier in the SDLC to avoid impacting time to market.



## Wedge conversation topics

These are topics where sales and marketing conversations may start, but then we want to lead the prospect toward delivery automation. For instance, GitOps is hot topic and ranking well in SEO so it's worth talking about. But ultimately we want drive people to delivery automation (or platform). 

#### [1. Source Code Management (aka Version Control and Collaboration, VC&C](/handbook/marketing/strategic-marketing/usecase-gtm/version-control-collaboration)
**Create, manage and protect my intellectual property (i.e. source code, design, images, etc)** - in simple terms [Version Control](https://about.gitlab.com/solutions/version-control/) and Collaboration (VC&C), but more inclusively, *product configuration management* or *product asset management*.
I need a better way to manage changes to documents, software, images, large websites, and other collections of code, configuration, and metadata among disparate teams. (Examples in GitLab include Git, branches, merge requests, code review, InnerSourcing, WebIDE, and files.)  

   **Analyst Coverage**: IDC, to some extent, forecasts this market. No spot on, recent reports, though Gartner may be considering a future report.

   **Value Drivers:**
   1. *Increase Operational Efficiencies:* Share and reuse code, prevent rework, and make reviews more efficient.
   1. *Deliver Better Products Faster:* Streamline reviews and collaboration around code changes.
   1. *Reduce Security and Compliance Risk:* Easier compliance through approvals of code changes.

   *Note: SCM is sold via the web. There is no accompanying Value Play.*

#### [6. GitOps](/handbook/marketing/strategic-marketing/usecase-gtm/gitops/)
**Want to automatically provision, administer and maintain infrastructure as code** - (CI/CD Infrastructure-as-code or **GitOps**)
I manually stage and test environments for infrastructure making it hard to track and error-prone. I want to stage all components and test them to be sure it works to automate my release pipelines, provide consistency, reduce cost, and  eliminate errors. I may frequently leverage integration with Terraform, Kubernetes, Ansible, OpenStack and others.

   **Analyst Coverage**: TBD

   **Value Drivers:**
   1. *Increase Operational Efficiencies:* consistent dev experience, reusable scripts for operations.
   1. *Deliver Better Products Faster:* developer self-service, reusable CI/CD templates.
   1. *Reduce Security and Compliance Risk:* Enforces common controls





## Popular Use Cases (not solutions)

See [use case vs solution definition](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/#devops-solutions-vs-use-cases)

#### Integration - Planning
Integrations with Project Planning tools like: VersionOne, Rally, Jira, Trello, Monday, Workfront, and Basecamp.  Or integrations with Portfolio Planning tools like Clarity, MicroFocus PPM, or others.

#### Integration - SCM(GitHub)
The most common SCM integration is with GitHub

#### Integration - CI
Integrations with Jenkins, CircleCI, Bamboo or other CI servers.

#### Integration - CD
Integrations with common CD tools such as Puppet, Chef, Ansible, Jenkins and others.
