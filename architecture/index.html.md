---
layout: markdown_page
title: "Architecture"
---

## Complexity at Scale

As GitLab grows, through the introduction of new features and improvements on existing ones, so does its **complexity**. This effect is compounded by the care and feeding of a single codebase that supports the wide variety of environments in which it runs, from small self-managed instances to large installations such as GitLab.com. The company itself adds to this complexity from an organizational perspective: nearly 1300 employees world-wide contribute in one way or another to both the product and the company, using GitLab.com on a daily basis to do their job. Teams members in Engineering are directly responsible for the codebase and its operation, for the infrastructure powering GitLab.com, and for the support of customers running self-managed instances. Likewise, team members in the Product organization chart the future of the product.

[Our values](https://about.gitlab.com/handbook/values/), coupled with strong know-how and unparalled dedication, provide critical guidance to manage these complexities. At the same time, we have known for some time we are crossing a threshold in which **complexity at scale**, both technical and organizational, is playing a significant role. We know we need to fine-tune our both our technical discipline (so we can integrate it across the organization) and our organizational amplification (so we can span and leverage the entire organization) to ensure we can continue to deliver on our values. In this context, we have been exploring the adoption of *Architecture* or *Engineering Practice* to help us in this regard.

## Architecture

Martin Fowler's [Software Architeture Guide](https://martinfowler.com/architecture/) provides an excellent discussion on the notion of **Architecture**, and there is much to be learned from this and other sources. The question before us is, then, how to contextualize those learnings and apply them at GitLab.

Much like the rest of the software world, we have been wary of all the negative baggage that *Architecture* implies, particularly as some of that baggage would seemingly fly in the face of our values. This is why we have taken the time to carefully consider what *Architecture* means for us, and how to implement it in alignment with our values and at the scale that both the product and the company demand.

We have intuitively known that, at GitLab, Architecture is not a role proper (i.e., no such title exists in the company). We understand *Architecture* as a component of all technical roles, a set of **practices** to leverage the vast amount of experience distributed across the company, and a **workflow** to ensure we can continue to scale efficiently.

## Architecture at GitLab

At GitLab, **Architecture** is:

* A [collection of **practices**](practice/) that provide technical frameworks to **guide** (rather than dictate) our thinking, design and discussions so we can *iterate* quickly and deliver *results*. These include the [Scalability Practice](practice/scalability/). Others are on the works (such as the Availability Practice).
* A [*collaborative* **workflow**](workflow/) that provides the necessary organizational amplification to foster *inclusion*, and drive ideas and priorities from all corners of the company.

Such definition implies a solid reliance on **influence** rather than authority to *efficiently* and *transparently* drive decisions, engage stakeholders, and promote trust across the organization

**Architecture as a practice is everyone's responsibility**, but it is notably engrained in senior technical leadership roles, where the roles' levels and their sphere of influence determine DRI responsibilities within the practice:

* **Engineering Fellows** (EFs) are DRIs for the overall Architecture Practice
  * EFs operate at the [Division and Department](https://about.gitlab.com/company/team/structure/#organizational-structure) levels (EVPs, VPs and Senior Directors), and, to a lesser but still significant extent, [E-group](https://about.gitlab.com/handbook/leadership/#e-group)
  * EFs are technical partners to their Department VPs and Senior Directors ([S-group](https://about.gitlab.com/handbook/leadership/#s-group))
  * EFs lead the collaborative production of 12-month Technology Roadmaps which maps to [pre-existing cadence](https://about.gitlab.com/direction/#1-year-plan). They are distinct but closely aligned with Product Roadmaps. Technology Roadmaps are aligned with to be updated as needed, but at least every 6 months, and their first iteration is slated for August 1, 2020 (so they can incluence Q3 OKRs).
  * EFs have strong input on Department OKRs
* **Distinguished Engineers** (DEs) are DRIs for the Architecture Practice in their respective Departments and Sub-departments
  * DEs operate at the [Department and Sub-department](https://about.gitlab.com/company/team/structure/#organizational-structure) levels (Directors and Senior Managers)
  * DEs are technical partners to Directors and Senior Managers in their Departments ([D-group](https://about.gitlab.com/handbook/leadership/#director-group))
  * DEs produce 6-month roadmaps for their department's technical direction, again aligned with Product
  * DEs also have strong input in aligning OKRs at the department level
* **Staff Engineer**s (SEs) are DRIs for the Architecture Practice in their respective Teams
  * SEs operate at the [Sub-department and Team](https://about.gitlab.com/company/team/structure/#organizational-structure) levels (frequently working with Senior Managers and Managers)
  * SEs are technical partners to Managers in their Department's teams 
  * SEs actively participate in quarterly team OKRs

It is worth stressing that partnerships and close working relations as outlined above **are not exclusionary**. GitLab relies heavily on cross-functional, cross-level relationships, and we will continue to foster those relationships to their maximum potential. Thus, the above relationship descriptions simply outline a responsibility perspective vs a boundary of any kind.

### Workflow

1. Anyone can open an issue with a change proposal and label it with `~"Architecture decision"`
2. The author collaborates with their manager to understand better the scope of the proposed change
3. Based on the scope of the proposal, the author and their manager collaborate together to find an Engineering Leader who will be a decision maker that will either approve or reject the proposal
4. The author and their manager find an `Architecture Evolution Coach` on the [team page](https://about.gitlab.com/company/team/), someone who works on a level close to the Engineering Leader who is going to be the decision maker,
5. Optionally, a Domain Expert may be engaged
6. The author collaborates with the Architecture Evolution Coach and the Domain Expert to create a blueprint MR of the proposal
7. In the RFC-like style they get more people involved into the discussion to collect more feedback
8. The blueprint describes 1-year outlook and 3 iterations in the first 3 milestones
9. When DRIs deemed so, the blueprint gets merged by an Engineering Leader
10. 3 [Directly Responsible Individuals (DRIs)](https://about.gitlab.com/handbook/people-group/directly-responsible-individuals/) get assigned and collaborate together to get the work done
11. A [Working Group](https://about.gitlab.com/company/team/structure/working-groups/) can be formed if needed, but is not required
12. DRIs propagate the blueprint across sub-departments and ensure that work gets scheduled
13. Teams schedule their work based on their interpretation of 1-year and 3-months outlook
14. DRIs described in the blueprint are the decision makers for the approach taken
15. After 3 iterations work can be concluded or expanded for another 3 iterations

A detailed description of the [workflow](workflow/) is available.