---
layout: handbook-page-toc
title: "Data Protection Impact Assessment (DPIA) Policy"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Purpose 

GitLab is fully committed to protecting the personal data of its customers, employees, suppliers and other stakeholders in accordance with the requirements of the General Data Protection Regulation (GDPR). We take the privacy of personal data very seriously and have initiated a variety of methods and controls to ensure we know what data we collect and hold and that we protect that data appropriately. 

As part of this commitment, GitLab ensures that, where appropriate, projects and personal data processing activities are subject to a Data Protection Impact Assessment (DPIA) as a key component of a ‘Privacy by Design’ approach. The purpose of this assessment is to ensure that our use of personal data is fully understood, that risks to the rights and freedoms of individuals resulting from the processing of personal data are carefully examined and that all appropriate measures are put in place to protect these rights throughout the lifecycle of the processing. 

DPIAs, in conjunction with the associated forms and guidance, should be used to ensure that our obligations and policies in this area are met. 

# Scope

This policy applies to all of GitLab's customers, employees, suppliers and other stakeholders personal data in accordance with the requirements of the General Data Protectoin Regulation (GDPR). 

# Roles & Responsibilities:

| Role  | Responsibility | 
|-----------|-----------|
| Privacy Team | Responsible for implementing and executing this procedure | 
| Security Management (Code Owners) | Responsible for approving significant changes and exceptions to this procedure |

# Procedure

## Others Responsibilities

* GitLab is a ‘data controller’ and is ultimately responsible for compliance with current data protection legislation. GitLab will take the appropriate measures to ensure privacy by design and to protect the data subject’s rights under the legislation. 
* Information Users. All members of GitLab are responsible for complying with all relevant data protection legislation and this policy. Where a concern about a data asset is identified this should be raised with the Data Protection Officer and Privacy Officer to enable an assessment to take place.

### Product Managers/Admins

Any project that involves processing of personal data requires a DPIA assessment. Where a Project Manager is unknown, undefined or unable to complete a DPIA, the highest admin level individual for the respective application needs to complete the documentation.  Ultimately, the highest level admin has responsibility and accountability for ensuring submission and completion of the DPIA assessment.  Any admin on the respective technology should sign off on the DPIA to signify understanding and accountability for the risks in the particular technology.  Product Managers/Admins should ensure that the DPO and Privacy Officer are consulted, in a timely manner, in all issues relating to the protection of personal data. 

### Researchers

Researchers should ensure that a data management plan that incorporates a DPIA is completed for any project that involves processing of personal data. Where additional advice is required they should contact the Legal and Compliance in the first instance who will liaise with the DPO and Privacy Officer, as required.  

### Data Protection Office (DPO) and Privacy Office

The [Data Protection Office](https://about.gitlab.com/privacy/#data-protection) and the Privacy Office are responsible for ensuring their security measures implemented against DPIAs are compliant with this policy and relevant data protection legislation. They will be involved in the DPIA process.  

In accordance with GDPR, GitLab has appointed Data Protection Officers to carry out the DPO role as defined in the legislation. The DPO and Privacy Officer assist GitLab by informing and advising on data protection obligations and providing advice regarding DPIAs. 

DPOs can delegate DPIA assessments to Security Compliance Analysts where appropriate.

### What is a DPIA?

A Data Protection Impact Assessment or DPIA is a way to systematically and comprehensively analyse processing and help identify and minimise data protection risks. DPIAs should consider compliance risks, but also broader risks to the rights and freedoms of individuals, including the potential for any significant social or economic disadvantage. The focus is on the potential for harm - to individuals or to society at large, whether it is physical, material or non-material. 

To assess the level of risk, a DPIA must consider both the likelihood and the severity of any impact on individuals. A DPIA does not have to eradicate the risks altogether, but should help to minimise risks and assess whether or not remaining risks are justified. DPIAs are a legal requirement for processing that is likely to be high risk. But an effective DPIA can also bring broader compliance, financial and reputational benefits, helping you demonstrate accountability and building trust and engagement with individuals. 

### When do we need a DPIA?

A DPIA is a process to help identify and minimize the data protection risks of a project, system or application. There are a number of criteria that determine when a DPIA should be carried out within GitLab. 

A DPIA must be done before beginning any type of processing which is “likely to result in a high risk”. This means that although the actual level of risk has not been assessed, screening for factors that point to the potential for a widespread or serious impact on individuals must take place. 

The GDPR requires a DPIA if we plan to:

- use systematic and extensive profiling with significant effects
- process special category or criminal offence data on a large scale
- or systematically monitor publicly accessible places on a large scale

The ICO also requires a DPIA if we plan to: 

- use new technologies; use profiling or special category data to decide on access to services;  
- profile individuals on a large scale; process biometric data  
- process genetic data; match data or combine datasets from different sources 
- collect personal data from a source other than the individual without providing them with a privacy notice (‘invisible processing’)
- track individuals’ location or behaviour
- profile children or target marketing or online services at them
- process data that might endanger the individual’s physical health or safety in the event of a security breach

GitLab requires a Privacy Review for all projects where one or more of the following applies: 

- involves the collection of new information about individuals
- using information about individuals for a purpose it is not currently used for, or in a way it is not currently used 
- involves you using new technology that might be perceived as being privacy intrusive
- may result in you making decisions, or taking action against individuals in ways that can have a significant impact on them
- involves information about individuals of a kind particularly likely to raise privacy concerns or expectations
- require you to contact individuals in ways that they may find intrusive

You are required to have this work signed off by the Data Protection Officer and Privacy Officer. If there is uncertainty regarding whether it is appropriate to carry out a Privacy Review for a specific project, by default the project team should err on the side of caution and ensure that one is performed. The Data Protection Officer and/or Privacy Officer may be consulted for clarification and further guidance may have been issued by the ICO, in which case this should be consulted also. 

GitLab requires a Privacy Review to be completed or reviewed when a significant change is made to the way personal data is processed, such as a significant system upgrade. 

The DPO or Privacy Officer may require a DPIA following a security incident or breach, where a concern has been raised or where risks have been identified that require appropriate management. 

### At what point do we begin a DPIA?

A Privacy Review should be started in the early stages of a project, before any processing has started and before a system has been identified. It should run alongside the planning and development process. The Privacy Review will inform whether a full DPIA is necessary. A full DPIA will then identify controls to mitigate risks which should then be included in the requirements of a potential system. It may be useful at this point to have this reviewed by the DPO and/or IT Security for advice with both technical and non-technical requirements. 

By starting a DPIA at the early stages risks and required controls to ensure legal compliance and security can be developed from the outset,ensuring that privacy is developed by design. If a DPIA is left until late in a project there may be additional controls or manual workarounds needed to ensure compliance which can have substantial costs associated. A DPIA can also help with data minimisation, identifying information that may not be required and therefore minimising of cost of controls that may not be required. 

The DPIA should be maintained throughout the project, be regularly reviewed and updated as the work progresses to ensure new risks are included as soon as they are identified and controls are developed. Before the project goes live the DPIA should have a review by the DPO and Head of IT Security to ensure risks are managed to an appropriate level. 

Where a project has high risks, the DPIA may require Legal approval and the project manager should consult the DPO for further advice. In the event that the results of the DPIA indicate a high level of risk that cannot be mitigated, the GDPR requires that the ICO is consulted before any processing takes place. The project manager should consult the DPO for advice and to facilitate this process. The ICO has eight weeks (extendable by a further six weeks) to provide a judgement on the proposed processing and, if appropriate, give details of what must be done to make the processing acceptable under the GDPR, or ban the processing altogether.

### How do we carry out a DPIA?

The DPIA is a process to help you identify and minimize the data protection risks of a project. The DPO must be included in the process and can provide appropriate advice. The process is designed to be flexible and scalable.

### Privacy Review

The Privacy Review typically begins as part of a Procurement issue. After reviewing your answers to some initial questions, the Privacy team with advise whether a new Privacy Review issue needs to be opened.

All applications are required to have a Privacy Reviews although a DPIA may not be required in every instance (such as where no personal or sensitive data is involved). 

Privacy Reviews should be treated as living documents and recorded in the [Legal and Compliance project](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues). The reviews should be evaluated on a regular basis to ensure that they remain current and the applied controls valid. The relevant risk assessments will also be reviewed upon major changes to the business such as introduction of new or changed IT services. Any significant changes may need to be readdressed to the Data Protection Officer. 

#### The DPIA must:  

- describe the nature, scope, context and purposes of the processing 
- assess necessity, proportionality and compliance measures
- identify and assess risks to individuals
- identify any additional measures to mitigate those risks

Risks are identified, assessed, and managed according to GitLab's [security risk management](/handbook/engineering/security/#risk-assessments) process.

#### Vendor DPIA Process:

1. **Procurement Privacy Screening** - In your Procurement Issue, follow the steps as outlined, answering screening questions, tagging Privacy when warranted, and/or creating a Privacy Review issue. This process will vary based on the type of procurement you are seeking, so following the Procurement template instructions is the best way to ensure you are completing necessary steps.

2. **Privacy Review** - If your procurement required you to create a new Privacy Review issue, the Privacy team will review the tool and work with you to get complete answers to relevant questions. The Privacy Officer will then determine whether a full DPIA is necessary.

3. **DPIA** (when necessary) - If a full DPIA is necessary, the Privacy Team will create the DPIA issue and draft, and bring in necessary contributors.

4. **Implementation of Mitigations** - After the DPIA has been completed, you will need to acknowledge the mitigations required and commit to implementing these. Upon your confirmation of understanding, you may close the issue.

For further information on how the GitLab assesses and manages risk, please see [guidance available](/handbook/legal/privacy/#data-protection-impact-assessments-dpias) (you may also contact the GitLab Risk & Compliance Officer).

Once the risk plan has been approved, the necessary controls should be completed as part of the project. In the event that any required security actions are delayed or cannot be completed, the implications of this to the protection of the personal data involved must be assessed by management and a decision taken about what to do next. If the untreated risk is sufficiently serious, this may have a significant impact on the viability of the project from a compliance viewpoint and advice should be sought from the DPO and Privacy Officer. The process of DPIA is fundamental to the implementation of a successful project that handles personal data and is a significant part of the GDPR legislation. Only by fully understanding the risks to the data subject with regard to our processing of personal data can we hope to ensure that the controls we have in place are sufficient to provide an appropriate level of protection and meet the high standard expected of us. By following this process, GitLab will move toward ensuring that the risks that it faces in the day to day operation of its business are effectively managed and controlled. 

# Exceptions

Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](/handbook/engineering/security/#information-security-policy-exception-management-process).

# References

- Parent Policy: [Information Security Policy](/handbook/engineering/security/)
- [GitLab Privacy](https://about.gitlab.com/handbook/legal/privacy/#data-protection-impact-assessments-dpias)
