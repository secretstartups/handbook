---
layout: markdown_page
title: "GitLab Unfiltered blog handbook"
---

# Why we discontinued the GitLab Unfiltered Blog

## GitLab is no longer publishing to the Unfiltered blog

The last day any blog posts can be added to the GitLab Unfiltered Blog is **May 20, 2021**. Any blog posts with the `category: unfiltered` selection will not be published.

## Why are we no longer publishing new blog posts to Unfiltered?

The Global Content Team has made the thoughtful and conscious decision to cease publishing on the Unfiltered blog as of May 20, 2021. Existing Unfiltered content will remain intact, but we’ll be focusing our efforts on sharing contributions on the [corporate blog](/blog). We've come to this conclusion given some recent incidents where blog posts have been published without proper guardrails in place. Moving forward, we need to be more mindful of our public-facing posts in order to avoid any negative impact on our brand, the company, and our team members. As we iterate on this change, we hold strong to the values of collaboration and inclusivity and we'll continue to prioritize giving team members a voice.

## How can I contribute to the GitLab Blog?

Everyone can contribute at GitLab, and the corporate blog is the perfect place to share your ideas for new blog posts. Start by submitting a pitch for a blog post. The GitLab Editorial team [reviews pitches to the GitLab blog once a week](https://gitlab.com/gitlab-com/www-gitlab-com/-/boards/804552?scope=all&utf8=%E2%9C%93&label_name[]=Blog%3A%3APitch). If your blog pitch is accepted, work with the Editorial team to prepare a draft, which will be reviewed and published to the main GitLab blog. We are reviewing the processes that are in place in the hope to support and accommodate the broader GitLab community.

If for some reason your blog post idea is not a good fit for the corporate blog, the Editorial team will explain why, and help you find another way to tell your story. There are plenty of other ways to contribute. Sometimes, a blog post is better suited for a content marketing asset like an e-book or topic page, or is a more personal story that could gain traction on a personal LinkedIn or Medium account.

We are working on developing more information about how GitLab team members can use external publishing platforms to share engineering stories related to their work at GitLab – stay tuned!

## I tried publishing to the Unfiltered blog and my pipeline broke – why?

We added a linter to `lib/tasks/lint.rake` called `lint:blog:unfiltered`. It checks the blog directory for any files labelled past 2021-05-20 that use the `categories: unfiltered` frontmatter.

If the linter finds a blog post past 2021-05-20 with that category, it will trigger a failure status code in your pipeline, and should link back to this handbook page for a full explanation.

That linter relies on correctly formatted blog posts names with valid [ISO 8601 dates](https://en.wikipedia.org/wiki/ISO_8601) in their file name. It will also fail if you used an incorrect formatted date in your file name. For example: `2021-1-15-blog-post-title.md` would trigger a failure, even if it didn't use the `unfiltered` category, because it is missing one digit. The correct file name should be `2021-01-15-blog-post-title.md`. We require this to make the unfiltered linting quick and maintainable.
