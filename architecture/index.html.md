---
layout: markdown_page
title: "Architecture"
---

## Complexity at Scale

As GitLab grows, through the introduction of new features and improvements on existing ones, so does its **complexity**. This effect is compounded by the care and feeding of a single codebase that supports the wide variety of environments in which it runs, from small self-managed instances to large installations such as GitLab.com. The company itself adds to this complexity from an organizational perspective: nearly 1300 employees world-wide contribute in one way or another to both the product and the company, using GitLab.com on a daily basis to do their job. Team Members in Engineering are directly responsible for the codebase and its operation, for the infrastructure powering GitLab.com, and for the support of customers running self-managed instances. Team Members in the Product organization chart the future of the product.

[Our values](https://about.gitlab.com/handbook/values/), coupled with strong know-how and unparalled dedication, provide critical guidance to manage these complexities. At the same time, we have known for some time we are crossing a threshold in which **complexity at scale**, both technical and organizational, is playing a significant role. We know we need to fine-tune our technical discipline and integrate it across the organization to ensure we can continue to deliver on our values. In this context, we have been exploring the adoption of *Architecture* to help us in this regard.

## Architecture

Martin Fowler's [Software Architeture Guide](https://martinfowler.com/architecture/) provides an excellent discussion on the notion of **Architecture**, and there is much to be learned from this and other sources. The question before us is, then, how to contextualize those learnings.

Much like the rest of the software world, we have been wary of all the negative baggage that *Architecture* implies, particularly as some of that baggage would seemingly fly in the face of our values. This is why we have taken the time to carefully consider what Architecture means for us, and how to implement it in alignment with our values and at the scale that both the product and the company demand.

We have intuitively known that, at GitLab, Architecture is not a role proper (i.e., no such title exists in the company). We understand Architecture as a component of all technical roles, a set of practices to leverage the vast amount of experience distributed across the company, and a workflow to ensure we can continue to scale efficiently.

## Architecture at GitLab

At GitLab, **Architecture** is:

* A [collection of **practices**](practice/) that provide technical frameworks to **guide** (not dictate) our thinking, design and discussions so we can *iterate* quickly and deliver *results*. These include:
  * [Scalability Practice](practice/scalability/)
  * Availability Practice
  * ...
* A [*collaborative* **workflow**](workflow/) that provides the necessary organizational amplification to foster *inclussion*, and drive ideas and priorities from all corners of the company.
* A reliance on **influence** rather than authority to *efficiently* and *transparently* drive decisions, engage stakeholders, and promote trust across the organization

**Architecture as a practice is everyone's responsibility**, but it's notably engrained in senior technical leadership roles. Within said roles, the roles' levels and their sphere of influence determine DRI responsibilities within the practice:

* Engineering Fellows (EFs) are DRIs for the overall Architecture Practice
  * EFs operate at the [Division and Department](https://about.gitlab.com/company/team/structure/#organizational-structure) levels (EVPs, VPs and Senior Directors), and, to a lesser but still significant extent, [E-group](https://about.gitlab.com/handbook/leadership/#e-group)
  * EFs are technical partners to their Department VPs and Senior Directors ([S-group](https://about.gitlab.com/handbook/leadership/#s-group))
  * EFs produce joint, 1-year roadmaps for the company's technical direction aligned with Product
  * EFs have strong input on Department OKRs
* Distinguished Engineers (DEs) are DRIs for the Architecture Practice in their respective Departments and Sub-departments
  * DEs operate at the [Department and Sub-department](https://about.gitlab.com/company/team/structure/#organizational-structure) levels (Directors and Senior Managers)
  * DEs are technical partners to Directors and Senior Managers in their Departments ([D-group](https://about.gitlab.com/handbook/leadership/#director-group))
  * DEs produce 6-month roadmaps for their department's technical direction, again aligned with Product
  * DEs also have strong input in aligning OKRs at the department level
* Staff Engineers (SEs) are DRIs for the Architecture Practice in their respective Teams
  * SEs operate at the [Sub-department and Team](https://about.gitlab.com/company/team/structure/#organizational-structure) levels (frequently working with Senior Managers and Managers)
  * SEs are technical partners to Managers in their Department's teams 
  * SEs actively participate in quarterly team OKRs

It is worth stressing that partnerships and close working relations as outlined above **are not exclusionary**. GitLab relies heavility on cross-functional, cross-level relationships, and and we want to continue fostering those relationships to their maximum potential. Thus, the above relationship descriptions simply outline a responsibility perspective vs a boundary of any kind.