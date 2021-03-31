---
layout: handbook-page-toc
title: Content contribution to the GitLab marketing website via Netlify CMS
description: How to contribute content to the GitLab marketing website using Netlify CMS
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Introduction
{:.no_toc}

Thanks for checking out how to contribute to the GitLab marketing website with Netlify CMS! We have three goals:

1. Improve [efficiency for the right group](https://about.gitlab.com/handbook/values/#efficiency-for-the-right-group) and make [self-service](https://about.gitlab.com/handbook/values/#self-service-and-self-learning) easier for team members who are [collaborating](https://about.gitlab.com/handbook/values/#collaboration) on the GitLab marketing website.
2. Provide clear [documentation](https://about.gitlab.com/handbook/values/#write-things-down) about using [Netlify CMS](https://www.netlifycms.org/) to edit the GitLab marketing website.
3. Enable GitLabs marketing team to [iteraterate](https://about.gitlab.com/handbook/values/#iteration) efficiently on content

Netlify CMS is an open-source content management system for your Git workflow that enables you to provide editors with a friendly UI and intuitive workflows. Content is stored in your Git repository alongside your code for easier versioning, multi-channel publishing, and the option to handle content updates directly in Git.

## Resources

- [Netlify CMS docs](https://www.netlifycms.org/docs/intro/)
- [Developer documentation for our implementation](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/netlifycms.md)
- [Current merge requests with the `netlify-cms/draft` label](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?label_name%5B%5D=netlify-cms%2Fdraft)
- [Current merge requests with the `netlify-cms/pending_review` label](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?label_name%5B%5D=netlify-cms%2Fpending_review)
- [Current merge requests with the `netlify-cms/pending_publish` label](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?label_name%5B%5D=netlify-cms%2Fpending_publish)

## Accessing the admin

To access the Netlify CMS:

1. Visit [about.gitlab.com/admin](https://about.gitlab.com/admin)
1. Click "Login with GitLab" and use your GitLab account, the one with membership privileges in [`www-gitlab-com` repository](https://gitlab.com/gitlab-com/www-gitlab-com)
1. If you have sufficient authorization, you should be redirected to the Netlify CMS admin page.

## Editorial Workflow Process 

The editorial workflow enables Netlify CMS to create corresponding merge requests with your changes. Netlify CMS will open a merge request and make a commit through your account to a merge request with your changes to a single page. Future changes to the draft will be additional commits by the user making the changes to the draft. We can also use a traditional git workflow once the MR is created if someone wants to pull your branch and make changes that way instead. 

The editorial workflow is a powerful process that allows content contributors and developers to contribute to the same merge request with different tools.

Access the workflow tab in Netlify CMS by selecting "Workflow" at the top of the admin UI. You can also reach it directly at [https://about.gitlab.com/admin/#/workflow](https://about.gitlab.com/admin/#/workflow)

| Actions in Netlify UI      | Perform these Git actions |
| ----------- | ----------- |
| Save draft | Commits to a new branch (named according to the pattern cms/collectionName/entrySlug), opens a merge request, and applies the `netlify-cms/pending_draft` label |
| Edit draft   | Pushes another commit to the merge request |
| Move from `Drafts` to  `In Review` in workflow tab | Applies the `netlify-cms/pending_review` label to merge request |
| Move from `In Review` to `Ready` in workflow tab | Applies the `netlify-cms/pending_publish` label to merge request |
| Publish  | Adds merge request to the merge train and deletes branch after it's deployed to master |

[Netlify CMS documentation on the editorial workflow](https://www.netlifycms.org/docs/configuration-options/#publish-mode)

## Creating a new or editing an existing page with Netlify CMS

To edit an existing or create a new page in Netlify CMS, that [content type needs to be enabled](/handbook/marketing/netlifycms#content-types-enabled-in-netlify-cms). If it is enabled, you can do the following to create an MR with your changes using Netlify CMS:

1. Follow steps above for [accessing the admin](/handbook/marketing/netlifycms#accessing-the-admin)
2. Select the content type you wish to add or edit an existing page from the left-hand sidebar.
3. Select the page you want to edit or select "New (content type)" from the top.
4. Update your content.
5. Select "save". This may take a minute to complete.
6. Switch to the "workflow" tab to see your draft and what stage it is in the editorial process.
7. Visit GitLab and locate the associated merge request with your edit.
    - If it's in the draft stage, you can find the MR with the [netlify-cms/draft label](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=netlify-cms%2Fdraft)
8. Assign the merge request to yourself, and assign a reviewer if it's ready to be reviewed.
9. Assign a reviewer with maintainer access to the `www-gitlab-com` repository when it's ready to be merged. **Note**: There is a separate approval process if you are planning to publish a new blog post. Please see the [blog handbook](/handbook/marketing/blog/#publishing-process) for instructions.

## Content Types Enabled in Netlify CMS

### Parent and Child Topic Pages

A topic is an industry trend, theme, or technology related to GitLab and our customers. For example, DevOps, GDPR, Containers, etc. Topic pages on our website educate the reader about the topic and share GitLab’s point of view while providing additional links to resources related to that topic. These pages are intended to attract search traffic.

Topic pages managed through Netlify CMS exist at [https://about.gitlab.com/topics/](https://about.gitlab.com/topics/). The content is located stored in the [`/data/topic`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/topic) and [`/data/topic_children`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/topic_children) directory in the `www-gitlab-com` repository. Netlify CMS allows the user to edit these data files through the admin interface.

### Typeform Landing Pages

A Typeform page is a landing page that includes an embeddable Typeform on it. Here is an example: [https://about.gitlab.com/quiz/devops-platform/](https://about.gitlab.com/quiz/devsecops-security-checklist/)

Typeform pages managed through Netlify CMS exist at [https://about.gitlab.com/quiz/](https://about.gitlab.com/quiz/). The content is located stored in the [/data/typeform](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/typeform) directory in the `www-gitlab-com` repository. Netlify CMS allows the user to edit these data files through the admin interface.

To edit or create a new topic page in Netlify CMS, do the following:

### Marketing Blog Posts

Blog posts can be created and edited using Netlify CMS. Netlify CMS is especially good for starting your blog post, creating the proper markdown file that is structured correctly, and starting a merge request. You can use the traditional merge request workflow in tandem with the Netlify CMS workflow. Be sure to read the [Blog Handbook](https://about.gitlab.com/handbook/marketing/blog/) for all instructions related to writing and creating a blog post.

Blog posts managed through Netlify CMS exist at [https://about.gitlab.com/blog/](https://about.gitlab.com/blog/). The content is located stored in the [`/sites/marketing/source/blog/blog-posts`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/sites/marketing/source/blog/blog-posts) directory in the `www-gitlab-com` repository. Netlify CMS allows the user to edit these markdown files through the admin interface.

Please note that it takes time for all existing blog posts to load in the admin. You can use the "sort by" functionality to view only posts from a certain category. If you are creating a new blog post, you do not have to wait for all blog posts to load in the admin.

## Admin Features

### Media Library

The media library enables users to browse specified image directories. We have designated specific directories for each block of a content type if it uses an image. You can upload an image to these blocks using the widget in the admin, and it will automatically upload the image to the correct place. It's also good to verify your edits are working by taking a look at the review app associated with your changes.

### YouTube markdown widget

To add a YouTube iframe in a markdown widget using Netlify CMS, do the following:

1. Edit a markdown block
1. Select the `+` icon in the editor
1. Select `youtube`
1. Enter the YouTube Video ID
1. That's it! The widget will be building the `<iframe>` code for you!

## Learning Resource Videos

Every two weeks, we create a Netlify CMS Learning Resource video. In the video, we will demonstrate up to three features or tips about using Netlify CMS on the GitLab marketing site.

[See all the Netlify CMS learning resource videos by the Digital Experience team here!](https://www.youtube.com/playlist?list=PL05JrBw4t0KpF23RDebkNFjB4dNRlvoGN)

## Report an Issue

If you experience an issue or bug using the system, file an issue! GitLab's Marketing Website (about.gitlab.com) is led by the Inbound Marketing Team and anyone can contribute. Please visit [the Inbound Marketing handbook](https://about.gitlab.com/handbook/marketing/inbound-marketing/#requesting-support) to file issues and make merge requests.

### Known Issues

#### Drafts missing from workflow tab

Sometimes drafts in progress are missing from the workflow tab in Netlify CMS. This makes it hard for an editor to access the Netlify CMS UI to continue editing this draft! This is a known [issue](https://gitlab.com/gitlab-com/marketing/inbound-marketing/growth/-/issues/1166). However, you can still access the draft editing interface with a direct URL. 

The URL structure to find the draft in Netlify CMS is `/admin/#/collections/COLLECTION_NAME/entries/BRANCH_NAME?ref=workflow`
- Collection name = topic, topic_child, or blog_posts
- Branch name = `name_of_page_edited`, this is the last part of branch name created by Netlify CMS which is `cms/collection_name/name_of_page_edited`.

Find this information from the MR associated with your change.
