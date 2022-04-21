---
layout: handbook-page-toc
title: Support Global Groups
description: Support Global Groups main page
---

# Introduction to Support Global Groups

The Support Global Groups way of working is based on the knowledge that people are much
more successful when working in small self-organizing groups than when working in large ones.
GitLab Support is definitely a big group, and it's only getting bigger! So now
it has become very difficult for Support Engineers in this large, global
environment to connect with other team members, to know who to contact when
they need help, to feel heard, and to be successful in their work.

With the introduction of Support Global Groups (SGG) in May of 2022, we aimed
to create for all Support Engineers a smaller, safer space for belonging,
which still maintains their full access to the support, knowledge and
experience of our global Support Team. Another important aspect of SGG is that
it provides for each SE a less intimidating, easier to grasp, more manageable
set of work for which they share responsibility with their small, close group. 

In this environment, we have observed and received feedback from
our Support Engineers during SGG trials that they feel less
work-induced stress and more happiness and job satisfaction overall. With
that happiness comes greater energy, more and better innovation, greater
efficiency, and better results for our customers and our company. We see SGG
as a strong foundation for success as the Support Team continues to scale.


## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## SGG Basics

### The System

- There are 5 Support Global Groups - this number will go up over time as the
  Support Team grows
  - each group has about 1/5 each of the SaaS and SM SEs from each of the three
    regions
  - each group has a representative blend of tenure and skill level
  - product expertise is distributed reasonably between the groups
  - the groups are all named after trees from around the world:
    - [Baobab](groups/baobab)
    - [Ginkgo](groups/ginkgo)
    - [Kapok](groups/kapok)
    - [Maple](groups/maple)
    - [Pine](groups/pine)

#### Zendesk

- Inbound support tickets are automatically distributed in a round-robin
  fashion to the groups
  - there is a separate distribution for SaaS and SM tickets - if there are 5
    groups then each group will get 1/5 of the SaaS tickets and 1/5 of the SM
    tickets
- Each group works out of a single Zendesk view, named `SGG: [group name]`
  - the view shows only the tickets that were distributed to the group
  - the view shows all non-solved, non-pending tickets for the group
  - the view is grouped by ticket stage to support prioritization of FRTs
    and Needs-Org
  - the view is visible to everyone in Support to aid in collaboration
- A ticket is assigned to a group by setting the value of the `SGG` field to
  the name of the group
- A Support Engineer is assigned to a group by adding text in the format
  `SGG: [group name]` to the `Groups` section of their entry in the
   [support-team.yaml](https://gitlab.com/gitlab-com/support/team/-/blob/master/data/support-team.yaml)
   file

#### Slack

- Each group has its own Slack channel
  - Naming scheme: each name is a type of tree
  - Naming format: each name is in the format `spt_gg_[group name]`
- Each Slack channel is public
- Pinned to each Slack channel are:
  - a link to this page
  - a link to the group's handbook page
  - a link to the Support Team page showing the group's membership
  - a link to a permanent Zoom room for that group to use in collaborating

### SE Responsibilities and Priorities

---

**>>>>>>>> The primary responsibility of each Support Engineer is the success of their
group. <<<<<<<<**

---

#### Success for a group means:

- Working together to fulfill the group's responsibility to manage and resolve
  well all tickets that are assigned to the group. This includes things like:
  - monitoring the view and distributing the tickets
  - maintaining progress on tickets when the assignee is unavailable
  - reaching out to managers or other groups when help is needed to fulfill
    this responsibility
  - collectively taking responsibility for escalated tickets within the group
- Achieving our [target](https://about.gitlab.com/handbook/support/performance-indicators/#service-level-agreement-sla)
  of delivering a meaningful first response on tickets
  assigned to the group within SLA at least 95% of the time
- Delivering timely and meaningful updates on all tickets assigned to the
  group, resulting in high quality resolutions
- All group members participating on a daily basis in supporting the rest of
  the group by sharing knowledge, assisting on tickets, and contributing to
  group process development and improvement
- All group members holding each other accountable for contributing
  appropriately to the group's success
- Ensuring that all tickets are assigned at the time of first response
  - Ownership is important for delivering a great customer experience and
    for keeping tickets moving toward resolution
  - In SGG, assigned tickets remain visible in the group view, so **everyone
    can and may contribute**

#### Prioritizing work

Each Intermediate Support Engineer should generally be prioritizing their daily
work according to the following list. Interviews, training, special assignments
and other time-bound commitments are examples of good temporary exceptions to
these priorities. Your group might also determine a different workflow or
distribution of work that would create a different prioritized list. 

1. Handle emergencies if you are the Support Engineer On-Call or incidents if
   you are the CMOC.
1. Handle escalated tickets that are assigned to you or on which you've agreed
   to help
1. Make sure that all new tickets in your group's view receive a meaningful
   first response within SLA
1. Triage all "Needs-org" tickets to ensure the correct SLA is applied to the ticket
1. Make sure your assigned tickets are all up to date and progressing
   appropriately
1. Help on tickets assigned to others in your group by:
   1. posting an internal note with relevant helpful information, OR
   1. asking the assignee if they'd like to pair on the ticket, OR
   1. responding directly to the customer, **preferably only if a response
      is needed urgently or the assignee is unavailable to work the ticket**
1. Help on tickets within your [FlexiPods](https://about.gitlab.com/handbook/support/workflows/working-with-pods.html) (if applicable)
1. Attend to indirect ticket work you have to do, such as:
   - docs updates
   - issue creation or contributions
   - training
   - ...
1. Help on tickets outside of FlexiPods and assigned to other groups

#### Maximizing group success

- Get to know each other! Make connections! Build relationships!
  - have coffee chats
  - have weekly meetings just for fun, maybe cross-regional
  - discover each other's skills
- Collaborate!
  - consider inter-regional handover calls
  - use the group's Zoom room for pairing sessions
  - ask the group for help on tickets
  - respond to requests for help even if you have to say "I can't"
- Talk to each other in your Slack channel:
  - find out who is in today, and talk about covering for those who are out
  - decide who will keep an eye on the queue and when
- Get organized - initiate and participate in conversations about things like:
  - how the group will manage tickets and the queue when group members are 
    on PTO or have other commitments
  - how to handle preferred region in tickets

#### Global Collaboration

We are all part of a global team of 100+ support engineers and in
SGG we have the benefit of both working in a small familiar group
and of the broad experience and expertise of our full global team.
Flexipods is one example of cross-group collaboration, some others are:
- pairing sessions
- crush sessions
- sharing questions to a broader audience in #support_gitlab-com and
  #support_self-managed and #support_team-chat

## SGG History

## FAQ

Please see the [FAQ page](/handbook/support/support-global-groups/sgg-faq.html)
