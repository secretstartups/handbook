---

title: "Business Technology Change Management"
description: "Business Technology Change Management"
---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />







# Business Technology Change Management

## Purpose

Business Technology Change Management covers changes to System settings in addition to Process and Policy changes. The Business Technology Change Management (CM) process at GitLab provides a framework for the thorough documentation, testing, and evaluation of proposed changes to the Business Technology systems. The CM process mitigates risk to production applications that could threaten the stability, resiliency, security, data availability, integrity, and regulatory compliance.

This handbook page defines the steps necessary to implement and maintain CM processes to ensure changes are planned, documented, reviewed, and approved in a controlled manner.

Making a user- or group-level change doesn't require a Business Technology change request. For example, if your team decides to make a change to one of your team's group settings on GitLab.com, a Business Technology change request isn't required. However, if you decide to make a change to a configuration or setting for GitLab.com globally, that requires a change request. Another example is Google Drive. If you decide to make a change to one of your team's Google Drive folders, no Business Technology change request is required. But if you change the default sharing setting of all of Google Doc for GitLab, a Business Technology change request is required.

Additional examples include: If you are making a Process and/or Policy change that will impact only your team's process, a change management is not required. If you are making a Process and/or Policy change that will impact one or more other departments, a change management is required.

For additional information regarding Change Management, refer to our Change Management Workflow Control Guidance.

**A Business Technology change request is only needed when a change is being requested for review for applications already listed in our tech stack.**

### Why Change Management is important

There are many benefits from effective change management.

**Outage prevention and reducing user impact**
- Preventing maintenance conflicts
- Peer review of changes to ensure change plan has no errors
- Ensuring that all parties that could be affected by a change are informed
- Ensuring that maintenance does not interfere with business processes and financial reporting

**Helps ensure that changes are made with good planning**
- Changes are made with a deployment plan, back out plan, and good criteria for testing to be sure that changes are completed as intended.
- Ensuring that only planned work is done with no additional changes.

**Change management is required as part of many regulations and is audited for effectiveness**
- Examples: SOX, ISO, and many others

## Scope

**Note** This would be the final stage of scope. As the first iteration, we will need to scope this down more and implement phases to the scope.

### Criteria

Change Management process covers changes to systems across the Business Applications.

- All changes to BT Systems
- Includes requests for program changes, system changes, system maintenance, and administration access
- Changes to data and data structures
- Controls provide reasonable assurance that system changes do not affect financial reporting

**Examples**

A few examples are listed below. These examples are not meant to be all encompassing.

- Changes to production business applications such as new application enhancements, upgrades, or defect resolution.
  - SFDC, Okta, Azure, Zoom
  - All changes impacting Financial (SOX) applications NetSuite, Zuora, and critical Enterprise Applications/systems.
- Other production systems like our enterprise data warehouse and integrations
- Implementing a new system policy for user access

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
| **Post Implementation Review** | Review of the change in production after the change is made to ensure everything is working as expected |
| **Business Owner** | Review and provide approval prior to change being implemented |

### Change Request Types

**Minor Change**

A **minor change** is a low risk, well-understood change which does not require testing (such as with a record change, as opposed to a configuration change).  Changes may be implemented directly in Production, have no financial impact, are related to general maintenance, and can be easily reversed.
- A minor change requires Manager Approval and Post-Implementation Review.

**Standard**

A **standard change** is a pre-authorized change that is low risk, relatively common and follows a specified procedure or work instruction.
- A standard change is one that is frequently implemented, has repeatable implementation steps, and has a proven history of success.
- Standard changes have to go through the change management process.
- **They require a peer review, Impacted Team(s) Management (or Code Owner) approval, and post-implementation review.**
  - **Manager** - prior to approving the change request, please ensure that the correct change request template is being used.

**Comprehensive**

A **comprehensive change** is *high risk, high impact,* or has a *more complex procedure.*
- All changes to **financially significant applications** also are considered comprehensive due to the type of systems that they affect and the potential impact that could occur if there is an issue.
- **Infrastructure changes** are also considered comprehensive.
- **They require peer review, Impacted Team(s) Management approval (or Code Owner), Business Owner Approval, Head of IT Approval, and Post-Implementation Review.**
  - **Manager** - prior to approving the change request, please ensure that the correct change request template is being used.

**Emergency**

An **emergency change** follows the same approval process as comprehensive.
- It can be entered for approval after the change has been implemented in production.
- Emergency changes are intended to be used only where there is an immediate critical need to correct an operational or security issue that is preventing users from working or transactions to not be processed or processed incorrectly.
- **They require review and all approvals after the change has been implemented.**

### Approval Matrix

| **Approval Type** | **Description** | **Minor** |    **Standard** | **Comprehensive** | **Emergency**
| ----- | ----- | ----- | ----- | -----  | -----
| **Peer Review** | Peer Reviews are performed by a peer of the change Requestor or Developer and are intended to identify any potential issues with the planned change or change process. **Note:** The peer review process was established to mitigate the risk of the lack of segregation of duties between developer and implementer. The review provides comfort that changes to the production environment are valid. | No | No | Yes | Yes
| **Post-Implementation Review** | Performed by a peer of the change Requestor or Developer and are intended to ensure the change is working as expected after the change has been implemented in Production. | Yes | Yes | Yes | Yes |
| **Impacted Team(s) Management/Code Owner approval** | Approval by Management that is responsible for the particular system | Yes | Yes | Yes | Yes
| **Business Approval** | Approval by Impacted Team(s) Management approval that is responsible for the particular system or is impacted by the change. | No | No | Yes | Yes
| **Head of IT, Business** | The Head of IT must approve all changes made during blackout periods | No | No | Yes | Yes* |

- (*) Refer to Emergency Change section under [Change Request Types](/handbook/business-technology/change-management/#change-request-types) for approval requirement details.

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

*Significant Enterprise Applications are: Coupa, NetSuite, Salesforce, Zuora

**Finance impacted systems.

### Rollout of Mass Deployments

Where possible, mass deployments such as macOS operating system upgrades (i.e. Monterey to Ventura) or net new software rollouts will be done by Department. Smaller changes such as security patches or minor updates of existing software are not subject to the same schedule and can be deployed globally after Phase 1 testing is complete.  The order of mass deployments will be as follows:
- Phase 1: IT, Security, and Volunteers
- Phase 1b: Legal
- Phase 2: Marketing & People Group
- Phase 3: Engineering
- Phase 4: Sales & Finance
- Phase 5: CEO Group & VIPs

VIP support for significant or disruptive changes will be treated via direct support from the Service Desk team who will schedule a call at a convenient time to ensure the update or deployment is successful with minimal disruption.

```If you wish to join the volunteers group to test new software, please join the #it-security-beta-testers channel on Slack and let us know - everyone can contribute!
```

### Communication Changes

If during the Business Technology change request process it's decided team members should be notified of a change (for example, changing the default Google Doc sharing settings), please ensure that you communicate the change and its impact by posting in `#whats-happening-at-gitlab`.

**If the change is approved and requires communication to team members, communicate the change, its rationale, and its impact.**

Please note the change will always be implemented on a Tuesday following the change approval and communication. This will allow the ability and coverage should the change need to be backed out and re-reviewed.

**If no communication is required or the change has been communicated already, make the change.**

## Exceptions

Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](/handbook/security/#information-security-policy-exception-management-process).

## References



