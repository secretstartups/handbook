---
layout: handbook-page-toc
title: 'Zendesk SLAs'
category: Zendesk
description: 'Training documentation concerning Zendesk SLAs'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what a Zendesk SLA is
* How to create a Zendesk SLA
* How to edit a Zendesk SLA
* How to delete a Zendesk SLA
* GitLab Support Ops change management process for Zendesk SLAs

## What are Zendesk SLAs

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/204770038-Defining-and-using-SLA-policies):

> A Service Level Agreement, or SLA, is an agreed upon measure of the response
> and resolution times that your support team delivers to your customers.
> Providing support based on service levels ensures that you're delivering
> measured and predictable service. It also provides greater visibility when
> problems arise.

While Zendesk calls them all SLAs, we use many of them as SLOs (namely those for
non-support tickets and for next response times).

## How to create a Zendesk SLA

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/haEvA5RV0iM" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Note**: Some SLA policies are tied to the contracts our customers sign upon
getting a subscription. Please ensure you follow proper
[change management](#change-management) at all times!

To create a SLA policy in Zendesk, you will first go to the admin panel by
clicking on the gear icon on the left-hand side of the page. From there, you
will locate the `Service Level Agreements` link under the `Business Rules`
section. On this page, click the white `Add policy` button. This will then
display a new SLA where you will enter:

* a name for the SLA policy.
* a description for the SLA policy.
* the conditions to be met for the SLA policy to be applied.
* the response times for various SLA metrics.
  * At GitLab, we only use First reply time and Next reply time.
* The hours of operation for the SLA clocks to tick in.

After doing so, click the black `Save` button to create the SLA policy.

## How to edit a Zendesk SLA

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/m8M4ZMYiKUY" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Note**: Some SLA policies are tied to the contracts our customers sign upon
getting a subscription. Please ensure you follow proper
[change management](#change-management) at all times!

To edit a SLA policy in Zendesk, you will first go to the admin panel by
clicking on the gear icon on the left-hand side of the page. From there, you
will locate the `Service Level Agreements` link under the `Business Rules`
section. On this page, locate the SLA policy to edit and click on it. This will
open the SLA policy settings, where you can make the needed changes,

After doing so, click the black `Save` button to update the SLA policy.

## How to delete a Zendesk SLA

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/QfNz4y3qMr8" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Note**: Some SLA policies are tied to the contracts our customers sign upon
getting a subscription. Please ensure you follow proper
[change management](#change-management) at all times!

To delete a SLA policy in Zendesk, you will first go to the admin panel by
clicking on the gear icon on the left-hand side of the page. From there, you
will locate the `Service Level Agreements` link under the `Business Rules`
section. On this page, locate the SLA policy to edit and hover over it. You will
then click the gear icon on the right-hand side of the SLA policy. From there,
click on `Delete`. A pop-up box will appear asking you to confirm the deletion.
To confirm, click the black `Delete policy` button.

## Trigger standards

To ensure all SLA policies we utilize are both consistent in nature and
transparent in their actions, we strive to meet some standards on all SLA
policies we work with.

### Naming standards

The name used for the SLA policy should be simple, clear, and concise. You want
the name to convey what the SLA policy is used for.

### Condition standards

Generally speaking, we aim to make SLA policy conditions as simple as possible.
When possible, you should use condition sets that are very specific and
succinct. As an example, if you wanted a SLA policy to only run when the form is
`Support Ops`, it is better to simply put a condition of "Form is Support Ops"
than adding exclusions for _every_ other form. This can take time and practice
to learn, so when in doubt, pair with the rest of the Support Ops team!

## Change management

**Note**: Because of the serious implications changes to SLA policies can have,
only Support Ops Managers should make any modifications to SLA policies.

To ensure each runs smoothly, we do our changes in set stages.

### Request stage

All Zendesk view changes should start with a request issue. This issue should
stem from a
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue where the proposal was discussed.

The request should not be "make this change in Zendesk," unless the request is
coming directly from a Support Ops team member. If the request does not detail
_what_ the desired effect is, we as Support Ops should instead push back on the
request and ask the requester detail _what they want to see as a result_ and not
_what they want done in Zendesk_.

All request issues should contain the following labels at creation:

* "Support-Ops-Category::Other"
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

### Escalation stage

As this requires a Support Ops Manager to conduct the changes, you will want to
assign the issue to a Support Ops Manager and assign the issue to them.

### Support approval stage

In this stage, the Support Ops Manager will reach out to Senior Support Managers
to discuss the change and get approval. All SLA Policy changes **require**
approval from at least **one** Senior Support Manager.

### Testing stage

When making a change to Zendesk SLA policies (whether it be creation, editing,
or deactivation), we start the process in the Zendesk sandbox. In the Zendesk
sandbox for the corresponding Zendesk instance this impacts, you will make the
desired changes. Once this is done, update the original request issue with the
following:

* A link to the SLA(s) in the Zendesk sandbox (screenshots are often better
  here)
* However much time it took you to implement the changes in the sandbox
  * This can be down using the `/spend X minutes`, where `X` is the number of
    minutes you spent.
* What testing needs to be done.

You will then test these changes. This process should take no less than 3 days
after making the changes. This is to ensure that not only is the change tested
thoroughly, but others have time to review your tests and the results.

Often, you will need assistance testing out changes. Should this be required,
consider reaching out to the following for assistance in testing the changes:

* The original requester
* A fellow Support Ops team member
* A Support Ops Manager

If testing provides failed results, this means we need to update the original
request issue with what happened and why. If this is because of a flaw in the
request, we should state as much and recommend the requester go back to the
original
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue to re-discuss. If it failed due to our implementation, we should detail
what was wrong with the implementation and propose a new method to try.

Once the changes have been thoroughly tested (and are successful), make sure to
add the time you spent doing the testing to the original request.

At that juncture, update the issue with a comment to state testing has completed
and was successful. You should give the requester an opportunity to review the
test(s) and result(s). Ask if they would like to review them. If they decline,
you may move on. If they wish to do so, await their update after they have
reviewed the results.

### Legal approval stage

Here, the Support Ops Manager will reach out to the GitLab legal team via the
[legal tracker](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues) to
discuss the change and get approval. Once legal has approved the changes, the
Support Ops Manager can move onto the next stage.

### Pre-implementation announcement stage

Once an implementation date has been determined, you need to announce this
upcoming change. To do this, go to the Slack channel
`#support_ops-accouncements` and click the lightning bolt on the text box (this
is the shortcuts icon). From there, select `Support Ops Announcement`. This
will cause a form to pop-up. Fill out the form to generate a message in the
`#support_ops-accouncements` channel.

The form asks for the following:

* **Who** is this impacting
* **What** is changing
* **When** is it changing
* **Why** is it changing
* Other info (optional)
* **Request link**

Once it posts, you will need to screenshot the post message and add that to the
`Support Operations Corner` of the
[Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
document

After adding it in the Support Week in Review, you then want to cross-link
(copy the link to the post) the announcement to the following channels:

| Channel | When to cross-link |
|---------|--------------------|
| `#support_operations` | Every time |
| `#support_team-chat` | If this impacts Support only or Everyone |
| `#spt_managers` | If this impacts Support only or Everyone |
| `#whats-happening-at-gitlab` | If the change is concerning SLA OR provisioning/deprovisioning |

### Implementation stage

In this stage, the Support Ops Manager will implement the change into the
production Zendesk instance.

### Post-implementation announcement stage

Once an implementation has been completed, you need to announce the change. To
do this, go to the Slack channel `#support_ops-accouncements` and click the
lightning bolt on the text box (this is the shortcuts icon). From there, select
`Support Ops Announcement`. This will cause a form to pop-up. Fill out the form
to generate a message in the `#support_ops-accouncements` channel.

The form asks for the following:

* **Who** is this impacting
* **What** is changing
* **When** is it changing
* **Why** is it changing
* Other info (optional)
* **Request link**

Once it posts, you will need to screenshot the post message and add that to the
`Support Operations Corner` of the
[Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
document

After adding it in the Support Week in Review, you then want to cross-link
(copy the link to the post) the announcement to the following channels:

| Channel | When to cross-link |
|---------|--------------------|
| `#support_operations` | Every time |
| `#support_team-chat` | If this impacts Support only or Everyone |
| `#spt_managers` | If this impacts Support only or Everyone |
| `#whats-happening-at-gitlab` | If the change is concerning SLA OR provisioning/deprovisioning |

## Useful links

* [Zendesk SLA Policies documentation](https://support.zendesk.com/hc/en-us/articles/204770038-Defining-and-using-SLA-policies)
* [Zendesk Global SLA Policies](https://gitlab.zendesk.com/agent/admin/slas)
* [Zendesk US Federal SLA Policies](https://gitlab-federal-support.zendesk.com/agent/admin/slas)
* [GitLab legal tracker](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues)
