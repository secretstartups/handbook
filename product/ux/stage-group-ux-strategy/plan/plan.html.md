---
layout: handbook-page-toc
title: Plan UX Team
description: "The Plan UX team supports the Plan section to provide customers a great experience with organizing, planning and tracking work across their GitLab projects."
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

## How We Work



## Design process for work items
When designing for objects that use the [work items architecture](https://docs.gitlab.com/ee/architecture/blueprints/work_items/) we will follow a specific process intending to ensure that we are providing value-rich experiences that meet users needs. The work items Architecture enables code efficiency and consistency, and the UX team supports the effort by identifying user needs and the places where those needs converge into similar workflows.

### About work items

The first objects built using the work items architecture support the [Parker](https://about.gitlab.com/handbook/product/personas/#parker-product-manager), [Delaney](https://about.gitlab.com/handbook/product/personas/#delaney-development-team-lead) and [Sasha](https://about.gitlab.com/handbook/product/personas/#sasha-software-developer) personas in tasks related to planning and tracking work. Additional objects will be added in the future, supporting a variety of user personas.

Read more about work items
- [Work items architecture](https://docs.gitlab.com/ee/architecture/blueprints/work_items/) 
- [Work items Pajamas documentation](https://design.gitlab.com/objects/work-item)
- [Work items terminology](https://docs.gitlab.com/ee/development/work_items.html#work-item-terminology)

### Terminology
Work items refers to objects that use the work items architecture. You can find more terms defined related to the architecture here: [work items terminology](https://docs.gitlab.com/ee/development/work_items.html#work-item-terminology).

When we talk about the user experience, we avoid using the term 'work items' for user facing concepts, because it's not specific to the experience and introduces confusion. Instead, we will use descriptors specific to the part of the product we're talking about and that support a similar JTBD. Here are examples of how we are categorizing these:
- Team Planning Objects: Objects that belong to the Planning JTBD. Currently these are Epics, Issues and Tasks but could include others in the future.
- Strategy Objects: Objects that support strategic, organization wide objects. Currently these are Objectives and Key results.
- Development/Build Objects: Objects that support development tasks. These could be MRs, Test Cases, or Requirements
- Protecting Objects: These may include Incidents, Alerts, Vulnerabilities, Service Desk Tickets

This enables us to differentiate these by persona and workflow. While they may share a common architecture on the backend and similar layout on the frontend, in the UI they may:
- appear in different workflows and areas of the application
- have different data fields
- have different actions users can take on them


### Guiding principles
- The DRI for the user experience is the Product Designer assigned to the group that is using the work item architecture for their object(s).
- We work in a user-first mindset, rather then technology-first. To support this, we have created a research plan (link TBD) for supporting work item initiatives.
- [Pajamas](https://design.gitlab.com/) is our design system and new patterns introduced via work item efforts need to solve a real problem that users have, be validated by user research, and follow the [Pajamas contribution process](https://design.gitlab.com/get-started/contributing).
- We follow [Pajamas principles](https://design.gitlab.com/get-started/principles) for the user experience. 
- MVCs provide value to users, are bug-free and a highly usable experience, as described in [Product Principles](https://about.gitlab.com/handbook/product/product-principles/#the-minimal-viable-change-mvc). 


### How the architecture is intended to work
When designing with the work items architecuture, Product Designers should understand roughly how the architecture works and what implications exist for the user experience.
- A work item has a type (epic, incident), and this controls which widgets are available on the work item and what relationships the work item can have to other work items and non-work item objects. 
- The behavior of the work item in terms of performing its targeted JTBD(s) is powered by the collection of widgets enabled for a work item type.
- We want to avoid building logic or views specific to a type. When you need to support a workflow that isn't currently supported, you can introduce new behaviors through widgets (fields, apps, actions). A practical example: Epics can parent other Epics and Issues. Instead of interconnecting epics and issues this behavior is encapsulated in a 'hierarchy' widget, which could be utilized in other work item types that implement hierarchies; such as Objectives and Key Results.
- Similarly, the work item view should not be customized directly for a type. However, the Product Designer can propose a different user experience and the team implementing the work item will incorporate the necessary use cases into the work items architecture. 
- Work items can be organized and presented to users in any groupings from an IA/Nav standpoint so long as all views leverage the same SSoT grouping FE components (ex: list, board, roadmap, grid, ...). We should only ever need to build and maintain one version of each grouping view that can then be re-used across anywhere we want to display that set of work items. Groupings are determined iteratively based on user needs.

If the quad discovers that the desired user experience would require a greater contribution to the work item architecture than initially thought, they would discuss trade-offs as a team in order to decide whether to proceed or leave the object separate. 


### Process
- The quad that owns the code for the object (incident, epic, etc) decides if something should use the work item architecture based on trade-offs around code reuse and user experience. This should be a cross-functional decision, and the group Product Designer should advise their team regarding how well the user's ideal workflow could or could not be supported by the work items architecture. This will allow the team to evaluate how much existing frontend pieces of the architecture could be re-used, and what would need to be added or customized in order to support the desired experience.
    - As part of the decision making process, Product Designers should do problem validation user research (or leverage existing) to understand the desired user experience, including user goals, tasks, content/data field needs, and whether or not this work item type has relationships and the nature of those relationships.
    - During this phase, the Product Designer and Product Manager should ensure that success metrics are defined per our work item research process (link TBD)
    - High level wireframes should be produced to ensure everyone has a shared understanding of what is wanted and to establish a medium term vision for the work.  
- After the quad decides the work item architecture is suitable, the Product Designer will design the experience in detail.
    - As part of the detailed design, Product Designers, in collaboration with the quad, will:
    - Design how existing widgets will be utilized, and any new widgets needed or if existing widgets could be abstracted to fit a new use case. For example: The Timeline widget for incidents was designed in isolation specific to the incident use case. It could be reworked slightly to support more use cases, such as objective or key result check-ins.   
    - Define how users will access this work item. Design how this work item will appear in existing views, such as lists, or any new views needed for this work item.
        - Ensure new components and patterns are contributed back to Pajamas.
- Solution validation should be conducted as needed to ensure the workflow and usability meets the user needs.



## UX research for work items
To be added in a separate MR

