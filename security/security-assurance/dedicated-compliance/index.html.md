---
layout: handbook-page-toc
title: "Security Compliance, Dedicated Markets Team"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## <i class="fas fa-bullseye" style="color:rgb(110,73,203)" aria-hidden="true"></i> Security Compliance (Dedicated Markets) Mission

Our Mission is to advance customer trust with a focus on customers operating in highly regulated industries or who otherwise have unique security and compliance requirements. We will accomplish this mission by:

1. Enabling [GitLab Dedicated](https://docs.gitlab.com/ee/subscriptions/gitlab_dedicated/#gitlab-dedicated) to be the most trusted DevSecOps offering in the market, demonstrated by security certifications and attestations.
1. Achieving and maintaining industry-specific security certifications such as [FedRAMP](sites/handbook/source/handbook/security/security-assurance/dedicated-compliance/fedramp-compliance.html.md) and [FIPS 140-2 compliance](https://docs.gitlab.com/ee/development/fips_compliance.html#fips-compliance) for the U.S. Public Sector.
1. Applying compliance automation and compliance-as-code guardrails to minimize [toil](https://sre.google/sre-book/eliminating-toil/) and enable product, development, and infrastructure teams.
1. Use our own product ([dogfooding](https://about.gitlab.com/handbook/values/#dogfooding)) to meet key security controls, improve our offering, and demonstrate to customers how they can do the same.

For more information on the direction of the GitLab Dedicated category, please see [this page](https://about.gitlab.com/direction/saas-platforms/dedicated/).

## <i class="far fa-lightbulb" style="color:rgb(110,73,203)" aria-hidden="true"></i> Core Competencies
As a member of the [Security Assurance](/handbook/security/security-assurance/) sub-department, and fork of the existing [Security Compliance team](https://about.gitlab.com/handbook/security/security-assurance/security-compliance/), we share many of the same core competencies. The difference between our teams is in the product/system scope (GitLab Dedicated and any future offerings for highly regulated markets) and the security certifications we are pursuing.

1. [Security Certifications](/handbook/security/security-assurance/security-compliance/certifications.html)
   * External Audit Coordination
   * [Gap Assessments/Readiness Assessments](/handbook/security/security-assurance/security-compliance/gap-analysis-program.html)
1. [Observation and Remediation Management](/handbook/security/security-assurance/observation-management-procedure.html)
   * Identifying control weaknesses and gaps (observations)
   * Remediation recommendations
   * Tracking remediation plans to completion
1. [Continuous Monitoring of GitLab's Security Controls](/handbook/security/security-assurance/security-compliance/sec-controls.html) which are mapped to applicable regulatory requirements and security certifications/frameworks we have committed to.
   * [User Access Reviews](/handbook/security/security-assurance/security-compliance/access-reviews.html)
   * [Business Continuity Plan (BCP)](https://about.gitlab.com/handbook/business-technology/gitlab-business-continuity-plan/) and [Information System Continuity (ISCP)](https://about.gitlab.com/handbook/security/Information-System-Contingency-Plan-ISCP.html) testing

Some of our work is [not public](https://about.gitlab.com/handbook/communication/confidentiality-levels/#not-public) for now. Please see the [internal handbook](https://internal-handbook.gitlab.io/handbook/engineering/) to find out more about what our team is working on, or reach out to us.

## <i class="fa-solid fa-magnifying-glass"> Vision and Focus Areas
Security Compliance is part of the [2nd line of defense](https://www.isaca.org/resources/isaca-journal/issues/2018/volume-4/roles-of-three-lines-of-defense-for-information-security-and-governance#:~:text=While%20the%20three%20lines%20of,explore%20ways%20to%20optimize%20outputs) and our goal is identify and treat risks early before they have more severe impacts later on (i.e. regulatory or reputational). We strive to partner with the 1st line of defense (Engineering, Product, and other parts of the organization) to shift compliance left where it is both more effective and less burdensome. To achieve that vision, we need to focus on the following areas and solicit feedback from other parts of the organization:
* Meet our stakeholders where they are
   * Learn the key projects, architectures, and technologies of the products we support 
* Reduce [toil](https://sre.google/sre-book/eliminating-toil/) for control owners and ourselves
   *  Automate controls as part of the 1st line of defense and look for efficiencies
* Modernize and scale
   * Identify and implement Governance, Risk, and Compliance (GRC) best practices and "cloud native compliance" solutions
* Measure success and impact on customer trust
   * Identify actionable key performance indicators (KPIs) and key risk indicators (KRIs) for leadership

### Where we work
We primarily work out of projects in our [Dedicated Compliance team subgroup](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-compliance-commercial-and-dedicated), the Security Department and Security Assurance parent groups, the [GitLab Dedicated issue tracker](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team), and the Security Compliance [Observation Management project](https://gitlab.com/gitlab-com/gl-security/security-assurance/observation-management/).

## <i class="fa-solid fa-chart-mixed" style="color:rgb(110,73,203)" aria-hidden="true"></i> Metrics and Measures of Success

1. [Security Control Health](/handbook/security/performance-indicators/#security-control-health)
1. [Security Observations](/handbook/security/performance-indicators/#security-observations-tier-3-risks)

## <i class="fas fa-id-card" style="color:rgb(110,73,203)" aria-hidden="true"></i> Contact the Team

|  Program | DRI | Responsibilities |
| --- | --- | --- |
| Security Compliance (Dedicated Markets) team manager | [@corey-oas](https://gitlab.com/corey-oas) | FedRAMP Authorization Program and compliance/certification roadmap for GitLab Dedicated and GitLab Dedicated for U.S. Government) 
| GitLab Dedicated security compliance | [@dchangkuon](https://gitlab.com/dchangkuon) | Continuous monitoring, gap assessments, and external audit coordination (e.g. SOC 2 Type 2). |
| FedRAMP Information System Security Officer (ISSO) | [@niben01](https://gitlab.com/niben01) | FedRAMP vulnerability posture reporting, maintaining Plan of Action & Milestone reporting, and deviation requests |
| FedRAMP Continuous Monitoring Program | [@kbray](https://gitlab.com/kbray) | Continuous monitoring improvements and automation, significant change identification, and compliance documentation maintenance |

* Slack
   * Feel free to tag us with `@dedicated_compliance` or `@sec-compliance-team` to reach the entire Security Compliance team
   * The `#sec-assurance` slack channel is the best place for questions relating to our team (please add the above tag)
   * FedRAMP questions should be directed to the `# wg_fedramp` channel
* Tag us in GitLab
   * `@gitlab-com/gl-security/security-assurance/team-security-dedicated-compliance`
* Email
   * `security-compliance@gitlab.com`
* Here are our team's GitLab.com [subgroups and projects](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-compliance-commercial-and-dedicated/team-security-dedicated-compliance)

* Interested in joining our team? Check out more [here](https://about.gitlab.com/job-families/security/security-compliance/#dedicated-markets)!
