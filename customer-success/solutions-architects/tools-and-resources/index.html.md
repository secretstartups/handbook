---
layout: handbook-page-toc
title: Tools and Resources
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

[**SA Practices**](/handbook/customer-success/solutions-architects/sa-practices) - [**Sales Plays**](/handbook/customer-success/solutions-architects/sales-plays) - [**Tools and Resources**](/handbook/customer-success/solutions-architects/tools-and-resources) - [**Career Development**](/handbook/customer-success/solutions-architects/career-development) - [**Demonstration**](/handbook/customer-success/solutions-architects/demonstrations) - [**Processes**](/handbook/customer-success/solutions-architects/processes)

# Tools and Resources
{:.no_toc}

## Product Releases

- check [Product Release Updates](/handbook/marketing/product-marketing/release-updates/) for enablement on new features in recent releases
- [Upcoming Releases](https://about.gitlab.com/upcoming-releases/)
- [Previous Releases](https://gitlab.com/gitlab-org/gitlab/-/releases)
- [Releases Blog](https://about.gitlab.com/releases/categories/releases/)
- Compare Two Releases with the [What is New Since? Release Feature Overview Tool](https://gitlab-cs-tools.gitlab.io/what-is-new-since/?)

## Customer Facing Meeting Tools

Solutions Architects frequently interact with customers for demos, presentations or Q&A. These calls should enable the customer to clearly experience the value of GitLab without distraction or interruption. The below list of tools was compiled by the GitLab SA team as commonly used solutions. Note, this list does not represent a requirement to use any of these products or an endorsement for these products.

- [Muzzle](https://muzzleapp.com/) to mute all notifications prior to beginning a call
- [Tab Resize Chrome plugin](https://chrome.google.com/webstore/detail/tab-resize-split-screen-l/bkpenclhmiealbebdopglffmfdiilejc?hl=en-US) to break tabs into split-screen viewing
- [Screenbrush](http://screenbrush.imagestudiopro.com/) to draw on the screen
- [Toby](http://www.gettoby.com/) or [Tabs Outliner](https://chrome.google.com/webstore/detail/tabs-outliner/eggkanocgddhmamlbiijnphhppkpkmkl) to launch many preset tabs at once
- [Station](https://getstation.com/) to group pages by application in a smart dock
- [MouseBeam](https://geeky.gent/tag/mousebeam/) enables the mouse cursor to use multiple screens like a circle
- [Rectangle](https://rectangleapp.com/) to quickly move and resize windows in macOS using keyboard shortcuts or snap areas
- [Dark Reader](https://darkreader.org/) enables browser dark mode to better fit room lighting
- [Postman](https://www.getpostman.com/) for API interaction
- [Atom.io](https://atom.io/) lightweight IDE text editor
    - [git-plus](https://atom.io/packages/git-plus) Package for atom to make commits and other git actions without the terminal

Related macOS tips

- [Switch between full screen applications](https://www.intego.com/mac-security-blog/how-to-enter-and-exit-full-screen-mode-in-macos/) using the trackpad, Command keys or other options
- Use the [Zoom Accessibility Features](https://www.imore.com/how-use-zoom-mac) to zoom in on targeted screen locations
- [Work in multiple spaces on a single monitor](https://support.apple.com/en-gb/guide/mac-help/mh14112/mac) to keep multiple app windows or browser tabs open in fullscreen mode
    - Enables switching between windows or tabs with trackpad gestures, keeping display screen clean and uncluttered

## POV Resources

The [POV Guidelines document](https://about.gitlab.com/handbook/sales/POV/) describes how to kick off a POV.  The Solutions Architect (SA) is the key actor in the process.  A POV is part product evaluation, part trust building exercise. This is a key moment in the sales cycle to establish deep conversations with the customer, and become the trusted advisor.  This is done by bringing your experience to the table.  In addition, it is very helpful to have some set exemplar projects that can be shared with customers to show different areas of the product.  List below is an evolving list of projects that have come in handy during POVs and may be a great starting point to offer customers.

### End-to-end Proof projects

These projects have a very simple set of code that provides the ability to demonstrate the `happy-path` for a POV.  While these are more in the Hello World category of projects, they tend to have simple mechanizations to exercise different parts of GitLab.  SAs have used these in the past as a way to assess the installation of self-managed environments.

- [Insecure Tanuki Tech Project](https://gitlab-core.us.gitlabdemo.cloud/demosys-users/skamani/insecure-tanuki) was developed internally to show the usage of Auto DevOps. It is predominantly focused on Secure features, but serves well to present all stages.

### Demonstrative of specific stages

These projects are demonstrative of specific stages.  They are generally built on existing code OSS bases which the customer may be familiar with, are easy to understand, and have good literature to refer to.

#### Secure Stage Projects

- [Nodejs Juice Shop](https://github.com/bkimminich/juice-shop) repository comes with a .gitlab-ci.yml file to get started with SAST and Dependency Scanning.  Incorporate others incrementally as needed.
- [OWASP WebGoat.NET](https://gitlab-core.us.gitlabdemo.cloud/tanuki-group/dot-net-webgoat) repository can be enabled with SAST, License Management and Secrets Scanning very quickly using the packaged templates.  This validates our positioning in .NET application development (both Framework and Core).

## Useful Customer Facing Presentations

No two presentations are the same and we often find ourselves mixing and matching content tailored to our Customer's journey.  From Agile to CI/CD to Kubernetes and beyond, below are several commonly used decks rich in content to pull from.
- [Official Customer Facing Presentations](https://about.gitlab.com/handbook/marketing/product-marketing/#customer-facing-presentations) - Here you will find the [Company Pitch Deck](https://docs.google.com/presentation/d/1dVPaGc-TnbUQ2IR7TV0w0ujCrCXymKP4vLf6_FDTgVg/) with the GitLab narrative, [Customer Value Deck](https://docs.google.com/presentation/d/1SHSmrEs0vE08iqse9ZhEfOQF1UWiAfpWodIE6_fFFLg/) with Value Drivers and Differentiators, and [Security Deck](https://docs.google.com/presentation/d/1WHTyUDOMuSVK9uK7hhSIQ_JbeUbo7k5AW3D6WwBReOg/edit?usp=sharing) with best practices on Shift-Left security.   _These should be the starting point of any tailored deck!_
- [All The Things](https://docs.google.com/presentation/d/1mGMyciRrobnOgazoc20_Q5HiBcP8ydp_JWjzgBj4tRI/) - Not a pitch deck.  Owned by a Solution Architect, this is a holistic, tactical guide to GitLab as a Product constantly updated with screenshots.
- [General Demo](https://docs.google.com/presentation/d/17SoRPxPCswT_FublXCsi3rm3TBnHAYI-/) - Product Walk-through from the lens of a Solution Architect covering Velocity, Visibility, and Security & Compliance.
- [Getting Started](https://docs.google.com/presentation/d/1LJTZ7SC4EWcXJx3ptiA23Cf1i33GJHTE) - Kicking off a POV? This is a fantastic deck to help Customers on their journey to setting up Users, Groups, Pipelines, Auto DevOps, and more!

## Hands On Workshop