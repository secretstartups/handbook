---
layout: markdown_page
title: "Architecture"
---

## Complexity at Scale

As GitLab grows, through the introduction of new features and improvements on existing ones, so does its **complexity**. This effect is compounded by the care and feeding of a single codebase that supports the wide variety of environments in which it runs, from small self-managed instances to large installations such as GitLab.com. The company itself adds to this complexity from an organizational perspective: over 1600 employees worldwide contribute in one way or another to both the product and the company, using GitLab.com on a daily basis to do their job. Teams members in Engineering are directly responsible for the codebase and its operation, for the infrastructure powering GitLab.com, and for the support of customers running self-managed instances. Likewise, team members in the Product organization chart the future of the product.

[Our values](/handbook/values/), coupled with strong know-how and unparalleled dedication, provide critical guidance to manage these complexities. At the same time, we have known for some time we are crossing a threshold in which **complexity at scale**, both technical and organizational, is playing a significant role. We know we need to fine-tune both our technical discipline (so we can integrate it across the organization) and our organizational amplification (so we can span and leverage the entire organization) to ensure we can continue to deliver on our values. In this context, we have been exploring the adoption of *Architecture* or *Engineering Practice* to help us in this regard.

## Architecture

Martin Fowler's [Software Architecture Guide](https://martinfowler.com/architecture/) provides an excellent discussion on the notion of **Architecture**, and there is much to be learned from this and other sources. The question before us is, then, how to contextualize those learnings and apply them at GitLab.

Much like the rest of the software world, we have been wary of all the negative baggage that *Architecture* implies, particularly as some of that baggage would seemingly fly in the face of our values. This is why we have taken the time to carefully consider what *Architecture* means for us, and how to implement it in alignment with our values and at the scale that both the product and the company demand.

We have intuitively known that, at GitLab, Architecture is not a role proper (i.e., no such title exists in the company). We understand *Architecture* as a component of all technical roles, a set of **practices** to leverage the vast amount of experience distributed across the company, and a **workflow** to ensure we can continue to scale efficiently.

## Architecture at GitLab

At GitLab, **Architecture** is:

* A [collection of **practices**](practice/) that provide technical frameworks to **guide** (rather than dictate) our thinking, design, and discussions so we can *iterate* quickly and deliver *results*. These include the [Scalability Practice](practice/scalability/). Others are in the works (such as the Availability Practice).
* A [*collaborative* **workflow**](workflow/) that provides the necessary organizational amplification to foster *inclusion*, and drive ideas and priorities from all corners of the company.
* A collection of 12-month **roadmaps** and 3-month **blueprints** which are artifacts resulting from the [Architecture Evolution Workflow](workflow/).

Such definition implies a solid reliance on **influence** rather than authority to *efficiently* and *transparently* drive decisions, engage stakeholders, and promote trust across the organization

#### Artifacts: roadmaps and blueprints

We strive for **results** and concrete outcomes, which in this case entail **roadmaps** and **blueprints**.

**Roadmaps** plot a long-term technical path of initiatives to work on over the following 12 months and how we can weave them together to meet our business needs. Their content is focused on technical topics but they are themselves not technical. Roadmaps are kept in the [handbook](https://about.gitlab.com/handbook/engineering/architecture/roadmap/) because of their 12-month outlook and less technical focus.

**Blueprints** in their various forms are more technical than roadmaps at a high-level (logical architecture, etc, without dictating implementation), distilling roadmap items and presenting forward-looking "next steps" for the appropriate time span. Furthermore, they must include one or more examples of how they solve specific use-cases. 

* Blueprints are generated according to the Architecture Workflow
* Blueprints are hosted in [**docs**](https://docs.gitlab.com/ee/architecture/) while they're forward-looking, i.e., until implementation is completed.
  * Once completed, blueprints are archived in https://gitlab.com/gitlab-org/architecture/archive
  * We can additionally **reformat them for the blog**; in this format, they should contain learned lessons from our experience in implementing them.

#### Architecture as a practice is everyone's responsibility

Architecture at GitLab is not a role but it is notably engrained in senior technical leadership roles, where the roles' levels and their sphere of influence determine DRI responsibilities within the practice:

* **Engineering Fellows** (EFs) are DRIs for the overall Architecture Practice
  * EFs operate at the [Division and Department](https://about.gitlab.com/company/team/structure/#organizational-structure) levels (EVPs, VPs and Senior Directors), and, to a lesser but still significant extent, [E-group](/handbook/leadership/)
  * EFs are technical partners to their Department VPs and Senior Directors ([S-group](/handbook/leadership/))
  * EFs lead the collaborative production of 12-month technology **roadmaps** which map to [pre-existing cadence](https://about.gitlab.com/direction/#1-year-plan). They are distinct but closely aligned with Product Roadmaps. Technology Roadmaps are aligned with OKRs and are supposed to be updated as needed, but at least every 6 months.
  * EFs have strong input on Department OKRs
* **Distinguished Engineers** (DEs) are DRIs for the Architecture Practice in their respective Departments and Sub-departments
  * DEs operate at the [Department and Sub-department](https://about.gitlab.com/company/team/structure/#organizational-structure) levels (Directors and Senior Managers)
  * DEs are technical partners to Directors and Senior Managers in their Departments ([D-group](/handbook/leadership/))
  * DEs produce 6-month **blueprints** for their department's technical direction, again aligned with Product
  * DEs also have strong input in aligning OKRs at the department level
* **Staff Engineers** (SEs) are DRIs for the Architecture Practice in their respective Teams
  * SEs operate at the [Sub-department and Team](https://about.gitlab.com/company/team/structure/#organizational-structure) levels (frequently working with Senior Managers and Managers)
  * SEs are technical partners to Managers in their Department's teams
  * SEs actively participate in quarterly team OKRs
  * SEs usually own 3-month technical strategies captured in a form of **blueprints** which will contribute to the forthcoming team OKRs.

It is worth stressing that partnerships and close working relations as outlined above **are not exclusionary**. GitLab relies heavily on cross-functional, cross-level relationships, and we will continue to foster those relationships to their maximum potential. Thus, the above relationship descriptions simply outline a responsibility perspective vs a boundary of any kind.

### Architecture Workflow

The [Architecture Evolution Workflow](workflow/) is used to create 12-month,
6-month and 3-month blueprints captured in epics. These artifacts should be
aligned with our OKRs cadence.

1. Anyone can create an architecture change proposal
1. This is a collaborative workflow that fosters collaboration between
   Engineering, Product and technical Domain Experts,
1. An `Architecture Evolution Coach` is an advisor and a bridge between
   Individual Contributors, Engineering Leaders, and Product Managers
1. Successfully executed workflow usually results in the creation of 3/6/12-month
   technical strategy with [Directly Responsible Individuals
   (DRIs)](/handbook/people-group/directly-responsible-individuals/) assigned
1. 12-month blueprints captured in epics require one of the DRIs assigned to
   the roadmap execution should be an Engineering Fellow
1. 6-month blueprints captured in epics require a Distinguished Engineer or a
   Staff Engineer to be assigned as a DRI
1. Blueprints should have DRIs assigned from Product Team and Engineering
   Leadership too
1. DRIs propagate the document across sub-departments and ensure that work
   gets scheduled.

A detailed description of the [workflow](workflow/) is available.

## Roadmap

Following our [Transparency](https://about.gitlab.com/handbook/values/#transparency) value, our [architecture roadmap](roadmap/) and blueprints are public.

