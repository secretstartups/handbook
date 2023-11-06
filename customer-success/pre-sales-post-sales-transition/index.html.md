---
layout: handbook-page-toc
title: Transitioning Accounts from Pre-Sales to Post-Sales
description: >-
  How to effectively transition a customer from the pre-sales engagement to post-sales to ensure the customer is successful.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

As a member of the pre-sales team, closing another successful deal for GitLab, it is important to pave the way for the CSM. A successful CSM introduction is a critical step in the customer lifecycle. An effective CSM introduction will lead to customer excitement about the product and increase the CSM's credibility as they assist the customer through onboarding, implementation, and adoption. 

<!-- NOTE: This course probably needs to be checked to ensure it's not conflicting with the new guidelines -->
Please review this course on [Introducing the Customer Success Manager](https://levelup.gitlab.com/courses/introducing-the-technical-account-manager). 

## Engaging a CSM/CSE

Not all accounts qualify for a CSM or CSE. Please view this [internal wiki page](https://gitlab.com/gitlab-com/customer-success/csm/-/wikis/CSM-Segments) with ARR thresholds by sales segment to determine if your account qualifies for either a CSM or Scale CSE.

To determine if an account already has a CSM assigned, go to the Salesforce account page, scroll to the `Customer Success` section, and see if there is an entry for `Customer Success Manager` (this should be right below the Solutions Architect). If a person is listed there, they are the CSM and you can reach out to them about the account. If `TAM Scale` is listed instead of a person, that means that the account is supported by a Scale CSE. To get a Scale CSE engaged with the account, please reference this [handbook page](/handbook/customer-success/csm/segment/scale/scale-operating-rhythm/#scale-engagement-request-process) on how to request engagement.

If you have questions about CSM alignment (either for existing or newly-qualifying customers), please reach out to the CSM Manager supporting that region (see this [handbook page](/handbook/customer-success/csm/csm-manager/#csm-leadership) for details).

If a customer will be on Dedicated, the account team should notify the CSM Manager they work with and familiarize themselves with the [best practices for engaging CSMs for Dedicated Customers](https://internal.gitlab.com/handbook/customer-success/csm/gitlab-dedicated/) to get them engaged during the pre-sales process.

## Transition Quick Summary

| | Commercial | Enterprise | 
| ---  | ---   | ---   |
| **Who** coordinates the CSM introduction? | Account Executive | Solutions Architect | 
| **When** does the introduction happen? | `Closed Won` | `3-Technical Evaluation` or `4-Proposal` |
| **Why** does the introduction happen at this stage? | Since assignments are multifaceted, a CSM/CSM manager typically needs to make the assignment. This is triggered automatically on `Closed Won`, however prior to that the account team can [request a CSM via an issue](https://gitlab.com/gitlab-com/customer-success/tam-triage-boards/commercial/-/issues/new) . | Introduce the CSM when business value discussions are still being had within the account, allowing them to build relationships with the key strategic decision-makers and help the customer visualize their implementation journey. This sets the CSM up for continued engagement at the right level within the account. |
| **How** does the introduction get scheduled? | SA/AE will send an introduction email to the customer team or schedule a "Welcome to GitLab" call. | SA will schedule a "Welcome to GitLab" call with the customer team, after having synced internally with the full [account team](/handbook/customer-success/account-team/) (inc. CSM) | 
| **Where** can the CSM access account information? | - Custom Pitch Deck <br> - Command Plan  <br> - POV (when applicable) <br> - Customer Strategy/Value Plan | - Customer Meeting Notes Doc <br> - Command Plan <br> - Account Plan <br> - Customer Strategy/Value Plan| 

## Enterprise CSM Transition Process

In enterprise deals we want to introduce the CSM to the customer while they are still a prospect nearing the end of [stage](/handbook/sales/field-operations/gtm-resources/) `3-Technical Evaluation` or when transitioning to `4-Proposal`.

### Why do we begin the transition prior to the sale?

This is a great time to introduce the CSM to the decision-makers and key stakeholders, while the SA still has regular contact and a close working relationship. These business counterparts aren't usually involved in future cadence calls, so fostering that relationship early helps CSMs to engage with the stakeholders in the business that are best positioned to help drive adoption, build a successful goals-oriented partnership and ultimately, lead to improved success planning, EBRs, etc.

Additionally, CSM engagement can be requested earlier in [stage](/handbook/sales/field-operations/gtm-resources/) `3-Technical Evaluation` (but not before) in the following situations:

  - If a POV has been conducted - Upon POV completion & results presentation meeting where the next steps agreed upon

<!--

NOTE: I'm not convinced these are valid reasons to engage a CSM prior to stage 3, which is what we are now talking about...

  - A shared customer issue tracking project has been created that will affect the account long-term
  - As requested by the SA if the CSM has a specific subject matter expertise relevant to the conversation
  -->

### How does the SA engage with the CSM?

In order to ensure the CSM workload is distributed effectively, SAs should reach out to the relevant CSM Manager in their region to request a CSM to be assigned to the account. As part of this process, SAs should provide at least the following information:

- Salesforce link to the Account
- Salesforce link to the Opportunity
- Expected Close Date
- [Landed Addressable Market (LAM)](https://internal.gitlab.com/handbook/sales/lam/) (GitLab internal Link) of the Account

After a CSM is assigned by the manager, the SA should arrange an internal [account team](/handbook/customer-success/account-team/) meeting.

### Internal Account Team Meeting

In preparation for transitioning the account to post-sales, the CSM should schedule a meeting with the entire [account team](/handbook/customer-success/account-team/) to review details about the customer and the success plan. The account team should use the following questions to review details, and define the next steps near-, medium-, and long-term for the customer adoption journey:

- What are the customer’s objectives & measurable success criteria for the next 6-12 months? For each objective discussed, ensure we have answers to the following:
  - Initiative - What activity are we completing?
  - Business Outcome - What customer-defined result do we need to achieve?
  - Success Criteria - How do we measure success?
  - Timeline - When will this be done, and what are our milestones along the way?
- Who are the decision maker(s) and stakeholders for GitLab? When is our next meeting with each of them?
- What will we discuss in our EBR with the customer 6 months from now?

Agenda for the meeting:

- Account Information
  - Name of organisation
  - Industry / sector they operate in
  - Any recent news articles about them, or the sector
  - Current Tool Stack
- Key people
  - Champion
  - Decision maker / economic buyer
  - Main points of contact
- Command Plan and reasons for purchasing GitLab
  - Defined business outcomes
  - Pain points
  - Metrics
  - Impediments to adoption and known risks
- Services engagement
  - Scope and deliverables
  - Timeline
- Customer Strategy Plan 
  - Background 
  - Solutions Alternatives/Obstacles
  - Roles
  - In Scope
  - Out of Scope
  - Target Benefits
  - Key Stakeholders 
- Open Support Tickets

If the Solutions Architect has created a collaboration project, the [account team](/handbook/customer-success/account-team/) should review it together, and ensure that `readme.md` details and issues are up to date.

### CSM introduction to the customer

Following the internal account team meeting, the SA should set up a CSM introduction meeting with the customer. When arranging this meeting, the SA can provide the customer with a high-level overview of the CSM role, and what the CSM engagement _might_ look like going forward. However, the SA (and SAE) should refrain from making any statements on behalf of the CSM, as to what activities they _will_ do.

Prior to the customer meeting, the CSM should work with the SA to prepare the [CSM program overview deck](https://docs.google.com/presentation/d/1LShY62EHCZLNjS0Z6MBzTsYF_GllNwH7Rbw3_PJQUOo/edit#slide=id.g129f8c95ce4_0_690) & [Customer Strategy Plan Summary-Page](https://docs.google.com/presentation/d/1npyhUebp68YkccLlJP5R_6gmtQjfELpB1mBGWfroVmY/edit#slide=id.g219d09d831d_0_459) to be presented as part of the introduction client meeting. This will be starting point of the CSM's relationship with the customer, and it's important to convey what the CSM's role is, the CSM's understanding of the customer's initiative's and mutually agreed upon timeline(s), and the general expectations from both sides moving forward.

While the opportunity progresses through commercial discussions, the CSM should engage with the SA where appropriate, in order to maintain the relationships with the strategic personnel and decision makers within the organisation.

### Shifting responsibility from SAE & SA to CSM

Once the opportunity moves [stage](/handbook/sales/field-operations/gtm-resources/) to `Closed Won` the CSM should schedule the kickoff meeting with the customer to go into more detail about the customer's objectives and the CSM program. Please [review the details for the CSM kickoff call](/handbook/customer-success/csm/onboarding/#kickoff-call) to learn more about how to conduct this meeting.

Now that the account is in post-sales, the CSM takes primary responsibility for guidance & best practices conversations, customer enablement, and product usage. Most responsibilities of the SAE & SA will transition to the CSM at this point.

During customer onboarding, the SA may choose to stay engaged with the customer to help facilitate a seamless introduction and address any ongoing activities from the POV. This should be done in such a way as to allow the CSM to take over those activities, so all conversations with the customer on these items should include the CSM.

Once the account is fully transitioned to post-sales, the SA may be invited by the CSM to [re-engage under certain circumstances](#re-engaging-the-saeae-and-sa).

## Commercial CSM Transition Process

A successful transition happens when a customer does not have to repeat themselves in regards to their technical environment and goals they have in mind with leveraging GitLab.

In commercial deals the CSM ought to be introduced at time of assignment which occurs after the deal moves to `Closed Won`.  For opportunities where the CSM assignment is known or there has been an in-depth technical evaluation, it is encouraged to engage the CSM team earlier in the sales life cycle so that the technical requirements can be seamlessly brought over from the pre-sales and into the post-sales technical motions.

The collective account team (AE / SA (when assigned) / CSM) should organize an internal sync to properly handover any technical details of the customer. The goal of this meeting is to give the CSM enough context to engage with the customer without them having to re-hash their current state and near-term desired state with GitLab. 

<!-- NOTE: Is there an Internal Account Team Meeting expected in commercial handover? -->

### CSM introduction to the customer

At the conclusion of the pre-sales engagement, the Account Executive should set up an introduction to the CSM, provide the customer an overview of the CSM role, position the CSM as the primary success manager to help the customer achieve their positive business outcomes as identified in the Command Plan.

The AE/SA will need to ensure that Command Plan and Pitch Deck (R7) are complete before scheduling an internal transition meeting to brief the CSM. AE/SA will then introduce the CSM via email. 

From this initial introduction, the CSM should schedule the kickoff meeting with the customer to go into more detail about the customer's objectives and the CSM program. Please [review the details for the CSM kickoff call](/handbook/customer-success/csm/onboarding/#kickoff-call) to learn more about how to conduct this meeting.

### Shifting responsibility from AE & SA to CSM

Once the account is in post-sales, the CSM takes primary responsibility for guidance & best practices conversations, customer enablement, and product usage. Most responsibilities of the AE & SA will transition to the CSM at this point. 

During customer onboarding, the SA may choose to stay engaged with the customer to help facilitate a seamless introduction and address any ongoing activities from the Customer Strategy Plan. This should be done in such a way as to allow the CSM to take over those activities, so all conversations with the customer on these items should include the CSM.

Once the account is fully transitioned to post-sales, the SA may be invited by the CSM for the following activities:

- POV for an additional business unit or a license tier upgrade
- Professional Services scoping and discovery for a [Statement of Work](/handbook/customer-success/professional-services-engineering/working-with/#custom-services-sow-creation-and-approval)
- Support of Lunch & Learns, GitLab Days, and on-site evangelism opportunities
- Executive Business Reviews (EBRs)

The SA may also be involved, as needed and at the discretion of the SA & their manager, to support customer enablement, EBR delivery, product demo, or other customer-facing activities for which the CSM may ask for assistance.

## Re-Engaging the SAE/AE and SA

Common to both Enterprise and Commercial activity, there are instances where the CSM will need to reengage the SAE/AE and SA. Here are a few examples of customer requests the CSM can listen for in order to reengage them: 

  - Development of expansion plans with the SAE and CSM leading to tier upgrades
  - A POV, product evaluation, RFP, or security begins for a "new" single team or an enterprise-wide tier upgrade not for renewal purposes
  - SAs may assist CSMs with an existing customer team on an exception basis. SA leadership approval is required.
    - Customer enablement assistance when specifically requested by the CSM team
    - Workshops assistance when specifically requested by the CSM team
    - ROI analysis for an existing customer team when requested by the CSM team
    - Unless it's for a tier upgrade, presales activities such as POVs and RFPs should be avoided for an existing customer team. Like with any presales opportunity, these activities should not be offered as a sales tools, but leveraged when a prospect/customer requires these activities as part of their evaluation.
  - Any Professional Services that are being discussed and may require an SOW
  - If a CSM is over-committed or unable to support a customer request, the SA may be requested to assist
  - Support of GitLab days or other on-site evangelism of GitLab at customer sites
  - Executive Business Reviews (EBRs)

## Useful Links

  [us-public-sector](https://gitlab.com/gitlab-com/us-public-sector) parent project for all public sector work

  [account-management](https://gitlab.com/gitlab-com/account-management/) parent project for account-specific work and collaboration with the rest of the sales

  [customer-success](https://gitlab.com/gitlab-com/customer-success) parent project for Customer Success employee, shared or triage work

  


