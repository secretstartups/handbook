---
layout: handbook-page-toc
title: "Workflow"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}
## Blueprints

**Blueprints** are intended to define, scope and put forth alternatives about specific ideas we need to implement and/or problems we need to solve. Blueprints are sketches whose purpose is to foster and frame discussion around Infrastructure topics. They are one of the inputs to [DNA meetings](../meeting/#design-and-automation-dna), and will generally yield one of more designs.

* Blueprints are required for, but not limited to, projects and KRs. All projects and KRs require a blueprint, as they define, scope, and outline considerations, options and recommendations. They should result in a clear understanding of the topic and drive widespread agreement on the specific deliverables that implement a project or KR. 

* Blueprints can also be associated with items other than projects and KRs: whenever we are considering whether we should tackle a complex problem and how we might approach it, a blueprint is necessary. 

As a guideline, a blueprint are structured as follows:

* Idea or problem statement: provide background and scope the idea or problem discussed in the blueprint
* Summary of past efforts (if applicable)
* Outline of options
* Additional considerations
  * Dependencies
  * Related blueprints or designs
  * Costs
* Recommendations

##### Workflow

* Open issue to track blueprint work and submit a Handbook MR.
* Keep design documents in `/handbook/engineering/infrastructure/library/`
* Keep a link to the appropriate issue in the page
* Make sure you get the correct team input you need.

## Design

As GitLab.com's levels of functionality and scale increase, so does its complexity. A disciplined approach to meet
the challenges presented by said complexity is necessary so we can frame technical discussions and increase the
leverage on technical decisions: **design**.

The late Andy Grove's [*High Output Management*](https://openlibrary.org/books/OL533591M/High_output_management)
highlights his thinking on business reports as an information medium, and these thoughts apply to design as well:

> As [design] is formulated and written, authors are forced to be more precise than they might verbally. Hence, their
value stems from the discipline and the thinking the writers are forced to impose upon themselves and they identify
and deal with trouble spots in their presentation. [Designs] are more a *medium* of *self-discipline* than a way
to communicate information. *Writing* the design is important; reading may not be so as much.

Reading is, of course, important, as it drives information and knowledge sharing as well as healthy technical discussions.
This makes the writing vital. Design clarifies and scopes the problem, drives productive discussions, and presents
decisions concisely.

Also from the same book:

> All production flows have a basic characteristic: the material becomes more valuable as it moves through the
process. [...] A common rule we should always try to heed is to detect and fix any problems in a production process
at the *lowest-value* stage possible.

Thus, early scoping and design is a valuable investment.

Design is not intended to force all decisions up front but to methodically drive them. Time invested in design eliminates
confusion and ambiguity, particularly as it relates to scope, and ensures specific aspects of the engineering work we
perform take place (monitoring being one obvious case).

##### Workflow

* Open issue to track design work and submit a Handbook MR with the design.
* Keep design documents in `/handbook/engineering/infrastructure/library/`
* Keep a link to the appropriate issue in the design page
* Make sure you get the correct team input you need.

Security must be looped in whenever changes are made to any of the following areas:

1. Processing credentials/tokens
1. Storing credentials/tokens
1. Logic for privilege escalation
1. Authorization logic
1. User/account access controls
1. Authentication mechanisms
1. Abuse-related activities

