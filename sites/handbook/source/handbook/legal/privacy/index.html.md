---
layout: handbook-page-toc
title: "GitLab Privacy"
description: "This page helps GitLab Team Members understand the privacy practices at GitLab and to facilitate a culture that respects and prioritizes the privacy of our Team Members and users"
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
  {:toc .hidden-md .hidden-lg}

Much of the conversation about privacy references the GDPR, but this is only part of GitLab's dedication to user and team member privacy. The GDPR applies only to processing data of European Union subjects. However, GitLab treats all its users and team members the same, using the same standards for respecting privacy regardless of where the individual is located. This page is intended to help GitLab team members understand the privacy practices at GitLab and to facilitate a culture that respects and prioritizes the privacy of our team members and users.

## Privacy Training

Team members are required to to complete an annual training course covering general privacy practices worldwide. The goal of the course is to ensure team members understand how to handle personal data not only to ensure GitLab is compliant with legal and regulatory obligations but also to maintain the trust our customers have placed in us. The Slack channel #compliance-training is available for questions and concerns.

## Privacy Glossary

**Privacy by Design.** Privacy by Design is a concept predating the GDPR that focuses on intentionally designing a product that addresses privacy concerns of the individual. Under the GDPR ([Art. 25 GDPR](https://gdpr-info.eu/art-25-gdpr/)), data controllers have an obligation to consider appropriate technical and organizational measures when making product design decisions, such as determining the means of processing Personal Data. "Such measures could consist, inter alia, of minimising the processing of personal data, pseudonymising personal data as soon as possible, transparency with regard to the functions and processing of personal data, enabling the data subject to monitor the data processing, enabling the controller to create and improve security features." ([GDPR Recital 78](https://gdpr-info.eu/recitals/no-78/))

**Privacy by Default.** Similar to Privacy by Design, Privacy by Default is an important concept to keep in mind during product development. This GDPR requirement of means that a user's privacy settings should prioritize privacy when left in the default setting. In other words, users should not have to customize settings in order to secure their privacy.

> The extent to which humans can enjoy their fundamental rights depends not only on legal frameworks and social norms, but also on the features of the technology at their disposal. - European Data Protection Supervisor, _Preliminary Opinion on Privacy by Design_ ([Opinion 5/2018 at iii](https://edps.europa.eu/sites/edp/files/publication/18-05-31_preliminary_opinion_on_privacy_by_design_en_0.pdf))

**Privacy Rights.** The GDPR acknowledges several individual rights related to privacy. These definitions are outlined on our [Privacy Compliance page](https://about.gitlab.com/privacy/privacy-compliance/).

**Personal Data.** Generally, when we use the term _Personal Data_, we are using it as defined in the GDPR, regardless of whether we are talking about the GDPR or other privacy initiatives/regulations.

> ‘personal data’ means any information relating to an identified or identifiable natural person (‘data subject’); an identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural or social identity of that natural person ([Art 4 GDPR](https://gdpr-info.eu/art-4-gdpr/))

**Sensitive Personal Data.** There is some data that is particularly personal and intimately tied to the core identity of a person. This type of information is considered sensitive and is defined by the GDPR as a special category of data that requires special regulations in processing. The categories are outlined in [Article 9 of the GDPR](https://gdpr-info.eu/art-9-gdpr/):

> Processing of personal data revealing racial or ethnic origin, political opinions, religious or philosophical beliefs, or trade union membership, and the processing of genetic data, biometric data for the purpose of uniquely identifying a natural person, data concerning health or data concerning a natural person’s sex life or sexual orientation shall be prohibited.

Protected Health Information (PHI), which is defined in the United States by HIPAA, includes sensitive information about a person’s health or medical condition

It is important to note that, sometimes, a particular piece of data may _feel_ sensitive - for example, a social security number - but this does not necessarily mean that it is legally protected in an extra-special way. Other examples of non-sensitive , but sensitive _feeling_ personal data are

- Personal Credit Information (PCI) which includes credit card information
- Personally Identifiable Financial Information (PIFI) which includes banking information, account numbers, and account information

Sensitive data is typically data that is associated with who an individual is on a deep level, rather than merely identification information.

**Data Classifications.** GitLab uses a color system to label different types of data by associated risk. Please see Security's [Data Classification Standards](https://about.gitlab.com/handbook/engineering/security/data-classification-standard.html) for more information.

**Confidential Information.** This includes the business data that helps GitLab run strategically and includes business development plans/strategies, non-public financial information, third party data and government protected information. It also includes a special category of CI called "Trade Secrets."

**Trade Secrets.** A subset of Confidential Information, Trade Secrets are defined by the [United States Patent and Trademark Office](https://www.uspto.gov/ip-policy/trade-secret-policy) as information that meets three distinct criteria. All three of these criteria must be met in order for the information to be classified as a trade secret:

1. has either actual or potential independent economic value by virtue of not being generally known
2. has value to others who cannot legitimately obtain the information
3. is subject to reasonable efforts to maintain its secrecy

## Privacy Review Process

As outlined in GitLab's [DPIA policy](https://about.gitlab.com/handbook/engineering/security/dpia-policy/#vendor-dpia-process), every vendor that handles Personal Data needs to go through a Privacy Review. Additionally, when new product features are being designed, there may be times when a formal privacy review is required. This section outlines the process for these reviews.

### Vendor Privacy Review Process

1. In your Procurement issue, Business Owners will be asked a screening question about whether the vendor and/or tool they are procuring is collecting or processing Personal Data. If the answer to this question is `yes` then they will need to create a [Vendor Procurement Privacy Review issue](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues/new?issuable_template=vendor-procurement-Privacy-Review) in the Legal and Compliance issue tracker.
2. Business Owners are responsible to complete Steps 1-4 of the issue description in order to provide the relevant information to the Privacy department.
3. Once the privacy review issue has been submitted, Privacy staff will review the answers and the vendor's policies, as well as GitLab's security review to ensure that risks and mitigations are documented correctly. This may involve asking the Business Owner for additional information.
4. When the information in the review is deemed accurate and complete, the information will be reviewed determine the scale and severity of the risk. This risk will then be weighed against existing mitigations to determine if the tool is okay to approve as is or whether additional mitigations must be put into place.

(_Note: A DPA will be required for any vendor that processes Personal Data on GitLab's behalf. The reviewer will advise the Business Owner when to send our DPA to the vendor for review. When the DPA has been accepted by the vendor, it should be uploaded to the Procurement issue to be sent for internal signatures._)

5. After the Business Owner acknowledges the necessary mitigations, the reviewer will mark the privacy review issue and the related Procurement issue on whether the tool will require additional review prior to implementation.
6. The reviewer will close the privacy review issue when the review is complete.

### Implementation Privacy Review Process

On occassion, the initial privacy review identifies a tool that will need additional review prior to implementation of the tool. Other times, we may plan to begin using a current tool in a new way. In both of these cases, an Implementation Privacy Review will facilitate further documentation of what specific risks exist and what mitigations are put in place.

1. Business Owners [create and complete an issue for this](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues/new?issuable_template=gitlab-release-Privacy-Review) using the GitLab Release Privacy Review template.
   - The review asks if and how the tool will collect _new_ Personal Data, as well as if and how the tool will process _existing_ Personal Data. Please answer every question, using `n/a` if the question is not relevant to this particular use of the tool.
   - Tables should be filled out as completely as possible for efficiency of the process.
2. The Privacy Officer will review the answers, asking follow up questions as needed, and determine what additional mitigations will be utilized to control the risks.
3. After the Privacy Officer documents the additional mitigations, the Business Owner must comment with acknowledgement and deadline commitment to put controls in place prior to implementation.

## Data Protection Impact Assessments (DPIAs)

In some rare cases, the privacy review process will uncover even risk that a full Data Protection Impact Assessment (DPIA) will be necessary. A DPIA ensures all the necessary controls are in place to cover your most important assets - personal information.

The DPIA is a legal strategy document that will be presented to the relevant authorities if necessary. Because the document is privileged, it is confidential and accessible only by the Legal team and those individuals who are necessary to assist with its completion.

For more information, check out GitLab's [DPIA Policy](/handbook/legal/privacy/dpia-policy)

### DPIA FAQ

**What is a Data Protection Impact Assessment (DPIA)?**
A DPIA is a tool that is utilized to identify and analyze risks for individuals, which exist due to the use of a certain technology or system by an organization in their various roles (as citizens, customers, patients, etc.). On the basis of the outcome of the analysis, the appropriate measures to remedy the risks should be chosen and implemented. A Process for Data Protection Impact Assessment Under the European General Data Protection Regulation is required.

DPIAs are addressed in [Article 35 of the GDPR](https://gdpr-info.eu/art-35-gdpr/).

**When is a DPIA required?**
A DPIA is only required when the data processing is “likely to result in a high risk to the rights and freedoms of natural persons” (GDPR Article 35(1)), but processors must continuously assess the risks created by their processing activities to identify when a type of processing requires them to conduct a DPIA. The questions in pay to procure process are to assist you in assessing whether a DPIA is required and should be re-evaluated periodically in light of the list of processing operations that the Supervising authority deems subject to the requirement of a DPIA.

The assessment of whether there is a need for a DPIA, as well as any required DPIA should be carried out _prior to_ processing.

**Why is a DPIA Conducted?**
A DPIA aims to accomplish two outcomes:

1.  Identify the risks associated with processing the collected personal data
2.  Establish mitigation strategies and tactics to lessen the identified risks

**Who is involved in the DPIA process?**
The GDPR establishes that data controllers are responsible to carry out the assessments. Controllers also seek the advice of the data protection officer and "where appropriate" seek the view of data subjects themselves. (Article 35(2) and (9).)

At GitLab, the DPIA process is initiated by a tool's Business Owner during the [Procure to Pay Process](/handbook/finance/procurement/purchase-request-process/), during which the Business Owner must complete a [Privacy Review issue](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=). If a DPIA is required, the Privacy Officer will work with the Business Owner to accomplish this.

### GitLab's DPIA Process

As noted above the DPIA is a confidential document that is only accessible on a need-to-know basis. The document will be shared only with Legal team members and others who are necessary to complete it. When the Privacy Officer deems it necessary to complete a DPIA on a tool, the process is as follows:

1. The GitLab Privacy team uses the DPIA template to create a new document in Drive.
2. Privacy team staff will complete the DPIA based on previously completed Privacy reviews.
3. The Business Owner will then be brought in to assist with additional information, as necessary.
4. Security will be consulted on current and recommended controls.
5. Privacy will ensure that all sections are complete and that supporting documentation is attached as appendices.
