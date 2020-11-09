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

- check [Product Release Updates](/handbook/marketing/strategic-marketing/release-updates/) for enablement on new features in recent releases
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

The [POV Guidelines document](https://about.gitlab.com/handbook/sales/POV/) describes how to kick off a POV.  The Solutions Architect (SA) is the key actor in the process.  A POV is part product evaluation, part trust building exercise. This is a key moment in the sales cycle to establish deep conversations with the customer, and become the trusted advisor.  This is done by bringing background and experience to the table.  In addition, it is very helpful to have some set exemplar projects that can be shared with customers to show different areas of the product.  List below is an evolving list of projects that have come in handy during POVs and may be a great starting point to offer customers.

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

- [Official Customer Facing Presentations](https://about.gitlab.com/handbook/marketing/strategic-marketing/#customer-facing-presentations) - Here you will find the [Company Pitch Deck](https://docs.google.com/presentation/d/1dVPaGc-TnbUQ2IR7TV0w0ujCrCXymKP4vLf6_FDTgVg/) with the GitLab narrative, [Customer Value Deck](https://docs.google.com/presentation/d/1SHSmrEs0vE08iqse9ZhEfOQF1UWiAfpWodIE6_fFFLg/) with Value Drivers and Differentiators, and [Security Deck](https://docs.google.com/presentation/d/1WHTyUDOMuSVK9uK7hhSIQ_JbeUbo7k5AW3D6WwBReOg/edit?usp=sharing) with best practices on Shift-Left security.   _These should be the starting point of any tailored deck!_
- [All The Things](https://docs.google.com/presentation/d/1mGMyciRrobnOgazoc20_Q5HiBcP8ydp_JWjzgBj4tRI/) - Not a pitch deck.  Owned by a Solution Architect, this is a holistic, tactical guide to GitLab as a Product constantly updated with screenshots.
- [General Demo](https://docs.google.com/presentation/d/17SoRPxPCswT_FublXCsi3rm3TBnHAYI-/) - Product Walk-through from the lens of a Solution Architect covering Velocity, Visibility, and Security & Compliance.
- [Getting Started](https://docs.google.com/presentation/d/1LJTZ7SC4EWcXJx3ptiA23Cf1i33GJHTE) - Kicking off a POV? This is a fantastic deck to help Customers on their journey to setting up Users, Groups, Pipelines, Auto DevOps, and more!

## RFP Responses
### Best Practices for writing RFx responses

Responding to a Request for _____ (RFx) is part of the standard process within Public Sector. RFx is a general category that includes Request for Information, Request for Proposal, Request for Quote, etc. RFIs are generally less structured than RFPs. While RFQs rarely need technical write ups, occasionally technical input is required, especially if the RFx requests an `or alike` product.

### Evaluating RFIs and RFPs for response

Solutions Architects have a big role in responding to RFIs and RFPs where there are considerable number of technical asks.  There is a saying used commonly when responding: `Make sure you answer the mail`. This has two connotations:

1. Evaluate what is asked for and make a best attempt to address it, and
1. Answer the questions directly and provide context

But more importantly, be sure that there is a product fit. If what is asked for in the RFI/RFP is not directly met with GitLab, or seems too much like a different software entirely, then stop and talk to the Strategic Account Leader or Inside Sales Representative. Also identify the strategic impact if the requirements do not seem to match GitLab functionality.  If GitLab fits only a piece of the RFx, collaborate with the Strategic Account Leader and/or Inside Sales Representative to understand who the other players in the response might be.   

### Process of responding to RFx

Generally, RFx's have a fixed timeline.  GitLab issues can assist in this process as everything needed to manage a task is available.  The best place to create the issue is in the Account project, if one exists, or in a central project where such activites are created and tracked.  Occasionally, they can be created in an arbitrary personal project space and shared with other team members is no other suitable place can be found. Build an outline in the issue.  The outline should include the following things:
1. Any customer’s instructions regarding organization
2. A rational organization of information that will answer all of the questions and requirements
3. Easy to follow structure for the proposal document
4. Compliance with all requirements
5. Links to appropriate Account or Opportunity in Salesforce

Typically a SAL or ISR will be involved in the process and should be assigned to the issue along with the SA.  Lay out the tasks and assign owners so that every team member's duties are clear.  And finally assign the due date according to the agreed-to completion date - at least 24-36 hours in advance of the published due date for the submission to the customer.  This provides a small buffer in case of last minute adjustments or approvals that may be needed.

### Responding to RFxs

After the issue is created, create a Google document and start filling in the details.  A general [Public Sector template](https://docs.google.com/document/d/12uLyZ-lc9sswULq7XqpwOUtk_eiK2wgWhi-TIvT1mQs/template/preview) (only available to GitLab team members) is available as a starting point.  Insert the link to the working document into the issue.

In the event that the RFx requires:
- Security Questionnaire, please follow the process described in the [Risk and Field Security Team](/handbook/engineering/security/security-assurance/field-security) handbook.
- A legal review, please follow the process described in [Collaborating with GitLab legal](/handbook/legal/#2-sales-guide-collaborating-with-gitlab-legal) handbook page.
- A professional services component, the [Selling Professional Services](/handbook/customer-success/professional-services-engineering/selling/) handbook page will be of help.

Each of these processes will likely require the creation of issues.  Be sure to link these issues to the main response issue for tracking purposes.

`Recommendation:` The response documents should be placed in the appropriate Sales Account directory/folder in Google Drive.  Please include the link to that document in the [**catalog document**](https://docs.google.com/document/d/1BW9WIYWkg_KG2kZu31IJofavgu4vt5Ac_jcJ3xAtKrg/edit?usp=sharing) for others to be able to find easily and reuse. 

### Specifics about RFIs

RFIs are generally issued to shape procurement. In some situations, RFIs are just a step in the process as the customer may already have an advising team that may be following protocol. An RFI is generally non-binding unless otherwise specified. Responses to questions in an RFI don't have to be precise. They can have some idealistic statements to lay the groundwork and pivot points to educate the customer on what GitLab offers. It is good to follow the GitLab Value Framework response methodology, as there is no ability to have a dialog. The RFI is about positioning. Provide context around the following factors that can grab the attention of the readers:

- Positioning and value of the product
- Truth about capabilities
- Solution options and flexibility
- How risk is mitigated by the solution

Some RFIs have a length limit, but be sure to verify and be mindful if there is one. Start with a simple overview of what the product does. GitLab Marketing does a great job with text that is vetted. For example, utilize the write-ups for each of the [stages of the DevOps workflow](https://about.gitlab.com/stages-devops-lifecycle/). Do not reinvent the wheel, especially for an RFI. Keep it simple and succinct.

An RFI may ask open-ended questions. This is good for providing detailed solution responses. Keep the language simple and describe the solution GitLab offers. Instead of stating that GitLab does or does not do something, direct the reader to why GitLab doesn't do it, if it is on the roadmap, or how they would implement a workaround.

When responding to an RFI, it's critical to document how the product solves customer problems, but it's also important to include the company behind the product. GitLab's all-remote leadership, its company values, its culture, and its professional services offerings shape the entire customer relationship.

### Including Links to Documentation

In general, for Public Sector responses, adding links to documentation is not a good practice. Essentially, anything that makes a reader have to do extra work is not going to work well. There are also cases in which the reader may not be able to readily access the link provided.

For example, if the question asks for a Roadmap for the next product release, it is a good idea to include a link to our roadmap, but then also explain GitLab's release velocity and consistency so the customer understands the dynamic nature of the GitLab release process. Another instance when links are desirable is when relevant customer use cases may be referenced.

If, however, the customer asks for a descriptive concept like the architecture of GitLab, use that as a way to include as much detail as possible inline, a summary of why the architecture is what it is, including the benefits, and then a link for them to read more. Also, including images and screenshots is highly encouraged where possible.

The customer may ask for a description of the CI process or other complex process. In these cases, it is acceptable to copy as much of the documentation from our documentation as possible, including many details to differentiate GitLab from competitive products. Using CI as an example, include a description of how GitLab CI operates, a description of the yml file, a link to the yml file documentation, and add information regarding unique or differentiating functions that GitLab offers like Auto DevOps, Directed Acyclic Graphs, multi-project pipelines, etc.

### Tips and Tricks in Response Writing

- As much as possible use [active rather than passive voice](https://www.grammarly.com/blog/active-vs-passive-voice/)
- Eliminate pronouns: Example 1, "GitLab CI will do x" rather than "Our CI will do x". Example 2, "The GitLab team will x" rather than "We will x".
- Organization of the response is as important as the content
- Create a strong introduction and summary leveraging existing Marketing information which presents the breadth of the entire GitLab solution
- If specific requirements are expected to be answered by the response, add notations to the requirement number being met within the text of the response: Example, "GitLab's SAST scanner will analyze your source code for known vulnerabilities (Req 1.a.1)"
- Use customer terminology wherever possible
- Include relevant customer use cases whenever possible

## Hands-on Workshops

Hands-on GitLab workshops are interactive events which enable GitLab prospects and customers to learn more about GitLab, then apply that knowledge hands-on within a provided GitLab environment. Workshops include topics such as DevOps Automation, Portfolio and Project Management, Security and Advanced CI/CD. Workshops are ideally limited to 200 or fewer attendees in order to provide stable working environments as well as to be able to field Q&A from attendees in a timely manner. Workshops may be executed as marketing events or run independently for specific customers. 

Due to resource intensity and time requirements, workshops are typically limited to a minimum of 50 attendees. Workshops average 3 hours in length, requiring a minimum of 3 GitLab employees to execute successfully. These are not "training events" but rather informational events geared toward new users or users interested in expanding their use of GitLab into new functionality such as  CI, PPM or security.  

### Creating a Workshop Instance

To create an instance of a workshop navigate to the [Workshop Classes](https://gitlab.com/gitlab-com/customer-success/workshops/classes) Group in GitLab.

1. Click the 'New Project' button
2. Select 'Create from template' 
3. Select 'Group' then select the required workshop template
4. Enter a project name that follows the following naming convention:
    [Date of workshop]-[Workshop Name]-[Client Name(if applicable)]  
    i.e.  "20210112-Advanced CI CD-GitLab"
5. Click the 'Create project' button

### How to Use the Workshop Template
The template consists of several main parts:

#### The Project Repository
 The project Repo contains all the materials required to run a workshop. 

#### The Readme File
The Readme file within the project repository describes the workshop requirements and delivery information.

#### Tracking Issues
There are 7 issues created to help set up, track and deliver the workshop

Task 1 is the core issue. It is recommended that to use this to consolidate and coordinate with the team. Point team members to this issue to get the information on the particular instance of the workshop. Set timelines and set the dates for all the issues as it relates to the targeted delivery date.

#### Tracking Milestone
Milestones are used to see progress on workshop set up. They can also be used as part of the group roll up to see across multiple workshop executions.

#### Tracking Boards
The following boards have been created to help manage the workshop. Feel free to create new boards as needed:

 - Tracking - This board uses the flow of scoped labels - Waiting to Start, In Progress, Under Review
 - Assistance Needed: This board follows blocking issues affecting workshop setup and delivery

#### Labels
The following labels are available at the project level - feel free to add new labels as needed, but please do not remove these labels:

- Assistance Needed: a label to flag when help is needed from the team and/or management to resolve an issue
- Content Creation - a label to indicate content is being created or updated
- Waiting to Start - a label indicating no work completion to date
- In Progress
- Under Review
