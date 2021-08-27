---
layout: handbook-page-toc
title: "Business Continuity Plan"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## GitLab Business Continuity Plan (BCP) Context

GitLab, by its remote-only nature, is not easily affected by typical causes of business disruption, such as local failures of equipment, power supplies, telecommunications, social unrest, terrorist attacks, fire, or natural disasters.

## BCP for Remote Workers

In case of an all-remote company like GitLab, it is sufficient to have simple contingency plans in the form of service-level agreements with companies that host our data and services. The advantage of an all-remote workforce like GitLab is that if there are clusters of people or systems that are unavailable, the rest of the company will continue to operate normally.

The exception to this would be a scenario of a single point of failure, (for example, if one of the Engineering heads who should sign off on triggering the plan is unavailable due to a disaster). In this case we would need an alternate plan in place that covers how to get in contact with the person or people affected by the disaster and trigger this business continuity plan.

## Recovery Time Objective (RTO) and Recovery Point Objective (RPO)

RTO and RPO are two of the most important parameters of a Business Continuity Plan. These are objectives to guide GitLab Infrastructure team in choosing the optimal data backup plan. The RTO/RPO provides the basis for identifying and analyzing viable strategies for inclusion in the business continuity plan. Viable strategy options include any which would enable resumption of a business process in a time frame within the RPO/RTO.

### What is a Recovery Point Objective?

Recovery Point Objective (RPO) is the interval of time that might pass during a disruption before the quantity of data lost during that period exceeds the Business Continuity Plan’s maximum allowable threshold.

### What is a Recovery Time Objective?

The Recovery Time Objective (RTO) is the duration of time a service level or business process must be restored after a disaster, in order to avoid risks associated with a break in continuity.

## What triggers the Business Continuity Plan

For a business continuity plan to be effective, it needs to be triggered as soon as possible; too early or late can reduce its efficacy. Key decision points to consider when a BCP has to be triggered or invoked are given below:

- When an incident turns into an event like a disaster, breach, or something which classifies is as a [Severity 1](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues)
- When the estimated time of resolution for a potential breach is greater than the normal estimated time for regular [security incidents](/handbook/engineering/security/sec-incident-response.html)
- When the recovery of an incident is uncertain, a decision must be made to invoke the business continuity plan if the disruption cannot be resolved within the specified [incident recovery timelines](/handbook/engineering/security/sec-incident-response.html)
- When resolution of an incident with critical customers, depending on their service-level agreements is delayed, then the BC plan must be triggered

## Data Continuity System

This section provides details about the production environment that must be available for GitLab.com to run effectively:

GitLab.com is hosted on Google cloud platform, customers.gitlab.com is in Azure and license.gitlab.com is in AWS. Since Customers and Licenses are hosted on different providers, they are unlikely to be unavailable when/if GitLab.com is down; the converse of this can also be true.

**Priority::1: Outage would have immediate impact on GitLab customer/user operations**

1. Disruption of service of Google Cloud Platform, specifically the region in which GitLab.com and dev.gitlab.org are hosted.
    - Effect: a loss or degradation of service, of the Google Cloud Platform means that GitLab.com is not available. This affects anyone who uses GitLab.com to host their repositories and may prevent GitLab team members from completing their work. GitLab.com is also the primary server where GitLab CE and EE source code and packages are hosted.
    - Solution(s): There are many other servers across the globe where GitLab CE is readily available.
    - Effect: Security releases are developed and staged on dev.gitlab.org before being brought to production on GitLab.com; these may be lost or unavailable for the duration of the disruption.
    - Solution(s): Depending on the duration and nature of the disruption, the solution is to wait for service to be restored (minimal duration), or build a new staging server. Using VM snapshots, recovery from backup is relatively quick.

1. Unavailability of support staff in case of a customer emergency.
    - Effect: emergency response times are greater than intended.
    - Solution(s): The team is distributed geographically (except during team get-togethers). Customer emergencies are handled by _any_ person who is in the [on-call rotation](/handbook/on-call). The on-call load is distributed at many levels, service engineers, production engineers, and even developers can be summoned when we have an outage or a customer incident. Emergencies also trigger automatic notifications on our internal chat system, alerting the entire company. There is also an ongoing effort to publish our [runbooks](https://gitlab.com/gitlab-com/runbooks), explaining how we manage our infrastructure and how we deal with outage cases.

1. Disruption of service of ZenDesk.
    - Effect: support workflows are disrupted. New tickets cannot be created, existing tickets cannot be responded to.
    - Solution(s): For the duration of the outage (if more than e.g. 4 hours) temporarily re-route incoming support requests to individual email accounts of members of the support team. Customers with premium support also have access to a direct chat channel.

**P2: Outage would have immediate impact on GitLab ability to continue business**
Malicious Software attack and hacking or other Internet attacks.

- Effect: depends on attack.
- Solution(s): We log and track any access that happens on any server in the fleet using logstash/kibana at log.gprd.gitlab.net.

**P3: Outage greater than 72 hours would have impact on GitLab ability to continue to do business**
Disruption of service from Salesforce.com, Zuora, NetSuite, Google Workspace

- No failover plan currently.

**P4: Non critical system**
Disruption of service from TripActions or internal chat tool (Slack).

- When TripActions is down, team members can use their own travel booking tool and expense it to GitLab with reason for exception
- When Slack is down, team members can use Zoom Chat as [outlined here](https://about.gitlab.com/handbook/communication/#slack-is-down).

## Communication Plan and Role Assignments

When it comes to a disaster, communication is of the essence. A plan is essential because it puts all team-members on the same page and clearly outlines all communication. Documents should all have updated team-member contact information and team-members should understand exactly what their role is, in the days following the triggering of the BC plan. Assignments like setting up workstations, assessing damage, redirecting phones and other tasks will need assignments if you don’t have some sort of technical resource to help you sort through everything.

Each GitLab team should be trained and ready to deploy in the event of a disruptive situation requiring plan activation. The plan of action steps, procedures, and guidelines will be documented in their team runbooks page (currently under development) and should be available offline. This should have detailed steps on recovery capabilities, and instructions on how to return the system to normal operations.

More details on this will be covered in the `BC plan - roles & responsibilities section which is in development`.

## Backup check

[Make sure that backups are performed daily](/handbook/engineering/security/security-assurance/security-compliance/guidance/business-continuity-and-disaster-recovery.html), and include running an additional full local backup on all servers and data in the Business Continuity preparation plan. Run them as far in advance as possible tp ensure that they’re backed up to a location that will not be impacted by the disaster. [Alternate storage provisioning](/handbook/engineering/security/security-assurance/security-compliance/guidance/business-continuity-and-disaster-recovery.html).

## Distribute and Verify the Plan / Approval from Senior management

- GitLab documentation related to all procedure and guidelines detailing the Business Continuity and Disaster Recovery must be reviewed, updated, and formally approved by [GitLab leadership](/handbook/leadership/)
- After developing basic guidelines, this plan will be distributed as a work in progress to the core team
- The core team will review to verify that all technical details are covered and deficiencies exist
- The core team will review and add guidelines so that all related [DRIs](/handbook/people-group/directly-responsible-individuals/) are clear on what is required in all situations
- GitLab team members must be asked to confirm their current details, such as phone numbers and emergency contacts on an annual basis
- Managers or team leads will share the relevant parts of the plan to all GitLab team members based on their role and department, and verify that they know what to do in the event of an emergency

## Vendor communication and service restoration plan

A plan cannot be successful without restoring customer confidence. As a final step, ensure that there is a detailed vendor communication plan as part of the Business continuity preparation plan. This plan will check for all the systems and services to ensure normal operations have resumed as intended once the damage is repaired in the area. Also, include the section to check with the main service providers on restoration and access.

# Business Continuity Test

After formalizing the business continuity plan, or BCP,  the next important step is to test the plan. Testing verifies the effectiveness of the plan, trains plan participants on what to do in a real scenario, and identifies areas where the plan needs to be strengthened. A test of the plan review, has to be conducted at least annually.

GitLab's first test of the business continuity plan was performed in April 2020 and tests will be conducted at least annually or when significant business changes occur.

## Why Business continuity testing is important

- To ensure that the current backup facilities and procedures are feasible and compatible to achieve the determined RTO.  Can backup systems withstand a cyberattack.
- To confirm that your continuity objectives are met (RTO and RPO). Accordingly provide training to the team managers and team members.
- To evaluate the company’s response to various kinds of disruptive events .. Emergency communication strategy, is it functioning as expected. - How quickly can everyone be informed about an incident.
- To identify areas in the plan that need modification. Improve systems and processes based on test findings. And accordingly maintain and update the BC plan

## Testing the plan

Testing can present a lot of challenges. It requires investing time and resources. With that in mind, to start with, it may make more sense to conduct a tabletop test at a conference room, rather than involving the entire organization in a full-blown drill.
Also an initial "dry run" of the plan can be performed, by conducting a structured walk-through test of the approved BC plan. The initial testing is done in sections and after normal business hours to minimize disruptions.
Subsequent tests can occur during normal business hours. An actual test-run can be performed eventually.
Based on the gaps and weaknesses learnt from the testing, underlying problems should be corrected and the plan updated accordingly.
The various types of tests that can be conducted include: checklist tests, simulation tests, parallel tests, and full interruption tests
Not testing the plan, will put both the business and customer confidence at risk.

## Business Continuity Plan Testing Scenarios

There are several types of tests, such as a plan review, a tabletop test, or a simulation test, which was detailed in the previous section.
Some testing scenarios that can be performed, are given below:

1. Data Loss/Breach

    - One of the most prevalent workplace disasters today. Cause of data loss or breach could be due to any of the following:
        - Ransomware and cyberattacks
        - Unintentionally erased files or folders
        - Server/drive crash
        - Datacenter outage
    - Data is mission-critical and losing it can have many serious consequences, such as significantly impacting sales and logistics applications.
    - The goal is to regain access to that data as soon as possible. Restoring backup is the solution. However, who’s responsible for that? What’s the communication plan in this case? What are the priorities? Who needs to be contacted right away? Are there any vendors involved? These and many other questions will be answered during this test.

2. Data Recovery Testing

    - This testing scenario, is used to make sure that the backup and recovery  systems work as intended. To prove that, run a test that involves losing a bulk of data, and then try to recover it.
    - Some of the elements to be evaluated include the RTO, and whether the team met its objectives.
    - Also make note of, if there were any damage to the files during recovery? Was the backup stored in the cloud, recovered successfully and on time.

3. Emergency Communication

    - Being able to communicate during a disaster or an emergency is crucial. Yet, the most disruptive events can leave with no traditional means of staying in contact.
    - For these scenarios, the BC plan needs to outline the actions to be taken. An alternate mode of communication should be tested for its reliability and efficiency, for a company like GitLab which has team members all around the globe.
    - Regular updates to all GitLab team members contact information, so that all of them can receive timely notifications thus streamlining the disaster scenario process.

# Business Impact Analysis

The Business Impact Analysis (BIA) is developed as part of the Business Continuity Plan process and is a point-in-time analysis of system components that determines the criticality and potential impact to GitLab's mission-critical processes and data as well as impact to GitLab should the system component become unavailable. This quantitative analysis allows GitLab to establish priority levels for sequencing recovery activities and resources.

## Purpose

The purpose of the BIA is to identify and prioritize system components by correlating them to mission critical processes that support the functioning of GitLab. Using this information to characterize what would be the impact to GitLab, if any of these systems were to be unavailable.

### The Business Impact Analysis Results in the following:

1. Determining data classification and approved operating System usage:   GitLab data and system resources can more clearly be linked to mission critical business processes by way of classifying them based on sensitivity.  These priority levels can be established for sequencing recovery activities and resources. Additionally, the existence of an approved set of operating systems platforms will facilitate ease of management and quick turnaround and repair when they are non-functional.

    - [GitLab’s Data Classification policy covers all aspects of this requirement:](/handbook/engineering/security/data-classification-standard.html)
    - [Approved Operating Systems](/handbook/security/approved_os.html)

1. Determining mission critical business processes and recovery criticality: In this step, GitLab’s mission critical business processes / systems are identified and the impact of a system disruption to those processes is determined along with outage impacts and estimated downtime.  The downtime reflects the maximum, that an organization can tolerate while still maintaining the mission.

    - This is covered in the [priority::1, priority::2, priority::3: Outages and their immediate impact on GitLab customer/user operations](/handbook/business-ops/gitlab-business-continuity-plan#data-continuity-system)

1. Identifying resource requirements:  Realistic recovery efforts require a thorough evaluation of the resources required to resume business processes and related interdependencies as quickly as possible.  Examples of resources that should be identified include software, data files, system components, and vital records.

    - The [Backup and Recovery process](/handbook/engineering/security/security-assurance/security-compliance/guidance/business-continuity-and-disaster-recovery.html) in GitLab is robust enough to satisfy the above requirement as it relates to GitLab.com.

1. Determining alternate storage and strategies:  Identify any alternate strategies in place to meet expected RTOs.  This includes backup or spare equipment and vendor support contracts.[GitLab alternate storage process, serves to securely store data in an alternate location from source data](/handbook/engineering/security/security-assurance/security-compliance/guidance/business-continuity-and-disaster-recovery.html)

1. Identifying recovery priorities for system resources based on standards: Adherence to GitLab's agreed upon RTO/ RPO:  Apart from determining the [RTO and RPO](/handbook/business-ops/gitlab-business-continuity-plan#recovery-time-objective-rto-and-recovery-point-objective-rpo), BIA also defines Maximum Tolerable Downtime (MTD)

    - The Maximum Tolerable Downtime (MTD) - represents the total amount of time senior management are willing to accept for a mission/business process outage or disruption and includes all impact considerations.  Determining MTD is important because it could leave continuity planners with imprecise direction on (1) selection of an appropriate recovery method, and (2) the depth of detail which will be required when developing recovery procedures, including their scope and content.

1. Delegating and defining the process:  Designate each incident as critical or non-critical based on the business priority. Compile a list of personnel who must be in place to perform these functions. In times of an occurrence of an incident, a detailed step-by-step approach about how to communicate it to the group, how it is performed, who performs it, and the operational mode of action taken.

The following links show the process carried out at GitLab to cater to this requirement:

- Impact values for assessing category [impact](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues)
- Security issue triage [process](/handbook/engineering/security/#issue-triage)
- Security Incident issues are tagged with the incident label and are further tagged with  [severity::1 severity::2 severity::3 severity::4 labels](https://gitlab.com/gitlab-com/gl-infra/production/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=incident) to determine the severity and accordingly work on resolution]
- Support team contact information - [Quick Reference](/handbook/support/workflows/quick-reference.html)
- On-Call Runbooks - Incident response runbooks for [on-call engineers](/handbook/engineering/infrastructure/incident-management/#on-call-runbooks). .
- Support Team function in the [handbook](/handbook/support/).

## BIA Procedure

1. A formal BIA questionnaire is distributed to the technical system owners for each system, as listed in the [tech stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml). If there are multiple individuals listed, one team member will be selected. The questionnaire will be sent to the team member's GitLab email directly from GitLab's GRC Application, ZenGRC. Additional information on completing this questionnaire can be found on the [ZenGRC Activities](https://about.gitlab.com/handbook/engineering/security/security-assurance/zg-activities.html#completing-zengrc-questionnaires) handbook page. More info on the quetionnaire is available in the video below.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/df5IDS-tGQA" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

2. Once all responses have been received, the data will be sanitized and aggregated. Follow-ups with technical owners will be completed as required to ensure the data used is accurate, complete, and objective.

3. Mission critical systems are identified and next steps are taken to ensure that a system recovery/business continuity plan is documented accordingly.

4. On a periodic basis, the BIA is reviewed and will be reperformed. While we do not anticipate significant changes year over year, as part of our due diligence and compliance needs, GitLab is required to make sure that system recovery/business continuity plans are up-to-date so that team members are always prepared to respond to system disruptions or outages.

_Current GitLab Team Memebers: Additional information about the BIA process can be found in the [BIA Epic](https://gitlab.com/groups/gitlab-com/gl-security/security-assurance/-/epics/36)._

## Conclusion

The most important part of the Business Impact Analysis is to weigh the exactness of all findings. Communicate the findings to the respective department managers or key personnel to ensure that the assumptions made are in fact accurate and realistic. Once the accuracy of the documented findings has been established and agreed to by all parties, these BIA findings are submitted to GitLab's [e-group](/company/team/structure/#e-group) for approval.

## Plan update and protect from disclosure

The BIA report will be updated based on changes to the organization, information system, or environment of operation and problems encountered during the implementation, execution, or testing.  This plan will be protected from unauthorized disclosure and modification. Finally, all the Business Impact Analysis data will be stored in a safe place for future reference in the event of a disaster.
