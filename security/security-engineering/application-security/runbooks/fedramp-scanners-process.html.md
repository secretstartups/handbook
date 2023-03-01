---
layout: handbook-page-toc
title: "FedRAMP Vulnerability Scanning and Triage Process"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## FedRAMP Vulnerability Scanning and Triage Process

**Vulnerability Scans:** DAST API scan, DAST web scan, Container scan.

We are [required for FedRAMP](https://internal-handbook.gitlab.io/handbook/engineering/fedramp-compliance/vulnerability-slas/) to triage issues reported by our scanners in our FedRAMP scoped images used in production.




### Vulnerability reports

This section lists security dashboards that need to be reviewed:

#### 1. Container scanner

Vulnerability reports for container scanner are to be triaged from [this page](https://gitlab.com/gitlab-com/gl-security/appsec/container-scanners/-/security/vulnerability_report).

Currently we do not have the ability to filter based on images.

Container scanner findings will typically be straightforward to triage, since severity ratings and SLA requirements are dictated by the CVSS score provided by the National Vulnerability Database. Please see the [Vulnerability management changes required for FedRAMP page in the internal handbook for more information](https://internal-handbook.gitlab.io/handbook/engineering/fedramp-compliance/vulnerability-slas/).

#### 2. DAST Scan 

Findings are to be triaged from this [vulnerability report](https://gitlab.com/gitlab-com/gl-security/appsec/dast-scan-4-fedramp/-/security/vulnerability_report/?activity=STILL_DETECTED&scanner=GitLab.DAST) page.


### Vulnerability Triage process guide

**_Note:_** this guide is intended for any teams triaging FedRAMP vulnerabilities.

#### Container scanner vulnerability triage

- Follow the process described in the [triage section](https://gitlab.com/gitlab-com/gl-security/appsec/container-scanners/-/blob/master/workflow.md#triage-steps) of the container scanner repository.
- For each true positive finding, follow the steps listed in the [next section](#for-each-finding-from-dast-and-container-scanners).

#### DAST scanner vulnerability triage

- Verify if the vulnerability is not a false positive.
- If the vulnerability is a false positive, close it with details on why it is a false positive.
- If the vulnerability is not a false positive, evaluate the severity and continue on the [next section](#for-each-finding-from-dast-and-container-scanners).

#### For each finding from DAST and container scanners:

- Create a confidential tracking issue for each reported vulnerability.
- Add the labels ~security  ~"bug::vulnerability" ~"FedRAMP::Vulnerability" and relevant group labels.
- Add severity and priority labels:
  - Match the severity of the tracking issue to the severity of the CVSS from NIST NVD.
  - If CVSS is not available, use the CVSS from the vendor.
  - If the vendor did not provide any CVSS, then match with the severity of the vulnerability assigned by the scanner (or your severity based on your assessment).
- Make sure due dates are assigned for the issues based on [remediation SLA](https://about.gitlab.com/handbook/security/threat-management/vulnerability-management/#remediation-slas). The due date is counted from the date on which the scanner detected the vulnerability.
- Ping the relevant product and engineering managers for remediation
- Product teams to create a [Deviation Request] for vulnerabilities that are false positive or cannot be remediated within the due date.
- Application Security team can help if needed (for example when risk adjustment is not clear) before the DR is submitted.
- The process continues based on the [Deviation Request] procedure.

## SLAs

SLAs can be consulted on the [vulnerability management remediation SLAs page].


[Vulnerability Management Team]: ../../../threat-management/vulnerability-management/index.html
[Deviation Request]: ../../../security-assurance/dedicated-compliance/POAM-Deviation-Request-Procedure.html
[vulnerability management remediation SLAs page]: ../../../threat-management/vulnerability-management/#remediation-slas
