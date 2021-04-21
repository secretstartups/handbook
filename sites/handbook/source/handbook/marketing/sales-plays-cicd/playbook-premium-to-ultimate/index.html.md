---
layout: markdown_page
title: "Sales Play: Upsell Premium to Ultimate"
description: "This page has all the information for the GTM-CICD sales play."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Note: Think of a sales play as a recipe. If you follow the recipe, we can achieve more predictable, consistent results. And if we find an asset or approach that works best (or flops), then we can tweak the recipe to continuously improve. **If you have improvements to suggest, please click edit at the bottom of this page** to open an MR and suggest your edits and discussion.

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
| current state    | 1. Are you wanting to shift security left? How is that going?<br>2. What security tools are you using today?<br>3. How are you currently securing containers and Kubernetes?|
| future state    | 1. What if you could simplify your shift-left efforts?<br>2. What challenges do you have with your existing tools and can you predict their cost 2 yrs out?<br>3. Would you like to better protect containers and K8s? |
| Required capabilities   | 1. Could security integrated into CI help you get there?<br>2. What if you had one, known cost that enabled ALL your security scans, with results to the developer in their CI pipeline, along with vulnerability management for the security pro? What if you could either eliminate some existing security tools or reduce their use/cost?<br>3. What if you could scan containers and monitor their host and their traffic within K8s clusters? |

Note: if they say they do NOT want to shift left and empower developers to find and fix security flaws, you are probably speaking with a security analyst. Talk to his/her boss, DevOps, or application dev/engineering team.


## Positioning Value

### Elevator pitch

> With GitLab Ultimate, organizations are able to truly shift security left (and right!) while keeping up with DevOps velocity. Empower developers to find and fix vulnerabilities earlier and security teams to manage risk from detection through remediation. With GitLab, the integration is done for them. No need to fit your security tools into the CI pipeline - it's already built-in! And for ONE predictable cost, even as you scale!

GitLab Ultimate enables IT transformation by optimizing and accelerating delivery while managing priorities, security, risk, and compliance. 

*Note: Everything you get in Premium plus all security scanners, vulnerability management, security and compliance dashboards, free guest users, 50,000 CI/CD minutes, a named TAM, and more…*

### How GitLab Does It

[How GitLab meets the market requirements for security](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/devsecops/#how-gitlab-meets-the-market-requirements) (link includes benefits, videos, and more.)

### How GitLab Does It Better

With GitLab Ultimate, organizations are able to truly shift security left (and right!) to find and fix vulnerabilities earlier while keeping up with DevOps velocity and new attack surfaces of cloud native apps. With GitLab, the integration is done for them. No need to fit your security tools into the CI pipeline - it's done! And for ONE predictable cost, even as you scale!

**For one cost, you can:**  
* Scan every code commit on every app (no more choosing because scans are too expensive)
* Use multiple scan types to find threats individual scanners might miss
* Manage all vulnerabilities found in one place with united collaboration between dev and sec
* Easily assess remediation progress
* Automate policies and focus on the exceptions not individual inspections.

Advantages of a single application for DevOps and Security together include unparalleled visibility and insights/traceability with consistent compliance to policies and regulatory requirements for cleaner, easier audits.

**[Key GitLab differentiators](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/devsecops/#top-differentiators)** include:

1. Detailed and Actionable Scan Results Displayed in MRs created from Feature Branch
   * Microsoft does this for SAST and Dependencies. Other scan types require integration and bring-your-own licenses.
   * Veracode, Fortify, Synopsis struggle to scan quickly within the CI pipeline and require DIY integration.
1. Block MRs based on Security Policy
   * Microsoft does this for SAST and Dependencies. Third party scans likely require customizing CI pipeline.  
1. Compliance Management
   * GitLab just launched [Compliance Pipeline Configurations](https://about.gitlab.com/releases/gitlab-com/#compliance-pipeline-configurations) where customers can enforce even more separation of duties by setting up a single pipeline definition for a specific compliance framework (PCI, HIPAA, or even a custom one). All projects using that framework will include the predefined pipeline automatically.
   * GitLab [Compliance Management](https://about.gitlab.com/solutions/compliance/) secures more than just the code but the software factory itself, a big concern after the [Solarwinds breach](https://docs.google.com/document/d/1sGyjW2oJVR86d05UKzZ8iCusBqp3IICC1549-R5Hx1o/edit).
   * GitLab [makes compliance easy](https://about.gitlab.com/blog/2020/07/02/compliance-made-easy/)
1. Fuzz testing, including API testing  
   * No one else integrates Fuzzing nor API testing into the CI pipeline.
   * Fuzzing can help find flaws not identified by a security CVE (signature of a known vulnerability)
   * Fuzzing is taking on new importance with cloud native apps and Infrastructure as Code  
1. Offline environments  
   * Especially important to regulated industries like government and Financial Services
   * Most scanners require punching out of the secured network for the latest security rules/updates. We can containerize these for running in a [disconnected environment](https://about.gitlab.com/blog/2020/10/01/offline-environments/).  
1. Vulnerability management (vs point solutions)  
   * Traditional app sec vendors (Veracode, Fortify, Synopsis) sell a Security Center to manage vulnerabilities found from each of their scanners (all sold separately!). GitLab not only comes with vulnerability management, but it's in the same tool that the developers use so nothing is lost in translation. In addition, you can easily pull in third party scan results into the CI pipeline (MR) to compare findings, somewhat similar to [ThreadFix](https://threadfix.it/). Is your customer paying for this or other tools to do this?

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

[General PS deck](https://docs.google.com/presentation/d/1CFR8_ZyE9r4Dk_mjoWGe4ZkhtBimSdN0pylIPu-NAeU/edit#slide=id.g2823c3f9ca_0_9)

GitLab (or a GitLab partner) offers the below services to help accelerate time to value and mitigate risk:
* TBD
* TBD


# Sales Play Tactics {#sales-play-tactics}

These are Sales prescriptive actions to initiate engagement with target audience for Premium to Ultimate upgrade of existing GitLab CI users. **Strategy and actions differ by market segment** with SMB relying on marketing to drive inbound contacts initiated by the customer and ENT/MM primarily using the play to guide conversations initiated by sales.

#### Enterprise and Mid-market Accounts

**Strategy**

Enterprise accounts will **not** be included in the email campaign driving customers to 'contact sales'. This allows the SALs greater control over who is contacted in their accounts, and the contacts can be more personal. Sales will do active outreach to customers to engage them in conversation using the recommended email templates and conversation flow below, modifying as needed. Enterprise customers may be included in broader 'air cover' awareness campaigns TBD after initial launch of this play. Sales action is the key driver for this segment.

**ENT and MM Sales Actions**

1. Review the target list and prioritize contacts.
1. Familiarize yourself with context for this play (above), especially differentiators and objections
1. Familiarize yourself with the [recommended email sequence](#recommended-email-sequence-email-templates) and next steps (below).
1. Please use the [three email templates](#recommended-email-sequence-email-templates) below to reach out to leads.
1. We have provided a recommended sequence, but choose any email to start with based upon current conversations.  
1. We recommend you send your next email 7-10 days later to move them through the buyer's journey. The material is intended to move their thinking along even if they don't call you to discuss each one. 
1. Emails can be copied and pasted as-is into Gmail. 
1. **Do not edit the hyperlinks in the email templates.** Each one is linked to a Pathfactory track with recommended content.
1. Each email includes a second CTA for the recipient to reach out to their rep.
1. See which contacts have responded by checking your gmail inbox for emails alerts (Example email alerts: [Contact request](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/1120#white_check_mark-lead-alert) | [Email offer engagement](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/1135#sample-alert-email))
1. Conduct meeting suggested below (1, 2, or 3) for the corresponding email to which they responded.
1. Update sales stage in SFDC.
1. Determine the cadence for progressing to the next step based upon their initial meeting. We recommend sending the next email in the sequence after 7-10 days. (**Please use the templates's tracking links!**) You can modify the templates to fit your unique conversations as needed.  
1. Repeat with next recommended email until you get to a POV or sale.


#### Small Business Accounts

**Strategy**

For SMB customers, we will rely on inbound responses to the marketing-generated 'contact sales' emails in the recommended email sequence. Marketing is the key driver for this segment to get to an initial meeting, then sales will use actions below for follow up with interested prospect.

**SMB Sales Actions**

1. Sales review list of target accounts/contacts (link to list)
1. Notify marketing by Friday, 2021-04-23 individual contacts that need to be excluded from the marketing generated emails below by filling out columns A & B on [this final target list](url). The default approach should be to include as many accounts and customers as possible, excluding only where such communication would be disruptive to existing deals.
1. Familiarize yourself with context for this play (above), especially differentiators and objections
1. Familiarize yourself with the email sequence and next steps (below).
1. See which contacts have responded by checking your gmail inbox for emails alerts (Example email alerts: [Contact request](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/1120#white_check_mark-lead-alert) | [Email offer engagement](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/1135#sample-alert-email))
1. Conduct meeting suggested below (1, 2, or 3) for the corresponding email to which they responded.
1. Update sales stage in SFDC.
1. Note: once they ask for an initial meeting from any email they will be pulled out of subsequent automated emails. (If they respond to email 1, they will not receive emails 2 and 3 from marketing.) It will be up to sales to determine the cadence for progressing to the next step based upon their initial meeting. We recommend sending the next email in the sequence. **Please use the templates** as they provide tracking links so you can see what was opened and clicked (and marketing can see what is getting used). You can modify the templates in Gmail to fit your unique conversations as needed.
1. Repeat with next recommended email until you get to a POV or sale.


### Recommended email sequence and email templates {#recommended-email-sequence-email-templates}

This sequence of recommended emails is intended to move the prospect from interest to POV. Note:  
* Marketing will be sending these emails to SMB targets generate leads. The first will go out starting April 27th and subsequent emails will follow every 7 days.
* MM and ENT Sales will choose the best email to start with based upon current conversations. Then use the template to send it to the contacts provided and any additional, to generate leads. We recommend you send the next email in the sequence 7-10 days later to move them through the buyer's journey. The material is intended to move their thinking along even if they don't call you to discuss each one. **Please use the templates provided in the links below**. They have embedded links so you will see what they open and click thru (and marketing will see what's getting used most).


1. [Email template 1](https://docs.google.com/document/d/1uqRa9VUqFP0GVvuiqMOczjJOo8-OAd9d2q7pa04Orow/edit?usp=sharing){:target="_blank"} 
   
   Subject: **Interested in speed and security?**

   Offer 1: [From DevOps to DevSecOps: Automate your security tests with CI](https://learn.gitlab.com/c/security-tests-ci?x=6e4ppk&utm_medium=email&utm_source=gmail&utm_campaign=premtoultimatesp&utm_content=devopstodevsecopswc)    
       

1. [Email template 2](https://docs.google.com/document/d/1uqRa9VUqFP0GVvuiqMOczjJOo8-OAd9d2q7pa04Orow/edit?usp=sharing){:target="_blank"}

   Subject: **Learn how to deploy to production 6x faster**

   Offer 2: [How Chorus uses GitLab to power its development](hhttps://learn.gitlab.com/c/chorus-gitlab?x=h7zzhf&utm_medium=email&utm_source=gmail&utm_campaign=premtoultimatesp&utm_content=choruscasestudy)

1. [Email template 3](https://docs.google.com/document/d/1uqRa9VUqFP0GVvuiqMOczjJOo8-OAd9d2q7pa04Orow/edit?usp=sharing){:target="_blank"} 

   Subject: **No more afterthought security**  
   
   Offer 3: [Tired of afterthought security? Take a fresh look at GitLab Ultimate](https://learn.gitlab.com/c/security-features-in?x=6e4ppk&utm_medium=email&utm_source=gmail&utm_campaign=premtoultimatesp&utm_content=afterthoughtsecblog)  

## Next Steps

### Meetings to get to a POV agreement

If your customer engages with emails (sent either from marketing or from yourself), the lead will come to you via email and will it show what asset they clicked on and if they clicked the 'contact us' button. Based upon this insight, and any conversations you may have had, you will want to choose where in this progression is most appropriate to begin.

The following sequence is recommended to progress the customer from awareness and interest in GitLab security capabilities to consideration, proof of value, and ultimate purchase (pun intended)

1. **Meeting 1** - **assess business objectives**  

Use [Value Discovery](#value-discovery) above along with these recommended assets to determine their business priorities, existing security tools, chief pain points:  
   * [Security and Compliance Overview](https://docs.google.com/presentation/d/1WHTyUDOMuSVK9uK7hhSIQ_JbeUbo7k5AW3D6WwBReOg/edit#slide=id.g9d701d7d89_8_1931) (focus on [desired outcomes](https://docs.google.com/presentation/d/1WHTyUDOMuSVK9uK7hhSIQ_JbeUbo7k5AW3D6WwBReOg/edit#slide=id.g9d701d7d89_8_1990) slide)
   * [Manage Compliance with GitLab](https://youtu.be/QV2dIocn-hk)   
   * Securing your software supply chain (assets coming soon).  

**Ask 4 questions:**
1. Wanting to shift left? (If no, talk to the Dev or DevOps team instead of security)
1. What tool currently in use and/or consideration? (for each: SAST, DAST, Dependencies, License Compliance, Container scanning). Is this a Microsoft shop? Enter into SFDC (please, it's super helpful).
1. Using containers and/or Kubernetes? If yes, are you scanning containers? Helm charts? Testing APIs?
1. Which [desired outcomes](https://docs.google.com/presentation/d/1WHTyUDOMuSVK9uK7hhSIQ_JbeUbo7k5AW3D6WwBReOg/edit#slide=id.g9d701d7d89_8_1990) do they most relate to: efficiency, consistency, risk, predictable costs?  

**Milestones:** Identify key value driver, champion, and economic buyer, agree to second meeting  

**Metric:** Opportunity stage 0 - pending acceptance or stage 1 - Sales Accepted Opp or no opportunity

1. **Meeting 2** - **security topics of interest**

Based on their business objectives, assess interest in learning more on theses topics then schedule deep dive with your SA. (@cblake and the #s_secure slack channel can help with any questions you may have.) Identify key value driver, champion, and economic buyer.

* **If Priority = speed and efficiency** then use: 
   * [Simplifying DevSecOps](https://docs.google.com/presentation/d/1qdUgIZAh3Xdcu7yK8borN77hWiQLvMwkBhepeD1hVuY/edit?usp=sharing)  
   * [Shift security left](https://docs.google.com/presentation/d/1iH7DbyDMX9kvTWUz2rh0Da9xPTHqZdNfGY70DfiAMPY/edit?usp=sharing)
   * [HackerOne case study](https://about.gitlab.com/customers/hackerone/)  
* **If Priority = consistency/compliance** then use:    
   * [Auditing and Compliance reporting](link), Sam Kerr, PM.   
   * Security of software supply chain (deck coming soon), Cindy Blake, PMM    
* **If Priority = predictable cost to scale** then ask for ROI discussion - see meeting 3   
* **If Priority = vulnerabilities/risk** then use:     
   * For the security pro: [Accelerate AppSec Efficiency with the GitLab Security Dashboard](https://youtu.be/p3qt2z1rQk8)  
   * For the developer: [Shift security left](https://docs.google.com/presentation/d/1iH7DbyDMX9kvTWUz2rh0Da9xPTHqZdNfGY70DfiAMPY/edit?usp=sharing)    
   * For securing modern apps via containers: [Container security blog](https://about.gitlab.com/blog/2020/10/23/container-network-security-is-important/), Sam White, PM  

**Milestones:** Identify key value driver, champion, and economic buyer, agree to meeting with economic buyer

**Metric:** Opportunity Stage 1 - Discovery

1. **Meeting 3** - purpose is to use the provided template and assess opportunity and show how GL Secure compares for more predictable costs. DO NOT lose site of the fact that our greatest differentiator is our all-in-one approach that provides all type sof security scans integrated into a united UI for both dev and sec. **Be sure to include the value of this benefit along with tool costs.**  
   * [Security CISO deck](https://docs.google.com/presentation/d/1toM1YIkIjLAmXMPPT3XCS-tryA8pKef6wnGe-DDp148/edit?usp=sharing) (includes ROI framework slide)  
   * **IF** a more detailed ROI is if needed, consider one from [Darwin Sanoy[(https://docs.google.com/spreadsheets/d/1wVghmLv3E_IKs7rz-quc6jtjZW0p-u3h4iSaDqmm1Nc/edit?usp=sharing) or from [Cherry Han](link). Please provide feedback to help us tune these models in [this issue](link).   
   * Ask for POV to prove value unique to this customer. 
   * Move to POV agreement steps.

**Milestones:** agree to next meeting  

**Metric:** Opporunity Stage 2 - Scoping or Stage 3 - Technical Evaluation  


### POV agreement

1. Define POV requirements like this (link to David Astor's SKO preso or Cherry Han's package)
1. Execute POV. Move requirements met to complete on issue board. Orchestrate collaboration with PMs for any unmet needs. Use #s_secure slack channel or capabiities page to identify the right PM to engage on the POV issues. Get customer to engage with PMs on the issues.
1. Measure success of POV
1. Propose solution/Ask for order and for reference

## Additional Resources to use

Will have specific resources under actions above. This is for additional resources.

* [GitLab Ultimate specific features and value handbook page](https://about.gitlab.com/pricing/ultimate/#ultimate-specific-features)
* [SKO Expanding to Ultimate slide deck](https://docs.google.com/presentation/d/1oq7ODy9TJpuZqH_tvVtCm2t-C0QkTbuG4ZRlRzRNcUY/edit#slide=id.gb4749ff26b_0_85)
* [Why GitLab Ultimate slide deck](https://docs.google.com/presentation/d/1TP5cXH5Nr0VkH7mE6M_-DFXT_Jnq7o5LPxuMUz2paI4/edit?usp=sharing)
* [Selling DevSecOps resource page](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/devsecops/#ultimate)
*  Selling security (need link) see John Blevin's online classroom material
*  New Gartner MQ for Plan (Expected in May)
*  Gartner MQ for AST (expected in May 2021)


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

## Related Marketing Campaign

Marketing is running a related demand gen campaign.  

* Initial launch will include the email campaign outlined above for SMB to drive leads using the [Message house](/handbook/marketing/sales-plays-cicd/message-house-premium-to-ultimate).
* A LinkedIn campaign will help surface new contacts for accounts where we have none/few.
* An 'air cover' campaign will raise awareness of GitLab's Ultimate capabilities. It will likely include Security (first) and Planning capabilities (next).
