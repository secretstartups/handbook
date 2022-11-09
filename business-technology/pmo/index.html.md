---
layout: handbook-page-toc
title: "Governance and Program Management"
description: "Describes the program methodology for GitLab IT programs to ensure strong results and execution in an efficient way, proper scoping consistent with our value of iteration, correct stakeholders consistent with our value of collaboration and proper documentation for compliance consistent with our transparency value."
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Context:
This page describes the program methodology for GitLab IT programs to ensure strong results and execution in an efficient way, proper scoping consistent with our value of iteration, correct stakeholders consistent with our value of collaboration and proper documentation for compliance consistent with our transparency value.

## Criteria for programs that meet this standard.
- Program is larger than two sprints (1 month)
- Program requires multiple departments for requirements and testing
- Program works on a SOX system

## Program governance
Every program must have a set of program governance. This includes:

- Program DRI
- Program charter
- Program metrics
- Steering committee
- Core team
- Operating rhythm
- Escalation process
- A program timeline
- Clear documentation for data model
- Clear documentation for compliance
- Enablement plan
- Post implementation support plan

### Program DRI

A program should have a program DRI who is responsible for building out the program governance.

### Program charter

A program should have a charter that includes: 
1. Program goal
1. Program metrics and success criteria
1. Program business case
1. Roles and responsibilities 
1. Program Scope
1. Key milestones
1. Initial timeline

This program charter should be presented at a program kickoff for feedback.

[Project Kickoff Template](https://docs.google.com/presentation/d/1p04S-TpitASMmdLn1fhKB4KewDr0-y9twP52Cel1oIo/edit#slide=id.p1)
{: .alert .alert-warning}

### Program metrics

Every program should have success metrics. These metrics should either demonstrate an increase in revenue or an increase in efficiency that helps reduce cost.

### Steering committee
As part of the program charter an executive steering committee should be named. This should include an executive from the sponsoring business organization and an executive from IT. For example in our expense management program we created a steering committee that included the VP IT, VP Controller, VP FieldOps. With this steering committee we cover executives for enablement and front office, back office and then IT.

[Steering Committee Meeting Template](https://docs.google.com/presentation/d/1hKXH1WA9W-1_l66kwDV-rzoisdJ1z04tm15fHlHkOUs/edit#slide=id.p1)
{: .alert .alert-warning}

### Core team

A core team should be established and commitments should be made from these team members. This should include a business lead, SMEs for different areas, BSA and technical resources from IT. The DRI for the program should get time commitments for requirements gathering, UAT testing and enablement/training support from the business. And sprint time for design, development and functional testing from the IT teams.  In the case of expense management we named the Manager of AP as the business lead and had SMEs across accounting, sales, exec admin,

### Operating rhythm including status rollup

Each program should have an operating rhythm including when the core team meets synchronously and the executive team meets synchronously. There should be an async structure to document completion of tasks and report status via GitLab Epics and Issues.

[Status Report Meeting Template](https://docs.google.com/presentation/d/1FvtL0MHftG33b-6eKO1sVx3vPFKu0DaeVp-GGbLdpcs/edit#slide=id.p1)
{: .alert .alert-warning}

### Escalation process

The DRI should establish a clear escalation process so that if a team member is blocked or needs support he/she can alert the DRI or exec steering committee.

### A program timeline

There should be a clear program timeline with sprints defined so that we can deliver the program in smaller increments. There should be clarity around key requirement deadlines, delivery milestones, testing timelines so that everyone is clear. The program timeline should consider company holidays, enablement time and consider adding additional time for complex requirements (if needed).

_We are creating a template for this._

### Clear documentation for data model

One of the deliverables of the program beyond a working technical solve is documentation on the data model of the new system or program. We use [this approach](https://about.gitlab.com/handbook/business-technology/tech-stack-guide/#approach).

### Clear documentation for compliance

Additionally, we need clear documentation to meet change management controls and new product introduction controls. These are fully documented [here](https://about.gitlab.com/handbook/business-technology/it-compliance/ITGC.html).

The relevant controls that need to be documented in these programs are these three:

## Change Management (will exist in perpetuity):
Control - PC2 - Changes are tested and approved by appropriate personnel in accordance with the change management policy.

- Process for making changes:
   - Even if owned by the vendor after request, can we request changes? Do we need to test/approve?
      - In many cases we should have a process to document those changes internally and test even if the change is ultimately implemented by the vendor.  We should always review the SOC 1 or 2 report to understand our responsibilities.

## Program Development /Implementation of the system (1 time controls):
1. Control - PD1 - Significant program changes are tested and known issues are communicated to the relevant stakeholders prior to approval.
1. Control - PD2 - GitLab validates that data transferred during an applicable program change is complete and accurate.
 
As a result the DRI needs to:
Project Plan/SDLC: 
1. Confirm that full scope that was agreed to was implemented.
ensure there is documentation that UAT was complete and signoff on the UAT by business stakeholders established in the core team. This UAT signoff should be reviewed by the steering committee and signed off as well.
1. Testing over key processes, reports, and ensuring business needs will be met by the system (and how)
1. Known defects/issues at go-live - are there problems that exist that need to still be vetted but proceeding to business go-live without fixing? What are those problems, what is the documentation/rationale supporting moving forward?
1. Final approval for business go-live is captured. Approvals from technical owners and business owners at appropriate levels (e.g. does this warrant CFO sign-off vs. Manager sign-off)
 
Data Management/Migration
1. If there is data migration, demonstrate a reconciliation that the migration was complete and accurate.
1. For data that will be imported, what is the process for getting that into the system and what are the controls/checks in place to ensure the data that gets in completely and accurately.
1. This can be solved through several avenues but good documentation is key. Who has access during transformation? Are there before/after checks? What are the “key” fields? Is there  an acceptable level of data loss/inaccuracy?
1. Evidencing data management is the most important part of this Program Development process. How can we adequately demonstrate that data in the system is complete and accurate according to our business needs?
1. Show documentation of an enablement plan and that the changes were communicated effectively to the users of the changed system.

_We are creating a template for this signoff._

### Enablement plan

The program should have an enablement plan. One of the SMEs/business owners should be DRI for this enablement plan. This can include creating training materials, drafting communications, running AMAs, doing demos and recording videos. Additionally there should be clear dates both pre and post go live for this activity.

### Post implementation support

There should be a plan for post-implementation support as well given that a new system can lead to an increase in volume of questions. This should be staffed by the SME teams. 


{::options parse_block_html="false" /}
