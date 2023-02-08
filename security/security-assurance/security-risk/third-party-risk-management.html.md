---
layout: handbook-page-toc
title: "Security Third Party Risk Management"
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

## Purpose 

GitLab's Security Third Party Risk Management (TPRM) Program helps guard against security threats posed by third parties who have direct or indirect access to GitLab and/or Customer/Client data. Risks include data breaches, unauthorized use or disclosure, and corruption or loss of data. Adequate TPRM is a best practice that helps [mitigate security concerns](https://about.gitlab.com/handbook/leadership/mitigating-concerns/#security-breach) and enables GitLab to meet our contractual obligations. TPRM also enables GitLab to meet regulatory requirements and standards related to ISO, SOX, GDPR and other state and federal laws requiring vendor oversight.

GitLab's Security TPRM program involves three components which are integrated in to our [Procurement](https://about.gitlab.com/handbook/finance/procurement/) processes: 
1. Performing due diligence to ensure the third party implements safeguards to enforce data privacy and security.
    - This activity is performed via our Security Assessment Process. 
1. Contractually obligating the third party to implement these safeguards. 
1. Monitoring third party safeguards and compliance with these contracted provisions.
    - Certain high risk Third Parties are reviewed annually while those posing lower risk are reviewed at the time of contract renewal unless the contract renewal occurs within 12 months of that vendors most recent review.

## Scope

This procedure applies to all third party providers that access, store, process or transmit GitLab data. 

## Roles & Responsibilities

| Role | Responsibility |
| ------ | ------ |
| Security Risk Team | * Maintain a mechanism to intake and respond to TPRM Activities <br><br>* Assess Third Party inherent and residual security risk <br><br>* Inform business owners of the result of TPRM assessments |
| Business or System Owner | * Describe the nature of the Third Party Relationship <br><br>* Work with the Security Risk team to facilitate the TPRM review, to include remediation activities <br><br>* Ensure the responsiveness of the thrid party as part of the security review requirements |
| Security Assurance Management (Code Owners) | Responsible for approving significant changes and exceptions to this procedure | 

## Third Party Minimum Security Standards
TPRM utilizes a risk-based approach when assessing third parties. Specific procedures used to assess different vendor types / risk profiles can be found below.

Additionally, effective FY23 Q3, all third party applications that house GitLab data are required to [authenticate via Okta inline with GitLab's approach to centralized authentication and authorization](https://about.gitlab.com/handbook/business-technology/okta/#what-is-okta). Risk acceptances will be required in all cases where Okta is not supported regardless of security status. 

## Procedure
The diagram below depicts TPRM procedures dependent upon the [Data Classification](https://about.gitlab.com/handbook/security/data-classification-standard.html) of data shared with the third party.

```mermaid

graph TB
    %% Define all required nodes
            e1[" "]:::empty %% Empty node for padding.
        %% Procurement Intake Channels
            ProcIntake[Purchase Request Created]
            e2[" "]:::empty %% Empty node for padding.

        %% Determining Data Class
            zgOneTrust[Certs in OneTrust Exchange?]
        zgClass{Data Classification}
                    zgGreen[Green]:::Green
                    zgYellow[Yellow]:::Yellow
                    zgOR[Orange]:::Orange
                    zgRed[Red]:::Red

        %% Data Classification Specific Procedures
            %% Green
                zgGApprov[Security Approves]:::Green

            %% Yellow
                zgYApprov[Security Approves]:::Green

            %% Orange
                zgFM{Field Marketing Event?}
                    zgFMY[Yes]
                    zgFMN[No]
                    zgAssess{Third Party Security Assessment Begins}
                        zgQuest[Security Questionnaire Sent]
                        zgTPResponse[Third Party Responds]
                        zgReview[Security Reviews]
                        zgMeets{Response Satisfies GitLab Standards?}
                            zgMeetsNo[No]
                            zgMeetsYes[Yes]
                            zgFup[Follow-up Required]
                        zgIssues{Issues Identified}
                            zgIssueY{Yes}
                            zgIssueN[No]
                            zgAccept[Business Owner Accepts Risk]
                            zgStop[Business Owner Chooses Not to Work with Third Party]
                zgORApprov[Security Approves]:::Green
                zgFMApprov[Security Approves]:::Green

             %% Red

    %% Linking nodes together
        ProcIntake-->zgOneTrust
    zgOneTrust-->zgClass

        zgClass --> zgGreen
        zgClass --> zgYellow
        zgClass --> zgOR
    zgClass--> zgRed

        zgGreen --> zgGApprov
        zgYellow --> zgYApprov
        zgOR --> zgFM
            zgFM --> zgFMY --> zgFMApprov
            zgFM --> zgFMN --> zgAssess
    zgRed --> zgAssess

        zgAssess --> zgQuest --> zgTPResponse --> zgReview --> zgMeets
            zgMeets --> zgMeetsNo --> zgFup --> zgQuest
            zgMeets --> zgMeetsYes --> zgIssues
                zgIssues --> zgIssueY
                    zgIssueY --> zgAccept --> zgORApprov
                    zgIssueY --> zgStop
                zgIssues --> zgIssueN --> zgORApprov

    %% Clickable Nodes
         click zgOneTrust "https://gitlab.my.onetrust.com/cyber-risk/exchange" _blank
         click ProcIntake "https://about.gitlab.com/handbook/finance/procurement/professional-services" _blank

    %% Dedicated styling
      %%  classDef clickme fill:#6E49CB,stroke:#88DDFD,stroke-width:4px,color:#FFFFFF;
        classDef Green fill:#A3CC6C,stroke:#A3CC6C,color:#000000;
        classDef Yellow fill:#F9FF33,stroke:#F9FF33,color:#000000;
        classDef Red fill:#DB3B21,stroke:#DB3B21,color:#000000;
        classDef Orange fill:#FFA500,stroke:#FFA500,color:#000000;
        classDef empty opacity:0
```


### TPRM Assessment Requirements

The following table describes the procedures followed by TPRM engineers for vendors storing/processing different [classifications of GitLab data](https://about.gitlab.com/handbook/security/data-classification-standard.html). These procedures are initiated by the [Procurement](https://about.gitlab.com/handbook/finance/procurement/#--what-is-the-procurement-process-at-gitlab) process and are followed in all instances where vendors have not been reviewed in the past 12 months.

If a vendor has been reviewed and approved within 12 months of a new procurement request, GitLab TPRM Engineers must review the request to determine that no material changes have occured which may require a new assessment before approving. Material changes include:

1. Change in data classification (e.g., going from Yellow to Orange data classification)
1. New system from vendor not previously reviewed (e.g., we've reviewed Zuora for the purchase of it's Billing system, but a new request has come in for the purchase of it's Revenue system)
1. Change of location where data is stored or accessed from (e.g., moving data from GitLab-hosted app to vendor-hosted SaaS)
1. Added contractor from vendor not previously reviewed (e.g., we've reviewed Upwork and a freelancer from Upwork service to support Marketing, but a new request has come in for a new freelancer to support the People team)

GitLab TPRM Engineers reserve the right to perform additional procedures at their professional discretion.

| Data Classification | Request | Supplemental Questionnaire in Zen? | CUEC Mapping? | Okta SSO? | New BIA / Tech Stack Entry? | BitSight Score Review?| Evidence of PenTest and BCP Testing |
| ------ | ------ |------ |------ |------ |------ |------ |------ |
|Red*	|3rd Party Attest & SIG Lite Plus (or equiv)|	Yes|	No**|	If applicable|	Yes|	If applicable| Yes |
|Orange (SaaS System)|	3rd Party Attest & SIG Lite Plus (or equiv)|	Yes|	No**|	Yes|	Yes|	Yes| Yes |
|Orange	(non-SaaS)|3rd Party Attest or SIG Lite Plus (or equiv)	|No	|No|	-	|Yes	|-| No|
|Yellow/Green	|-|	-|	-|	-|	-|	-| No |

*Law Firms may have legal obligations requiring limited access to red data. As such, Law Firms will be treated as Orange vendors.<br>
**Orange SaaS SOX systems will have SOC 1 CUEC mappings facilitated by TPRM drafted and handed off to Internal Audit annually during Q1. If SOC 1s are not available SOC 2s will be mapped.

### Other Types of Third Party Assessments

#### Change Requests
Change requests relating to previously-approved requisitions in Coupa will be reviewed by the on-call Engineer to determine whether a material change is being requested to (1) the scope of services provided, (2) the data elements transmitted to the vendor, or (3) the timeframe of the services provided. If material changes occur as defined here or that are otherwise identified resulting in a change to data classification or movement outside of the 12-month approval window from the previous review, a security assessment should be launched according to the TPRM assessment requirements detailed above. Changes requested specific to the cost of services and that do not present a material change impacting Security can be approved based on inheritance of approval from the parent requisition. 

_For example: We performed a TPRM assessment for Vendor X which was completed on December 31, 2021, resulting in a 12 month coverage period lasting to December 31, 2022. A change request was created in January 2023 (outside of coverage period) related to overage charges for services provided during November 2022 (within coverage period). This example change request can be approved without a new TPRM assessment._

Engineers are advised to use professional judgment in determining the scope of changes and are encouraged to perform additional review prior to approving the Change Request if there is potential for introduction of additional risk. For other non-material adjustments not defined here that may not warrant additional review, Engineers should ping the Security Risk team or discuss with the Security Risk Manager prior to moving forward to ensure alignment with GitLab's due diligence requirements. Rationale should be documented when approving the Change Order in alignment with the low-risk approval language in the [TPRM README](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-risk-team/third-party-vendor-security-management/-/blob/master/Readme.md).

#### Independent Contractors
Independent Contractors requiring access to Orange or Red data in the provision of services must be vetted by Security prior to being granted system access. The below items are required prior to granting Security approval:
- Evidence of initiated background check, which will be monitored and adjudicated by the Sr. Background Check Specialist. 
    - This helps ensure that personnel with criminal backgrounds that may pose a threat to GitLab assets, customer relationships, and sensitive information are identified. 
    - _Note: Background check requirements are subject to change at the discretion of the People Operations team. Please refer to the background screening entry within the [People Policies handbook](https://about.gitlab.com/handbook/people-policies/#background-screenings) to ensure alignment with current requirements. If further guidance is needed, contact the Sr. Background Check Specialist at `backgroundchecks@gitlab.com`._
- GitLab Laptop Request Issue OR Assignment of VDI Environment Access
    - Controls related to the security of hardware utilized by personnel are an important piece in ensuring the security and privacy of GitLab data. In order for GitLab to maintain oversight over this critical function, contractors are required to be issued a GitLab laptop or access to a VDI (Virtual Desktop Interface) environment to be used for **all** work performed on GitLab's behalf.

#### Third Party Application Integrations

Third party integrations with GitLab's current [tech stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) are also subject to a TPRM assessment process for instances where an integration that is provided by a vendor has not gone through the [standard TPRM Procedure](#procedure). The Team Member Enablement team will not enable third party integrations prior to an assessment being completed as mentioned on the [App Integrations](/handbook/business-technology/team-member-enablement/app-integrations/) handbook page. 


#### Independent Assessments

Want to vet a third party before contract renewals hit Coupa? Would you like to obtain approval for software/services we may purchase at a later date? [Click here to open a new Third Party Risk Intake Request](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-risk-team/third-party-vendor-security-management/-/issues/new?issuable_template=TPRM%20Intake%20Request).

### TPRM Risk Acceptance Process

Risk acceptance can be pursued when the business acknowledges that potential loss from a risk is not great enough to warrant spending the resources necessary to avoid it. When Risk Acceptance is a viable option TPRM will fill out the [Risk Acceptance Issue template](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-risk-team/third-party-vendor-security-management/-/issues/new?issuable_template=TPRM%20Risk%20Acceptance%20Template) and assign it to the Business Owner. Note that business justification and [approvals](https://about.gitlab.com/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#accept-the-risk) are required.

There are two TPRM Risk Acceptance types:

1. When business needs dictate that the Security Assesment process is delayed or bypassed (Delay or Bypass TPRM Review)
2. When Observations are identified during a Security Assessment (Accepting Risk Associated to a Known Control Failure)

<details>
<summary markdown="span">1. Risk Acceptance by Type - Delay or Bypass TPRM Review</summary>

If business needs dictate that the Security Assessment process be delayed or bypassed, Security Risk will walk the Business Owner through the following Risk Acceptance Process:

The Business Owner will receive the following prompt:

 - Please navigate to #security-risk-management and initiate the TPRM Risk Acceptance workflow (Click on the blue "lightning bolt" in the bottom left corner of the message box and select TPRM Risk Acceptance).  

Once associated information is submitted, the Security Risk team will review this request.

Security Risk will create a Risk Object in ZenGRC that is mapped to the corresponding Vendor Security Review and Vendor Object for the Risk Acceptance, that will be followed up on towards the end of the Risk Acceptance Period. This Risk Acceptance will follow the acceptance requirements established by the [Security Operational Risk Management Methodology.](https://about.gitlab.com/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#accept-the-risk) 

</details> 


<details>
<summary markdown="span">2. Risk Acceptance by Type - Accepting Risk Associated to a Known Issue</summary>

If the TPRM Security Review concludes with the disclosure of a finding (Observation) due to ineffective control(s) this will be disclosed to the Business Owner. GitLab can then either ask the vendor to remediate prior to onboarding or the GitLab Business Owner can formally accept the associated risk.

Once a risk treatment plan is communicated, Security Risk will create an Issue Object within ZenGRC and assign the Business Owner as the Issue Owner. 

Formal risk acceptance's require approval based on the approval matrix established by the [Security Operational Risk Management Methodology](https://about.gitlab.com/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#accept-the-risk).  These vendors will be tracked on GitLab's risk register and flagged for review on an annual basis. The Business Owner owns this risk.

If moderate or low risk observations are noted during the review process the Business Owner will be informed via the TPRM report and will be responsible for making the decision to move forward with the vendor. These observations will be managed as per the [Observation Management Procedure](https://about.gitlab.com/handbook/security/security-assurance/observation-remediation-procedure.html).

</details>

Please refer to our [StORM Methodology Handbook](https://about.gitlab.com/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#accept-the-risk) for required approvals based on risk rating (High/Medium/Low) and responsibilities of Accepted Risk Owners and Risk Acceptance Approvers.

## Exceptions
Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](/handbook/security/#information-security-policy-exception-management-process).

## References
- Parent Policy: [Information Security Policy](/handbook/security/)
- [SCF Compliance Controls](/handbook/security/security-assurance/security-compliance/guidance/compliance.html)
- [Data Classification Standard](/handbook/security/data-classification-standard.html)
- [Current listing of controlled documents](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-governance/-/issues/42)
- [App Integrations (Team Member Enablement)](/handbook/business-technology/team-member-enablement/app-integrations/)
- [Observation Management Procedure](https://about.gitlab.com/handbook/security/security-assurance/observation-remediation-procedure.html)
- [STORM Methodology](https://about.gitlab.com/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#accept-the-risk) 
- [Professional Services](https://about.gitlab.com/handbook/finance/procurement/professional-services/#how-do-i-purchase-professional-services-andor-hire-a-contractor)
