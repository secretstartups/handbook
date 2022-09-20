---
layout: handbook-page-toc
title: "Secure & Govern UX"
description: "We’re designing an experience that enables contributors to commit their most secure work and to protect what they have in production."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview
We’re designing an experience that enables contributors to commit their most secure work and to protect what they have in production. This is done by merging security into the DevOps process, giving development teams more ownership, commonly referred to as DevSecOps. The experience brings cross-functional stakeholders together to make better, faster, and more security-oriented decisions. We are doing this by focusing the experience on automation, education, empowerment, and shifting security to the left.

**Automation** referrs to convention over configuration that helps draw a clear path for the user to produce meaningful results. When it comes to web security, no application will ever be 100% secure. That’s why we are focused on integrating automation into every step of the user’s journey, taking the guesswork out of configuration to open up more time on what’s important: resolving known vulnerabilities and identifying attacks or threats.

**Education** for our users so they understand security basics and are aware of security needs in their applications. We want our users to know where vulnerabilities or threats have been detected, visualize the implications, present resources to understand the problem, and provide the tools to facilitate informed decisions about next steps.

**Empowerment** for all users to resolve security issues is essential as cross-functional departments share ownership of security. Our tools strive for an experience where the developer is responsible and the security team is accountable for the organization's security.

**Shifting left** is taking things like QA and other processes typically found later in the ops cycle and moving them to development. Resulting in security problems being addressed earlier and more often.

### Customer
Organizations of all sizes benefit from our tools and the experience of bringing teams together. We provide customers value with workflow efficiency, informed team decision-making, lower risk of security breaches, and attaining compliance requirements. We focus on all aspects of the product — starting with the customer experience. When deciding to use our tools, organizations are often considering the following:

* What languages does the tool support?
* What tests do we need to cover?
* What tests does the tool cover?
* Can it be automated?
* How long will setup take?
* What does setup involve?
* How easy is it to use?
* What technologies do you need to use? (ex. Docker, Kubernetes)
* How lightweight is the tool?
* How does it integrate with our tools?
* How does it integrate with GitLab's product?
* What customer support is offered?
* What are the upcoming features? (we are selling contracted services vs monthly)

### Jobs to be Done
We use the [Jobs to be Done (JTBDs) framework](/handbook/product/ux/jobs-to-be-done/) to keep us focused on user goals and to make sure we're supporting users on what they value. See a breakdown of the Secure and Govern Jobs to be Done [here](/handbook/product/ux/stage-group-ux-strategy/sec/jtbd/index.html).

We also carry out [UX Scorecard evaluations](/handbook/product/ux/ux-scorecards/) for our JTBDs. See UX Scorecards for Secure and Govern, as well as for other stages, [here](https://gitlab.com/groups/gitlab-org/-/epics/1714).

### Team
* [Justin Mandell](https://gitlab.com/jmandell) - Product Design Manager
* [Andy Volpe](https://gitlab.com/andyvolpe) - Staff Product Designer
* [Becka Lippert](https://gitlab.com/beckalippert) - Senior Product Designer
* [Camellia Yang](https://gitlab.com/cam.x) - Senior Product Designer
* [Michael Fangman](https://gitlab.com/mfangman) - Product Designer

#### Team structure
We've divided our stage into dedicated experience groups to align with a similar [split](/handbook/product/categories/#sec-section) undertaken by our engineering and PM counterparts. This is an excellent way to manage our resources but our mindset is still focused on a wholistic approach for our Groups overall user experience.

**Secure**

| Group                  | Category                                            | DRI Designer(s)                   |
| ---------------------- | --------------------------------------------------- | --------------------------------- |
| Composition Analysis   | Dependency Scanning, License Compliance             | Secure & Govern UX Team (shared)  |
| Dynamic Analysis       | DAST, Fuzz Testing                                  | Michael Fangman                   |
| Static Analysis        | SAST, Secret Detection, Code Quality                | Michael Fangman                   |

**Govern**

| Group                    | Category                                           | DRI Designer(s)           |
| ------------------------ | -------------------------------------------------- | ------------------------- |
| Container Security       | Security Orchestration and Container Scanning      | Camellia Yang             |
| Threat Insights          | Vulnerability Management and Dependency Management | Becka Lippert, Andy Volpe |
| Compliance               | Compliance Management and Audit Events             | TBH                       |

The Secure & Govern UX teams work closely together on all things Secure & Govern and have shared coverage in the following areas:

- Security Dashboards
- Security Reports 
- Security Widgets in the Merge Request
- Status, Metrics and Reporting
- Security Configuration

This segmentation gives us a better opportunity to:
- Grow our expertise and knowledge within our subgroup while sharing relevant information with the rest of the team.
- Evolve and maintain relationships with our dedicated engineering team and PMs.
- Serve as the known main point of contact.
- Deeply understand our users' needs by initiating and/or leading research activities specific to our experience group.
- Focus on iterating and progressing our experiences from MVC to Lovable.

Read more about how we've created these dedicated experience groups [here.](https://gitlab.com/gitlab-org/gitlab-design/issues/458)

#### Team strategy
**Short-term (6m - 12m)** (as of 2021-09-22)
* 💕 🧠 Educate our teams and counterparts on our goals, strategies and reasoning behind them
* 🖼 Develop a roadmapping framework to be used across all Secure & Govern teams
* 📐 Review, assess, and address our existing UI for learnability and usability
* 🚀 Deliver solutions for unmet needs based on JTBD, allowing users to adopt GitLab as their DevOps Platform

**Long-term (1y - 3y)** (as of 2021-09-22)
* 📚 Evaluate the app security maturity landscape and help our users level-up their maturity (see Empowerment in the [Overview section](/handbook/product/ux/stage-group-ux-strategy/sec/#overview))
* 🚌 Help our users learn and up-skill their teams' knowledge on the importance of using our tools and how to use them effectively (see Education, Empowerment & Shifting left in the [Overview section](/handbook/product/ux/stage-group-ux-strategy/sec/#overview))
* 💕 🧠 Continue to educate our teams and counterparts on our goals, strategies and reasoning behind them

#### UX pages
* [Secure UX](/handbook/product/ux/stage-group-ux-strategy/secure/)
* [Govern UX](/handbook/product/ux/stage-group-ux-strategy/govern/)

### How we work
We follow the [GitLab workflow](/handbook/engineering/workflow/#product-development-timeline) with [additional dates](/handbook/product/ux/stage-group-ux-strategy/sec/) and actions that directly tie to our work. 

For UX-related issues or MRs that involve all groups across Secure and Govern (if you're unsure who the DRI is), we encourage transparency and collaboration by using `@gitlab-com/gitlab-ux/secure-govern-ux`. 

For any feature development on, or affecting the performance of, the Security Dashboard and the Vulnerability Report pages, the Threat Insight backend engineering team should be notified early on by using the `@gitlab-org/govern/threat-insights-backend-team` handle to evaluate the performance impact of the feature.

### Team meetings
* UX Group Team Social (Secure & Govern, Configure and Montior teams Check-in and hang out) weekly meeting on Tuesdays at 8:00am PST (See below for more details)
* Secure & Govern UX - Product Design and Product Management come together every 4 weeks for a refinement session on Wednesdays at 7:00am PST (We review the upcoming milesont plan, 2 weeks before the new milestone starts)
* Pre milestone Planning Session Monthly on the second Monday at 9:00am PST (We finalize the plan for the upcoming milestone)

These include topics relevant to Secure design, UX, and research. Some example topics could include:
- Updates on in-flight and planned research
- Updates on design issues
- Issues that might be at risk or have blockers
- Recently discovered insights while conducting researching
- Updates to our UX Scorecards
- Updates on changes to UX workflows and processes
- Updates on pilot initiatives we are working on
- Strategy iterations

Some topics are better suited for a dedicated meeting, and should be created on an as-needed basis:
- Milestone planning and refinement
- Design critiques
- Research report readouts
- Syncing on troublesome issues

##### Labels we use
We use `devops::stage_name` and `UX` labels to indicate issues that need UX effort. We work on user flows that often span multiple categories so we review each of these issues prior to the start of a milestone to determine the design assignee or assignees.

* `UX` + `devops::stage_name`: It is a shared UX effort and the engineering effort has not been determined.
* `UX` + `devops::stage_name`+`Category::name`: There is a DRI for UX (can be shared) and clear engineering collaboration.
* `UX` + `devops::stage_name`+ `UX debt`: Used for follow-up issues when a proposed design was de-scoped or not implemented as planned.

See our [UX Workflow](/handbook/product/ux/ux-department-workflow/#how-we-use-labels) page for more on how we use labels.

##### Problem and solution validation issues
When working on a `workflow::problem validation` or `workflow:solution validation` issue requiring implementation in the next 2 releases, ensure there is a placeholder implementation issue. This issue must be attached to the epic, and have a tentative milestone.

#### Planning and refinement
We use a [team planning board](https://gitlab.com/groups/gitlab-org/-/boards/2131151?milestone_title=13.11&) as tool to help us monitor our velocity allowing us to more efficiently communicate our time to our counterparts.

At the start of each Milestone, we create a Team Milestone Planning Issue (using the [template below](#team-milestone-planning-issue-template)) to initiate a team discussion around which Issues will need to be worked on in the next, upcoming, milestone (not the milestone that has just begun). We do this to ensure that each Group has:
* Product Designer coverage
* To allow for a greater awareness of the work each Group is doing
* To increase the potential for cross-group collaboration, and
* To increase knowledge across Groups

**`M-1, 17th` (1 month before start of milestone)**
* Product Design Manager (PDM): Create a Planning Issue for the milestone from the team's Planning Issue Template.
* PDM: Assign Issue to entire team
* Team: Discuss the needs for the NEXT milestone's design work with your Product Managers (PM)
* Product Designers (PD) will fill in their expected Group, Flex and TOTAL Capacity in the Product Designer's Available Capacity table

**`M-1, 24th` (~3 weeks before start of milestone)**
* Each PM and Product Designer (PD) counterpart will work together for a week to add content to their Group's UX Needs table
* Each PD will add any OKR or Extra issues they expect to work on during the upcoming milestone to the OKR/Extra UX Needs table

**`M-1, 1st` (~2 weeks before start of milestone)**
* Now that all of the Group's UX Needs tables have been filled in, it's time to discuss if anyone needs additional Product Designer assistance (i.e. An Issue(s) has a priority that is deemed to be higher than another Group's prioritized list or a PM that doesn't have a PD counterpart has work that needs to get done).

**`M-1, 8th` (~1 weeks before start of milestone)**
* Add a new comment for a round table team check-in Thumbs up/down to ensure everyone is covered and happy with the outcome.

**`M, 17th` (Start of milestone)**
* PDM: closes Planning Issue

#### Team Milestone Planning Issue Template
    ### Product Designer's Available Capacity
    <!-- Group Capacity is the number of weight points you are able to contribute to your group work this milestone.
    Flex Capacity is any extra weight points you'll hold in reserve to accommodate any OKR, UX Dept or any other extracorricular work that you expect will pop-up during this milestone  -->
    | Designer | Group Capacity | Flex Capacity | TOTAL Capacity |
    | -------- | ------ | ------ | ------ |
    | Andy     |        |        |        |
    | Becka    |        |        |        |
    | Camellia |        |        |        |
    | Michael  |        |        |        |

     ### Product Designer's Out Of Office (OOO)
     | Designer | OOO Start - End |
     | -------- | --------------- |
     | Andy     |                 |
     | Becka    |                 |
     | Camellia |                 |
     | Michael  |                 |

     ### Review Existing UX SUS Related Issues
     NOTE: We need to strive to act upon these issues quickly as they will impact our usability
     * [SUS Related Issue Board](https://gitlab.com/groups/gitlab-org/-/boards/3738104?label_name[]=SUS&label_name[]=severity%3A%3A2)

    ### Composition Analysis UX Needs - UX Roadmap Theme: `<theme link here>`
    
    #### UX Theme 
    <!-- Working in themes is a goal we should always aim for. It allows teams to design holistically instead of in small parts of a whole, issue-by-issue. Sometimes things don't fit nicely into a theme, add those issues to the Non-theme related needs table. -->
    | UX Theme | Theme status | Designer | Vision Design Ready By (Milestone or :white_check_mark:)  | Est Milestone Weight | 
    | --- | --- | --- | --- | --- | 
    | <!-- theme issue here -->  | <!-- ~"workflow::design", ~"workflow::solution validation" --> | <!-- @ designer -->  | <!-- MS or :white_check_mark: -->  |<!-- weight here --> |  

    ##### Theme MVC Issues
    <!-- Once a Theme's Vision design has been completed (:white_check_mark:) you'll work with your counterparts to break it down into manageable MVCs. This is where the higher fidelity work (coloring in the wireframe if you will) will happen. -->

    | Priority | Issue/Epic | State | 💯 Need / 💪 Nice to have | Designer | Ready for Build By | ≅ Weight | Carryover Notes |
    | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
    | 1 | <!-- link goes here  --> | <!-- Ready for design --> | <!-- 💯  --> | <!-- designer name  --> | <!-- Milestone --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |
    | 2 | <!--  link goes here  --> | <!-- Needs solution validation --> | <!-- 💪  --> | <!-- designer name  --> | <!-- Milestone  --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |

    #### Non-theme related needs

    <!-- Issue priority is determined by looking at the first Priority column's priority number, measuring that against the Need/Nice to have a column, and then finally against when it needs to be Ready for Build By. All of these items together will determine an overall priority that can be used as a measure against another issue in another Group's table. This can be helpful when determining if a designer needs to drop an issue in one Group to pick up another issue in a different Group. -->

    | Priority | Issue/Epic | State | 💯 Need / 💪 Nice to have | Designer | Ready for Build By | ≅ Weight | Carryover Notes |
    | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
    | 1 | <!-- link goes here  --> | <!-- Ready for design --> | <!-- 💯  --> | <!-- designer name  --> | <!-- Milestone --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |

    ### Container Security UX Needs
    
    #### UX Theme 
    <!-- Working in themes is a goal we should always aim for. It allows teams to design holistically instead of in small parts of a whole, issue-by-issue. Sometimes things don't fit nicely into a theme, add those issues to the Non-theme related needs table. -->
    | UX Theme | Theme status | Designer | Vision Design Ready By (Milestone or :white_check_mark:)  | Est Milestone Weight | 
    | --- | --- | --- | --- | --- | 
    | <!-- theme issue here -->  | <!-- ~"workflow::design", ~"workflow::solution validation" --> | <!-- @ designer -->  | <!-- MS or :white_check_mark: -->  |<!-- weight here --> |  

    ##### Theme MVC Issues
    <!-- Once a Theme's Vision design has been completed (:white_check_mark:) you'll work with your counterparts to break it down into manageable MVCs. This is where the higher fidelity work (coloring in the wireframe if you will) will happen. -->

    | Priority | Issue/Epic | State | 💯 Need / 💪 Nice to have | Designer | Ready for Build By | ≅ Weight | Carryover Notes |
    | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
    | 1 | <!-- link goes here  --> | <!-- Ready for design --> | <!-- 💯  --> | <!-- designer name  --> | <!-- Milestone --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |
    | 2 | <!--  link goes here  --> | <!-- Needs solution validation --> | <!-- 💪  --> | <!-- designer name  --> | <!-- Milestone  --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |

    #### Non-theme related needs

    <!-- Issue priority is determined by looking at the first Priority column's priority number, measuring that against the Need/Nice to have a column, and then finally against when it needs to be Ready for Build By. All of these items together will determine an overall priority that can be used as a measure against another issue in another Group's table. This can be helpful when determining if a designer needs to drop an issue in one Group to pick up another issue in a different Group. -->

    | Priority | Issue/Epic | State | 💯 Need / 💪 Nice to have | Designer | Ready for Build By | ≅ Weight | Carryover Notes |
    | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
    | 1 | <!-- link goes here  --> | <!-- Ready for design --> | <!-- 💯  --> | <!-- designer name  --> | <!-- Milestone --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |

    ### Dynamic Analysis UX Needs
    
    #### UX Theme 
    <!-- Working in themes is a goal we should always aim for. It allows teams to design holistically instead of in small parts of a whole, issue-by-issue. Sometimes things don't fit nicely into a theme, add those issues to the Non-theme related needs table. -->
    | UX Theme | Theme status | Designer | Vision Design Ready By (Milestone or :white_check_mark:)  | Est Milestone Weight | 
    | --- | --- | --- | --- | --- | 
    | <!-- theme issue here -->  | <!-- ~"workflow::design", ~"workflow::solution validation" --> | <!-- @ designer -->  | <!-- MS or :white_check_mark: -->  |<!-- weight here --> |  

    ##### Theme MVC Issues
    <!-- Once a Theme's Vision design has been completed (:white_check_mark:) you'll work with your counterparts to break it down into manageable MVCs. This is where the higher fidelity work (coloring in the wireframe if you will) will happen. -->

    | Priority | Issue/Epic | State | 💯 Need / 💪 Nice to have | Designer | Ready for Build By | ≅ Weight | Carryover Notes |
    | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
    | 1 | <!-- link goes here  --> | <!-- Ready for design --> | <!-- 💯  --> | <!-- designer name  --> | <!-- Milestone --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |
    | 2 | <!--  link goes here  --> | <!-- Needs solution validation --> | <!-- 💪  --> | <!-- designer name  --> | <!-- Milestone  --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |

    #### Non-theme related needs

    <!-- Issue priority is determined by looking at the first Priority column's priority number, measuring that against the Need/Nice to have a column, and then finally against when it needs to be Ready for Build By. All of these items together will determine an overall priority that can be used as a measure against another issue in another Group's table. This can be helpful when determining if a designer needs to drop an issue in one Group to pick up another issue in a different Group. -->

    | Priority | Issue/Epic | State | 💯 Need / 💪 Nice to have | Designer | Ready for Build By | ≅ Weight | Carryover Notes |
    | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
    | 1 | <!-- link goes here  --> | <!-- Ready for design --> | <!-- 💯  --> | <!-- designer name  --> | <!-- Milestone --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |

    ### Static Analysis UX Needs
    
    #### UX Theme 
    <!-- Working in themes is a goal we should always aim for. It allows teams to design holistically instead of in small parts of a whole, issue-by-issue. Sometimes things don't fit nicely into a theme, add those issues to the Non-theme related needs table. -->
    | UX Theme | Theme status | Designer | Vision Design Ready By (Milestone or :white_check_mark:)  | Est Milestone Weight | 
    | --- | --- | --- | --- | --- | 
    | <!-- theme issue here -->  | <!-- ~"workflow::design", ~"workflow::solution validation" --> | <!-- @ designer -->  | <!-- MS or :white_check_mark: -->  |<!-- weight here --> |  

    ##### Theme MVC Issues
    <!-- Once a Theme's Vision design has been completed (:white_check_mark:) you'll work with your counterparts to break it down into manageable MVCs. This is where the higher fidelity work (coloring in the wireframe if you will) will happen. -->

    | Priority | Issue/Epic | State | 💯 Need / 💪 Nice to have | Designer | Ready for Build By | ≅ Weight | Carryover Notes |
    | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
    | 1 | <!-- link goes here  --> | <!-- Ready for design --> | <!-- 💯  --> | <!-- designer name  --> | <!-- Milestone --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |
    | 2 | <!--  link goes here  --> | <!-- Needs solution validation --> | <!-- 💪  --> | <!-- designer name  --> | <!-- Milestone  --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |

    #### Non-theme related needs

    <!-- Issue priority is determined by looking at the first Priority column's priority number, measuring that against the Need/Nice to have a column, and then finally against when it needs to be Ready for Build By. All of these items together will determine an overall priority that can be used as a measure against another issue in another Group's table. This can be helpful when determining if a designer needs to drop an issue in one Group to pick up another issue in a different Group. -->

    | Priority | Issue/Epic | State | 💯 Need / 💪 Nice to have | Designer | Ready for Build By | ≅ Weight | Carryover Notes |
    | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
    | 1 | <!-- link goes here  --> | <!-- Ready for design --> | <!-- 💯  --> | <!-- designer name  --> | <!-- Milestone --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |

    ### Threat Insights UX Needs
    
    #### UX Theme 
    <!-- Working in themes is a goal we should always aim for. It allows teams to design holistically instead of in small parts of a whole, issue-by-issue. Sometimes things don't fit nicely into a theme, add those issues to the Non-theme related needs table. -->
    | UX Theme | Theme status | Designer | Vision Design Ready By (Milestone or :white_check_mark:)  | Est Milestone Weight | 
    | --- | --- | --- | --- | --- | 
    | <!-- theme issue here -->  | <!-- ~"workflow::design", ~"workflow::solution validation" --> | <!-- @ designer -->  | <!-- MS or :white_check_mark: -->  |<!-- weight here --> |  

    ##### Theme MVC Issues
    <!-- Once a Theme's Vision design has been completed (:white_check_mark:) you'll work with your counterparts to break it down into manageable MVCs. This is where the higher fidelity work (coloring in the wireframe if you will) will happen. -->

    | Priority | Issue/Epic | State | 💯 Need / 💪 Nice to have | Designer | Ready for Build By | ≅ Weight | Carryover Notes |
    | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
    | 1 | <!-- link goes here  --> | <!-- Ready for design --> | <!-- 💯  --> | <!-- designer name  --> | <!-- Milestone --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |
    | 2 | <!--  link goes here  --> | <!-- Needs solution validation --> | <!-- 💪  --> | <!-- designer name  --> | <!-- Milestone  --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |

    #### Non-theme related needs

    <!-- Issue priority is determined by looking at the first Priority column's priority number, measuring that against the Need/Nice to have a column, and then finally against when it needs to be Ready for Build By. All of these items together will determine an overall priority that can be used as a measure against another issue in another Group's table. This can be helpful when determining if a designer needs to drop an issue in one Group to pick up another issue in a different Group. -->

    | Priority | Issue/Epic | State | 💯 Need / 💪 Nice to have | Designer | Ready for Build By | ≅ Weight | Carryover Notes |
    | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
    | 1 | <!-- link goes here  --> | <!-- Ready for design --> | <!-- 💯  --> | <!-- designer name  --> | <!-- Milestone --> | <!-- approx weight --> | <!-- Add notes why not done in prev milestone --> |

    ### OKR/Extra UX Needs
    | Priority | Issue/Epic | State | 💯 Need / 💪 Nice to have | Designer | Ready for Build By | ≅ Weight |
    | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
    | 1 | <!-- link goes here  --> | <!-- Ready for design --> | <!-- 💯  --> | <!-- designer name  --> | <!-- Milestone --> | <!-- approx weight --> |
    | 2 | <!--  link goes here  --> | <!-- Needs solution validation --> | <!-- 💪  --> | <!-- designer name  --> | <!-- Milestone  --> | <!-- approx weight --> |

     * [ ] Set the Milestone (current Milestone)
     * [ ] Set the Due Date for the end of the current Milestone
     * [ ] Assign the entire team PMs and PDs

    /label ~"section::sec" ~"Planning Issue" ~"ux" ~"type::ignore


##### Understanding capacity
Part of our milestone planning activities include factoring in the amount of effort required for each assigned issue. We use the following scale:

| Size     | Weight | Description                                                  |
| -------- | ------ | ------------------------------------------------------------ |
| Trivial  | 1      | Mostly small to medium UI changes, smaller UX improvements, without unanswered questions. UX may need to stay involved with the issue but might not have to do work. |
| Small    | 2      | Simple UI or UX change where we understand all of the requirements, but may need to find solutions to known questions/problems. |
| Medium   | 3      | A medium change (lots of UI or UX changes/improvements required). Multiple pages are involved, we're starting to design/redesign small flows. Some unknown questions may arise during the work. |
| Large    | 5      | A complicated change where other team members will need to be involved. Spans across multiple pages, we're working on medium-sized flows. There are significant open questions that need to be answered. |
| Huge     | 8      | A complex change that spans across large flows and may require input from other designers. This is the largest flow design/redesign that we would take on in a single milestone. |
| Gigantic | 13     | A significant change that spans across multiple flows and that would require significant input from others (teams, team members, user feedback) and there are many unknown unknowns. It's unlikely we would commit to this in a milestone, and the preference would be to further clarify requirements and/or break in to smaller issues. |

### Our strategy
The Secure and Govern UX teams are working together to [uncover customers' core needs](https://gitlab.com/groups/gitlab-org/-/epics/1611), what our users’ workflows looks like, and defining how we can make our users tasks easier. Our strategy involves the following actions:

* [UX Scorecards and recommendations](/handbook/product/ux/ux-scorecards/) (quarterly)
* Internal understanding: stakeholder interviews (annually)
* Iterating on Secure product [foundation's document](https://gitlab.com/gitlab-org/gitlab-design/issues/333) (ongoing)
* Iterating on Govern product [foundation's document](https://gitlab.com/gitlab-org/gitlab-design/issues/547) (ongoing)
* Performing heuristic evaluations on at least 3 competitors, based competitors the 3 user type is using (annually, ongoing)
* We talk to our customer (ongoing)
* We talk to our users (ongoing)
* We outline current user workflows and improve them (upcoming, ongoing)

Additionally, we value the following:
* Testing our features with usefulness and usability studies
* Drinking our own wine and partnering closely with our internal Security and Compliance teams for feedback and feature adoption
* Partnering with our sales and account team to connect directly with customers and learn why customers did (or didn’t) choose our product
* Collaborating with stakeholders on proof of concept discoveries to better understand future consideration
* Collaborating between the Secure and Govern teams to make sure we’re offering a consistent and cohesive security workflow so that our customers can apply reactive findings into proactive measures and make sure their applications are protected throughout the entire application lifecycle
* Prioritizing issues that are likely to increase our number of active users

The source of truth lives with shipped features, therefore we:
* Make data-driven decisions quickly and thoughtfully
* Optimize to deliver our solutions as soon as possible
* Learn, iterate, test, and repeat

### Learning and development
Below is a list of resoruces that provide a foundational understanding of the industry we are designing for as it relates to GitLab.

#### Websites and resources 

##### Getting started
-[GitLab Secure UX 101](https://app.mural.co/t/gitlab2474/m/gitlab2474/1573242955373/e0edcc6d4be079e36a7e26eebb0950961b9506c7?sender=avolpe0924)

##### Security frameworks and standards
- [NIST Cybersecurity framework](https://www.nist.gov/cyberframework)
- [OWASP Top Ten](https://owasp.org/www-project-top-ten/)

##### Vulnerability types and definitions
- [MITRE - CWEs explained](https://cwe.mitre.org/about/index.html)
- [MITRE - CVEs explained](https://cve.mitre.org/about/index.html)
- [National Vulnerability Database NVD](https://nvd.nist.gov/)

#### LinkedIn Learning courses
- [DevOps Foundations: DevSecOps](https://www.linkedin.com/learning/devops-foundations-devsecops?u=2255073) • 54m • Beginner
- [DevSecOps: Automated Security Testing](https://www.linkedin.com/learning/devsecops-automated-security-testing?u=2255073) • 1h 35m • Beginner + Intermediate
- [Learning the OWASP top 10](https://www.linkedin.com/learning/learning-the-owasp-top-10?u=2255073) • 43m • Beginner + Intermediate
- [Security for the SMB: Implementing the NIST Cybersecurity Framework](https://www.linkedin.com/learning/security-for-the-smb-implementing-the-nist-cybersecurity-framework?u=2255073) • 1h 23m • Intermediate
- [Vulnerability Management: Assessing the Risks with CVSS v3.1](https://www.linkedin.com/learning/vulnerability-management-assessing-the-risks-with-cvss-v3-1/welcome-to-this-course?u=2255073) • 1h 14m • Intermediate

### Follow our work
Our [Secure and Govern UX YouTube channel](https://www.youtube.com/playlist?list=PL05JrBw4t0KrFCe5BgUkzFrZifjforQOz) includes UX Scorecard walkthroughs, UX reviews, group feedback sessions, team meetings, and more.


