---
layout: handbook-page-toc
title: "Open Source Growth Strategy"
---

## Strategy

We will be executing in 4 key areas in support of the company's broader [dual-flywheels](/company/strategy/#dual-flywheels) strategy to attain more contributions. The 4 key areas together are the building blocks of our contributor & contribution 10x acceleration strategy. 

```mermaid
flowchart LR
  subgraph moreContributions["More Contributions"]
    contributorIncrease["Contributor Increase"]
    contributionIncrease["Contribution Increase"]
    increaseValue("Increase Contribution Value")
    improveVelocity("Improve Contribution Velocity")
    scaleCommunity("Scale the Community")
    expandOutreach("Expand Outreach")
    scaleCommunity-->improveVelocity
    scaleCommunity-->increaseValue
    expandOutreach-->scaleCommunity
    increaseValue-->contributionIncrease
    improveVelocity-->contributorIncrease
  end
  style moreContributions fill:#FFF, stroke:#9370DB, stroke-dasharray: 5 5
  style contributionIncrease fill:#9370DB,stroke:#9370DB,stroke-width:10px
  style contributorIncrease fill:#9370DB,stroke:#9370DB,stroke-width:10px
  style improveVelocity color:#6b4fbb, stroke:#9370DB
  style increaseValue color:#6b4fbb, stroke:#9370DB
  style expandOutreach color:#6b4fbb, stroke:#9370DB
  style scaleCommunity color:#6b4fbb, stroke:#9370DB
  click improveVelocity "./#improve-contribution-velocity" _self
  click increaseValue "./#increase-contribution-value" _self
  click expandOutreach "./#expand-outreach" _self
  click scaleCommunity "./#scale-the-community" _self
 ```

### Improve Contribution Velocity

Provide an outstanding and efficient contributor experience, from onboarding materials to final merge. Improve Contributor Journey, making it easier and efficient to contribute. Gather feedback from Wider community contributors and product teams on contribution friction.

#### Reduce Open Community MR Age

* **Why:** Improve the speed of contribution to production by reducing [Open community MR Age (OCMA)](/handbook/engineering/quality/performance-indicators/#open-community-mr-age) & review time. We have identified product groups with the highest open contribution MR age. Analysis and improvements are needed to address product groups with the biggest opportunity. In addition to improving MR review and gathering feedback.  
* **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/1](https://gitlab.com/groups/gitlab-com/quality/-/epics/1)
* **DRI:** Contributor Success team (Engineering)

#### Simplify & improve contribution guides 

* **Why:** Make contribution guides easy to navigate. Our current contribution guides are fragmented and can be hard for new contributors to navigate and understand. 
* **Epic:** TBD
* **DRI:** Community Relations team (Marketing)

#### Improve contribution tooling

* **Why:** Provide fast and efficient contributor experience via our tooling. Our contributor tooling needs to be optimized for contributor productivity
* **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/2](https://gitlab.com/groups/gitlab-com/quality/-/epics/2)
* **DRI:** Engineering Productivity team (Engineering)

#### Product groups focus

* **Why:** Contribution submissions, backlog, and technology stack vary amongst all [product groups](/company/team/structure/#product-groups). Providing a healthy community backlog alignment & establishing a common best practice outreach for all product groups.
* **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/3](https://gitlab.com/groups/gitlab-com/quality/-/epics/3)
* **DRI:** Product Ops, Community Relations & Contributor Success 

### Increase Contribution Value

Incentivise, attract and retain contributors by providing a compelling value and regular recognition of contributors for their work. Contributor career advancement materials and awards.

#### Define contributor value proposition 

* **Why:** We need a clear definition of what drives people to contribute to GitLab and to present a compelling value proposition for increasing code contribution.
* **Epic:** TBD
* **DRI:** Community Relations team (Marketing)

#### Developer badges & certification 

* **Why:** Implement a badging system and eventually work towards a certification program for GitLab developers 
* **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/4](https://gitlab.com/groups/gitlab-com/quality/-/epics/4)
* **DRI:** Contributor Success team (Engineering)

#### Contributor recognition

* **Why:** Provide sustained and impactful recognition to recognize & retain our contributors. Increase frequency and targeted recognition to types and persona of contributors
* **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/7](https://gitlab.com/groups/gitlab-com/quality/-/epics/7)
* **DRI:** Contributor Success team (Engineering) & Community Relations team (Marketing)

#### Contributor career advancement

* **Why:** In Open Source Projects, the contributors’ motivation in addition to solving a bug or adding a missing feature is to get experience and build their CV for career advancement. 
* **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/5](https://gitlab.com/groups/gitlab-com/quality/-/epics/5)
* **DRI:** Contributor Success team (Engineering) 

### Expand Outreach

Increase awareness with content and events to drive large amounts of contributors. Our outreach efforts so far have been limited. A proactive and focused effort to bring awareness and drive members from external communities will be required. Engineering to work along side Community Relations in expanded outreach events.

#### Increase contribution backlog exposure

* **Why:**  Contributing as a new member to a massive project can be overwhelming, which can lead to analysis paralysis and potentially losing contributors. We should offer a lens into a discoverable, sizable set of issues we can direct newcomers to. Consider using established 3rd party platforms.
* **Epic:** TBD
* **DRI:** Community Relations team (Marketing)

#### Scale contributor events

* **Why:** Build a sense of belonging, provide the social environment for contributors to have their voice, meet with their peers, share knowledge and celebrate.
* **Epic:** TBD
* **DRI:** Community Relations team (Marketing) & Contributor Success team (Engineering)

#### Community office hours

* **Why:** We need to scale office hour calls that have traditionally been a unique opportunity for product groups to provide support, guidance to code contributors as well as gather feedback.
* **Epic:** TBD
* **DRI:** Community Relations team (Marketing) & Contributor Success team (Engineering)

#### Increase social presence

* **Why:** Increase our social media presence beyond the currently limited mediums (Twitter, gitter), which will allow us to tap into existing developer communities.  
* **Epic:** TBD
* **DRI:** Community Relations team (Marketing)

### Scale the Community

Leverage the full-time customer contributor model and create wider community teams for rapid growth.

#### Create community teams

* **Why:** Create teams of wider community members with multiple domain expertise. We would like to depart from having contributors work single-handedly and create a team that can do more together.
* **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/8](https://gitlab.com/groups/gitlab-com/quality/-/epics/8)
* **DRI:** Contributor Success team (Engineering) 

#### Customers as contributors

* **Why:** Increased contribution by our customers eventually builds towards customers having teams inside their organization contributing to GitLab. Engineering representative that can ride along with the evangelist and program manager in interaction with customers.
* **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/9](https://gitlab.com/groups/gitlab-com/quality/-/epics/9)
* **DRI:** Community Relations team (Marketing) & Contributor Success team (Engineering)

#### Contribution specialization 

* **Why:** To surface contribution opportunities tailored to tech professions, implement frontend, backend, UX, Test and etc specialization in contribution types and MR coaches. This also allows a more aligned interaction between contributor and MR coaches of the same specialization.
* **Epic:** [https://gitlab.com/groups/gitlab-com/quality/-/epics/10](https://gitlab.com/groups/gitlab-com/quality/-/epics/10)
* **DRI:** Contributor Success team (Engineering)
