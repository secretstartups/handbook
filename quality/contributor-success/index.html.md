---
layout: handbook-page-toc
title: "Contributor Success Team"
description: "Contributor Success Team"
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

- - -

## Mission

The goal of the team is to increase the technical improvements and efficiency of our contribution process to sustain our ambition of [1000+ contributors with merged MRs per month to GitLab](/company/strategy/#2-build-on-our-open-core-strength).

## Strategy

We will be executing in 4 key areas in support of the company's broader [dual-flywheels](/company/strategy/#dual-flywheels) strategy to attain more contributions. The 4 key areas together are the building blocks of our contributor & contribution 10x acceleration strategy. 

```mermaid

flowchart LR
  subgraph moreContributions["More Contributions"]
    contributorIncrease("Contributor Increase")
    contributionIncrease("Contribution Increase")
    increaseValue["Increase Contribution Value"]
    improveVelocity["Improve Contribution Velocity"]
    scaleCommunity["Scale the Community"]
    expandOutreach["Expand Outreach"]
    scaleCommunity-->improveVelocity
    scaleCommunity-->increaseValue
    expandOutreach-->scaleCommunity
    increaseValue-->contributionIncrease
    improveVelocity-->contributorIncrease
  end
  style moreContributions fill:#FFF, stroke:#9370DB, stroke-dasharray: 5 5
  style contributionIncrease fill:#9370DB,stroke:#9370DB,stroke-width:4px
  style contributorIncrease fill:#9370DB,stroke:#9370DB,stroke-width:4px
  style improveVelocity color:#6b4fbb, stroke:#9370DB
  style increaseValue color:#6b4fbb, stroke:#9370DB
  style expandOutreach color:#6b4fbb, stroke:#9370DB
  style scaleCommunity color:#6b4fbb, stroke:#9370DB
  click improveVelocity "./#improve-contribution-velocity"
  click increaseValue "#increase-contribution-value"
  click expandOutreach "#expand-outreach"
  click scaleCommunity "#scale-the-community"

 ```


### Improve Contribution Velocity

Provide an outstanding and efficient contributor experience, from onboarding materials to final merge. Improve Contributor Journey, making it easier and efficient to contribute. Gather feedback from Wider community contributors and product teams on contribution friction.

#### Reduce Open Community MR Age

Improve the speed of contribution to production by reducing [Open community MR Age (OCMA)](/handbook/engineering/quality/performance-indicators/#open-community-mr-age) & review time. We have identified product groups with the highest open contribution MR age. Analysis and improvements are needed to address product groups with the biggest opportunity. In addtition to improving MR review and gathering feedback.  

  * **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/1](https://gitlab.com/groups/gitlab-com/quality/-/epics/1)
  * **DRI:** Contributor Success team (Engineering)

#### Simplify & improve contribution guides 

Make contribution guides easy to navigate. Our current contribution guides are fragmented and can be hard for new contributors to navigate and understand. 

  * **DRI:** Community Relations team (Marketing)

#### Improve contribution tooling
Provide fast and efficient contributor experience via our tooling. Our contributor tooling needs to be optimized for contributor productivity

  * **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/2](https://gitlab.com/groups/gitlab-com/quality/-/epics/2)
  * **DRI:** Engineering Productivity team (Engineering)

#### Product groups focus

Contribution submissions, backlog, and technology stack vary amongst all [product groups](/company/team/structure/#product-groups). Providing a healthy community backlog alignment & establishing a common best practice outreach for all product groups.

  * **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/3](https://gitlab.com/groups/gitlab-com/quality/-/epics/3)
  * **DRI:** Product Ops, Community Relations & Contributor Success 

### Increase Contribution Value

Incentivise, attract and retain contributors by providing a compelling value and regular recognition of contributors for their work. Contributor career advancement materials and awards.

#### Define contributor value proposition 

We need a clear definition of what drives people to contribute to GitLab and to present a compelling value proposition for increasing code contribution.

  * **DRI:** Community Relations team (Marketing)

#### Developer badges & certification 

Implement a badging system and eventually work towards a certification program for GitLab developers 

  * **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/4](https://gitlab.com/groups/gitlab-com/quality/-/epics/4)
  * **DRI:** Contributor Success team (Engineering)

#### Contributor recognition

Provide sustained and impactful recognition to recognize & retain our contributors. Increase frequency and targeted recognition to types and persona of contributors

  * **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/7](https://gitlab.com/groups/gitlab-com/quality/-/epics/7)
  * **DRI:** Contributor Success team (Engineering) & Community Relations team (Marketing)

#### Contributor career advancement

In Open Source Projects, the contributors’ motivation in addition to solving a bug or adding a missing feature is to get experience and build their CV for career advancement. 

  * **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/5](https://gitlab.com/groups/gitlab-com/quality/-/epics/5)
  * **DRI:** Contributor Success team (Engineering) 

### Expand Outreach

Increase awareness with content and events to drive large amounts of contributors. Our outreach efforts so far have been limited. Engineering to work along side Community Relations in expanded outreach events 

### Scale the Community

Leverage the full-time customer contributor model and create wider community teams for rapid growth.




- **Contributor inspiration, awareness and incentivization** Regular incentivization of content to inspire contributors. Testimonials from existing contributors
  - Contributor recognition. Harmonize, redesign, promote existing “Hall of Fame” pages (MVP, Heroes, Top annual contributors)
  - Active outreach to partners and customers. Partner with TAM team to launch certification and training resources
  - In collaboration with Marketing, awareness campaign around Open DevOps Platform and the GitLab stewardship model
  - Benefits program for contributors
    - GitLab Developer Certification 
    - GitLab Heroes 
- **Measure, optimize and iterate** 
  - Measure the Wider Community Contribution process to identify bottlenecks and optimize the process
  - Ensure accuracy of performance indicators and contributor tracking      
- **Partnerships**
  - Establish Engineering to Engineering liaisons and partnerships
  - Engineering representative that can ride along with the evangelist and program manager. Full time presentation. 
  - Outreach to other OSS projects 
  - Work alongside Contributor Program Manager in outreach efforts
  - Cross coach Community Contribution teams on the technical aspects 

## Community Performance Indicator Goals

We aim to increase the focus on our community contributions. Below is a timeline
on how we will measure and track this goal.

- **[Unique Wider Community Contributors per Month](/handbook/engineering/quality/performance-indicators/#unique-wider-community-contributors-per-month)**
    - Target: increase to be greater than 200 per month by FY23Q4
    - Activities:
        - Partnership with Community Relations and Technical Marketing team.
        - Hold community office hours
        - Hold hackathons
        - Allow running of QA tests from forks
        - Shorten the CI runtime for community contributions (in forks)
- **[Community Coaches per Month](/handbook/engineering/quality/performance-indicators/#community-mr-coaches-per-month)**
    - Target: increase to be greater than 50 per month by FY23Q3
    - Activities:
      - Work with Development Department (Christopher L, VP of Development) for volunteers.
      - Work with UX Department (Christie L, VP of UX) Christie for volunteers.
      - Refresh MR coaches as “Community coaches” so non-code review work can be encouraged (design, etc)
      - Launch training materials for coaches
- **[Community Contribution MRs as Features per Month](/handbook/engineering/quality/performance-indicators/#community-contribution-mrs-added-as-features-per-month)**
    - Target: increase to 30% by FY23Q2
    - Activities:
        - Encourage features at Community relations hackathons.
        - Published list of feature issues with Marketing team.
- **[Open Community MR Age](/handbook/engineering/quality/performance-indicators/#community-contribution-mean-time-to-merge)**
    - Target: decrease to lower than 30 days by FY23Q4
    - Activities:
        - Shorten CI time
        - Improve Community Contribution automation
        - Enable running QA tests on forks
        - Increase number of coaches
        - Partner with Engineering Productivity to provide feedback to improve contribution tooling (currently GDK).
- **[MRARR](/handbook/engineering/quality/performance-indicators/#mrarr)**
    - Target: increase to 400M MR$ by FY23Q4
    - Activities:
        - Reach out to top tier enterprise customers
        - Partner with TAMs to enlist and facilitate contribution from paid customers
        - Launch contribution materials targeting large enterprises
        - Partner with Community relations team (David P)
        - Maintain a list of known contributors with a mapping to their accounts and the accounts ARR contribution as input to this KPI

## Team Responsibilities

* Carry out Engineering open source outreach efforts.
* Improve GitLab's Contribution Efficiency and Merge Request Coaching process.
* Engineering representative that can ride along with the evangelist and program manager.
* Organize community contributors into [community teams](team-structure/community-teams) and ensure their success.
* Provide guidance to community contributors on technical and non-technical aspects.
* Track [contribution](/community/contribute/) delivery of the Community Contributors and Cohorts.
* Improve community recognition system and awards in collaboration with Community Relations team.
* Nominate impactful community contributors and contributions for recognition.
* Contribute as an MR Coach in one or more MR Coach speciality.
* Provide guidance and coaching to team members on technical contributions, product architecture, and other areas.
* Be a point of escalation for community contributors and identify GitLab DRIs to resolve blockers
* Participate in GitLab's overall open source outreach events and processes.
* Collaborate closely with our Marketing counterparts and Core team.

## OKRs

Every quarter, the team commits to [Objectives and Key Results (OKRs)](/company/okrs/). The below shows current and previous quarter OKRs, it updates automatically as the quarter progresses.

### Current quarter

<iframe src="https://app.ally.io/public/TQRmKHpOC7NoZb7" class="dashboard-embed" height="1600" width="100%" style="border:none;"> </iframe>

### Previous quarter
<!-- uncomment after FY23Q2 starts
<iframe src="https://app.ally.io/public/e0izWt13OqmGHuO" class="dashboard-embed" height="1600" width="100%" style="border:none;"> </iframe>
--> 

## Project Management

This team has the following immediate work items planned.

* [Contribution Efficiency Improvements Epic](https://gitlab.com/groups/gitlab-com/-/epics/1619)
* [Increasing MRARR through internal partnerships](https://gitlab.com/groups/gitlab-com/-/epics/1225)

## Active Quarter OKRs


## Team Structure

This new team resides under the Quality Department operating as a team of
Full-stack engineers, led by an Engineering Manager reporting to the
Quality Department Leader.

```mermaid
graph TD
    A[Quality Department]
    A --> B[Contributor Success Team]
    B --> BA[Contributor Success Engineer]
    B --> BB[Contributor Success Engineer]
    A --> CA(Quality Engineering teams)
    CA --> CAA[Software Engineer in Test]
    CA --> CAB[Software Engineer in Test]
    CA --> CAC[Software Engineer in Test]
    A --> D[Engineering Productivity Team]
    D --> DA[Engineering Productivity Engineer]
    D --> DB[Engineering Productivity Engineer]
    style B fill:#bbf,stroke:#f66,stroke-width:2px, color:#fff
    style BA fill:#bbf,stroke:#f66,stroke-width:2px, color:#fff
    style BB fill:#bbf,stroke:#f66,stroke-width:2px, color:#fff
```

## Contributor Efficiency Working group

There's a working group with members from Quality and Community Relations that
aims to streamline and improve contributor efficiency. It implements key
business iterations that results in substantial and sustained increases to
community contributors & contributions.

- Handbook page - <https://about.gitlab.com/company/team/structure/working-groups/contribution-efficiency/>
- Agenda - <https://docs.google.com/document/d/1AOgqaslnq-WI1ICSZ1NzSnALf1Va4D5qAD191icAoSI/edit#>

## Code Contributor User Journey

The code contributor user journey is documented in the handbook - [User Journey](./user-journey.html)
