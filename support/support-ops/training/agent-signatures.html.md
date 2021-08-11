---
layout: handbook-page-toc
title: 'Zendesk Agent Signatures Training'
category: Zendesk
description: 'Training documentation concerning Zendesk Agent Signatures'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what Zendesk agent signatures are.
* Managing Zendesk agent signatures via the UI.
* Managing Zendesk agent signatures via the sync repo.
* GitLab Support Ops change management process for Zendesk agent signatures.

## What are agent signatures

Signatures are text added to outgoing email messages or tickets. In the realm of
Zendesk and GitLab, we manage all agent signatures to ensure consistency between
agents. This is accomplished via the agent-signatures repos (see
[Useful links](#useful-links) down below).

## Managing Zendesk agent signatures via the UI

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/TSnEJK5Zvmw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To manage a signature via the Zendesk UI, you begin by going to the User page of
the user who's signature you wish to edit. From there, you will click in the
`Signature` box and make the edits you wish to make. Clicking outside of the box
will save these changes.

**Note**: This should not be done without very good reason. We maintain agent
signatures via sycn repos for good reason.

## Managing Zendesk agent signatures via the sync repo

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/uTXrF9Y_Cxw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

The preferred method for managing Zendesk agent signatures is via the sync repos
(see [Useful links](#useful-links) down below). This would mean managing the
messaging or context with agent signatures is going to be done via merge
requests to the repo itself, normally the
[agent_signatures.rb file](https://gitlab.com/gitlab-com/support/support-ops/agent-signatures/-/blob/master/lib/agent_signatures.rb).

See the above video for how this repo works and how to make changes to the
agent signature formatting itself.

## Change management

When it comes to making changes to Zendeks agent signatures, we utilize the
agent-signatures repo instead of doing this via the Zendesk UI. This allows
us to easily revert a change and ensure what is running in our production
instances is what we have approved. To ensure each runs smoothly, we do our
changes in set stages.

### Request stage

All Zendesk agent signature changes should start with a request issue. This
issue should stem from a
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue where the proposal was discussed.

The request should not be "make this change in Zendesk," unless the request is
coming directly from a Support Ops team member. If the request does not detail
_what_ the desired effect is, we as Support Ops should instead push back on the
request and ask the requester detail _what they want to see as a result_ and not
_what they want done in Zendesk_.

All request issues should contain the following labels at creation:

* "Support-Ops-Category::Agent Signatures"
* A priority label, which is one of:
  * "Support-Ops-Priority::Urgent"
  * "Support-Ops-Priority::High"
  * "Support-Ops-Priority::Normal"
  * "Support-Ops-Priority::Low"
* "Zendesk::Global" if this is about the Zendesk Global instance
* "Zendesk::US-Federal" if this is about the Zendesk US Federal instance
* "SupportOps::To Do"

While we have scripting and templating in place to find when these are missing,
you should strive to ensure those are present. If you find any of them missing,
please add them.

Once the request is in good standing, you may assign it to yourself (if it is
not already) and add the tag "SupportOps::Doing" to indicate you have started
working on this.

### Repo stage

To prepare for the implementation, you will need to create a merge request to
the corresponding agent-signatures repo (see [Useful links](#useful-links)
down below).

After creating the merge request, make sure it is linked in the original
request and you have added any additional time spent to the requester issue.

From here, have one of your fellow Support Ops team members or a Support Ops
Manager review the merge request and add their approval (or comments).

At that juncture, update the issue with a comment to state the merge request
is ready. You should give the requester an opportunity to review the changes.
Ask if they would like to review them. If they decline, you may move on. If
they wish to do so, await their update after they have reviewed the results.
an implementation date can be determined.

**Note**: All merge requests in the zendesk-automations repo should contain the
following labels (the same as with issues):

* "Support-Ops-Category::Agent Signatures"
* A priority label, which is one of:
  * "Support-Ops-Priority::Urgent"
  * "Support-Ops-Priority::High"
  * "Support-Ops-Priority::Normal"
  * "Support-Ops-Priority::Low"
* "Zendesk::Global" if this is about the Zendesk Global instance
* "Zendesk::US-Federal" if this is about the Zendesk US Federal instance
* "SupportOps::To Do"

### Pre-implementation announcement stage

Once an implementation date has been determined, you need to announce this
upcoming change. To do this, use the following template:

> As per the request ISSUE_LINK of REQUESTER, we are planning to implement
> BRIEF_SUMMARY_OF_CHANGES. This is slated to be done on DATE.

You will announce this in two places:

* Post in the slack channel `#support_operations`
* Add to the most recent "Things to Know About" section of the
  [Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
  document

After posting, you then want to cross-link (copy the link to the post) the
announcement in the slack channel `#support_operations` to the following
channels:

* `#support_team-chat`
* `#spt_managers`

### Implementation stage

This stage should be the simplest one to implement, as you already have a merge
request ready to go! Simply mark the merge request as ready and merge it. If
you encounter any issues here, reach out to your fellow Support Ops team members
for assistance.

As the sync runs once a day, the changes will occur during the next run schedule
(00:00 UTC).

### Post-implementation announcement stage

Once an implementation has completed, you need to announce it! To do this, use
the following template:

> As per the request ISSUE_LINK of REQUESTER, we have implemented
> BRIEF_SUMMARY_OF_CHANGES. Please direct any issues/comments/feedback you see
> to the issue linked above.

You will announce this in two places:

* Post in the slack channel `#support_operations`
* Add to the most recent "Things to Know About" section of the
  [Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
  document

After posting, you then want to cross-link (copy the link to the post) the
announcement in the slack channel `#support_operations` to the following
channels:

* `#support_team-chat`
* `#spt_managers`

## Useful links

* [Zendesk Global agent-signatures repo](https://gitlab.com/gitlab-com/support/support-ops/agent-signatures)
* [Zendesk US Federal agent-signatures repo](https://ops.gitlab.net/gitlab-com/support/zendesk-us-federal/agent-signatures)
