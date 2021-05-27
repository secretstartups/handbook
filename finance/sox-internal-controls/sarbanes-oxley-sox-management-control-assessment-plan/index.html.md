---
layout: handbook-page-toc
title: "Sarbanes-Oxley(SOX) Control Assessment Procedure"

---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}



GitLab has adopted the [COSO 2013 framework](https://www.coso.org/pages/ic.aspx) to support its evaluation / assessment of the effectiveness of Internal Controls Over Financial Reporting (ICOFR). ICOFR are assessed by evaluating entity-level controls, information technology controls  and process level controls as detailed below.

##### 1.  Assessing the [entity-level controls](https://about.gitlab.com/handbook/finance/sox-internal-controls/entity-level-controls/)

This includes evaluating the effectiveness of GitLab’s entity-wide controls particularly relating to the control environment, risk assessment, and monitoring components of COSO. Below are the key control factors considered while evaluating COSO components at an entity level.

`Control Environment`

The control environment will be evaluated to assess effectiveness of the below processes around:

*  Integrity and Ethical Values
*  Commitment to Competence
*  Board of Directors or Audit Committee
*  Management’s Philosophy and Operating Style
*  Organizational Structure
*  Assignment of Authority and Responsibility
*  Human Resource Policies and Procedures

`Risk Assessment`

Control factors considered while evaluating this component include: 

*  Definition of established objectives at both the strategic (entity-wide) level and the process (activity) level.
*  Identification of relevant internal and external risk factors that could impact the achievement of the defined objectives.
*  Mechanisms in place to continually re-assess risk and react to changing environments.


`Monitoring`

In the evaluation of the monitoring component the following factors are considered:

*  Extent of evidence obtained to support evaluation of the effectiveness of internal control.
*  Management responsiveness to recommendations on strengthening internal controls.
*  Effectiveness of internal audit activities.

<br>


##### 2.  Assessing the [information technology general controls](https://about.gitlab.com/handbook/engineering/security/security-assurance/security-compliance/ITGC/)

SOX PMO will perform independent reliance testing on the audit work preformed by the security compliance team.


##### 3.  Assessing [process-level controls](https://about.gitlab.com/handbook/finance/sox-internal-controls/#5-business-process-controls)

Assessing process-level controls will include an evaluation of control design and an evaluation of control operation effectiveness.

`Evaluating design effectiveness of controls`

Design effectiveness refers to whether the control is suitably designed to prevent or detect material misstatements in financial statements. It involves consideration of the financial reporting objectives that the control is meant to achieve and whether it will achieve them. When evaluating control design, the following factors are considered:

*  Whether the control achieves the financial reporting objective.
*  How the control is performed.
*  The frequency with which the control is performed.
*  The competence and experience of individuals involved in the process and executing the control.
*  The nature and size of misstatement that the control is likely to detect.
*  Follow-up activity on exceptions identified by the control.


The risk and control matrices, together with a listing of control gaps or deficiencies, will serve as evidence of this evaluation. If the design of a particular control is deemed to be inadequate or a control gap is identified, process/control owners will implement additional controls or changes in the design of existing controls. To maintain evaluation of design effectiveness current, process/control owners will review process, risk and control documentation at quarterly intervals to identify any new or changed risks and highlight the relevant controls that have been implemented to mitigate these risks.

`Evaluating operating effectiveness of controls`

Operating effectiveness refers to whether the control is functioning as designed. During the evaluation of operating effectiveness, evidence regarding how the control was applied, the consistency with which it was applied, and by whom it was applied will be gathered.
SOX PMO will execute testing procedures to support management’s evaluation of operating effectiveness of controls for in-scope processes.

Prior to performing test work on the operating effectiveness of internal control over financial reporting, audit programs will be prepared. The audit program will set out the nature, timing and extent of the procedures to be performed.

<details markdown="block">
<summary markdown="span">a.  Selection of testing technique and control categories</summary>

Techniques that may be used to obtain evidence about the effectiveness of the operation of controls include observation, inquiry, inspection, re-performance, knowledge assessment, corroborative inquiry, and system query. 

To determine the appropriate testing technique, it is first necessary to identify the control category. Controls can generally be categorized into the following:

<details markdown="block">
<summary markdown="span">Authorization (Manual & System)</summary>

Authorization includes:

- Approval of transactions executed in accordance with management’s general or specific policies and procedures.
- Access to assets and records in accordance with management’s general or specific policies and procedures.

**Points considered while performing the listed test steps:**

- Select a sample of documents per the sampling guidelines.
- Review the sample for evidence of documented approval/authorization. Inspect documentation evidencing authorization (signatures or computer-generated audit trail).
- Review to ensure approval/authorization is in compliance with the company Policy.
- Discuss the authorization process with those involved and understand if the process is appropriately controlled. Specifically, understand if the control has ever been circumvented and if these instances are appropriately controlled with appropriate parties notified.
- Discuss with Information Technology the mechanism for maintaining the appropriate schedule of authorizations within the system. Determine if terminated/resigned employees are removed from the list immediately on the effective dates.
- Determine if the existing authorization capabilities within the system are consistent with the Corporate Policy and if the process is appropriately controlled. If management review is performed consider using their test work to gain evidence related to the effectiveness of the control.
- Inquire if the control has ever been circumvented and if these instances are appropriately controlled with appropriate parties notified. If the computer facilitates authorization, perform a system query to determine whether the system access prohibits unauthorized processing.
</details>
<details markdown="block">
<summary markdown='span'>Exception/Edit Report control</summary>

Controls that fall into the exception/edit report category relate to when a report is generated to monitor something and followed up on through to resolution. In most instances, the reports are focused on exceptions/edits as defined below, however, in some instances, it may just be a report. For example, if an aging report is generated by the system and followed up, the content does not necessarily represent edits or exceptions, but the control would fall into this category for the test of design and test of effectiveness considerations.

*  Exception - a violation of a set standard
*  Edit - a change to a master file

In most instances, the underlying data for an exception/edit report is tested.

**Points considered while performing the listed test steps:**

*  	Select a sample of exception/edit reports per the sampling guideline.
*  	Inquire if operational or system changes have been made since the last review and if the exception/edit reports have been updated.
*  	Evaluate if the sample of reports has been generated with the frequency listed in the company policy. Inspect exception/edit reports considering:
     - Date of preparation (frequency)
     - Evidence of follow-up and corrective action
*  	Evaluate if the noted exception items on the selected reports are followed up and resolved on a timely basis.
     - Assess the competency and knowledge of individuals responsible for follow-up. Consider re-performance and use judgment to gather sufficient evidence to conclude.
     - Inspect evidence of follow-up. Use judgment to gather sufficient evidence to conclude on whether follow-up was appropriate.
     - Document name, dates, and summary of the interview and follow-up action taken.
     - Where this control is performed by a group/department also consider using the corroborative inquiry technique.
     - If the report is computer generated and key configured controls are used to compile the report, use the configuration/account mapping control category for consideration to ensure the compilation of the report and underlying configuration are appropriate.
*  	Determine if the unresolved items are tracked and reported to the next level.
*  	Evaluate if the exceptions on the selected reports have been documented and approved.
</details>
<details markdown="block">
<summary markdown="span">Interface/conversion control</summary>

*`Data interfaces`* – Data interfaces transfer specifically defined portions of information (data) between two computer systems, using either manual or automated means or a hybrid of both, and should ensure accuracy, completeness and integrity of the data being transferred. The job of a data interface is to transfer the data securely, once and only once, completely, accurately, with integrity, and to highlight any exceptions. Interfaces can be two-way (back and forth between two systems) or one-way (from one system to another), and can link new systems to old/Legacy systems or old/Legacy systems to new systems.

*`Data conversion`* – Data conversion is the process of migrating data from a Legacy system (which may have old, duplicate, inaccurate, incomplete data, which reside in several places within the system) to a new system. To perform this process, the data needs to be cleansed, reviewed and synchronized prior to conversion (a critical step), then mapped (which may include parsing or other manipulation), reformatted, translated, consolidated and loaded into the new system (which may include a time lag or delay during which new data is created). Once the data has been converted and loaded into the new system, it must be maintained to ensure its completeness, existence, accuracy and integrity.

**Points considered while performing the listed test steps:**

*  Select a sample of source data as per the sampling guidelines and trace to corresponding converted data/system in order to ensure the data was converted/interfaced accurately and completely.
   - Inspect documentation supporting initial design, function, implementation, including testing, and use judgement to gather sufficient evidence to conclude on whether it is appropriate.
   - Corroborate understanding of changes (whether made or not) with an IT and business owner and confirm that maintenance is performed on regular basis.
   - If changes were made in the current year, inspect documentation of change ensuring procedures appropriate and authorized. Use judgment to gather sufficient evidence to conclude on whether it is appropriate.
   - Perform procedures related to system access to change the configuration as outlined in the system access control category.
*  Inquire about steps taken to ensure that data has been accurately and completely transferred. Determine if the following exist:
   - Items count or record count
   - Batch total or hash total
   - Integrity reports (e.g., out of balance report, unmatched sub-ledger report)
   - Reconciliation of input to output
*  Select samples of interface control identified from the above and re-perform the steps to determine if the interface is complete.
*  Inspect exception reports generated highlighting interface problems. Follow through on the resolution of an exception that occurred this year. This exception review may include online review exception messages evidence during observation procedures.
*  Inquire about the interface/conversion process. Determine if:
   - Manual intervention can occur during the interface process
   - Manual adjustments are identified and reviewed by a second person
*  Determine if processing/job schedules exist and are monitored. Review the processing/job schedule to determine if the following are defined:
   - Timeline when data entry can be performed
   - Timeline when data entry cannot be performed (e.g., data is locked)
   - Submission deadline for data feed
   - Timeline for job submission
   - Timeline for job run
   - Timeline for job completion
</details>
<details markdown="block">
<summary markdown="span">Key performance indicators</summary>


Key performance indicators (“KPIs”) are the financial and non-financial quantitative measurements that are:

*  Collected by management, either continuously or periodically; and
*  Used by management to evaluate the extent of progress toward meeting management’s defined objectives.

**Points considered while performing the listed test steps:**

*  Perform trend analysis of the selected KPI & identify any unusual fluctuations.
*  Determine if the listed/expected KPIs are calculated appropriately and timely.
*  Determine if the listed/expected KPIs are reviewed and appropriate action is taken if the KPI’s fall outside the standard.
*  Inspect evidence of follow-up. Use judgement to gather sufficient evidence to conclude on whether follow-up was appropriate.
*  Assess the knowledge of individuals responsible for follow-up. Consider re-performance and use judgement to gather sufficient evidence to conclude.
*  Document name, dates, and summary of interview and follow-up action taken.
*  Inspect KPI documentation considering:
   - Date of preparation (timeliness)
   - Documented explanations for unusual fluctuations
   - KPI agrees to the related books/records
*  Evaluate the appropriateness of established standards based on the company’s performance levels.

`Additional considerations in gathering a sample of KPIs:`

Select only those KPIs that are both relevant to financial statement assertions and possess the following qualities:

*  Strong and valid;
*  Expected to produce reliable results; and
*  At an appropriate level of precision to detect significant misstatement (as defined by the Assessor).
</details>
<details markdown="block">
<summary markdown="span">Management review</summary>

Management review is the activity of a person different than the preparer, analyzing and performing oversight of activities performed. In many instances, it will be a manager reviewing the work of a subordinate. However, it is not limited to this. It may include co-workers reviewing each other’s work. Examples including internal audit activities, etc.

**Points considered while performing the listed test steps:**

*  Select a sample of documents per the sampling guideline.
*  Review sample for documented evidence management review.
*  Assess the competency and knowledge of individuals responsible for follow-up. Consider re-performance and use judgment to gather sufficient evidence to conclude.
*  Inspect evidence of follow-up. Use judgment to gather sufficient evidence to conclude on whether follow-up was appropriate.
*  Document name, dates, and summary of interview and follow-up action taken.
*  Inspect supporting documentation evidencing review (e.g., signatures, board minutes, journal entries, etc.)
*  Determine if management has adequately documented their review, identified unusual items/trends/variances and that the issues noted have been appropriately researched and resolved timely.
    - If management review is performed in excess of another control (e.g., a reconciliation the other control is reviewed by management) only one or the other controls may need to be tested (reconciliation or management review) depending on which is designed well and consider obtaining best evidence.
</details>
<details markdown="block">
<summary markdown="span">Reconciliation</summary>

Reconciliation is a control designed to verify that two items, such as computer systems, are consistent.

**Points considered while performing the listed test steps:**

*  Select a sample of reconciliation documents per the sampling guidelines.
*  Review the sample for evidence of secondary review.
*  Inspect reconciliation(s) considering:
   - Agreement to the books/records reviewed
   - Timely date of preparation
   - Reconciliation balances
   - Significant unidentified reconciling items that might represent a balancing amount (e.g., captions such as unlabeled “differences” or “other”)
*  Review to ensure the review process is in compliance with the company Policy.
   - If there is a management review consider whether the initial preparation and follow-up or reviews will provide the best evidence control and test appropriately. (Also see management review control category)
*  Verify balances to source systems (e.g., trace GL balance to GL).
*  In the sample selected determine if the reconciling items have been identified appropriately researched and resolved timely.
*  Determine if segregation of duties is maintained between those processing/approving the transaction and those performing the reconciliation.
</details>
<details markdown="block">
<summary markdown="span">Segregation of duties</summary>

The separation of duties and responsibilities of authorizing transactions, recording transactions and maintaining custody to prevent individuals from being in a position to both perpetrate and conceal an error or irregularity.

**Points considered while performing the listed test steps:**

*  Understand by inquiry and observation whether there is adequate segregation of duties among those that authorize transactions, record transactions and maintain custody of assets.
   - Inspect the accounting policies and procedures noting that segregation of duties policies and procedures (specific to the area reviewed) are documented.
   - Use the corroborative inquiry technique to corroborate segregation.
*  Perform review of individuals and the tasks they perform, and review their user profile to determine if their system access allows the segregation of duties (i.e., the system access is limited to the tasks they perform and does not compromise the segregation of duties).
</details>
<details markdown="block">
<summary markdown="span">System access</summary>

The ability that individual users or groups of users have within a computer information system processing environment, as determined and defined by access rights configured in the system. The access rights in the system agree to the access in practice.

**Points considered while performing the listed test steps:**

*  Inquire about the maintenance process of granting and limiting access to system/transaction to appropriate personnel and determine if:
   - Terminated/resigned individuals are removed timely from the system; and
   - Segregation of duties is maintained in granting access to individuals.
*  Obtain a listing of individuals with access to the system/function noted in the control description from the IT department.
   - Corroborate knowledge of individuals with respect to their understanding of their own access capabilities. Compare responses to management's understanding and/or established guidelines.
   - Perform system queries with respect to the following to corroborate understanding of access restrictions gained through discussions regarding:
     - Level of access;
     - Super-user access; and
     - Sensitive functions.
*  Select a sample of users from the list in accordance with the sampling guidance and obtain authorization/approval documents sent to IT for system access to review for evidence of appropriate approval/authorization.
*  	Review the listing and assess the appropriateness of the user profile for the users identified. If inappropriate user profiles are identified, obtain an explanation and request a listing of transactions performed by the individuals to determine if unauthorized/inappropriate transactions exist.
*  	Determine if the user profiles and user access are subject to periodic review and if management has adequately documented their review and the issues of note have been appropriately researched and resolved.
*  	Determine if security violation reports are generated & security breaches are followed up and investigated. Inspect exception reports generated highlighting exceptions to access restrictions. Follow through on the resolution of an exception that occurred this year and use judgment to obtain sufficient evidence to conclude on follow-up (this may include an online review of user profiles).
</details>
<details markdown="block">
<summary markdown='span'>System configuration / Account mapping control</summary>

System configuration and account mapping include “switches” that can be set by turning them on or off to secure data against inappropriate processing, based on the organization’s business rules. If the switch is turned on, the checking can be customized for the particular organization to be very robust or very permissive. The more specific definition of each is as follows:

*  Configurable controls - specific “switches” that can be set by turning them on or off to secure data against inappropriate processing.
*  Account mapping - specific “switches” that can be set related to how a transaction is posted to the general ledger and then to the financial statements.

***Points considered while performing the listed test steps:***

*  Inquire if financial, operational or system changes have been made since the last review and if configuration/account mapping has been updated.
   - Inspect documentation supporting initial design, function and implementation including testing and use judgment to gather sufficient evidence to conclude on whether it is appropriate. (This is to be completed in the first year of relying on the control and whenever there is a change in IT environment or system)
   - Corroborate understanding of changes (whether made or not) with an IT and business owner and confirm that maintenance is performed on regular basis.
   - If changes were made in the current year, inspect documentation of change ensuring procedures are appropriate and authorized. Use judgment to gather sufficient evidence to conclude on whether it is appropriate. Perform procedures related to system access to change the configuration as outlined in the system access control category.
*  	Select a sample of business rules and account mapping for review. Determine if the business rules and account mapping are valid with reference to current policy and procedures.
*  	For a sample of business rules and account mapping established, determine if system edit checks are set up to detect and prevent abnormalities. Perform the following:
	- Run systemic edit checks (e.g., posting limits, tolerance limits, validations and security settings) with a set of fictitious data to determine if these checks are in place and adequately functioning.
	- Perform data mining against the database to determine if out-of-range data exists. Explain exceptions noted.
*  Obtain a listing of account mappings to determine if all accounts set up in the database have been mapped to a correct GL account.
*  Inquire with the Information Systems Department about the user’s ability to change configuration and account mapping. Determine if change management procedures exist to track requests, changes made and perform testing prior to changes being implemented and released. Inquire if changes can be made and go undetected.


`Additional Consideration in Testing Configurable Controls or Account Mapping:`

Account mapping may be changeable in a “live” production environment by users. Mis-mapped accounts may not appear on the financial statements, or they may appear in an inappropriate manner such as in a suspense account or in an “opposite” category such as revenue to liability. An end-user can circumvent configurable controls if the control is not appropriately set up to meet the company’s needs and user access appropriately. For example, using the warning message “can continue” may not be as appropriate to meet the company’s needs as “cannot continue - transaction is “held/blocked.”

Configurable controls can override security control features. For example, not assigning “authorization groups” to certain accounts, tables or programs can result in ineffective security. On the other hand, a configurable control can be set up but may not be effective unless the system access supports the control as configured (for example - a user with super-user access can just change the configured control setting).

For controls not falling into the control categories listed above, testing procedures will be determined based on the distinct nature of the control.
</details>
</details>

<details markdown="block">
<summary markdown='span'>b.  Extent of Testing (Sample Sizes)</summary>

`Monitoring or manual controls:` The sample size will depend on the frequency at which the control occurs. Testing standards are as follows:

| Frequency of Control | Baseline Sample Size |
| ------ | ------ |
| Annual | 1 |
| Semi-annual | 1 |
| Quarterly | 2 |
| Monthly | 3 |
| Fortnight | 5 |
| Weekly | 5 |
| Daily / Recurring (multiple times per day)| 25 |

`Automated or IT control is applied to every transaction:` 

Testing will generally be minimal as management will have tested general computer controls to be satisfied that they are functioning appropriately. Therefore, system query will often be the most appropriate testing technique. 

In this technique, one query as a test is appropriate for an IT system that would be expected to operate consistently in a well-controlled environment. A well-controlled environment is one where the specific configuration, interfaces and system access are appropriately designed and subject to appropriate change control procedures. Observation should also be made to ascertain whether there is any violation to the security access such as sharing of passwords.

Samples will be selected randomly to reflect an appropriate representation of the population. The specific sources and populations used for making sample selections will vary from control to control. Determining the appropriate source and population is a matter of judgment and should consider the following:

*  	Pervasiveness of the control and variety of instances in which the control is applied or by whom the control is applied.
*  	Changes in key personnel who perform the control or monitor its performance.
*  	Consistency with which the control is applied, i.e., sample sources and populations should cover an amount of time that will allow management to conclude on the consistency with which the control was applied.
*  	Quantitative measures for selecting high-value items.

The above guidance on the extent of testing applies in situations where there is a population to sample from. Controls may also exist where testing techniques and sample sizes may not be applicable. For example:

*  In situations where the knowledge assessment technique is used, the extent of testing should be sufficient to provide comfort regarding the knowledge of that one individual.
*  In situations where corroborative inquiry is used, the extent of testing should be sufficient to confirm consistency in the application of the control.

Rationale for determining sample selection sources and populations will be documented in the working papers, as appropriate.

</details>

<details markdown="block">
<summary markdown='span'>c.  Timing of Testing</summary>

Test of controls should be performed over a period of time that is adequate to determine whether, as of the date specified in the assertion, the controls necessary for achieving the objectives of the control criteria are operating effectively. The period of time over which tests of controls should be performed is a matter of management judgment.

If controls are to be tested over a period of time such as at an interim date using techniques other than knowledge assessment or corroborative inquiry (i.e., inspection, observation, re-performance), management should consider what additional evidence concerning the operation of the control should be obtained for the remaining period.

Evidence should be obtained about the nature and extent of any significant changes in internal control that occur subsequent to the previous or interim date through, for example, inquiry or observation. In addition, sufficient evidence should be obtained about the operating effectiveness of such controls since the previous or interim date, for example, by obtaining evidence about the operating effectiveness of the company’s monitoring of controls.

Prior to the date specified in the assertion, management may change the company’s controls to make them more effective or efficient, or to address control deficiencies. In these circumstances, controls that have been superseded may not need to be considered. For example, if management asserts that the new controls achieve the related objectives of the control criteria and have been in effect for a sufficient period and there is sufficient time to permit the testing of the new design and operating effectiveness, tests may not need to be performed on the design and operating effectiveness of the superseded controls, except to the extent of communicating identified significant deficiencies in controls that might have been identified in an interim period.

Management will prepare a detailed timeline for evaluation of control design and control effectiveness, as well as timelines to address control deficiencies and update control documentation.

</details>

<details markdown="block">
<summary markdown='span'>d.  Documentation of Test Results</summary>


Working papers will be prepared and cross referenced to enable reviewers and external auditors to easily locate the documentation that supports the conclusion reached on the assessment of the selected internal controls over financial reporting. Working papers will include sufficient documentation to re-perform control testing (i.e. copies of sample documents tested) and will include supporting documentation for all testing exceptions.

</details>

<details markdown="block">
<summary markdown='span'>e.  Categorization and Escalation of Issues and Remediation</summary>

When performing tests of operating effectiveness, if exceptions are found the nature and cause of the conditions will be be investigated. SOX PMO will work with process owners to determine if a mitigating control compensates for the defective control and if that control is designed to achieve the same control objective. If the compensating control is appropriately designed, tests of operating effectiveness will then be performed on the compensating control.

When control testing exceptions are identified, the following steps will be taken:

*  The exception will be recorded in a repository of findings. The repository of findings will include the control theme, testing observation, potential implications, management response and action plans. Maintenance of the repository will be the responsibility of the SOX PMO.

Deficiencies can range from inconsequential, to significant, to material weaknesses. In limited situations, there may be sufficient evidence to conclude that the error was an isolated incident. If this is the case, it may still be possible to conclude that the control is operating effectively. Management will assess whether deficiencies, either individually or in the aggregate, rise to the level of a significant deficiency or a material weakness. According to the [PCAOB](https://pcaobus.org/), significant deficiencies and material weaknesses are defined as follows:

*  **Significant deficiency**: A control deficiency, or combination of control deficiencies, that adversely affects the company’s ability to initiate, authorize, record, process and report external financial data reliably in accordance with generally accepted accounting principles such that there is more than a remote likelihood that a misstatement of the company’s annual or interim financial statements that is more than inconsequential will not be prevented or detected.
*  **Material weakness**: A significant deficiency, or combination of significant deficiencies, that results in more than a remote likelihood that a material misstatement of the annual or interim financial statements will not be prevented or detected.

Deciding whether an internal control deficiency is a significant deficiency or material weakness requires both a detailed understanding by the management of the relevant facts and circumstances and a considerable amount of management judgment. Management will evaluate and formally document its assessment of the significance of a deficiency in internal control over financial reporting by determining the following:

*  	The likelihood that a deficiency, or combination of deficiencies, could result in a misstatement of an account balance or disclosure.
*  	The magnitude of potential misstatement resulting from the deficiency or deficiencies.

When corrective action is taken to remedy a control deficiency, the corrected control should be in place and operating for a sufficient period of time prior to the assertion date for management to evaluate the corrected control and conclude that the control is operating effectively as of the assertion date. In addition, management will allow sufficient time to test the operating effectiveness of the control. Management will provide a rationale as to why a significant deficiency was not corrected or did not preclude them from concluding that the internal controls over financial reporting were operating effectively.
