---
layout: markdown_page
title: "Sales Play: Upsell Premium to Ultimate"
---

## Jump to [Sales Play Tactics](#sales-play-tactics)

## Overview

**Objective** - Convert landed accounts that are already using CI/CD to expand from GitLab Premium to GitLab Ultimate. 

Who is this sales play for?  
* Primary: SALs and AEs who call on one or more existing GitLab Premium customers  
* Secondary: SAs and TAMs who support one or more existing GitLab Premium customers  

*Note: This play is FYI only for SDRs because it is upselling tiers, not necessarily expanding seats.*

## Who to meet

**Ideal Customer Profile**  - Existing GitLab Premium customers already using CI/CD
- Bonus points for:
   - Organizations at lower maturity level undergoing or planning to undergoing tranformation
   - Siloed teams with disparate tools, especially security, lacking visibility at the individual level and executive level
   - Organizations with stringent regulatory security or compliance requirements

**Target Buyer Personas**

| Persona role  | Possible titles|
| ------------- |:----------------------:| 
| Economic buyers    | CISO or Security Manager, VP of Security, Director of Security, VP of IT or CTO, App/Dev Director |
| Technical influencers    | Chief Architect, App Dev Manager |
| Other Personas to consider | Infrastructure Engineering Director, Release and Change Management Director |


**Target Account Lists** 

- [Account list](https://gitlab.my.salesforce.com/00O4M000004akG8) 

## Getting Started

Consider the following questions: 
* What has prevented the customer from moving to (or considering moving to) GitLab Ultimate?
* Does the customer have any strategic initiative or priority to which upgrading to Ultimate would align nicely?
* Are you engaged with the right personas/teams (see Target Buyer Personas above)?
* Do you have access to power/authority (a business decision maker)?
* Who are your champions within the account?
* Are the capabilities and PBOs that are enabled by GitLab Ultimate important to the customer? Why or why not? How do you know?
 
## Value Discovery

### Common Pains  

GitLab Premium customers may be experiencing one or more of the below challenges:

| Challenges ("Before Scenarios")  | So What? ("Negative Consequences")  |
| ------------- |-------------| 
| Difficulty writing secure code without becoming security experts   | Increased risk  |
| Vulnerabilities found late in the SDLC | Costly remediation, blocks production at last minute |
| Costly triaging and tracking of vulnerabilities    | Inefficient use of scarce security resources, lengthy remediation process |
| Managing complex tool chains, plugins, and fragile automation scripts   | Added cost, maintenance, and admin overhead |
|   How to ensure scans are executed consistently and policies applied          |      teams may skip scans or use exceptions to push ahead, difficult to see across tools when this happens      |
| Security costs are unpredictable or concerning as DevOps scales | must find more money as number of apps grows |

An in-depth view of security pain points and probing questions around them can be found on the [DevSecOps resource page](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/devsecops/#discovery-questions)


### Common Benefits  

By upgrading from GitLab Premium to GitLab Ultimate, customers may experience one or more of the below benefits:

| Desired Future State (“After Scenarios”) | So What? (“Positive Business Outcomes”)   |
| ------------- |:-------------:| 
| Greater efficiencies for both security and dev    | less risk and greater velocity of DevOps |
| Consistent compliance to policy    | less risk of vulnerabilities in production and easier audits |
| Reduced security exposure, more scanning finds more vulnerabilities    | reduced risk to finance and reputation |
| Predictable security costs that scale with DevOps | able to confidently forecast and budget as DevOps and App Sec both scale|


### Required Capabilities  

To achieve the positive business outcomes highlighted above, what required capabilities does the customer need to solve for and how will success be measured?

| Required capability |  Customer Metrics  |
| ------------- |:-------------:| 
| Comprehensive app sec scanning methods    | percent of apps scanned with multiple scan types  |
| Scan results delivered to the developer in their CI pipeline    | vulnerabilities found pre-prod |
| Security governance    | time spent on audits, fewer compliance issues |
| Option to use 3rd party scanners | metric? |
| Vulnerability management | mean time to resolution |

## Engaging the Customer

Note: maybe we use [this link as mvc1](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/devsecops/#discovery-questions) and then change the resource pages to the suggested format?

| Questions to Better Understand the Customer’s needs  | Discovery questions  |
| ------------- |-------------| 
| current state    | 1. Are you wanting to shift security left? How is that going?<br>2. What security tools are you using today?<br>3. Are you confident you can secure containers and Kubernetes?|
| future state    | 1. What if you could simplify your shift-left efforts?<br>2. What challenges do you have with your existing tools and can you predict their cost 2 yrs out?<br>3. Would you like to better protect containers and K8s? |
| Required capabilities   | 1. Could security integrated into CI help you get there?<br>2. What if you had one, known cost that enabled ALL your security scans, with results to the developer in their CI pipeline, along with vulnerability management for the security pro? What if you could either eliminate some existing security tools or reduce their use/cost?<br>3. What if you could scan containers and monitor their host and their traffic within K8s clusters? |

Note: if they say they do NOT want to shift left and empower developers to find and fix security flaws, you are probably speaking with a security analyst. Talk to his/her boss, DevOps, or application dev/engineering team.


## Positioning Value 

### Elevator pitch 

> GitLab Ultimate is ideal for projects with executive visibility and strategic organizational usage. Ultimate enables IT transformation by optimizing and accelerating delivery while managing priorities, security, risk, and compliance. A single tool DevOps teams need to find and fix vulnerabilities in application code, its environments, and to manage their risk from detection through remediation.

*Note: Everything you get in Premium as well as free guest users, 50,000 CI/CD minutes, a named TAM, and more…*

### How GitLab Does It

[How GitLab meets the market requirements for security](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/devsecops/#how-gitlab-meets-the-market-requirements) (link includes benefits, videos, and more.)

### How GitLab Does It Better 

With GitLab Ultimate, organizations are able to truly shift security left (and right!) to reduce exposure and align security with dev. Emergent advantages include unparalleled visibility and insights and much easier traceability with consistent compliance to policies or regulatory requirements for cleaner, easier audits. 

**[Key GitLab differentiators](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/devsecops/#top-differentiators)** include:

1. Detailed and Actionable Scan Results Displayed in MRs created from Feature Branch
1. Block MRs based on Security Policy
1. Compliance Management
1. Fuzz testing, including API testing
1. Offline environments
1. Vulnerability management (vs point solutions)

*see provided link for additional details including value and videos*

**[Proof points](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/devsecops/#proof-points---customers)**


## Objection handling


**Most common objections**

| Objection  | Response    |
| ------------- |:-------------:| 
| How does your scanning capability compare to leading scanners? How accurate are they?    | [accuracy slide](https://docs.google.com/presentation/d/1mLnmgQ5hqTzcwk3Vjh0BEIdx9SYgORV-2g7zPKmFKFc/edit#slide=id.g9e2080204d_0_1084), [G2 SAST](https://www.g2.com/categories/static-application-security-testing-sast#grid) |
| Can you integrate with my  incumbent scanner? | We can [work with other scanners](https://docs.gitlab.com/ee/development/integrations/secure.html) or [replace them](https://docs.google.com/presentation/d/1mLnmgQ5hqTzcwk3Vjh0BEIdx9SYgORV-2g7zPKmFKFc/edit#slide=id.g9e2080204d_0_3374) |
| Ultimate is 5x.       | [Why Ultimate](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/devsecops/#ultimate)         |

Other objections and responses can be found in the [FAQ deck](https://docs.google.com/presentation/d/1mLnmgQ5hqTzcwk3Vjh0BEIdx9SYgORV-2g7zPKmFKFc/edit#slide=id.g2823c3f9ca_0_9) with more detail on [Potential objections](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/devsecops/#potential-objections) here.

## Services

GitLab (or a GitLab partner) offers the below services to help accelerate time to value and mitigate risk:
* TBD
* TBD

## Additional Resources 

* [SKO Expanding to Ultimate slide deck](https://docs.google.com/presentation/d/1oq7ODy9TJpuZqH_tvVtCm2t-C0QkTbuG4ZRlRzRNcUY/edit#slide=id.gb4749ff26b_0_85)
* [Why GitLab Ultimate slide deck](https://docs.google.com/presentation/d/1TP5cXH5Nr0VkH7mE6M_-DFXT_Jnq7o5LPxuMUz2paI4/edit?usp=sharing)
* [Selling DevSecOps resource page](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/devsecops/#ultimate)
*  Selling security (need link) see John Blevin's online classroom material
*  New Gartner MQ for Plan (need link)
*  *Gartner MQ for AST expected in May 2021*


# Sales Play Tactics {#sales-play-tactics}

## Sales prescriptive actions to initiate engagement with target audience (outbound)

1. Sales review list of their respective accounts
1. Outreach to customer - how?
1. (specific way to track in SFDC?)


## Related Marketing Campaign

Marketing is running a related demand gen campaign to drive leads to you using the account list above and this [Message house](/handbook/marketing/plan-fy22/gtm-cicd/premium-to-ultimate-planner/fy22-gtm-premium-to-ultimate-playbook/message-house).

**Marketing will be sending these emails to generate leads:**
1. Email #1 (link) Are you getting the most out of GitLab?
   CTA: Talk to your rep about what you’d like to achieve.  
1. Email #2 (link) GitLab Ultimate can take your app sec to a new level
   CTA: Ask your rep for a deep dive on any of these topics.  
1. Email #3 (link) GitLab for Security and Compliance - Let’s do the math together
   CTA: Use this template(link) and talk to your rep about how GL can help you with more predictable costs.

## Actions for sales to take

Note TBD: When sales gets the lead, will it show from which email it came? If so, sales will want to align the meeting purpose to the CTA from which the lead came. If sales will not see from which email the lead came, they can choose where in this flow is most appropriate to begin.

1. **Initial qualification meeting 1** - use the [value discovery](#value-discovery) section above to assess business objectives. Use these recommended assets based upon areas of most interest:
   * Cost and/or complexity⇒ use ROI template (link) discussion   
   * vulnerabilities/risk ⇒  security deck (link) as preface to next mtg  
   * compliance/software supply chain security ⇒ compliance deep dive deck (TBD as preface to next mtg (will have a [new webinar](https://gitlab.com/gitlab-com/marketing/account-based-strategy/account-based-marketing/-/issues/573) May 24  

**Milestones:** Identify key value driver, champion, and economic buyer, agree to second meeting  

**Metric:** Sales Accepted Opp

2. **Meeting 2** - purpose is to understand customer’s interest in one or more of the topics of interest and provide a deep dive on:
   * Vulnerability mgmt (deck and PM/PMM to engage)
   * Container security (deck and PM/PMM to engage)
   * Policy management (deck and PM/PMM to engage)
   * Auditing and Compliance reporting (deck and PM/PMM to engage)
   * Security of software supply chain (deck and PM/PMM to engage)  

**Milestones:** Identify key value driver, champion, and economic buyer, agree to meeting with economic buyer  

**Metric:** Sales stage x

3. **Meeting 3** - purpose is to use the provided template and assess opportunity and show how GL Secure compares for more predictable costs.
   * Share CISO deck and review more detailed ROI (if needed)
   * Identify key value driver, champion, and economic buyer
   * Ask for POV to prove value unique to this customer

**Milestones:** agree to next meeting  

**Metric:** Sales stage x 


## Resources to use 

Will have specific resources under actions above. This is for additional resources.

* [Security pitch deck for shift left](https://docs.google.com/presentation/d/1iH7DbyDMX9kvTWUz2rh0Da9xPTHqZdNfGY70DfiAMPY/edit?usp=sharing) 
* [Security CISO deck](https://docs.google.com/presentation/d/1toM1YIkIjLAmXMPPT3XCS-tryA8pKef6wnGe-DDp148/edit?usp=sharing) (includes ROI framework slide)
* [GitLab Ultimate specific features and value handbook page](https://about.gitlab.com/pricing/ultimate/#ultimate-specific-features)

## How to measure progress

**Milestones** (identified by sales stages and/or SDLC fields)
- [ ] Gameplan with GitLab champion (Medpic)
- [ ] Meeting with Security team or other economic buyer
- [ ] Agreement to do POV
- [ ] POV requirements defined
- [ ] Successful POV
- [ ] Proposal 


**Metrics:** 
- [ ] Avg days per stage to progress
- [ ] Longest step (common blockage?)
- [ ] Economic buyer titles - common factor?
- [ ] Retro on sales play


Note: progress of the GTM Motion will be measured at the campaign level with clicks/opens/page visits, SAO (is there a code sales needs to use in SFDC?)



