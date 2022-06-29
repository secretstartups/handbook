---
layout: handbook-page-toc
title: "Acquisition Process"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

This is a detailed view of our acquisition process. For more information about
our acquisitions approach visit our [acquisitions handbook](/handbook/acquisitions/).


## Acquisition process

The process is comprised of four key stages:

1. Pipeline Building
1. Exploratory
1. Early Diligence
1. Confirmatory Due Diligence
1. Integration

### Pipeline Building

1. Sourcing: The corporate development team closely collaborates with GitLab's product leadership to identify key areas for potential M&A. We source acquisition opportunities ("Sourced Pipeline") from:
    1. Ecosystem screen with the help of third party databases such as Crunchbase
    1. Inbound introductions from GitLab team members and industry contacts
    1. Proactive outreach to companies aligned with our vision and strategic priorities

### Exploratory

1. We prioritize companies that fit with our product and acquisition priorities ("Prioritized Pipeline") and reach out to their leadership to set up intro calls.
1. Intro calls: The purpose of this 30-min call is to learn more about the potential target company and assess if further acquisition discussions make sense. The agenda for the call is:
    1. Company overview including team, products, financials, and funding
    1. Discuss which features could accelerate GitLab's roadmap
    1. Review the GitLab acquisition process including deal terms, as appropriate ([acquisitions handbook](/handbook/acquisitions/))
    - TARGET TEAM: Ahead of this call please review our [roadmap](/direction/) and outline which of your current and future product features can be implemented into GitLab's product categories. Outline a simple integration timeline for those features, considering an MVC release on the first month after joining GitLab and monthly releases following with quick iterations.
1. Share call summary ([Initial Acquisition Review Template](https://docs.google.com/document/d/1RekjfQj89pIV7DZzeNZ00HYOwqlqlDFm7Gy4yZET9rc/edit?usp=sharing), a GitLab internal document) of companies that are aligned with GitLab's acquisition strategy ("Qualified Pipeline") with relevant product lead.
    - Create a new, private Slack channel (format: `#acq-company_name`) and add the internal GitLab document to the top. Add VP of Product Management and the relevant product and engineering leaders to help with the initial assessment of the opportunity.
1. Product call: If the Product champion sees a potential fit and wants to proceed, set up an initial 60-minute product call to dive into the product and tech. The call must include the Product champion and may also include Section Leaders and specific Product Managers relevant to the call. Section Leaders and Product Managers should keep in mind the early stage of this evaluation and attempt to think expansively about how the potential acquisition could be additive to GitLab. Include the VP of Product Management as optional attendee. The agenda for the call is:
    1. Product demo with highlights on key functionality and technologies
    1. Concise roadmap overview with a focus on near-term plans
    1. [GitLab roadmap](https://about.gitlab.com/direction/) fit - discuss which features could be built into GitLab and into which product stage
    1. Start the discussion about what an integration into GitLab's code base will look like
1. Initial internal review: preliminary assessment of product and technology fit of the potential opportunity to GitLab's [product roadmap](/direction/) as well as integration options into GitLab. If the product lead is supportive of moving forward towards developing a more in depth business case, confirm whether the proposed acquisition can be funded with planned headcount allocations. Otherwise, set up a discussion with the VP of Product Management before proceeding with further diligence.

### Early Diligence

1. Select [code name](#acquisitions-are-confidential) to use instead of target company name. Update Slack channel: `#acq-code_name`.
1. Sign a mutual NDA as linked on our [legal handbook page](/handbook/legal/).
1. [Form the acquisition team](#acquisition-team) and add entire team to the channel and documents.
1. Confirm internal acquisition champion - every acquisition needs a lead champion; someone who is advocating for the acquisition, helping drive the acquisition rationale, and seeing its successful integration. For most acquisitions that fit our [approach](/handbook/acquisitions/), the champion will come from GitLab's Product team, at the Director level, accompanied by an engineering champion from the GitLab's Engineering team, at the Director level, respectively. For other acquisitions, champions may come from other internal functions.
1. Preliminary diligence - below is a list of documents to share with GitLab:
    1. Financials:
        1. Cap table
        1. Balance sheet
        1. Profit and Loss sheet
        1. Cashflow statement
        1. Tax returns
    1. Employees:
        1. Roster with: employee name, title, role, tenure, years of experience, location, salary, LinkedIn profile, programming languages proficiency
        1. Employee resumes
        1. Employee agreements and PIAA
    1. Customer list with name, monthly revenue, contract termination date and any other fields if relevant.
    1. Vendor list with monthly spend
    1. Asset list:
        - Any assets that are needed for the business and will be part of the acquisition
        - Assets excluded from the acquisition
    1. Technical Bill of Materials (BOM) - a complete document which lists:
        1. Repositories
        1. Issue trackers / bug management systems
        1. Additional (non-code) assets
        1. Domain names
        1. Servers
        1. Dependencies
        1. Database schemas
        1. Data
        1. Trademarks
        1. Social media accounts
    1. Security Reports/Documentation
        1. External Security Reports
            - SOC 2
            - ISO 27001 Certification
            - CAIQ
            - External Penetration Testing Report
        1. Internal Security Documentation
            - Risk Management Program Documentation
            - Risk Register and status of risks
            - Results of security reviews the entity has performed over it's current vendors
1. Early technical diligence:
    1. In case the target company has open source components, the respective Dir. Engineering (dependent on GitLab stage) will start an early code review to determine: code quality, development practices, contributions, license compliance and more. That should be turned around within 2-3 business days.
    1. Technical call: a hands-on product and code screen-share session (2 hours) in which the technical lead, as assigned by the respective Engineering champion, together with the respective Product champion will lead a screen-share session aimed at a hands-on validation of the product functionalities and an overview of the code. The objectives and agenda for the call are:
        1. Objectives:
            1. Technically validate the functionalities and competencies of the product which have been presented throughout our process thus far
            1. Conclude a high level evaluation of the complexity and quality of the solution
            1. Identify blockers, challenges for the integration
        1. Agenda:
            1. Cover a more technical demo of the product; cover further questions/areas which surfaced following the Product Call
            1. Walkthrough of the architecture and the mechanisms of the product
            1. Review the code repositories and practices
            1. Start discussing the technical aspects of a potential path for the integration
    1. Founder technical interviews - founders will go through two rounds of interviews to assess technical and cultural alignment.
1. Resume review - Review of all employee resumes
1. Compensation review to identify any gaps and possible flags led by the HR Business Partner
1. Optional interviews for the key technical employees - to increase the success rate of the deal post-Term Sheet, we recommend conducting interviews for the key technical employees identified before signing the Term Sheet. This will greatly reduce the likelihood of personnel gaps becoming a blocker during the Confirmatory Due Diligence stage. The interviews will include a technical interview and a manager interview as detailed in the Confirmatory Due Diligence stage below.
    1. The key technical employees are those identified as critical to the success of the acquisition, the proposed integration plan and the future of the team at GitLab post integration.
1. An Application Security Review performed by GitLab's Application Security Team
    1. Identifies application vulnerabilities that need to be considered by GitLab by applying a threat modeling approach to conduct the review
1. Product integration strategy: the GitLab product and engineering acquisition champions will formalize the integration strategy with a focus on feature sets/functionalities:
    1. What we keep as-is
    1. What we reimplement in GitLab
    1. What we discard/EOL
    1. What is critical for user migration
    1. Target [product tiers](/handbook/marketing/strategic-marketing/tiers/) in GitLab
    1. Barriers for implementation
    1. Deal Milestones:
        1. We aim to set 3 milestones at 2, 4 and 6 months from joining GitLab, to provide a concise set of goals which should cover the bulk of our product interest in the target company
        1. Milestones should be articulated as objectives as opposed to tasks. The structure of defining milestones should resemble that of OKRs, with each milestone having an objective and then a few key results which will are required to achieve the objetive. This will help target companies focus on driving the objectives and not be tied to, and concerned with, a specific task as changes are likely to occur once integration work starts. The milestones outline the objectives to facilitate the work required in achieving the roadmap advancement the deal was identified with delivering. Each milestone should be broken down to the keys required to complete in order to achieve success for the milestone's objective.
        1. First milestone shipped within 60 days of joining GitLab:
            1. Accounting for 3 weeks of onboarding, targets will ship the first milestone 5 weeks following the onboarding period
            1. Critical to adopting our culture and successful future integration of the target's engineering team in GitLab
            1. Allows us to show early fruits of the acquisitions soon, aligned with our value of iteration
        1. Integrated within 6 months:
            1. 6 months is an optimal timeframe which allows for incremental integration of the target's functionality, covering its entirety at best or its fundamentals at the very least, while not being overly extended. We would want to refrain from using a longer time frame as our roadmap priorities may change such that we could potentially find ourselves abandoning certain milestones, negating some or all of the rationale behind the deal.
            1. Will help establish focus on both acquired target and our product team
            1. Be able to complete payouts to the target's entity and shut it down sooner
        1. At least one milestone will focus on developing new functionality which will be based on the integration delivered in earlier milestones
1. To determine the deal ROI, the acquisition team will perform the analysis using the [cost-revenue acquisition calculator](https://docs.google.com/spreadsheets/d/1ke36-mtEi8MhfMKXpYGMRP6H3HH6MimxXt86Zv_QkzM/edit#gid=0) (_internal_ GitLab document). Make a copy of the master cost-revenue acquisition calculator file and save it in the relevant project folder in Google Drive before making changes to the file.
1. Presenting the business case for approvals (by order of occurrence):
    1. Champions' approval: The acquisition team will review the business case together and approve the suggested deal. This includes approval of all the following:
        1. Complete executive summary (with link to term sheet draft) including budget and headcount allocation for the acquisition
        1. Complete business case ([templates](https://docs.google.com/document/d/1RekjfQj89pIV7DZzeNZ00HYOwqlqlDFm7Gy4yZET9rc/edit) for both) including Deal Milestones
        1. Complete term sheet ([template](https://docs.google.com/document/d/1_G2bXxhMe_qXrF8LdZcXwsCcIs1GJAS1-v42U2MV8a4/edit)) draft with proposed details (asset payment, retention bonuses, Deal Milestones, closing schedule, customer termination and closing conditions) filled in.
    1. Functional approvals: The corporate development acquisition lead, Product and Engineering champions will present the business case for acquisition to the VP of Product Management, CTO and CRO. They will review to approve the items listed in the Champions' approval (complete: executive summary, business case, term sheet)
    1. CEO, CFO and CLO approvals: The corporate development acquisition lead, Product and Engineering champions will present the business case for acquisition to the CEO, CFO and CLO. This meeting will also capture the **explicit approval** of the term sheet to start negotiations.
        1. Approval of term sheet to start negotiations will be tracked in a [term
        sheet approval issue](<https://gitlab.com/gitlab-com/corporate-development/issues/new?issuable_template=term_sheet_approval>). We don't include any financial and milestone information in the approval tracking issue for confidentiality reasons.
1. Term Sheet:
    1. Once the terms to start negotiations have been approved, the corporate development acquisition lead will reach out to the target company to share the offer and term sheet.
    1. Once an agreement on terms with the target has been reached, the term sheet (with any changes) will be brought forward for approval from: CLO, CFO, CEO (in that order). These approvals will be captured in the term sheet approval issue.
    1. Once all approvals have been obtained, the corporate development acquisition lead will stage the term sheet for signing on Docusign for target CEO and GitLab CEO (in that order). Add CLO, CFO, and VP of Product Management on Cc on the agreement.
        1. Approval tracking will be tracked on the term sheet approval issue mentioned earlier. Any changes to previously-approved terms need to be reviewed and approved once more by the following: Product champion, Engineering champion, VP of Product Management, CTO, CLO, CFO, CEO. The changes should be referenced on the term sheet approval tracking issue _before_ seeking approvals.

### Confirmatory Due Diligence

1. To kick-off the Due Diligence stage, the corporate development acquisition lead emails the target company CEO with the following clarifications and information requests:
    1. All employees and their profiles will be reviewed by the GitLab team
    1. The employees who will be invited for interviews will go through GitLab's standard interview process
    1. Key employees who were interviewed during the Early Diligence stage may go through further interview rounds as determined by the GitLab team to qualify for a role at GitLab
    1. All employees must identify an open vacancy at GitLab which they think best matches their professional profile. This will be shared in a spreadsheet gathered by the target's CEO.
1. The acquisition lead will create an engagement debrief and lessons learned document and share it with the team for on-demand capturing of insights.
1. Complete [Technical diligence](acquisition-process-technical-diligence/)
1. Complete financial diligence
1. Legal diligence - Once both the technical and the financial diligence have been completed and signed off by the Engineering champion and Finance acquisition team member, respectively, the acquisition lead will contact legal to start the legal diligence. Legal will tag the relevant owners for each of the diligence tasks in the [template diligence table](https://docs.google.com/document/d/1RekjfQj89pIV7DZzeNZ00HYOwqlqlDFm7Gy4yZET9rc/edit#bookmark=id.o9gv1rfld9h2)(GitLab internal document) in the main acquisition doc.
1. The progress of the diligence will be synced on a regular stand-up call with the acquisition team
1. The corporate development acquisition lead and the legal lead negotiate the definitive deal documentation with the target company CEO and legal team
1. Final review and approval:
    1. Conclusive call - Final internal review call with the acquisition team to recap the acquisition as a whole, review the acquisition agreement and present a final recommendation. This meeting will also capture the **explicit approval** of the acquisition agreement from the CLO, CFO and CEO. Approvals from the call as well as additional required approvals will be tracked using the definitive agreement approval [issue template](https://gitlab.com/gitlab-com/corporate-development/issues/new?issuable_template=definitive_agreement_approval).
    1. BoD approval:
        1. Legal will facilitate the final deal approval from GitLab's Board of Directors
        1. A board package will be shared with the BoD members before requesting their approval. It should include:
            1. Executive summary email:
                1. Will be sent to the BoD members by the CEO
                1. The acquisition lead will create a 1-2 page executive summary email message. It should include a high level coverage of the following topics:
                    1. Deal details and rationale (including roadmap acceleration, projected revenue gain)
                    1. Expertise of team joining
                    1. Key terms for the APA and any additional costs
                    1. Diligence conducted: legal, tax, financial, technical, people
                    1. Known risks, indemnification conditions as well as representations and warranties
            1. Link to final version of APA
1. The corporate development acquisition lead will coordinate the signing and closing of the deal

### [Integration](/handbook/acquisitions/acquisition-process/integration/)

The Corporate Development team is responsible for overseeing and facilitating the integration of the acquisition post-closing, working closely with Legal, Product, Engineering, and Finance.

The integration process is outlined in our [acquisition integration page](/handbook/acquisitions/acquisition-process/integration/).

## Acquisition Team

An acquisition team will consist of the following GitLab functional team members:

1. Corporate Development - acquisition lead
1. [Product Section Leader](/handbook/product/product-leadership/#general-product-organizational-structure) (reporting to VP Product)
1. Product Manager
1. Dir. Engineering
1. Engineering team member
1. Finance team member
1. Director of Tax
1. Principal Accounting Officer
1. Legal team member
1. VP, People Operations
1. People Business Partner
1. Recruiting manager
1. VP of Security

To assign the product manager, after the product call or as soon as it's clear which product category the features will be implemented into, contact the category product director for the assignment.

To assign the engineering team member, contact the engineering manager of the relevant category for assignment.

### Acquisition Team Responsibilities

| Function                    | Role                                                                                                                                                               | Deliverables                                                                         |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| Corporate Development       | 1. Main POC for acquired team <br>2. Identify potential areas for integration 1. Create case for acquisition and customer transition story <br>3. Integration              | 1. Business case with deal structure                                                 |
| Product                     | 1. Outline current product features to be implemented into GitLab <br>2. Outline potential future functionalities to be built into GitLab after the integration period | 1. Integration strategy                                                              |
| Engineering                 | 1. Technical diligence                                                                                                                                             | 1. Code quality review 1. Integration strategy validation - feasibility and timeline |
| Finance                     | 1. Lead financial diligence <br>2. Validate business case and deal structure                                                                                           |                                                                                      |
| Legal                       | 1. Review entity, assets and existing agreements <br>2. Evaluate sunset and customer transition path                                                                   | 1. Term Sheet 1. Acquisition agreement                                               |
| People Group | 1. Maintain SSOT for team member data <br>2. Lead the compensation review <br>3. Lead the interview process during the early and due diligence stages to completion 3. Lead and assess successful team member integration in partnership with business                                                                    | 1. Team Member Offers of employment<br>2. Onboarding experience <br>3. Post acquisition survey and action planning                                             |                                                                                      |
|Security|1. Identify and summarize Security Risk Posture as part of Early Diligence <br>2. Perform Application Security review|1. Security Risk summary detailing the security risk impacts to GitLab|

## Acquisitions Are Confidential

At GitLab, we treat all acquisition discussions as confidential and share any information internally on a need-to-know basis. We apply [compartmentalization](https://en.wikipedia.org/wiki/Compartmentalization_(information_security)) for the various topics coming up during the acquisition process in order to maintain confidentiality and reduce unncessary exposure. 

To ensure confidentiality during the acquisition process, we assign code names to each potential transaction once we enter the Early Diligence stage.

To maintain confidentiality, we follow the following guidelines:

1. When creating a new acquisition slack channel:
    1. Set the channel topic to: "This channel is confidential. Please confirm with acquisition lead `name here` before inviting people to the channel or related docs."
    1. Set the channel description to: "Please review our [acquisition handbook and process](/handbook/acquisitions/acquisition-process/) to familiarize yourself with our approach to acquisitions. Please review the confidentiality section of the process and our guidelines".
1. We strive to keep the number of people involved in an acquisition as small as possible to reduce legal exposure and maintain a low potential risk. If more members are required to be brought into the acquisition for a discussion limited to a specific topic, and do not need to be involved with the wider engagement, we create dedicated, single-topic channel, and add the relevant parties to it.
1. If you're part of an acquisition Slack channel, Google Doc, or other internal GitLab discussion and would like to invite another GitLab team member to one of those, please confirm with the acquisition lead before doing so.
1. We collect all notes on an acquisition in the main acquisition doc shared on the topic of the acquisition's slack channel. If you must create a new document, make sure it is set to invite-only and add the relevant people manually. That document needs to be kept inside the acquisition G-Drive folder on the Corporate Development Shared Drive.
1. Everyone involved in the project should use the code name in place of the actual company name in all communication about the deal until it is publicly announced.

## Prioritizing Acquisition Opportunities

Each quarter the Corporate Development team defines a set of [three categories](/handbook/acquisitions/#acquisition-strategy) which are prioritized for that quarter for outbound activity. We commonly refer to them as Quarterly Focus Areas. While this is true especially for our outbound efforts, these categories will be at the center of our overall efforts and focus for that quarter, taking into account inbound prospects as well. 

Although we have our quarterly focus areas, we are open to discussing potentially pursuing an opportunity outside of those. For us to look into an opportunity outside of our quarterly focus areas, it needs to satisfy one, or more, of the following criteria:
1. Present an outsized revenue potential
1. Serve as a strategic move (market dynamics etc.)
1. Fit our [soft-landing framework](https://about.gitlab.com/handbook/acquisitions/#acquisition-approach)

Every opportunity we explore is constantly evaluated against our prioritization as well as our bandwidth (including active engagements).

If you wish to propose an opportunity you believe we should pursue and is outside of our quarterly focus areas, please contact the Corp Dev team with the rationale behind that specific opportunity.
