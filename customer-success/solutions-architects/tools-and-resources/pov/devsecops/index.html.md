---
layout: handbook-page-toc
title: DevSecOps POV Scope and Acceptance
description: DevSecOps POV Scope and Acceptance
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

[**SA Practices**](/handbook/customer-success/solutions-architects/sa-practices/) - [**Sales Plays**](/handbook/customer-success/solutions-architects/sales-plays/) - [**Tools and Resources**](/handbook/customer-success/solutions-architects/tools-and-resources/) - [**Career Development**](/handbook/customer-success/solutions-architects/career-development/) - [**Demonstration**](/handbook/customer-success/solutions-architects/demonstrations/) - [**Processes**](/handbook/customer-success/solutions-architects/processes/)  - [**POV**](/handbook/customer-success/solutions-architects/tools-and-resources/pov/)

## DevSecOps POV Scope and Acceptance
{:.no_toc}
The DevSecOps solution is identified for organizations  who are trying to "shift left" to find security vulnerabilities earlier within their DevOps methodology but have not been able to achieve expected results.

From the early discovery when qualifying the POV, it is confirmed that the existing application security is separated from the DevOps flow, causing bottle necks as the final hurdle in the development life cycle and typically controlled only by the App Sec team. 

The key objective of the POV is to validate the value of the shift left security to the developer's hand along with app sec team collaboration at time of app development. 

### Input to the POV

- Pain points identified: Toolchain review and mapped out existing app sec tools and usage 
- High level ROI discussion identifying potential tool consolidation (hard cost); and overall efficiency gains with transformative process with shift left security
- Both DevOps + App sec team are stakeholders to be involved

### Suggested Success Criteria
- Business Driver: increase velocity, consolidate/reduce spending, improve security posture, protect brand and reputation 
- Enterprise Initiative and Sponsor: cloud transformation, CIO
- Required capabilities with the objectives to infuse security earlier in the development process, ability to scan all code and act them real time. Have the security oversight as the integral part of the end to end DevOps.

| Required Capability | Acceptance | Objective | GitLab Feature |
| ---      | ---      | ---      |---      |
| Approval Process and workflow | Approval rules with security team; Dev + Security Team collaboration | Approval Rules |Vulnerability mgmt |
| Developer App Sec Workflow Process | Scan all code branches within desired timeframe; Shift left security with productivity improvement | Vulnerability mgmt | Security Test & MR Report | 
| Security team Workflow Process | Security team to drive policies and facilitate triage | Manage app and organizational security posture | Security Dashboard; Vulnerability mgmt; Security trends | 
| SAST security test review | Scan for all detected languages | Shift left developer's experience with real time feedback | SAST analyzers; MR SAST widget; Vulnerability Dashboard | 
| Dependency Scanning | Scan for all detected languages | Shift left developer's experience with real time feedback | SCA analyzers; MR SCA widget; Vulnerability Dashboard; SBOM and Dependency Tree | 
| Container Scanning for Clound Native | Scan and block known vulnerable images | Recommendation and auto-remediation | Container analyzers; MR Container widget; Vulnerability Dashboard; Auto-remediation via MR |  
| API Security Test | Gitlab to review API fuzzing project | Shift left pen test like capability to dev + QA
| DAST API; API Fuzzing | 


















