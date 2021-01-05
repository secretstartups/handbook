---
layout: handbook-page-toc
title: Support Stable Counterparts
description: The motto of this page is to give an overview and outline the expectations of the Support Stable Counterparts initiative.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

As a result of our direct interactions with customers, the Support Team occupies a unique position in GitLab that gives us the opportunity to connect product managers with customer feedback, and influence changes. To take advantage of this opportunity, we've adopted a model that is known within GitLab as "Stable Counterparts." In brief, a "stable counterpart" is an assigned, permanent contact for a GitLab Team Member within another function in the company. See the [Stable counterparts](/handbook/leadership/#stable-counterparts) item on the Leadership page, and [An ode to stable counterparts](https://about.gitlab.com/blog/2018/10/16/an-ode-to-stable-counterparts/) for more information.

#### Expected outcomes of the Support Stable Counterpart (SSC) Initiative

- SSCs act as a bridge between the wider Support team and the Product groups to **share information both ways**.
- SSC becomes the voice of the customer in product forums, and helps make/influence product decisions.
- SSCs are enabled to develop vertical subject matter expertise in certain product areas.
- Product teams have a simple way to understand and explore various customer use-cases and gather feedback.

#### How do we align Support Team Members to the Product?

- Development of the product is broken down into [sections, stages and groups; that page](/handbook/product/categories/#devops-stages) is the single source of truth about who is performing this role, and what vacancies there are.
- Each group can have one or more individual contributor counterparts.
- Each section can have a Support manager counterpart.

#### Expectations from an SSC

##### Establish and maintain a relationship with your product group(s)

Just like us, the product teams are spread across the globe. Due to this, it might not always be possible to sync with your counterparts.

- If timezone permits, have an introductory coffee chat with your Product Manager. 
    - Talk about your interest in the group, and why you chose to become an SSC in it. Ask about the team and their day to day.
    - Ask them about their expectation from the SSC, manage it and align.
    - If you are in opposite timezones, do a handshake via Slack.
- Establish a regular cadence for communication with them.
    - Using a living Google document helps, especially for maintaining a regular async communication model. You can make use of [this template](https://docs.google.com/document/d/1m9t-sxPzwie2D40cXTwpjnQ2VxYJb3GoEB5ig38Nkmw/edit?usp=sharing) for it.
- In the introductory chat, 
    - Get yourself added to their team sync - you can read the agenda doc if you're unable to join the sync call!
    - Join their Slack channel if not done already.
- If the group you chose already has an SSC, schedule a coffee chat with them to learn more!

##### Be alert and engaged on what's happening with the group

- Subscribe to the pertinent trackers and labels to be aware of new issues in that group.
- Be especially aware of severity::1/severity::2 issues in the product area, including workarounds.
- Be aware of the tickets raised by customers pertinent to their category, surfacing and advocating for them.
- Be aware of major changes related to the group in upcoming releases.
- Be aware of the priorities/challenges of the product group.
- Strive to become a subject matter expert in the use of the features they cover.

##### Enable Support with periodic communication relevant to the group

- A monthly communication cadence is recommended - however, some groups might not have a lot of updates to share with Support every month. In such instances, make a decision based on your own discretion.
- Share announcements through the SWIR and in relevant Support Slack channels.
- Group related updates and announcements can be:
    - New features added in an upcoming release
    - Bug fixes in an upcoming release
    - Issues likely to generate tickets
    - Major documentation changes
    - Discovered bugs and applicable workarounds
    - Any special processes or troubleshooting workflows that might pertain to the features in your group
- Catalyze training materials and sessions as needed.
- [Optional] Consider doing quarterly office hours to chat about your group and share your experiences as an SSC with newer team members.

##### Enable Product with periodic communication relevant to the group

- Share customer feedback from tickets with the Product team.
    - Loop them in to relevant issues, tickets and Slack threads.
- Be the customer's voice and an influencing agent on product related decisions and future roadmap.
- [Optional] Help with questions from non product groups in the Product team's Slack channels if possible.

##### Be available to support and mentor newly onboarded SSCs

- Being an SSC is a different experience based on group. However, you will have certain tried and tested best practices that will help newly onboarded SSCs. Consider sharing them with the other SSCs in the team.
- Iterate on this page and other templates used in this initiative based on what works and what doesn't in the real world. Support Engineers looking to become SSCs will benefit from these.

##### Raise concerns with your manager if unable to set aside required time to be an SSC

- The success of this initiative depends heavily on the ability of the SSC to build and maintain a relationship with the Product team. This is a task that will take some dedicated time to be spent on it.
- If you find yourself unable to do justice to the expectations, have a chat with your manager and let them help you with time management and prioritization.
- It is perfectly alright to step aside for a few weeks and get back into it again once you have the bandwidth to do so.

#### Expectations from Managers

- If you are managing a Support Engineer who is also an SSC, it should be a topic of conversation in your 1:1 with them at least once a month.
    - Enable them in prioritizing and setting aside time for this activity.
    - Work on resolving concerns if any.
- If a Support Engineer you manage is interested in becoming an SSC, point them to the following section on [How can I enroll and be a counterpart?](#how-can-i-enroll-and-be-a-counterpart).
- If the SSC is going to be unavailable for a prolonged period of time, or, during an important event related to their group, act as their backfill.

#### Expectations from the Product Teams

- Please be aware of timezone constraints and flex to accommodate the SSC.
    - Introduce new SSCs to your team and add them to the relevant channels, documents and meetings.
    - Engage async via a doc or discuss other modes of communication with the SSC.
- Share all [relevant updates](#enable-support-with-periodic-communication-relevant-to-the-group) with the SSC, either sync or async.
- Each SSC-PM relationship is going to be different, work on finding out what works best for you and them!
- Share feedback with Support on what is working and what isn't.
- Set and manage expectations to get the most out of this!

#### How can I enroll and be a counterpart

If you're interested in becoming a stable counterpart for a group, 

- Discuss with your manager.
- Open an issue with the [SSC Onboarding template](TO BE CREATED) in the Support Training project.
    - This is a very very short module that walks you through expectations and best practices, and will take less than half a day to complete!
- Once done, create an MR to add your name under 'Support' for the relevant team on [data/stages.yml](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/stages.yml) and add your name to the list on the [source/includes/product/_categories-names.erb](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/includes/product/_categories-names.erb) file, then assign to your manager.

Note: We encourage having more than 1 SSC for a group - so if the group you are interested in already has an SSC, don't let that deter your interest!

### Cross Functional Non-Product Counterparts

Some functions don't fit as cleanly into the Support Stable Counterparts model. As such we have support counterparts for non-product areas to help surface issues and smooth the interface between such groups. If you're missing from this list (and want to be on it) please let the Support Managers know in `#spt_managers`.

| Section    | Group               | Group Contact       | Support Manager     | Support Counterpart        | Frequency                         |
|:----------:|:-------------------:|:-------------------:|:-------------------:|:--------------------------:|:---------------------------------:|
| UX         | UX                  | Christie Lenneville | Lyle Kozloff        | Cynthia Ng                 | weekly team meeting |
| UX         | Docs/Tech Writing   | Mike Lewis          | Tom Atkins          | Cynthia Ng & Greg Myers    | weekly team meeting |
| Production | .com Infrastructure | Dave Smith          | Lyle Kozloff        | Vlad Stoianovici           | every 2 weeks |
| Security   | Abuse               | Roger Ostrander     | Lyle Kozloff        | TBD                        | N/A |
| Security   | Security Operations | Jan Urbanc          | Lyle Kozloff        | Brie Carranza              | N/A |
| Performance| Performance         | Stan Hu             | Lee Matos           | N/A                        | N/A |
| Legal      | Legal               | Robin Schulman      | Lyle Kozloff        | N/A                        | N/A |
| Finance    | Budget              | Chase Wright        | Tom Cooney          | N/A                        | 1x Qtr on budget + once per month |
| Finance    | Accounts            | Cristine Tomago     | TDB                 | N/A                        | N/A |
| PeopleOps  | Recruiting          | Cyndi Walsh         | Tom Cooney          | N/A                        | weekly |
| PeopleOps  | After-hire care     | Jessica Mitchell    | Tom Cooney          | N/A                        | every 2 weeks |
| Sales      | Sales               | TBD                 | Tom Atkins          | N/A                        | weekly on Fri join EMEA scrum |
| Sales      | Customer Success    | Kristen Lawrence    | Tom Atkins          | N/A                        | weekly on Fri join EMEA scrum |
| Sales      | Community Relations | David Planella      | Tom Atkins          | Greg Myers                 | weekly team meeting |
| Meltano    | Meltano             | Danielle Morrill    | Jason Colyer        | TBD                        | N/A |

If you're on the Support Team and have something you'd like to surface, or would like to attend one of these meetings, feel free to post in `#spt_managers`.
