---
layout: handbook-page-toc
title: "FedRAMP Vulnerability Deviation Request Procedure"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

<div class="panel panel-gitlab-orange">
**This is a Controlled Document**
{: .panel-heading}
<div class="panel-body">

Inline with GitLab's regulatory obligations, changes to [controlled documents](https://about.gitlab.com/handbook/security/controlled-document-procedure.html) must be approved or merged by a code owner. All contributions are welcome and encouraged. 

</div>
</div>

---------------------

# Submit a Request!

<div class="flex-row" markdown="0" style="height:80px">
       <a href="https://gitlab.com/gitlab-com/gl-security/security-assurance/security-compliance-commercial-and-dedicated/team-security-dedicated-compliance/poam-deviation-requests/-/issues" class="btn btn-purple-inv" style="width:45%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Click here to submit a Deviation Request!</a>

</div>

Please read this procedure in its entirety and reach out to `@dedicated_compliance` in `# sec-assurance` channel if you have any questions.

## Purpose
In accordance with expectations set by the FedRAMP Authorization Act and FedRAMP Program Management Office (PMO), GitLab must follow a formal process to track and request approval (risk acceptance) from our sponsoring Agency Authorizing Official (AO) for any vulnerabilities that cannot be [remediated within SLAs](https://about.gitlab.com/handbook/security/threat-management/vulnerability-management/#remediation-slas) due to scenarios described in the Scope section below. These are called vulnerability Deviation Requests (DRs) and are formally reported to our AO every month using [GitLab's Plan of Action & Milestones (POA&M) (internal only)](https://docs.google.com/spreadsheets/d/1Tj3_vqNp34CSIHZsiSI0eM2zdfG574CD/edit?usp=sharing&ouid=107738356047141217629&rtpof=true&sd=true). Deviation requests for risk adjustments (severity downgrades), false positives, and operational requirements require Authorizing Official (AO) approval.

## Scope
All vulnerabilities (CVEs) impactful to the [FedRAMP production environment](https://internal-handbook.gitlab.io/handbook/engineering/fedramp-compliance/#system-architecture) (authorization boundary), including 3rd party vulnerabilities (vendor dependencies), in the following categories:
- **False positives** (scanner limitation - vulnerability is not actually present)
- **Risk adjustments** (to CVSS score/severity)
- **Operational requirements** (cannot be remediated without impact to functionality/availability)

See DR issue template definitions below.

### Assets in scope
Only the assets and scan types listed [here](https://internal-handbook.gitlab.io/handbook/engineering/horse/pubsec/fedramp-boundary-vulnerability-scanning/) are in-scope. Do not submit a DR for a scan type (e.g. SAST) or asset not included within the production authorization boundary.

Vulnerabilities in-scope for FedRAMP get the `FedRAMP::Vulnerability` label applied. See AppSec's [FedRAMP Vulnerability Scanning and Triage Process](https://about.gitlab.com/handbook/security/security-engineering/application-security/runbooks/fedramp-scanners-process.html#for-each-finding-from-dast-and-container-scanners) for more details, as well as [standard vulnerability labels](https://gitlab.com/gitlab-com/gl-security/threatmanagement/vulnerability-management/vulnerability-management-internal/vulnerability-management-tracker/-/issues/34199373).

## Roles & Responsibilities

| Role | Responsibility |
| ------- | ------- |
| GitLab Team Members | Submit the completed DR using the appropriate GitLab issue template, provide evidence | 
| Security (Vulnerability Management) | Complete technical review and approval of DR |
| ISSO (Dedicated Compliance) | Complete compliance review of DR and upgrade to POA&M if approved |
| Authorizing official (AO) | Approve or deny DR (ultimate decision maker) |

## Procedure
Anyone at GitLab can submit a deviation request (DR) via a [GitLab issue in this private project](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-compliance-commercial-and-dedicated/team-security-dedicated-compliance/poam-deviation-requests). DRs must be submitted in a timely manner and should never be used as a method to avoid late SLAs. All DRs are reviewed and approved by security, compliance, and our AO and they must meet the definitions and critieria defined within the issue templates.

To open a DR the applicable issue template must be selected and all information must be completed prior to submitting the issue for internal review. Each DR will undergo three rounds of review:

1. First a security technical review will be completed to ensure the DR is justified and there are no alternative options. 
1. Second a compliance review will be completed to determine the level of impact the DR will have on security controls, compensating control opportunities and, if approved, upgrade to the GitLab POA&M.
1. Finally an [authorizing official (AO)](https://csrc.nist.gov/glossary/term/authorizing_official) from our sponsoring Agency will review the request in accordance with the [Continuous Monitoring (ConMon) Guidance](https://www.fedramp.gov/assets/resources/documents/CSP_Continuous_Monitoring_Strategy_Guide.pdf). This is the ultimate decision maker. Note: Risk acceptance by GitLab (the business) is not allowed (i.e. we cannot ignore a legitimate vulnerability) as this responsibility lays with the AO.

If denied, a remediation plan must be developed and this item will remain on the POA&M. 

If approved, the ISSO will notify all involved parties via the GitLab issue with any additional instructions (like updating scanners).

### SLAs
- 2 business days for internal security technical review
- 2 business days for internal compliance review
- Between 1-30 days for AO review (timeline depending on AO)

### DR types
The following definitions were adopted from the FedRAMP PMO and all 3 have issue templates for submitting DR requests:
- [**Risk adjustments**](https://www.fedramp.gov/assets/resources/templates/FedRAMP-Vulnerability-Deviation-Request-Form.xlsx): A reduction in the scanner-cited risk level of a finding justified through existing or new compensating controls that reduce likelihood and/or impact of exploitation. 
  - **TEMPORARY GUIDANCE ON VENDOR DEPENDENCY RISK ADJUSTMENT DRs**: Due to significant resource strain, no reporting obligations for GitLab at this time, and pending automation, please do not submit Risk Adjustment DRs for Red Hat UBI vendor dependencies. Please continue to apply the `Vulnerability::Vendor Base Container::Fix Unavailable` label on the vulnerability issues until this is automated.
- [**False positives**](https://csrc.nist.gov/glossary/term/false_positive): An alert that incorrectly indicates that a vulnerability is present. Justified through documentation and evidence.
- [**Operational requirements**](https://www.fedramp.gov/assets/resources/templates/FedRAMP-Vulnerability-Deviation-Request-Form.xlsx): A finding that cannot be remediated, often because the system will not function as intended, or because a 3rd party/vendor explicitly indicated it does not intend to offer a fix to their product. FedRAMP will not approve an OR for a High vulnerability; however, the risk may be mitigated and adjusted accordingly. 

Vendor Dependency vulnerabilities, in which GitLab is dependent on a 3rd party vendor or open source project to remediate a vulnerability, can technically fall into any of the categories above. These vulnerability issues must always be identifed using the `Vulnerability::Vendor Base Container::Fix Unavailable` label (or `Vulnerability::Vendor Package::Fix Unavailable` if not part of a container base image). Special handling is required for Critical and High severity vendor dependencies so that risk can be mitigated to an acceptable level.

### Workflow Labels

| Step | Description | Label applied to the Vulnerability Issue | Label applied to the Deviation Request Issue |
| ------ | ------ | ------ | ------ |
| 1 | Discover a deviation request is required for a FedRAMP-applicable vulnerability issue |  `workflow::verification` , `FedRAMP::DR Status::Open` | n/a |
| 2 | Submit a Deviation Request using the appropriate issue template for review by security engineer | _label remains unchanged_ | `FedRAMP::DR Status::Ready for review` (_applied automatically using the issue templates_) |
| 3 | Security (Vulnerability Management team) performs a technical review of the vulnerability and classification/justification provided in the Deviation Request | If approved, _label remains unchanged_ or if denied, `FedRAMP::DR Status::Denied` | If approved `FedRAMP::DR Status::Compliance review` or if denied `FedRAMP::DR Status::Denied` |
| 4 | Security Compliance reviews and if approved, tracks vulnerability deviation on POA&M and discusses with Authorizing Official during next monthly meeting | If approved _label remains unchanged_ or if denied `FedRAMP::DR Status::Denied` | If approved `FedRAMP::DR Status::AO review`; If denied `FedRAMP::DR Status::Denied` |
| 5 | Security Compliance seeks Authorizing Official approval during next monthly meeting | If approved `FedRAMP::DR Status::Approved`; If denied `FedRAMP::DR Status::Denied` | If approved `FedRAMP::DR Status::Approved`; If denied `FedRAMP::DR Status::Denied` |
| 6 | The DR may no longer be needed once a patch is made available and applied. | If remediated, close the issue and apply `FedRAMP::DR Status::Vuln Remediated` | If remediated, close the issue and apply `FedRAMP::DR Status::Vuln Remediated` |

**Vulnerability Issues should remain open unless the vulnerability has been remediated.** This allows Security Compliance to keep track of DRs that still impact the FedRAMP environment. 

#### Grouping Multiple Vulnerabilities in a Deviation Request
Multiple CVEs can be grouped in a single DR if **all** of the following criteria are met:
- The DR is specific to a single unique vulnerability (CVE) impacting multiple images
- All vulnerabilities have the same DR type and justification (e.g. all are false positives in RedHat ubi8 base image used by multiple GitLab container images)
- The DR makes it clear which GitLab application components are impacted (see "Assets in scope" section above).

### Closing Vulnerability Issues and DR Issues
Deviation requests are often not permanent as patches are eventually made available by vendors or deployed according to risk adjusted SLAs. Patches can also be released in the middle of the DR approval process. If a patch has been released and deployed, please provide evidence in the deviation request issue comments indicating that the vulnerability is fixed in production. Once provided, the issue can be closed. Acceptable evidence can include:
- Re-scans showing the vulnerability is no longer present.
- Merge Request (merged) showing that the patch has been applied and released to production. 

**Please note that the patch / fix must be in production in order to close a DR issue, not just scheduled for release.**

Once the vulnerability is remediated, apply the label `FedRAMP::DR Status::Vuln Remediated` to both the vulnerability issue and the DR issue.

## Exceptions
There are no exceptions allowed to this procedure. 

## References
- [Vulnerability Management Procedure: Scanners](https://about.gitlab.com/handbook/security/threat-management/vulnerability-management/)

### Other helpful definitions
- [**FedRAMP PMO**](https://www.gsa.gov/technology/government-it-initiatives/fedramp): A team within GSA and supports agencies and cloud service providers through the FedRAMP authorization process and maintains a secure repository of FedRAMP authorizations to enable reuse of security packages.
- [**Plan of Action & Milestones (POA&M)**](https://www.fedramp.gov/assets/resources/documents/CSP_POAM_Template_Completion_Guide.pdf): A FedRAMP-required .xlsx template used to track and share security findings and remediation plans with GitLab's Authorizing Official.
- [**Authorizing Official (AO)**](https://www.fedramp.gov/agency-authorization/): A senior (federal) official (usually CISO/CIO or their delegated team) with the authority to formally assume responsibility for operating an information system at an acceptable level of risk to organizational operations (including mission, functions, image, or reputation), organizational assets, individuals, other organizations, and the nation.
- [**Authorization Boundary**](https://csrc.nist.gov/glossary/term/security_authorization_boundary): All components of an information system to be authorized for operation by an authorizing official and excludes separately authorized systems, to which the information system is connected.
- [**Information System Security Officer (ISSO)**](https://csrc.nist.gov/glossary/term/information_system_security_officer): GitLab individual with assigned responsibility for maintaining the appropriate operational security posture for an information system or program.
