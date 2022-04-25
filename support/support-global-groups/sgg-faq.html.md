---
layout: handbook-page-toc
title: Support Global Groups - FAQ
description: Support Global Groups FAQ
---

# Support Global Groups - FAQ
 
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Collaboration

### Siloing

1. Within SGG, how can we detect trends and do problem management?

   Take advantage of the facts that group views in SGG are globally visible and
   that broad collaboration is encouraged (Crush Sessions, Pairing, Senior Help
   Sessions, etc.). When working on a ticket, a Support Engineer can search
   Zendesk tickets, troubleshooting documents, product issues and Slack for
   similar situations that have already been reported. As FlexiPods become more
   widespread, they will provide an excellent space for trend detection as well.

2. How does SGG impact people’s sense of belonging to a single global team?

   It can have that undesired impact if we are not diligent at encouraging and
   enabling various opportunities for collaborating outside of a group. A few
   ideas for encouraging broad collaboration are:
   1. Use cross-region crush sessions to collaborate with any peers
   2. Create SGG Office Hours to share tips and tricks between groups
   3. Set up regular coffee chats for yourself with colleagues outside of your group

3. Does having per-group Slack channels make it harder to find unanswered
   questions where an SE still needs help?

   The reason for having the group channels is to make it easier to get
   answers when you post a question in Slack. Before SGG, asking a question in
   the really large channels (SM, SaaS, Support Team) very often resulted in
   no answers at all. Bystander effect. But it was consistently observed
   during the SGG trials that with the much smaller channels people got more
   and faster answers.

   This means that in SGG the number of questions left unanswered should be
   very low, and the people asking those questions should after a reasonable
   amount of time seek help in other channels or through mechanisms such as
   FlexiPods.
    
4. Does having per-group Slack channels make it harder to find existing
   answers in Slack?

   This can happen. However, given that Slack purges older posts continuously,
   we shouldn’t be storing answers to ticket-related technical questions in
   Slack. Once a conversation in Slack has produced the needed answers, the
   ticket owner should save the information in an internal note in the ticket
   itself. That will allow others to search through ticket history to find
   what they need at any later time.

5. When should information or a discussion in a group Slack channel be moved to
   a channel such as `#spt_self-managed` or `#spt_gitlab-com` that has a broader
   audience?
   
   The decision is largely up to the person who started the discussion.
   Some questions helpful to making a good decision are:
   1. Is the discussion about a newly-discovered product issue?
   1. Is the discussion about a new solution or workaround to a known product
      issue?
   1. Has the discussion stalled without providing a good answer to the question
      that was asked?
   1. Did we just learn something new?

      *In this case, by the way, please also put the new discovery into the SWIR.*


### Tickets in other groups

1. Within SGG, how can SEs find and take tickets related to their topic of
   study?

   When a Support Engineer is working on a training module, they should feel
   free to assign to themselves any tickets they find in any group's view that
   will help them in meeting their training requirements.
    
1. Are SEs allowed to bring their expertise where it is needed, even outside
   of their group?

   Yes! Go where your knowledge is needed. Pair with the ticket assignee. Or
   add notes to their tickets to suggest solutions or next steps. If it makes
   more sense to become the assignee on a ticket from another group, do that -
   just be sure you change the `SGG` field to have your group’s name. FlexiPods
   should help with this as well, making it easier for others to find you, and
   for you to find tickets where your skills are needed.

## Group Administration

1. How are the number and size of groups determined?
   We based the trial groups’ size on external studies of what range of group
   sizes is most effective, and settled on 14-15 as that would allow for six
   comparably-sized groups in a global deployment. After the trials, feedback
   led us to settle on a higher number of SEs per group, and fewer groups.
   Specifically:
   1. The timezone spread in APAC makes it so that our APAC groups are each
      practically two groups: APAC-E and APAC-W. The increased group size allows
      each APAC group to have at least three people in each of those subgroups,
      which makes the groups more resilient to absences.
   1. Even with the five people in each region of each of the trial groups, SE
      sometimes had trouble finding the help or expertise they needed within
      their groups. Adding one or two more people to each region of each group
      mitigates that problem at least a little.
    
1. What are the criteria for forming groups?
   1. Within each region, we determined each group’s membership by distributing
      as evenly as we could the following:
      1. Area of focus (SaaS vs. SM)
      1. Senior SEs
      1. Skill level
      1. Leadership tendency
      1. Skill set (CI, Geo, Runner, Elasticsearch, …)
      1. Non-male

      The distribution isn’t even close to perfect, and it can’t be. We think
      it’s reasonable, though.
   1. We did not take into account other special roles, such as Support Stable
      Counterparts

1. Is membership in a particular group permanent?

   Groups are intended to build camaraderie, comfort, a support system, and
   psychological safety. To do that, they should be as stable as possible over
   time. For that reason, mass rotations of group membership are not a part of
   the SGG plan. If groups want to transfer knowledge, they may consider a 1↔1
   member swap for a 1-2 week period. If a Support Engineer wants to make a
   long-term switch to another group, they should discuss their request with
   their manager, and the manager will work to facilitate the move if they
   agree with it.

## Success Measurements

1. What is SGG trying to improve? (What is the purpose of SGG?)
   The essence of the move to SGG was that we wanted to take our team members
   out of a poorly defined system that didn’t support them well and put them
   into a new system that would. Feedback from the Support Engineers who
   participated in the SGG Trials indicated consistently that we had been
   successful. They felt less stressed, more comfortable and more happy. They
   were no longer overwhelmed by a large and seemingly unmanageable view of
   tickets. They started to collaborate with each other more and better, too.

   So why all the fuss about FRT? FRT is our only SLA. Everything we do should
   help us to achieve that SLA better. Although we saw only small improvements
   here from the trials, we were convinced by the results described above that
   moving forward was the right choice. Additionally, we knew from the start
   that the trial periods were almost certainly far too short to allow everyone
   to settle in to the new system and then to learn how to take full advantage
   of it to improve our KPIs such as FRT, SSAT, and TTR.

1. Will FRT baselines or monitoring change?
   Initially we will keep the FRT baselines unchanged. With everybody in SGG
   instead of just ⅓ of the global team (as was the case during the trial),
   there should be sufficient flow of new tickets into each group to allow
   everyone to meet or exceed the baseline. After everyone settles in to SGG -
   probably at least several months - it may become apparent that we will need
   to make changes in how we monitor and measure FRT SLA achievement.
   Additionally, as groups take different approaches to organizing ticket work,
   some may want to distribute the work within their group in a different way,
   and that could drive other changes to FRT measurement.

1. What happens if our FRT SLA achievement goes down?
   The entire Support Leadership Team (VP through managers) will continue to
   monitor all of our KPIs, as always. When and if we detect a trend in the
   wrong direction for any of them, we will follow our normal process, which
   currently is to put together a working group of managers to analyze the data
   and propose improvement plans. If at any point such a working group
   determines that the root cause of the problem is the SGG system itself, we
   will discuss options for different ways of working.

## Organization and Leadership

1. What is the manager’s role with respect to SGG?
   - Managers are available to work with any group that reaches out with
     questions, concerns, requests for guidance, requests for help, etc.
   - Managers are encouraged to stay aware of group activity by watching the
     group Slack channels
   - Managers work primarily with their own team members to understand
     challenges and growth opportunities, to provide coaching and guidance, etc.

1. Why are managers not assigned to specific groups within the SGG system?

   If we were to assign managers to groups, we would either need to make each
   group a manager’s team, replacing their current team, or use matrix
   management. Since GitLab is a no matrix organization, that leaves only the
   first option, which doesn’t work for several reasons. If each manager took
   on the portion of a group in their region: the manager to IC ratio would be
   too high, about 1:6; and each group would have 3 managers, making global
   alignment challenging. Or, if each manager were assigned to a single global
   group: the manager to IC ratio would be far too low, about 1:21; only 5
   managers would have a group or we’d again have 3 managers per group; and ICs
   would have a manager in another region, which is not something that we
   currently do in Support

   Instead of dealing with the logistical nightmare described above, we decided
   to have the managers float around to the various groups. They can spend some
   time watching and contributing to each group channel each week. During their
   1:1s with each of their team members, they can ask how the team member is
   doing in their group, what interesting things the group is doing, whether
   the group needs any help, etc. And at any time if a group needs help, the
   managers with availability can step in. In all these ways, managers can
   observe the different successes, struggles and organization of each group and
   get a bigger picture of how we’re doing.

1. Without manager assignment to groups, how will we gain global alignment for
   future initiatives and changes?

   Nothing really changes with respect to gaining global alignment. Managers
   will discuss initiatives and changes with their team members in 1:1s, or team
   meetings, or in whatever forum they use with their team. SGG also opens up a
   new possibility that we didn’t have before, which is that managers can easily
   discuss these things with any or all groups. So it may actually be easier to
   gain global alignment in SGG than it was prior to SGG.

1. What happens if a group is not making progress on organizing itself,
   especially given that no manager will be assigned to them?

   We encourage groups to reach out for help when they are struggling with
   anything, including self-organization. They can ask one or more particular
   managers if they wish, or simply ask for help in the `#spt_managers` channel.
   A group might also know that some other group has been more successful, and
   reach out to them for help.

   Managers might also observe a group struggling with something, and reach out
   proactively to ask if they would like some help.
 
1. Will managers be providing guidance and assistance to groups in
   self-organizing? If so, how?

   Yes, managers will provide both guidance and assistance beginning perhaps 2
   weeks after the rollout. During the first few weeks, we want the groups to
   be putting their efforts into acclimating to SGG without having to think
   about other process changes. In that period the SGG DRIs will be discussing
   and documenting how the management team can best contribute when groups are
   ready to undertake self-organizing.

## Tickets and Views

1. Will SEs respond to other SEs’ tickets?

   An important part of SGG is increasing collaboration on tickets, and that’s
   why all of a group’s tickets are visible in the group view and all SEs are
   encouraged to help on any ticket in their group view. This may sound like a
   return to the hot queue model, but there are key differences. First, all
   tickets should be assigned from the moment of the first response. Second, the
   preferred ways to help on someone else’s ticket are to pair with the assignee,
   to respond to Slack questions from the assignee, and to add internal notes to
   the ticket. However, if the next response is due, either according to the SLA
   clock or to an expectation set in the ticket, and the assignee is not
   available to send a response, then any other SE who can help should consider
   doing so.

1. If there are no tickets in my group view that are within my Area of Focus (SM
   or SaaS), what should I do?

   One of the benefits of SGG is that it provides a more supportive environment,
   your small group, for taking risks and growing. So when this situation
   arises, please consider stepping outside of your comfort zone a little by
   taking a ticket that is **not** in your Area of Focus and trying at least to
   provide the customer with a meaningful first response. And ask for help if
   you need it! For other choices, see the Prioritizing work topic on the SGG
   main page.

1. What should a group do if all of its SaaS or SM people are absent or
   dedicated to non-ticket work?

   First, remember that each group is represented in all 3 regions. It’s pretty
   unlikely that all 3 regions of a group would be completely absent all of its
   SEs in an Area of Focus. So the first option would be to check in with the
   other regions for help. Secondly, the group could try to see what progress
   it could make on its own. And thirdly the group can ask for help from other
   groups and from managers. We’re still a single global team. No group will
   ever be left alone.

   It is also highly recommended that each group agree on a plan for
   coordinating or at least dealing with planned absences. At a minimum, if the
   group agrees on a single way to keep all of its members informed as to
   upcoming and current absences, then there won’t be any unpleasant surprises.
   
## Still Uncategorized

### How are emergencies and escalations handled within SGG?

#### Emergencies

- We handle emergencies within SGG very much as we did previously. When an
  emergency ticket arrives the on-call engineer is paged. The ticket will not
  automatically get assigned to a group. The SE who takes assignment of the
  ticket should also assign the ticket to their group. Regardless of the group
  assignment, the SE should seek help from any and all people with the skills
  or knowledge needed to progress and solve the ticket.

#### Escalations

- We handle escalations within SGG very much as we did previously. The
  Manager-On-Call will in general reach out first to the assigned SE to
  communicate the details of the escalation and to determine whether the SE is
  available and able to give the ticket the needed attention. If they are not,
  the manager is encouraged to seek help from the SE's group both because
  they may already have knowledge of the ticket and because they are very
  likely to respond to the request. Finally, as before, the manager may reach
  out to the rest of Support if more help is needed.

### How do the L&R and USFed SEs fit within SGG?

- USFed SEs work as part of the USFed team, which operates in many ways like
  an SGG group.
- 100% L&R SEs work as part of the global L&R Team, which also operates
  similarly to an SGG group. SEs who have a partial L&R focus do work within
  an SGG group for their SaaS and SM responsibilities.

