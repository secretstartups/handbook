---
layout: handbook-page-toc
title: "Slippers Design System Documentation"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Slippers Design System

## Why slippers

Slippers is the marketing website design system used on about.gitlab.com. We called it slippers because it pairs nicely with the [Pajamas design system](https://design.gitlab.com/). Slippers is currently maintained by the [Digital Experience team](/handbook/marketing/inbound-marketing/digital-experience/) in [Inbound Marketing](/handbook/marketing/inbound-marketing/) at GitLab.

## Why not Pajamas

- Pajamas code is written using different languages and servers than the marketing website and handbook. Marketing wants something that aligns better with our existing tech stack. That said, we still want to align with Pajamas tech choices whenever possible.
- Product has a much longer-lasting design cycle than marketing. Marketing frequently performs design tests and pivots. End-users of a product expect stability. Marketers need the flexibility to try new things.
- Best practices for a marketing website differ from those used when building a product. For example, certain occasions might call for a toast in a software product vs a modal popup on a marketing website. One might be focused around metrics like Fitt's law and the other might be focused on conversion. Sometimes designs could be information-dense and others could be focused on a single paragraph.

## Goals

* Make it easier to update the about.gitlab website.
* Clarify what's possible, what's permissible, and what's advisable.
* Improve the UX, UI, IA, and other design aspects of the about website.
* Document design decisions, use cases, and best practices in a central and contextually relevant location.
* Improve single-source-of-truth (SSOT) for the website.
* Codify design tokens.
* Strengthen weak points in our tech stack and reduce tech debt.
* Make more of the code modular and reuseable (less spaghetti).
* Modernize code using paradigms such as BEM and Atomic design.
* Clarify ownership of systems and contents.

## Our vision

We want to have a design system that is visible to the world and searchable from a URL similar to Pajamas. We would love to have a living design system where the code used in the website is built using the same components that the design system is built from, where updating one updates the other.

## Our journey

The process so far involves small incremental changes. Before we have a place to store the design system components we might apply raw HTML and CSS straight from Figma to existing pages while we explore and build out those systems, tools, designs, and code.

* Do UX research.
* Start a new a new design language built with Figma files.
* Establish a new CSS starting point.
* Rebuild pilot pages such as the homepage and enterprise page using that design language with alpha (non-final) exploratory code.
* Build a repository where we can iterate on design system tools such as Storybook with an independent codebase.
* Apply the new design language to that repository. Add researched and vetted components to that codebase.
* Apply the new CSS code into our new CMS using block components.
* Apply our new design language to a utility framework such as Tailwind CSS on our design system repository.
* Keep iterating until we reach a point where our new CSS system is integrated with Tailwind and Storybook, implementing a rough draft of a functional design system.
* Rebuild and iterate our pilot pages with final components and code as they become available.

## Resources

* [Architecture discussion video Jan 2020](https://www.youtube.com/watch?v=-JUtVOAaQcE&list=PL05JrBw4t0KrakNGW0ruM5UL7DDlrMBba&index=7)
* [Slippers design system repository WIP](https://gitlab.com/gitlab-com/marketing/inbound-marketing/slippers-ui)
* [Digital definitions](/handbook/marketing/inbound-marketing/digital-experience/digital-definitions/)
