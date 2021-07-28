---
layout: handbook-page-toc
title: "CI/CD Campaign"
description: "Everything you need to know about the CI/CD campaign."
twitter_image: '/images/tweets/handbook-marketing.png'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

## Campaign Overview
{: #overview .alert .alert-gitlab-orange}

### Business Objectives
{: #business-objectives}
<!-- DO NOT CHANGE THIS ANCHOR -->

### Campaign Visual
{: #campaign-visual}
<!-- DO NOT CHANGE THIS ANCHOR -->

### Campaign Pages & Activities
{: #campaign-activities}
<!-- DO NOT CHANGE THIS ANCHOR -->

**[See the FY22 Marketing Calendar for upcoming virtual events >>]()**

Always On Lead Generation:
* :books: Content | 
* :books: Content | 
* :video_camera: On-Demand Webinar | 

## Research & Prep
{: .alert #research-prep .alert-gitlab-orange}

### Persona & Positioning
{: #persona-positioning .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

Users include both the developer and the security pro. We pride ourselves on having a united view of the software vulnerabilies and their status toward resolution. The buyer persona is usually the security manager who funds the delta from Premium to Ultimate.

#### Target Persona 1:

* **Level:** Manager or Director
* **Function:** Application Security. In large organizations, Application Security is a dedicated team or person. In smaller IT shops a group or individual security person may be responsible for application security along with network security, security operations, and more.

While developers and DevOps teams like to use GitLab for security, the security pro is often skeptical, comparing it to their favorite incumbant scanner. They may have bet their career on justifying a very expensive scanner like Fortify or Veracode and are often reluctant to replace it, even if it can simplify their work as well as that of the developer.

* **Challenges we're trying to solve with this campaign:** 

Security struggles to fit traditional application scanning methods into an iterative, agile development environment. 
  1) Vulnerabilities often discovered in production causing project delays because security finds issues just before go-live
  2) Friction in the workflow causes rework and wastes time understanding context of a vuln reported today that was created a week ago.
  3) Business improvements (a VP App goal) take a back seat to fixing security vulns (not my goal - this is a goal of the CISO) creating adversaries between groups.
  4) Dependency backlog continues to grow (technical debt)
  5) Integrating incumbent scanners into CI pipelines is complex with often unpredictable app sec license costs.

Recent software supply chain attacks are raising awareness of the need for greater application security that includes not only app sec testing but also policy automation, common compliance controls, and improved visibility and control over the SDLC tools and cloud native infrastructure. The USA Executive Order on Cybersecurty will only heighten the need for better security and compliance processes. Complexity is becoming an even bigger challenge!
  
* **How GitLab helps:** Forrester research shows that complexity is one of the biggest challenges facing CISO's today. GitLab provides:
   * **simplicity** - less tool integration and maintenance, one predictable cost
   * earlier **visibility** into risk by scanning earlier and using single source of truth between dev and sec
   * greater **control** over the security of the SDLC through use of one platform with end-to-end policies and auditability. 
   
* **Why is GitLab a better solution than competitors:** 
1. For those struggling to 'shift left', GitLab can provide a path of least resistence: Developers already love GitLab and Security teams can harness that momentum to quickly scale their app sec program while adding defense-in-depth of multiple scan types (SAST, DAST, Dependencies, Containers, and License Compliance, Secrets detection, and fuzz testing) built-in and automatically applied. Security is more efficient with one UI to see all findings in one place, along with details about the vulnerabilities and their remediation efforts.  

2. For those already trying to embed security within their CI pipeline, GitLab simplifies the complexity by offering one solution for all of your app sec testing needs, allowing you to test every code change with straightforward and predictable seat-based pricing.

3. A single platform can greatly simplify compliance and audit requirements allowing you to apply policies automatically for greater consistency and see who changed what/where/when across the SDLC. GitLab not only helps your enterprise delivery more secure code, but also manage and monitor containers and kubernetes upon which cloud native apps depend.

Competitive solutions require substantial set-up and maintenance to integrate scans into the CI pipeline, with no end-to-end visibility across mutliple tools.

#### Target Persona 2:

* **Level:** Practitioner
* **Function:** Application Security

The security pro cares most about managing risk to the enterprise/agency. They take a broad view of process looking for process improvement areas to reduce risk and avoid repeat mistakes. Because they care about risk, they want to identify unresolved vulnerabilities, their severity, and their remediation status. They care about trends over time and aggregate improvements. Often their metrics are mean time to remediation. It is rare that the security person themselves is able to remediate a software security flaw; they depend upon the developer to do this. This goal misalignment is often a reason for contention between the groups. In traditional app sec environments, where testing is done at the end of the SDLC, they may spend alot of their time tracking and reporting vulnerability statuses, vetting findings, and triaging to dev teams. Where development is more automated, they may be able to focus more on setting policies and allowing the tools to enforce them. They often want to avoid moving any new critical/high vulnerabilities into production and favor breaking the build to enforce this.

* **Challenges we're trying to solve with this campaign:** 

Security struggles to fit traditional application scanning methods into an iterative, agile development environment. 
  1) Vulnerabilities often discovered in production causing project delays because security finds issues just before go-live
  2) Siloed tools waste time understanding context of a vuln reported today that was created a week ago and translation may be required between findings from a security tool and where the flaw resides in the code.
  3) The growing use of dependencies, APIs, containers, Kubernetes adds attack surfaces to assess and monitor while security teams struggle to keep up
  4) Tracking remediation status is difficult - often many spreadsheets
  5) Keeping up with wildly different licensing between multliple security scanners can waste time determining if current licensing is sufficient for each new project. 

Recent software supply chain attacks are raising awareness of the need for greater application security that includes not only app sec testing but also policy automation, common compliance controls, and improved visibility and control over the SDLC tools and cloud native infrastructure. The USA Executive Order on Cybersecurty will only heighten the need for better security and compliance processes. Complexity is becoming an even bigger challenge!
  
* **How GitLab helps:** Developers already love GitLab and GitLab's CI solution is industry leading. Security teams can harness that momentum and use GitLab's embeded security scans to fix vulnerabilities at the point of code change.  Vulnerabilities that remain after the iterative change/scan/change/scan in dev are visible to the security person, along with seamless transparancy of who created the vuln, where in the code, along with efforts made to document remediation and analysis already done.

1) We enable the 'shift left' approach in a way that speeds adoption with delelopers, allowing security to focus on policies, risks, and improving processes. Security can be a better helper not a hindrance/inspector. 
2) For those already wanting to embed security within their CI pipeline, GitLab helps you do it simply, at scale, and with predictable cost.


* **Why is GitLab a better solution than competitors:** Security personnel have greater clarity for the vulnerabilities that remain.
   1. By providing the scan results within the merge request pipeline, the developer does not need to change context or use another tool (hence they will actually use this one). The results show vulnerabilities they created - not ones lurking for years in the code or that another developer created. They have more incentive to fix the ones they know they created. 
   2. The single source of truth rapidly gets dev and sec on the same page with regard to the finding and its status
   3. The A-F grading scale on the Security Dashboard helps security quickly identify projects with the most risk
   4. GitLab automatically provides static (SAST), dynamic (DAST), container and depenendy scans along with License Compliance. There is no added work to set these up. Comparitively, other build-your-own solutions, while offering more flexibility, require significant set-up effort. GitLab's AutoDevOps simplifies the set up of all of these scans into one command.


#### Target Persona 3:

* **Level:** Manager
* **Function:** Application Development or DevOps

The developer cares about security but does not want to become a security expert. Their primary driver to write secure code is to protect their personal/professional reputation. They don't want to be the one that brings their company down via vulnerable code that they wrote. At the same time, they are goaled mostly on quickly turning out code that meets their users' requirements. Often they are not measured on security flaws. Security can seem like a necessary nuisance. Tools that fit within their workflow, without context-switching are most acceptable. The clarity GitLab provides by reporting vulnerabilities at code commit is helpful.


* **Challenges we're trying to solve with this campaign:** 

Security struggles to fit traditional application scanning methods into an iterative, agile development environment. 
  1) Vulnerabilities often discovered in production causing project delays because security finds issues just before go-live
  2) Friction in the workflow causes rework and wastes time understanding context of a vuln reported today that was created a week ago.
  3) Business improvements (a VP App goal) take a back seat to fixing security vulns (not my goal - this is a goal of the CISO) creating adversaries between groups.
  4) Dependency backlog continues to grow (technical debt)
  5) Integrating incumbent scanners into CI pipelines is complex with often unpredictable app sec license costs.

Recent software supply chain attacks are raising awareness of the need for greater application security that includes not only app sec testing but also policy automation, common compliance controls, and improved visibility and control over the SDLC tools and cloud native infrastructure. The USA Executive Order on Cybersecurty will only heighten the need for better security and compliance processes. Complexity is becoming an even bigger challenge!
  
* **How GitLab helps:** Developers already love GitLab and GitLab's CI solution is industry leading. Security teams can harness that momentum and use GitLab's embeded security scans to fix vulnerabilities at the point of code change. With every code commit (code change), GitLab automatically scans using a variety of methods (including SAST, DAST, Dependencies, Containers, and License Compliance, Secrets detection, and fuzz testing) before the code ever leaves the individual developer's hands. This approach provides tremendous clarity for the developer empowering them to correct the vulnerabilities he/she just created with their code change. Vulnerabilities that remain after the iterative change/scan/change/scan in dev are visible to the security person, along with seamless transparancy of who created the vuln, where in the code, along with efforts made to document remediation and analysis already done.

1) We enable the 'shift left' approach to find and fix risks sooner when it's less costly, while improving development velocity. 
2) For those already wanting to embed security within their CI pipeline, GitLab helps you do it simply, at scale, and with predictable cost.


* **Why is GitLab a better solution than competitors:** Security personnel have greater clarity for the vulnerabilities that remain.
   1. By providing the scan results within the merge request pipeline, the developer does not need to change context or use another tool (hence they will actually use this one). The results show vulnerabilities they created - not ones lurking for years in the code or that another developer created. They have more incentive to fix the ones they know they created. 
   2. The single source of truth rapidly gets dev and sec on the same page with regard to the finding and its status
   4. GitLab automatically provides security scans. There is no added work to set these up, no new tools to learn, no context-switching. Comparitively, other build-your-own solutions,  require significant set-up effort. GitLab's AutoDevOps simplifies the set up of all of these scans into one command.


### Keyword Research
{: #keyword-research .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

**[See the DevSecOps 2.0 keyword research doc >>]()**

### Polished Messaging
{: #polished-messaging .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
#### Overall

|  | Polished Messaging |
| ------ | ------ |
| **Overall Message** | |
| **Headline** |  |
| **Statement** |  |
| **Key Messages** | 1. |
||2. |
|| 3. |
|| 4. |
| **Topics** | 1.|
||2. |
||3.  |
| **Top-level Keywords**  |  |



## Buyer Journeys, Content & Emails
{: .alert #content-emails .alert-gitlab-orange}

### Prescriptive Buyer Journeys
{: #buyer-journey .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

#### Developers
{: #buyer-journey-ic}
<!-- DO NOT CHANGE THIS ANCHOR -->
| Stage | Asset 1 | Asset 2| Asset 3 |
| ------ | ------ | -------| -------|
| Awareness|  |  | |
| Consideration |  |  | |
| Purchase| | | |

#### Individual Contributor (Security)
{: #buyer-journey-ic}
<!-- DO NOT CHANGE THIS ANCHOR -->
| Stage | Asset 1 | Asset 2| Asset 3 |
| ------ | ------ | -------| -------|
| Awareness|  |  | |
| Consideration |  |  | |
| Purchase| | | |


#### Manager (Security)
{: #buyer-journey-ic}
<!-- DO NOT CHANGE THIS ANCHOR -->
| Stage | Asset 1 | Asset 2| Asset 3 |
| ------ | ------ | -------| -------|
| Awareness|  |  | |
| Consideration |  |  | |
| Purchase| | | |

#### Manager (Development or DevOps)
{: #buyer-journey-ic}
<!-- DO NOT CHANGE THIS ANCHOR -->
| Stage | Asset 1 | Asset 2| Asset 3 |
| ------ | ------ | -------| -------|
| Awareness|  |  | |
| Consideration |  |  | |
| Purchase| | | |

### Marketo Nurture Emails
{: #nurture-emails .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

**[See Marketo Nurture Email Copies >>](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/-/issues/2478#ship-final-copies)**


### Outreach Emails
{: #outreach-emails .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->


## Behind the Scenes
{: .alert #research-prep .alert-gitlab-orange}

#### Campaign Execution Documentation & Resources
{: #campaign-execution .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
* [Campaign Epic]()
* [Project timeline plan]()
* [Copy Doc]()
* [Art Work]()
