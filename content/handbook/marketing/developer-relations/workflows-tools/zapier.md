---

title: "Developer Relations tools: Zapier"
---







### Zapier subscription

We use Zapier to automate the task of forwarding mentions of GitLab, swag store orders, etc.

The Zapier subscription runs on the [Team plan](https://zapier.com/app/billing/plans), and is shared with the GitLab team.

### Zapier access

- URL: [https://zapier.com](https://zapier.com)
- Account: search for the shared Zapier account in 1Password's `Zapier` vault. Please file an [access request](/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/) if you cannot access that vault.

Once logged in, you can access, edit and create Zaps in the [Developer Relations](https://zapier.com/app/zaps/folder/275996) folder

<i class="fas fa-hand-point-right" aria-hidden="true" style="color: rgb(138, 109, 59)
;"></i> After editing or creating a new Zap, remember to turn it on with the toggle switch next to the task's name on the Zap's list.
{: .alert .alert-warning}

### Current Zaps

List of Zaps that are enabled on the [Developer Relations folder](https://zapier.com/app/zaps/folder/275996).

| Zap | Description | Involved Tools |
| --- | --- | --- |
| [Post new Blogs to the GitLab forum](https://zapier.com/app/editor/148450001) | GitLab blog post is posted as [a new forum topic](/handbook/marketing/developer-relations/workflows-tools/#gitlab-blog-forum-bot) | about.gitlab.com/blog, Discourse | 

#### Zaps for Developer Evangelism 

The Zaps are organized in the [Developer Evangelism folder](https://zapier.com/app/zaps/folder/1561876) as a sub-folder for Developer Relations in Zapier.

| Zap | Description | Involved Tools |
| --- | --- | --- |
| [New blog posts - GitLab](https://zapier.com/editor/183958722) | Reads GitLab blog RSS feed and posts to `#developer-evangelism-updates` channel. | GitLab Blog, Slack | 
| [New blog posts - GitHub](https://zapier.com/editor/216104703) | Reads GitLab blog RSS feed and posts to `#developer-evangelism-updates` channel. | GitHub Blog, Slack | 
| [New blog posts - CNCF](https://zapier.com/editor/216110068) | Reads GitLab blog RSS feed and posts to `#developer-evangelism-updates` channel. | CNCF Blog, Slack | 
| [New status updates - Discourse](https://zapier.com/editor/216106524) | Reads GitLab blog RSS feed and posts to `#developer-evangelism-updates` channel. | Discourse status page, Slack | 


##### Zaps for Hacker News

The Zaps are organized in the [Developer Evangelism folder](https://zapier.com/app/zaps/folder/1561876) as a sub-folder for Developer Relations in Zapier.

| Zap | Description | Involved Tools |
| --- | --- | --- |
| [Hackernews: Slack notifications for front page mentions: GitLab](https://zapier.com/app/editor/58944326) | Hackernews: `GitLab` front page stories to `#developer-evangelism` Slack channel | HackerNews, Slack |
| [Hackernews: Slack notifications for front page mentions: Open Core](https://zapier.com/webintent/edit-zap/159764533) | Hackernews: `Open Core` front page stories to `#developer-evangelism` Slack channel | HackerNews, Slack |
| [Hackernews: Slack Notifications for mentions: GitLab](https://zapier.com/app/editor/52810208) | Hackernews: `GitLab` mentions to `#hn-mentions` Slack channel |  HackerNews, Slack |
| [Hackernews: Slack Notifications for mentions: DevOps Platform](https://zapier.com/app/editor/131452972) | Hackernews: `DevOps Platform` mentions to `#hn-mentions` Slack channel |  HackerNews, Slack |

The Zaps poll the [Algolia search API for Hacker News](https://hn.algolia.com/api) and add specific URL parameters in order to 

- Query for a string in the posts; `?query="open%20core"`
- Filter by tags if the topic hit the front page of Hacker News: `&tags=front_page` 

Searching for a string with whitespaces requires to [use quotes](https://www.algolia.com/doc/api-reference/api-parameters/filters/#usage-notes) around the query parameter, for example `https://hn.algolia.com/api/v1/search?&query=%22open%20core%22&tags=front_page`. 

More API URL examples:

- Front page: https://hn.algolia.com/api/v1/search?&query=gitlab&tags=front_page
- Mentions: http://hn.algolia.com/api/v1/search_by_date?query="devops+platform"


#### gitlab-blog Forum Bot

The [`gitlab-blog`](https://forum.gitlab.com/u/gitlab-blog/summary) user is used to automatically post new [GitLab blogs](https://about.gitlab.com/blog/) as a new topic to the [Community](https://forum.gitlab.com/c/community/39) category.  This process is controlled through [Zapier](https://zapier.com/app/editor/148450001).  Zapier reads the blog RSS feed at `https://about.gitlab.com/atom.xml` and posts a new topic using the admin API key and `gitlab-blog` user for each new entry there.

The `gitlab-blog` credentials and admin API key are stored in the 1Password Marketing vault. Admins can directly edit the user in Discourse without login.
