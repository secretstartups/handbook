---
layout: handbook-page-toc
title: "Partner Collaboration"
description: "Learn how the GitLab Professional Services organization collaborates with Partners."
---
# Partner Collaboration
{:.no_toc}

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Why Partners?

As the sales of GitLab increase, the demand for professional services will follow suit. To meet this demand we need to have an **elastic and on-demand bench of delivery resources**. Partner collaboration will also help to **prevent PSE Burnout** by allowing **PSEs to take lead roles** (e.g.architect, technical oversight, etc.). Finally, building relationships with partners allows the delivery team to **add Subject Matter Experts** as needed.

From a sales perspective, channel partners can help facilitate the initial licence deal and up-selling opportunities with customers whom they have an ongoing relationship.

## Partner Disambiguation
There are different types of relationships we can have with partners and its important to outline the distinctions :point_down:. Direct vs indirect is a reference to the way the services are sold - Direct means the partner sells direct to the customer, Indirect means GitLab sells services and the partner helps with execution.

|   | Partner Indirect (Staff Augmentation)  | Partner Indirect (Project Based)  | Partner Direct |
|---|---|---|---|
| Subcontracted to GitLab?  | Yes | Yes | No |
| Access  | Slack, www-gitlab-com, GDrive  | Slack, www-gitlab-com, GDrive | Partner Portal |
| Communication w. GitLab PS | Organic (see above row)  | Organic (see above row)  | Partner Help Desk  |
| Allowed to know of other Customers of GitLab PS?  | Yes | No | No |
| Can contribute back to practice automation?  | Yes | Yes | TBD  |

### Partner Direct
GitLab PS can and should help our partners be successful in delivering services for their (and by extension, our) customers. We can **provide guidance, examples and strategic advice**, including references to public documentation or blog posts that could help "un-stick" a partner in an engagement. If the partner needs **hands-on help**, however, we will need to **engage with the partner via an SOW** to ensure we have appropriate liability protections in place.

*Note: GitLab professional services is building out a means to field and respond to help desk questions from the channel partners who are not subcontracted with us (Jan/Feb 2021). More details to come as this process gets created.*

## Partner Indirect Collaboration Guidelines
- Partners (Indirect) (both flavors) should have access to any subgroup or project under [global practice development](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development) 
- PSEs should be maintainers responsible for MR approval and Merging new code from other PSEs and Partners (Indirect)
- Code reviews should happen on all merge requests
- Access to customer and PS specific Slack channels
- **Partner Indirect can have access to AWS, Azure, GitLab Demo, etc.**
- For delivery work on a customer engagement:
    - Partner Indirect (Staff aug)
        - Access to all of the delivery journal issues in [PS Plan](https://gitlab.com/gitlab-com/customer-success/professional-services-group/ps-plan/-/issues_)
        - Access to the [global practice development](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development)  group with all automation collateral 
    - Partner Indirect (project based)
        - Specific access to the customer delivery (? need to check with Melani)
        - Access at the lowest level under [global practice development](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development) to complete the customer project (as appropriate)

## Collaboration by Type of Service

### Implementation Services
- These services almost always involve actually building the infrastructure and configuring the gitlab components so maintaining a customer-free reference for IaC of configuration Automation tends to be harder 
- [Proliferate](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/implementation/proliferate) can be used by Partners (Indirect) (project based and staff aug).
- Partners (Direct) TBD
- As Partners (Indirect) deliver implementation services projects, they can use [Implementation services discovery deck](https://docs.google.com/presentation/d/1K37wr--H2IT9Kv_c9N99UmkGUovAg6iOLmbcRKeKf10/edit)
Make sure as you (and/or the partner) is delivering the implementation services, you contribute back to the [Implementation Projects](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/implementation) (specifically [Proliferate](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/implementation/proliferate))

### Migration Services
- Any migration to gitlab.com requires PSE involvement due to needing admin tokens to create users on gitlab.com
- Partners (Indirect) (project based and staff aug) can use congregate and supporting automation utilities.
- As partners start migration projects, they can use the [Migration Kickoff Deck](https://docs.google.com/presentation/d/1AzM_qYKKOYhgvNTrEBXRmFT2m0caBuKZ6VAH6sCbiKQ/edit#slide=id.g7c1de0839e_0_0) or [Migration Early Adopter Kickoff](https://docs.google.com/presentation/d/19pNUZljJ7mOM8SQ31miYzaU4lXcmHI96Q6yJKqQ2dx4/edit) (for larger engagements) to help facilitate discovery discussions.
- When using [congregate](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/migration/congregate), you will need to deploy it somewhere. If you need to deploy it within the customer firewall, make sure any hot-fixes you make to migration services source code you port back to the migration services projects.

### Consulting Services
- Require discovery sessions to further define the problem space that customer is trying to solve
- Deliverable(s) for these services is
    - typically a written recommendation on how to solve the problem
    - *sometimes* proof of concept code customers can apply to their environment.
- All code developed for these services must NOT contain any customer information so we can reuse the project for future customers without reinventing the wheel.
- [Consulting services](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/consulting) should be built and maintined in the consulting directory of [global practice development](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development)

## Employing Partner/Consultants

If the project requirements exceed the current capacity of the available resources then the professional services team may employ a Consultant to help deliver the project.  The following provides a checklist of items to process before and during the use of a subcontracted resource:


1. Partner Search 
    - Share “sample PS Projects” with viable partners
        - [Advisory Project](https://docs.google.com/document/d/1KhADjTUOndaAev3dSLlRgyEJtBIT6wv_rr3aH5hsKKQ/edit?usp=sharing) 
        - [Implementation Project](https://docs.google.com/document/d/13Mw-7uSSclfwm6JWcs8UrXM9SunX8ebIeIk-n9q9b6Y/edit?usp=sharing)
        - [Migration Project](https://docs.google.com/document/d/1OuCZqxZvjiPx2S0bFnX8tGgfBFWeg_gdifQWhdtTlAg/edit?usp=sharing)
        - Project Management Project (coming soon)
        - Training Project (coming soon)
    - Share “PSE Profiles” with viable partners
        - Advisory (Profile coming soon)
        - Implementation (Profile coming soon)
        - Migration (Profile coming soon)
        - Project Management (Profile coming soon)
        - Training (Profile coming soon)

1. Partner Vetting
    - Sr. Channel Solutions Manager sends [Skills Matrix Form](https://docs.google.com/forms/d/e/1FAIpQLScxgCHtbuLl53HrzH55hTpXxCSCXeUDRo6uyM2YKxy9QHMI0w/viewform?usp=sf_link) for Consultant to complete prior to meetings with PS Team Members. 
    - Sr. Channel Solutions Manager shows Partner Principal how consultants may access the Soft Skills Course which allows PS to assess consultative skills. 
    - Consultants must complete Soft Skills Course (in GitLab Learn)
    - Sr. Channel Solutions Mgr / Director of PS reviews/approves Soft Skills Course submission

1. Partner Onboarding
    - Partner principals requests consultants to register on [Gitlab's Partner Portal](https://partners.gitlab.com). _This will result in an email to the consultant's inbox for them to open the "Welcome to Edcast" & activate their account for Onboarding._
        - GitLab Learn (Thought Industries)
            - [Migration](https://gitlab.edcast.com/pathways/gitlab-migration-services-engineer-pathway)
            - [Implementation](https://gitlab.edcast.com/pathways/gitlab-implementation-engineer-specialist-pathway)
            - Training
                - [GitLab Certified Security Speialist](https://gitlab.edcast.com/pathways/gitlab-certified-security-specialist-pathway-for-gitlab-part)
                - [Gitlab Certified CI/CD Specialist](https://gitlab.edcast.com/pathways/gitlab-certified-ci-cd-specialist-pathway-for-gitlab-partner)
                - [Gitlab Certified Associate Pathway](https://gitlab.edcast.com/pathways/gitlab-certified-associate-pathway-for-gitlab-partners)
                - [Gitlab Certfied Project Management Specialist](https://gitlab.edcast.com/pathways/gitlab-certified-project-management-specialist-pathway-for-g-this)
        - PSE Onboarding
            - Complete either Migration or Implementation Certification
            - Project Coordinator to schedule 30-45 min technical deep-dive with a Senior PSE
            - Interview results captured in partner tracking sheet
            - Sr. PSE approval needed to move forward with onboarding
        - Project Manager Onboarding 
            - Consultant PM completes GitLab Certfied Project Management Specialist
            - Partner principals create [Gitlab Onboarding Issue](https://gitlab.com/gitlab-com/customer-success/professional-services-group/onboarding-epics) for Project Managers and assign it to Consultant
            - Consultant must complete onboarding issue and mark onboarding issue as completed 
    - Consultant must use the same email address they used for training to ensure onboarding issue is tied to the correct entity. 
    - Professional Services Operations Team Tasks
        - PS Ops Teams assigns an Onboarding Buddy 
        - Onboarding Buddy will follow the Consultant throughout the project
        - PS Ops Team manages the Consultant onboarding journey. 


1. Partner Projects
    - PS Ops Team reaches out to list of viable partners looking for a specific role that needs to be staffed for a customer project
    - Partner responds with candidates and availability 
        - If not vetted, go to Step 2
        - If vetted, go to Step 4, activity # 3
    - PS Ops Team initiates SOW using partner specific SOW template (if available), or generic GitLab SOW template
        - Director or PS negotiates rate on a per project basis, unless predetermined
        - SOW modifications include, but not limited to:
             - Scope 
             - Technical requirements
             - Background check/security clearance requirements
             - Hourly rate
             - Billing terms as determined in MSA, MPA or Sub-contracting Agreement
             - Travel and expenses (if on site required)
    - PS OPs: SOW Approval process:
        - Verbal or written approval from the partner to proceed with SOW
        - GitLab submits legal case attached to the customer opportunity, requesting legal stamp on the SOW
        - GitLab submits stamped SOW for Finance Signature via Docusign
        - Signed/stamped SOW is sent to the Partner for signature via Docusign or email
        - Final SOW is posted to SFDC opportunity, and in partner folder in G Drive, Mavenlink, Coupa
        - PS Ops Team ensures background checks/security clearance meets the needs of the customer 
        - PS Ops Team sets Consultant up in Mavenlink
             - PS Ops Team meets with Consultant to [review how to log time](sites/handbook/source/handbook/customer-success/professional-services-engineering/professional-services-operations), etc.
             - PS Ops Team adds Consultant OOO schedule to Mavenlink
Utilize project escalation process as needed
                - [Work at Risk (WAR)](https://gitlab.com/gitlab-com/customer-success/professional-services-group/ww-consulting/ps-plan/-/issues/new?issue%5Bmilestone_id%5D=&issuable_template=work-at-risk&issue%5Btitle%5D=Work%20at%20Risk)
                - [Work Exception](https://gitlab.com/gitlab-com/customer-success/professional-services-group/ww-consulting/ps-plan/-/issues/new?issue%5Bmilestone_id%5D=&issuable_template=work-exception) 
                - [Change Order](https://gitlab.com/gitlab-com/customer-success/professional-services-group/ww-consulting/ps-plan/-/issues/new?issue%5Bmilestone_id%5D=&issuable_template=change-order&issue%5Btitle%5D=Change%20Order)
        - PS Ops Team submits Access Request Issues
            - Requesting access to appropriate technical tools (hardware & software)
            - Requesting to add Consultant to appropriate slack channel(s)
        - PS GitLab Project Manager starts the project with the Consultant
        - PS GitLab Project Manager tracks Consultant hours against SOW
             - PS GitLab Project Manager keeps tabs on total burn vs. project burn to ensure Consultant can complete the project as per the terms of the SOW
             - PS GitLab Project Manager raises risk of Change Order to PS Ops as appropriate
        - Consultant holds weekly check-in outside of customer meetings, including with their onboarding buddy. _Consultant and PS Onboarding Buddy ensure clear communication (as Consultant have less access to slack)._


1. Partner Offboarding
    - PS Project Manager invites Consultant to Project Retrospective meeting (as appropriate)
    - PS Project Manager submits an Access Request to:
        - Remove the Consultant from the customer project slack channel
        - Remove access to any project specific GitLab tools or development work spaced
            - Ensure Consultant is not working on any other ongoing projects
    - PS Onboarding Buddy or PS GitLab Project Manager sends Consultant Survey to gather feedback on project & onboarding experience. 




