---
layout: handbook-page-toc
title: Diagnose Errors on GitLab.com
description: This guide provides resources for diagnosing HTTP 5XX errors on GitLab.com. 
category: GitLab.com
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

This guide provides resources for the diagnosing of **5XX** errors on GitLab.com. This is used when a user contacts support stating they're receiving either a `500` or `503` error on GitLab.com.

### Reports of Slowness

If reports of slowness are received on GitLab.com, first take a look at the [GitLab Grafana Monitor](https://dashboards.gitlab.net/dashboard/db/fleet-overview?refresh=5m&orgId=1), especially:

- Worker CPU -> Git CPU Percent

- Worker Load -> Git Worker Load

Check on the [#feed_alerts](https://gitlab.slack.com/messages/C12RCNXK5), [#production](https://gitlab.slack.com/messages/C101F3796), and [#incident-management](https://gitlab.slack.com/messages/CB7P5CJS1) Slack channels to ensure this isn't an outage or infrastructure issue.

### If you notice slowness yourself on GitLab.com

Before you post to #production or make an issue, here are some helpful ways to capture data that help to narrow down the issue(s):

1. Use the [performance bar](https://docs.gitlab.com/ee/administration/monitoring/performance/performance_bar.html) by typing `pb` in your browser window.  Reload the page and grab the information from the server side.  
1. If using Chrome, open the Chrome developer tools (View > Developer > Developer Tools), reload the page, and look at the Network tab.  This will show all of the requests and times.
1. If using Firefox, there is a similar network view under Tools > Web Developer > Network which will show requests and timing.

Screenshots from any of these tools will greatly help any engineers looking into the problems.

### Connection Troubleshooting 

If our customer is reporting problems connecting to GitLab.com, we should ask for the following:

1. traceroute gitlab.com
2. curl http://gitlab.com/cdn-cgi/trace
3. curl https://gitlab.com/cdn-cgi/trace
4. curl -svo /dev/null https://gitlab.com


### Reports of File Corruption

A `503` error on a merge request page may also happen if the repository is corrupted. To confirm, a push to a corrupted repository may show the following:

```
data/repositories/@hashed/ee/98/ee98b34f343b4e48106fff666d12b61f23f.git/objects/f7/e7f4782) is corrupt
```

If the customer is reporting a similar error above, take the following steps to verify if their file server was affected:

1. Obtain the project URL of the affected repository.
2. Open the project admin page using the URL `https://gitlab.com/admin/projects/user-namespace`.
3. Locate the server of the repository by looking at `gitaly-storage-name`.
4. Search the [GitLab Infrastructure issue tracker](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues) for any related issue.
5. If an issue is found related to the file server, post the ticket number in the issue so an infrastructure engineer can look into it.


### Workflows

The following workflows will guide you on how to search Kibana and/or Sentry for the event in our logs that caused a particular `5XX` error.

#### Searching Kibana

Kibana is not typically used to locate `5XX` errors, but there are times where they can't be easily found in Sentry and searching Kibana first is beneficial. To perform a general search in Kibana:

1. Obtain the full URL the user was visiting when the error occurred.
1. [Log in to Kibana](https://log.gitlab.net/app/kibana#).
1. Select the correct time filter (top right) - e.g last 30 minutes, 24 hours, or 7 days.
1. Use the search field to narrow down the results. For example you can search the `gitlab-ee` project for any mention of `error` using the following query:

```
"gitlab-ee" AND "error"
```

>**Note:** Kibana does not retain logs older than 7 days.

It's recommended to apply a **Negative Filter** to the `gitlab_error.log` and `gitlab_access.log` log files. These two generate a large amount of noise and may not be relevant to your search.

For more detailed information on searching with Kibana see the [Using Kibana](/handbook/support/workflows/kibana.html) workflow.

#### Searching Sentry

*Note*: Sentry organizes applications into "Sentry Teams". To investigate errors
across different applications or environments, our primary teams used are `#gitlab`
(for the production rails application) and `#gitlab-internal` (for non-production
environments). By joining said Sentry Team, the application errors should be viewable.

1. Obtain the full URL the user was visiting when the error occurred along with their user ID, if needed for searching.
1. [Log in to Sentry](https://sentry.gitlab.net/gitlab/gitlabcom/).
1. Enter a query into the search field. For example, the following query would display any errors events encountered by the user with the ID `123456`:

```
is:unresolved user.id:123456
```

In addition to searching by user ID, you can also use `user.username:` and `url:` to search by GitLab.com username (case-sensitive) and specific page on GitLab.com, respectively. You can also select filtering values by clicking the "filter" button located directly to the right of the search bar.

At times a search will turn up a Sentry issue that appears to reference the information (user ID, URL, etc...) of another user and not the one that reported the issue. If this happens and you need to create an issue for that specific reporter, simply click the `Events` tab as seen below to view a list of all users affected by that issue.

![Sentry events tab](/images/support/sentry-events-tab.png)

You can then click a specific event to view the Sentry issue for that user.

See the [Sentry guide](https://docs.getsentry.com/hosted/learn/search/) and [this presentation](https://drive.google.com/drive/u/0/search?q=%22Sentry%22%20parent:1UT1VKASEzvCzWVX9fDLkYhDju35NxiLT) (GitLab internal only) for more information.

#### Searching by Correlation ID

In most cases errors in Sentry can be found by searching using `user.id:`, but this won't always be the case. Sometimes, you may need to search Kibana first to locate the correlation ID that can then be searched for in Sentry.

In the following example, the customer is attempting to [change the notification email for one of their groups](https://docs.gitlab.com/ee/user/profile/notifications.html#group-notification-email-address) but receieves a `500` error when selecting the desired address from the dropdown list. Searching Sentry for their `user.id:` turns up nothing, so we need to do the following to find the `500` in Kibana to get the correlation ID that we'll then provide to Sentry.

1. Add positive filters in Kibana for `json.username` with their GitLab.com username, `json.controller` for `Profiles::NotificationsController`, and `json.status` with `500`.
1. Using the left-hand side menu add the `json.path`, `json.controller`, `json.status`, and `json.correlation_id` fields to your search results, which should give you results similar to the following if any errors ocurred within your set time range.

   ![Kibana search results](/images/support/correlationid_kibana_results.jpg)

1. Pick a correlation ID value and move over to Sentry to search for it using `correlation_id:`, which should give you a result.

   ![Sentry search results](/images/support/correlationid_sentry_results.jpg)

#### Escalation

Once results have been found in either Kibana or Sentry, do the following.

1. Gather as much information as possible. Make an internal note on the ticket including links to the logs found in either Kibana or Sentry.
1. Search the [GitLab issue tracker](https://gitlab.com/gitlab-org/gitlab) for any duplicate or related issue.
1. Confirm if the issue is known or unknown and proceed accordingly: [Issue is known](#issue-is-known) or [Issue is unknown](#issue-is-unknown).

#### Response

##### Issue is known

If the issue is known it should have a corresponding issue in the GitLab issue tracker. If you found an entry in Sentry that has been converted into an issue, you should see the issue number in the header within Sentry:

![Sentry linked issue](/images/support/sentry-linked-issue.png)

Click the issue number to be taken directly to the issue where you can leave a comment to provide a link to the Zendesk ticket.

Then, respond to the user with information about the cause of the issue, provide a link to it, and invite them to subscribe to it for updates.

##### Issue is unknown

###### Issues found in Sentry
{:.no_toc}

1. Convert the issue to a GitLab issue by using the "Create GitLab Issue" button on the issue page.
1. Comment on the issue providing a link to the Zendesk ticket.
1. Add any additional labels if needed such as `customer`, [priority and severity](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/development/contributing/issue_workflow.md#severity-labels), and the appropriate DevOps stage.
1. Respond to the user with information about the cause of the issue, provide a link to it, and invite them to subscribe to it for updates.

###### Issues found in Kibana
{:.no_toc}

1. Get a ["short url"](https://www.elastic.co/guide/en/kibana/3.0/sharing-dashboards.html) to the Kibana logs.
1. Create a new [GitLab](https://gitlab.com/gitlab-org/gitlab) issue and be sure to include a link to the Zendesk ticket along with the Kibana logs.
1. Add the `bug` label and any others if needed such as `customer`, [priority and severity](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/development/contributing/issue_workflow.md#severity-labels), and the appropriate DevOps stage.
1. Respond to the user with information about the cause of the issue, provide a link to it, and invite them to subscribe to it for updates.

>**Note:** If a **5xx** error is found in Kibana then there is a high chance that there is also a Sentry issue for it. In those cases, add the `json.correlation_id` filter and search for the value in Sentry with `correlation_id:`
