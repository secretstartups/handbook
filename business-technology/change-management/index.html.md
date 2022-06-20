---
layout: handbook-page-toc
title: "Business Technology Change Management"
description: "Business Technology Change Management"
---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Business Technology Change Management

## Purpose

Business Technology Change Management covers changes to System settings in addition to Process and Policy changes. The Business Technology Change Management (CM) process at GitLab provides a framework for the thorough documentation, testing, and evaluation of proposed changes to the Business Technology systems. The CM process mitigates risk to production applications that could threaten the stability, resiliency, security, data availability, integrity, and regulatory compliance.

This handbook page defines the steps necessary to implement and maintain CM processes to ensure changes are planned, documented, reviewed, and approved in a controlled manner.

Making a user- or group-level change doesn't require a Business Technology change request. For example, if your team decides to make a change to one of your team's group settings on GitLab.com, a Business Technology change request isn't required. However, if you decide to make a change to a configuration or setting for GitLab.com globally, that requires a change request. Another example is Google Drive. If you decide to make a change to one of your team's Google Drive folders, no Business Technology change request is required. But if you change the default sharing setting of all of Google Doc for GitLab, a Business Technology change request is required.

Additional examples include: If you are making a Process and/or Policy change that will impact only your team's process, a change management is not required. If you are making a Process and/or Policy change that will impact one or more other departments, a change management is required.

For additional information regarding Change Management, refer to our [Change Management Workflow Control Guidance](/handbook/engineering/security/change-management-guidance.html).

**A Business Technology change request is only needed when a change is being requested for review for applications already listed in our tech stack.**

### Why Change Management is important

There are many benefits from effective change management.

**Outage prevention and reducing user impact**
* Preventing maintenance conflicts
* Peer review of changes to ensure change plan has no errors
* Ensuring that all parties that could be affected by a change are informed
* Ensuring that maintenance does not interfere with business processes and financial reporting

**Helps ensure that changes are made with good planning**
* Changes are made with a deployment plan, back out plan, and good criteria for testing to be sure that changes are completed as intended.
* Ensuring that only planned work is done with no additional changes.

**Change management is required as part of many regulations and is audited for effectiveness**
* Examples: SOX, ISO, and many others

## Scope

**Note** This would be the final stage of scope. As the first iteration, we will need to scope this down more and implement phases to the scope.

### Criteria

Change Management process covers changes to systems across the Business Applications.

* All changes to BT Systems
* Includes requests for program changes, system changes, system maintenance, and administration access
* Changes to data and data structures
* Controls provide reasonable assurance that system changes do not affect financial reporting

**Examples**

A few examples are listed below. These examples are not meant to be all encompassing.

* Changes to production business applications such as new application enhancements, upgrades, or defect resolution.
  * SFDC, Okta, Azure, Zoom
  * All changes impacting Financial (SOX) applications Netsuite, Zuora, and critical Enterprise Applications/systems.
* Other production systems like our enterprise data warehouse and integrations
* Implementing a new system policy for user access

## Roles and Responsibilities

| Role | Responsibility |
| ------ | ------ |
| **IT Compliance Team** | Maintain a mechanism to intake and respond to Change Management Activities |
| | Provide complete and accurate responses within documented SLA |
| | Document and report any risks or trends identified during Change Management Activities |
| | Maintain Metrics |
| **Business Requestor** | Complete the Change Management issue |
| | Work with the Technical Owner to document, test, and obtain approval(s) for change |
| **Technical Owner** | Work with the Business Requestor to ensure requested change is documented, tested, and approval(s) have been completed |
| | Ensure Peer Review is completed prior to obtaining Business Approval |
| **Peer Review** | Review and ensure requested change has been documented and there are no undocumented downstream impacts |
| **Business Owner** | Review and provide approval prior to change being implemented |

### Change Request Types

**Standard**

A **standard change** is a pre-authorized change that is low risk, relatively common and follows a specified procedure or work instruction.
* A standard change is one that is frequently implemented, has repeatable implementation steps, and has a proven history of success.
* Standard changes have to go through the change management process.
* **They require a peer review and Impacted Team(s) Management (or Code Owner) approval.**
  * **Manager** - prior to approving the change request, please ensure that the correct change request template is being used.

**Comprehensive**

A **comprehensive change** is *high risk, high impact,* or has a *more complex procedure.*
* All changes to **financially significant applications** also are considered comprehensive due to the type of systems that they affect and the potential impact that could occur if there is an issue.
* **Infrastructure changes** are also considered comprehensive.
* **They require peer review, Impacted Team(s) Management approval (or Code Owner), Business Owner Approval, and Head of IT Approval.**
  * **Manager** - prior to approving the change request, please ensure that the correct change request template is being used.

**Emergency**

An **emergency change** follows the same approval process as comprehensive.
* It can be entered for approval after the change has been implemented in production.
* Emergency changes are intended to be used only where there is an immediate critical need to correct an operational or security issue that is preventing users from working or transactions to not be processed or processed incorrectly.
* **They require review and all approvals after the change has been implemented.**

### Approval Matrix

|	**Approval Type**	|	**Description**	|	**Standard**	|	**Comprehensive**	|	**Emergency**
|	-----	|	-----	|	-----	|	-----	|	-----
|	**Peer Review**	|	Peer Reviews are performed by a peer of the change Requestor or Developer and are intended to identify any potential issues with the planned change or change process. **Note:** The peer review process was established to mitigate the risk of the lack of segregation of duties between developer and implementer. The review provides comfort that changes to the production environment are valid.	|	Yes	|	Yes	|	Yes
|	**Impacted Team(s) Management/Code Owner approval**	|	Approval by Management that is responsible for the particular system	|	Yes	|	Yes	|	Yes
|	**Business Approval**	|	Approval by Impacted Team(s) Management approval that is responsible for the particular system or is impacted by the change.	|	No	|	Yes	|	Yes
|	**Head of IT, Business**	|	The Head of IT must approve all changes made during blackout periods	|	No	|	Yes	|	Yes* |

* (*) Refer to Emergency Change section under [Change Request Types](https://about.gitlab.com/handbook/business-technology/change-management/#change-request-types) for approval requirement details. 

## Procedure

### Blocked periods

**Blocked periods** are established to ensure that BT system changes do not adversely affect quarter-end, or year-end closing processes for financially significant applications. 

Their duration is typically established by the requirements of the Finance and Sales departments and not IT itself. 

**Significant Enterprise Applications**
- Quarter End Months (April, July, October, January): 2 weeks before and after the last day of the month.
- Month End Months (Non Quarter End Months): While we will have a heightened alert we will not black out on the end of Month 1 or Month 2 of the quarter.

**All other applications and/or tools**
Last 7 calendar days and first 7** calendar days of each quarter

**All exceptions need Head of BT and Business approval**

*Significant Enterprise Applications are: Coupa, Netsuite, Salesforce, Zuora

**Finance impacted systems.

### Business Technology Change Request Workflow

Business Technology change requests are important because they help us track and manage the risk of making wide-reaching configuration and setting changes. All requests for Application, Process, and/or Policy changes are initiated by the requestor submitting a [Business Technology Change Request](https://gitlab.com/gitlab-com/business-ops/change-management/issues/new?issuable_template=Business%20Technology%20Change%20Management) issue.

To make a global configuration or settings change to a [third-party application or service](/handbook/business-ops/tech-stack-applications/):

- [Create an issue in the Change Management project](https://gitlab.com/gitlab-com/business-ops/change-management/-/issues)
- Dependent on the Change Type:
    - [Standard Change](https://gitlab.com/gitlab-com/business-ops/change-management/-/issues/new?issuable_template=Standard_Change): Will require Peer Review and Team Member Enablement Manager review and approval.
    - [Comprehensive change](https://gitlab.com/gitlab-com/business-ops/change-management/-/issues/new?issuable_template=Comprehensive_Change): Will require Peer Review, Team Member Enablement Manager review, and A Change Advisory Board review and approval.
    - [Emergency Change](https://gitlab.com/gitlab-com/business-ops/change-management/-/issues/new?issuable_template=Emergency_Change): Change can be completed prior to review and approval from the Change Advisory Board (CAB). Once the change has been implemented, the CAB will review during the next weekly CAB review.
        - A Change Advisory Board, consisting of:
            - Sr Director of Enterprise Applications
            - Sr Director of Data and Analytics
            - Team Member Enablement Manager
            - Head of IT
            - Legal (as needed)
        - IT will review the change request and engage Legal as needed. Additional participants will be included during weekly CAB reviews to include team members requesting change(s) and their managers. 
- In the event a change request is not approved, IT will work with the individual submitting the change request to address any blockers/concerns.

### Communication Changes

If during the Business Technology change request process it's decided team members should be notified of a change (for example, changing the default Google Doc sharing settings), please ensure that you communicate the change and its impact by posting in `#whats-happening-at-gitlab`.

**If the change is approved and requires communication to team members, communicate the change, its rationale, and its impact.**

Please note the change will always be implemented on a Tuesday following the change approval and communication. This will allow the ability and coverage should the change need to be backed out and re-reviewed.

**If no communication is required or the change has been communicated already, make the change.**

## Exceptions

Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](https://about.gitlab.com/handbook/engineering/security/#information-security-policy-exception-management-process).

## References



