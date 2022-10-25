---
layout: handbook-page-toc
title: "POAM Vulnerability Deviation Request Procedure"
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

## Purpose
In accordance with expectations set by the FedRAMP PMO, GitLab must follow a formal process to track and request approval from our sponsoring Agency Authorizing Official (AO) for any vulnerabilities that are not [remediated within SLAs](https://about.gitlab.com/handbook/security/threat-management/vulnerability-management/#remediation-slas). These are called vulnerability Deviation Requests (DR) and are formally reported to our AO every month using [GitLab's Plan of Action & Milestones (POA&M) (internal only)](https://docs.google.com/spreadsheets/d/1Tj3_vqNp34CSIHZsiSI0eM2zdfG574CD/edit?usp=sharing&ouid=107738356047141217629&rtpof=true&sd=true). Deviation requests for risk adjustments (severity downgrades), false positives, and operational requirements require Authorizing Official (AO) approval.

## Scope
Vulnerabilities (CVEs) impactful to the [FedRAMP production environment](https://internal-handbook.gitlab.io/handbook/engineering/fedramp-compliance/#system-architecture) (authorization boundary) to include:
- False positives 
- Risk adjustments 
- Operational requirements
- Vendor dependencies 

**Assets:**
- Container images (including base OS image and installed dependencies) for CNG `-fips` tag, secure analyzers with `-fips`, and GitLab Dedicated scope
  - Detected by container scans and dependency scans
- Host OS (EC2 instances such as Gitaly and Consul, kubernetes (EKS) worker nodes)
  - Detected by dependency scans and in-boundary Tenable.sc
- Web application (GitLab Rails/puma) only if confirmed CVE (as opposed to CWE)
  - In-boundary Acunetix (GitLab DAST only detects CWEs)

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
- 2 business days for internal technical review
- 2 business days for internal compliance review
- Between 1-30 days for AO review (timeline depending on AO)

### DR Template Definitions 
The following definitions were adopted from the FedRAMP PMO:
- [**False positives**](https://csrc.nist.gov/glossary/term/false_positive): An alert that incorrectly indicates that a vulnerability is present. Justified through documentation and evidence.
- [**Risk adjustments**](https://www.fedramp.gov/assets/resources/templates/FedRAMP-Vulnerability-Deviation-Request-Form.xlsx): A reduction in the scanner-cited risk level of a finding. Accomplished through existing or new compensating controls that reduce likelihood and/or impact of exploitation. 
- [**Operational requirements**](https://www.fedramp.gov/assets/resources/templates/FedRAMP-Vulnerability-Deviation-Request-Form.xlsx): A finding that cannot be remediated, often because the system will not function as intended, or because a 3rd party/vendor explicitly indicated it does not intend to offer a fix to their product. FedRAMP will not approve an OR for a High vulnerability; however, the risk may be mitigated and adjusted accordingly. 
- [**Vendor dependencies**](https://www.fedramp.gov/assets/resources/documents/CSP_POAM_Template_Completion_Guide.pdf): The remediation of the weakness required by the action of a third party vendor or actively maintained open source project other than GitLab (e.g., through the issuing of a patch that is not yet released). We are required to check the status of the vendor’s remedy at least every 30 days. As long as the fix is still pending from the vendor, and we have checked-in within 30 days of POA&M submission, FedRAMP will not count the entry as late.
  - Important Note: It is possible for a vulnerability to be both a vendor dependency and have a risk adjustment. FedRAMP requires that Critical/High severity vendor dependencies  be downgraded to a Moderate by putting in place (or specifying existing) compensating controls. In this scenario, the DR issue template for Risk Adjustment should be used, and the `FedRAMP Vendor Dependency` label also applied.

### Workflow Labels

| Step | Description | Label applied to the Vulnerability Issue | Label applied to the Deviation Request Issue |
| ------ | ------ | ------ | ------ |
| 1 | Discover a deviation request is required for a FedRAMP-applicable vulnerability issue |  `workflow::verification` , `FedRAMP DR Status::Open` | n/a |
| 2 | Submit a Deviation Request using the appropriate issue template for review by security engineer | _label remains unchanged_ | `FedRAMP DR Status::Ready for review` (_applied automatically using the issue templates_) |
| 3 | Security (Vulnerability Management team) performs a technical review of the vulnerability and classification/justification provided in the Deviation Request | If approved, _label remains unchanged_ or if denied, `FedRAMP DR Status::Denied` | If approved `FedRAMP DR Status::Compliance review` or if denied `FedRAMP DR Status::Denied` |
| 4 | Security Compliance reviews and if approved, tracks vulnerability deviation on POA&M and discusses with Authorizing Official during next monthly meeting | If approved _label remains unchanged_ or if denied `FedRAMP DR Status::Denied` | If approved `FedRAMP DR Status::AO review`; If denied `FedRAMP DR Status::Denied` |
| 5 | Security Compliance seeks Authorizing Official approval during next monthly meeting | If approved `FedRAMP DR Status::Approved`; If denied `FedRAMP DR Status::Denied` | If approved `FedRAMP DR Status::AO approved`; If denied `FedRAMP DR Status::AO denied` |

#### Grouping Multiple Vulnerabilities in a Deviation Request
Multiple CVEs can be grouped in a single DR if they are Vendor Dependencies for the same container image or package version (e.g. Red Hat ubi8 version 8.6-latest). For other DR types, vulnerabilities can be grouped if **all** of the following criteria are met:
- The DR is specific to a single unique vulnerability (CVE) impacting multiple images/packages
- All vulnerabilities have the same DR type and justification (e.g. all are false positives in RedHat ubi8 base image used by multiple GitLab container images)
- The DR makes it clear which GitLab application components are impacted (for dependencies, specify all CNG container images or omnibus components that are impacted)

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
