---
layout: handbook-page-toc
title: "Team Retrospectives"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

In addition to the [public function-wide
retrospective](/handbook/engineering/workflow/#retrospective), each Engineering
team should be in the practice of holding their own retrospectives. The results
of these retrospectives should then inform the function-wide retrospective for
any given release.

## Requirements for an efficient retrospective

In order to generate the best results from a retrospective, the following
elements must be present:

1. A safe environment for feedback and discussion
1. A plan for advancing discussion from facts to conclusions

Not every retrospective will require both of these elements - for example,
an iteration where "nothing went wrong" may see retrospectives that don't
benefit from a safe environment. Similarly, an iteration that has nothing but
"obvious" problems will probably have a productive retrospective even without a
strong plan for the discussion. However, even iterations that seem fine on the
surface can harbor deep problems, so it is always best to be prepared.


## Establishing a safe environment

Retrospectives are inherently conversations about _what went well_ and _what
went wrong_ in a project or iteration. While it's easy to talk about _what went
well_, _what went wrong_ can be a touchy subject. Without a safe environment,
issues may go unmentioned and the team won't improve as rapidly as they
otherwise could. In order to collect as much feedback as possible, we recommend
that you observe the following:

1. **All retrospectives should have an impartial moderator.** This moderator
   actively attempts to remain objective and is focused on guiding the
   conversation forward throughout the meeting. If participants feel that the
   moderator has a stake in the conversation, they may feel as though it is not
   safe to voice dissent or share concerns.

   Normally a manager should act as this moderator. In some circumstances the
   moderator may feel a strong need or desire to participate in the
   conversation. In that case they should make it clear that their participation
   is as an individual participant, not as the moderator. If the moderator wants
   to take a very active role in the discussion, they should find a peer,
   Director, or other member of the team willing to moderate.
1. **Emotions are not only _allowed_ in retrospectives, but they should also be encouraged** 
   Emotional language ("I was angry when...," "It made me sad
   that...") not only helps convey intensity, it also helps expose issues that
   may have been difficult to sort out otherwise. Make sure all participants
   know they are free to express their feelings, although we do expect them to
   stay consistent with our [values](/handbook/values/).
1. **When possible, all parties should be present.** No one should have to worry
   about sharing concerns or experiences because another party isn't there to
   represent their side of the story. This includes stakeholders outside of the
   team, where necessary - if someone's role or contributions are going to be
   discussed, they should have the opportunity to contribute to the
   retrospective as well.
1. **When necessary, get people face to face.** After a particularly difficult
   iteration, or when there's a strong risk that emotions will be running high,
   it's almost always worth the cost to have everyone in a video meeting to talk
   through the retrospective in real-time.

## Team retrospective format

Our team retrospectives consist of two parts: **Summary** and **Discussion**.

### Timeline

* 24th: Meeting host opens the development retrospective issue.
* 24th - 31st: Engineering Managers complete the retrospective issue and add their notes and highlights to the Retrospective Summary section and Improvement Task sections in the [retrospective document](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit#)
* 31st: Meeting host closes the development retrospective issue.
* 4th: Meeting host records a short video presentation of the Retrospective Summary. The meeting host announces the video in #whats-happening-at-gitlab slack channel including the retrospective discussion topics.
* 6th: Retrospective Discussion meeting is held.

### Retrospective summary

The retrospective summary is a short video pre-recorded by the meeting host covering what went well, what went wrong, and what can be improved. All teams will fill out the retrospective issue and [doc](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit#) as normal along with parts they'd like to highlight. A couple of days before the retrospective meeting, the meeting host will pre-record a presentation of all the highlights. This presentation video will be sent out before the retrospective meeting and announced in the #whats-happening-at-gitlab slack channel.

1. Please have a retrospective with your team following the guidelines outlined in the [handbook](https://about.gitlab.com/handbook/engineering/management/team-retrospectives/).  
1. After the retrospective is complete, please choose a subset some of your most interesting learnings to share company-wide in the [retro doc](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit).  Please try to group by *topic* rather than by *team*, as suggested in #3416.
1. In this document, if the item would be of interest to a number of teams in engineering, please indicate that it should be highlighted by adding the text **highlight** at the beginning of the text. The meeting host will highlight this item when they create the pre-recorded retrospective summary presentation video. 
1. For items which have didn't go well, create an issue to address.  In the case where a manager feels an issue can/should not be created, please include that in the what went wrong section.
1. If there are action items in the document for your team from the previous retrospective please provide an update on them in the document.  They will be verbalized during the meeting.
1. Add a checkbox in the table below when your retrospective is done and when the document is updated.

Please do all of these steps *at least* one day before the team-wide retrospective.

It's easy for retrospectives to go off the rails if there isn't a good plan for
collecting actionable insights. If the moderator doesn't guide the conversation
successfully, the retrospective could be dominated by a few "loud voices" or
could stay focused on the facts and feelings about the past iteration without
drawing any conclusions. To make sure the conversation is productive, we
recommend that you **have a clear agenda for the conversation.** The moderator
for the retrospective is then responsible for ensuring the agenda is followed
and completed. While the specific nature of this agenda will vary from team to
team, we recommend something that follows this general pattern:

1. **Introduction** - remind people of the purpose of the retrospective, and
   that the conversation should be scoped to the project/iteration under
   review. Ensure everyone understands the rest of the agenda.
1. **Gather data** - don't try to draw any conclusions up front, simply
   collect facts. This can be done by constructing a timeline, soliciting
   impressions ("what made you mad, sad, or glad in this iteration?," etc.), or
   any other number of fact collecting exercises.
1. **Generate insights** - now that you have all of the facts, try to work
   together to identify patterns or causal relationships (because we did
   _x_, _y_ happened).
1. **Decide what to do** - with the insights firmly in hand, it should be
   fairly easy to identify action items for the team. This could be things
   to change with our process, it could be things to experiment with in the
   next iteration, or any other number of things.
1. **Close the retrospective** - make sure everyone who participated receives
   positive feedback about how they helped create these results. Observe any
   surprising or unexpected results from the retrospective, which confirms that
   the retrospective was valuable. Make sure all of the action items are
   appropriately assigned to one or more team members with clear expectations
   for when they should be completed.

* Attendees will be encouraged to read the content of the document before the meeting.  
* If the item (or section) says "Verbalize:" it will be verbalized in the meeting to highlight and encourage discussion on it.  The person who adds the item to the document decides if it should be verbalized.  Following this methodology leaves more time for discussion compared with reading all items in the document.
* The meeting organizer (senior director of development or their designee) may change the verbalize/don't verbalize decision before or during the meeting.
* Product managers and product leads (product operations, VP product, group managers and diretors) are invited to join.
* Sections that wish to have a separate retrospective of retrospectives separate from the team-wide retrospective are encouraged to do so.

### Retrospective discussion

**Discussion**
The discussion will be a 25 minute meeting which we aim to make more interactive. We'll be focusing on action items (improvement tasks) and discussion topics. For each retrospective, the meeting host will choose two discussion topics for the group to discuss. These topics are likely to stem from the retrospective summary and the host will try to choose topics that the majority of the group will find useful. The agenda of the meeting will be:
  * Previous retrospective improvement tasks (5 minutes)
  * Discussion topics (14 minutes, 2 topics at 7 minutes each)
  * Improvements to track for next release (5 minutes)
  * Wrap up (1 minute)

1. Read through the discussion topics in the [retro doc](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit) and add any input. The discussion topics will be announced once the pre-recorded retrospective summary video is sent out.
1. Be prepared to verbalize any improvement tasks for your team or discussion input. Note that the meeting organizer may add additional items to verbalize, so please review the document in advance of the meeting for any additions for your team.
1. If you can't make the meeting and there is an item for you to verbalize, please ask someone else on your team to attend to do so.


## Retrospective of Retrospectives

As part of the retrospective process an [Engineering
retrospective](/handbook/engineering/workflow/#retrospective) is performed which
is a summary of retros.  Please review the Engineering Retrospective for
documentation and format of the meeting. To track the work an issue will be
opened per release.  An Example issue:
[https://gitlab.com/gitlab-com/www-gitlab-com/issues/3990](https://gitlab.com/gitlab-com/www-gitlab-com/issues/3990).
Engineering Managers should save ample time between the closing of their
individual team retrospectives and the Engineering retrospective to review
notes/generate content.  In particular, the following content should be added:

* Any issues marked with retro label that have been updated since last retro.  
* What went well during this month
* What went wrong this month
* Issues created to address what went wrong this month (labeled with 'retrospective X.Y')

In the case where a manager feels an issue can/should not be created, please
include that in the what went wrong section.   

## Learn More

We recommend the following resources if you'd like to learn more about running
effective retrospectives:

1. [Agile Retrospectives: Making Good Teams Great](https://www.amazon.com/Agile-Retrospectives-Making-Teams-Great/dp/0977616649)
1. [The Human Side of Post Mortems](https://www.oreilly.com/webops-perf/free/the-human-side-of-postmortems.csp)
