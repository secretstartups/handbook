---
layout: handbook-page-toc
title: "Professional Services Project Management"
description: "Learn about the processes that the GitLab Project Management team uses to deliver successful engagements with Customers."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

GitLab takes our customer's success very seriously. In Professional Services (PS) we strive to provide a first class experience for all engagements.

![](./image.png)

- [Process Flow - trim (above)](https://docs.google.com/spreadsheets/d/1uRoB73lZtvNhkk-Z9eQS3_Ys4yX8vVUXXqQUO7Nm1ss/edit?usp=sharing)
- [Process Flow - full](https://docs.google.com/spreadsheets/d/1Y8wWj5g8T6HuPGEnHaWUfdtI7LPmathGaMwfiA2b_Ks/edit?usp=sharing)
 
### Project plan
 
Each PS Engagement will include a Project Plan based on the activities outlined in the Statement of Work (SOW) and/or other discussions between the GitLab Professional Services and the customer.  The Project Plan may include a Gantt chart, tasks list via spreadsheet, or another form of documented plan. This plan will follow the process listed above.
 
Each PS engagement will have a Google Sheet that shows the contracted revenue and the estimated cost measured in hours or days of effort required to complete the engagement. The cost estimate must be completed prior to SOW signature and attached to the opportunity in SFDC.
 
### Project workflow

**Pre-Initiate**


1. Sr. PSE and/or Technical Architect: Once a project has moved into SFDC Phase 5 – “Negotiating”, SOW is reviewed and a PSE(s) are identified for the project. Choice is based on several aspects:
   - PSE technical skillset/experience
   - PSE personality match with the customer
   - PSE technical growth path opportunity
   - PSE time zone
2. Sr. PSE and/or Technical Architect: Communicates decision and reasoning to the #ps_planning slack channel with an @mention to the Sr. PS Project Coordinator
3. Sr. PS Project Coordinator: Reviews resource allocation request and approves/accommodates if possible, depending on existing schedule

**Initiate**


4. Sr. PS Project Coordinator: Once a project has moved for Closed/Won in Salesforce, a Mavenlink project is created.
   - A Project Owner is assigned; this can be a Project Manager, or Professional Services Engineer (PSE)
5. Sr. PS Project Coordinator: Send [initiation email](https://docs.google.com/document/d/1je9dqVJpFFMv7aw9WhPeQ8aufx6Sj3OZveqaHHd212w/edit?usp=sharing) and [existing customer initiation email](https://docs.google.com/document/d/1eNPXLmstMLoatpOBIhxrJgnPFgqYByPaJoFQRd2kz9U/edit?usp=sharing).
6. Project Owner: Begin planning the project 
   - Internal PS project alignment meeting (includes Engagement Mgr, Project Coordinator, PSE)
   - Sales to PS hand-off meeting (complete the hand-off issue in the customer Epic)


**Plan**

7. Project Owner:
    - External [Customer Project Kickoff](https://docs.google.com/presentation/d/1HtVIE64N94Rcc774ujllClGmYZ5y1_ApE4-O3pazR6k/edit?usp=sharing): Actions and meeting minutes can be added directly to the Project Definition Template.
    - Request resources via Mavenlink and requests updates through project duration
    - Weekly project meeting (if applicable): Notes documented in the [Project Definition](https://docs.google.com/spreadsheets/d/18pxG8-rxzwu51x3oywOENuN7ScsivlC3iM8jYV_mGug/edit?usp=sharing)
    - Provide Weekly Status Report: Using the template in the [Project Definition](https://docs.google.com/spreadsheets/d/18pxG8-rxzwu51x3oywOENuN7ScsivlC3iM8jYV_mGug/edit?usp=sharing).
    - [Change request template ](https://docs.google.com/document/d/1zed5AsEpjzwII0HaIjsmXYaRAp5qHY-BGJfVCISVGcM/edit?usp=sharing)(required for scope changes).
    - [Project closure meeting](https://docs.google.com/document/d/1Cw5eLe8VKFtHG9xGqUiCua8Pbu52reMzHujcPWq3ofQ/edit?usp=sharing)

**Develop, Configure, Integrate**

8. PS Engineer: 
   -Complete work per the SOW
9. Project Owner:
    - Weekly project meeting (if applicable): Notes documented in the Project Definition
    - Keep Mavenlink up to date:  project schedule, project health, milestone acceptance
    - Provide Weekly Status Report: Using the template in the Project Definition
    - [Change request template ](https://docs.google.com/document/d/1zed5AsEpjzwII0HaIjsmXYaRAp5qHY-BGJfVCISVGcM/edit?usp=sharing)(required for scope changes).

**Validate**

10. Project Owner:
   - Send [activity-based acceptance requests](https://docs.google.com/document/d/1RiS5TY5484nQuDTW8YMiB-CibVfoni7NJ8IUG2osUD0/edit?usp=sharing) to the customer for approval
11. Customer:
   - Approves completion for each activity or deliverable via email

**Deploy & Close**

12. Project Owner:
    - Complete this [sign off workflow](https://about.gitlab.com/handbook/customer-success/professional-services-engineering/workflows/project_execution/sign-off.html)
    - Complete this [financial wrap-up workflow](https://about.gitlab.com/handbook/customer-success/professional-services-engineering/workflows/internal/financial-wrapup.html)
    - [Project closure meeting](https://docs.google.com/document/d/1Cw5eLe8VKFtHG9xGqUiCua8Pbu52reMzHujcPWq3ofQ/edit?usp=sharing)
    - Schedule [project closure meeting with agenda](https://docs.google.com/document/d/1Cw5eLe8VKFtHG9xGqUiCua8Pbu52reMzHujcPWq3ofQ/edit?usp=sharing)
13. PS Project Coordinator: PSE object update (set to complete)

### Work Exception

If a project is going to go over the alloted time/budget, open a work exception to get approvals from PS leadership by [creating a Work Exception type issue in PS Plan](https://gitlab.com/gitlab-com/customer-success/professional-services-group/ww-consulting/ps-plan/-/issues/new?issue%5Bmilestone_id%5D=&issuable_template=work-exception)


### Change Order

Change orders are common elements of Professional Services engagements.  Apply the following steps to create a change order issue, which describes the change order process.
* Note the engagement Epic number
* [Create a Change Order type issue in PS Plan](https://gitlab.com/gitlab-com/customer-success/professional-services-group/ww-consulting/ps-plan/-/issues/new?issue%5Bmilestone_id%5D=&issuable_template=change-order&issue%5Btitle%5D=Change%20Order)
* Replace `<!-- ADD CUSTOMER EPIC NUMBER HERE, e.g. &65-->` at the bottom of the description with the epic number e.g. `&65` 

### Work At Risk

When work at risk is sought, apply the following steps to create a work at risk issue, which describes the work at risk process.
* Note the engagement Epic number
* [Create a Work at Risk type issue in PS Plan](https://gitlab.com/gitlab-com/customer-success/professional-services-group/ww-consulting/ps-plan/-/issues/new?issue%5Bmilestone_id%5D=&issuable_template=work-at-risk&issue%5Btitle%5D=Work%20at%20Risk)
* Replace `<!-- ADD CUSTOMER EPIC NUMBER HERE, e.g. &65-->` at the bottom of the description with the epic number e.g. `&65` 
