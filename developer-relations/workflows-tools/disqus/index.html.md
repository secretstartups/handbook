---
layout: handbook-page-toc
title: "Developer Relations tools: Disqus"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Disqus subscription

We use Disqus to manage, reply to and moderate comments on both the [GitLab website](https://about.gitlab.com) and the [GitLab documentation](https://docs.gitlab.com).

The Disqus subscription runs on the [Disqus Plus](https://disqus.com/pricing/) plan, with which we manage the 2 websites.

### Disqus access

We have two ways of accessing the Disqus interface:

1. Via individual account: Developer Relations team members should generally be using this method to interact as individuals with the community when replying to comments, in the same way experts from the GitLab team would do. This requires creating a Disqus account and asking your manager to promote your account to Admin.
1. Via the shared Community account on 1Password: as a Developer Relations team member, use this method to anyonymously post comments under the main GitLab account. Using this account should be an exception, only for cases where we do not want to disclose personal information in sensitive public discussions that require moderation (e.g. Code of Conduct violations, harassment, toxic behaviour, etc.)

The GitLab website can be accessed via the main [Disqus interface](https://disqus.com) once logged in for management purposes. To do so:

1. Click on the Admin link on the top right-hand side of the browser screen
1. On the next screen, and right next to the Disqus logo on the top left-hand side of the browser, choose the website you want to access from the dropdown menu

Alternatively, each one of the websites we manage can be accessed directly through:

1. [Disqus for about.gitlab.com](https://gitlab.disqus.com/admin/)

### Moderating comments

![Views in Zendesk](/images/handbook/marketing/developer-relations/disqus-moderation.png){: .shadow}

While new Disqus comments appear as tickets on Zendesk, those marked as spam remain in the Disqus web interface without further notification. Community Advocates should review the Disqus moderation queue from time to time:

1. Log into Disqus
1. [Access the Disqus website you want to moderate](#disqus-access)
1. Click on the `Moderate` link

From then on, you can moderate all comments in the `Pending` queue. You can choose one of 3 actions for each comment (or select some and apply actions in bulk): Approve, Spam, Delete.

It's also advisable to check the rest of the queues (`Approved`, `Spam` and `Deleted`) to ensure no false positives have been marked as spam, or spam has been approved.

### Monitoring comments

We are using [Zapier](/handbook/marketing/developer-relations/workflows-tools/zapier/) to forward Disqus comments into Slack.

- [#mentions-of-gitlab](https://gitlab.slack.com/archives/C03N3AY9W) for about.gitlab.com - DRI is [Developer Evangelism](/handbook/marketing/developer-relations/developer-evangelism/hacker-news/#blog-comments)

### Expert Responses in Disqus

Developer Relations team members can reach out to blog post authors, technical writers, and other internal experts in order to communicate with the wider GitLab community on Disqus. You can read more about this process on the [Involving Experts Workflow](/handbook/marketing/developer-relations/workflows-tools/disqus/#expert-responses-in-disqus) handbook page.

It is advised that Developer Relations team members consider updating the status of GitLab team members in Disqus whenever an expert responds. Disqus Moderators have a `GitLab` visual indicator (a small grey label with text) next to their name when they reply so the wider community can see when GitLab is entering the conversation. This transparency provides clout for their comments, as a verified badge, and lets people know that the response authentically belongs to a GitLab team member.

Here are the steps to add the GitLab label via Moderator status: 

1. Log into Disqus
1. [Access the Disqus website you want to moderate](#disqus-access)
1. Click the `Community` tab at the top
1. Click `Moderators` in the left hand column
1. Scroll down to `Add a new site moderator by their username` and enter the expert's Disqus username
1. This will retroactively assign the `GitLab` label to their Disqus responses automatically
1. Once the expert has been added as a moderator, disable the `Can change settings` and `Can edit comments` settings for that moderator in the list. This will effectively give them the badge only, but not the ability to change Disqus settings or edit other people's comments

<i class="fas fa-hand-point-right" aria-hidden="true" style="color: rgb(138, 109, 59)
;"></i> Experts will retain their badge until explicitly removed. When the experts leave GitLab, we'll need to remove the Moderator status. Giving the experts the ability to display the badge only but not to change settings or other people's comments minimizes risks in this situation.
{: .alert .alert-warning}
