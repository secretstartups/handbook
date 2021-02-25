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
1. Provide clear [documentation](https://about.gitlab.com/handbook/values/#write-things-down) about using [Netlify CMS](https://www.netlifycms.org/) to edit the GitLab marketing website.
1. Enable GitLabs marketing team to [iteraterate](https://about.gitlab.com/handbook/values/#iteration) efficiently on content

Netlify CMS is an open source content management system for your Git workflow that enables you to provide editors with a friendly UI and intuitive workflows. Content is stored in your Git repository alongside your code for easier versioning, multi-channel publishing, and the option to handle content updates directly in Git.

## Resources

- [Netlify CMS docs](https://www.netlifycms.org/docs/intro/)
- [Developer documentation for our implementation](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/netlifycms.md)
- [Current merge requests with the `netlify-cms/draft` label](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?label_name%5B%5D=netlify-cms%2Fdraft)
- [Current merge requests with the `netlify-cms/pending_review` label](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?label_name%5B%5D=netlify-cms%2Fpending_review)
- [Current merge requests with the `netlify-cms/pending_publish` label](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?label_name%5B%5D=netlify-cms%2Fpending_publish)

## Accessing the admin

To access the Netify CMS:

1. Visit [about.gitlab.com/admin](https://about.gitlab.com/admin)
1. Click "Login with GitLab" and use your GitLab account, the one with membership privileges in [`www-gitlab-com` repository](https://gitlab.com/gitlab-com/www-gitlab-com)
1. If you have sufficient authorization, you should be redirected to the Netlify CMS admin page.

## Creating a new or editing a existing topic page

A topic is an industry trend, theme, or technology related to GitLab and our customers. For example, DevOps, GDPR, Containers, etc. Topic pages on our website educate the reader about the topic and share GitLab’s point of view while providing additional links to resources related to that topic. These pages are intended to attract search traffic.

Topic pages managed through Netlify CMS exist at [https://about.gitlab.com/topics/](https://about.gitlab.com/topics/) url. The content is located stored in the [`/data/topic`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/topic) and [`/data/topic_children`](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/topic_children) directory in the `www-gitlab-com` repository. Netlify CMS allows the user to edit these data files through the admin interface.

To edit or create a new topic page in Netlify CMS, do the following:

1. Follow steps above for [accessing the admin](/handbook/marketing/netlifycms#accessing-the-admin)
1. Select the Topic or Topic Child Pages collection from the left hand sidebar
1. Select the Topic you want to edit, or select "New Topic" from the top
1. Update your content
1. Select "save". This may take a minute to complete.
1. Switch to the "workflow" tab to see your draft and what stage it is in the editorial process.
1. Visit GitLab and locate the associated merge request with your edit. 
    * If it's in the draft stage, you can find the MR with the [netlify-cms/draft label](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=netlify-cms%2Fdraft)
1. Assign the merge request to yourself, and assign a reviewer if it's ready to reviewed.
1. Assign a reviewer with maintainer access to the `www-gitlab-com` repository when it's ready to be merged.

## Admin Features

### Media Library

The media library enables users to browse specified image directories. We have designated specific directories for each block of a content type if it uses an image. You can upload an image to these blocks using the widget in the admin, and it will automatically upload the image to the correct place. It's also good to verify your edits are working by taking a look at the review app associated with your changes.

### YouTube markdown widget

To add a YouTube iframe in a markdown widget using Netlify CMS, do the following:

1. Edit a markdown block
1. Select the `+` icon in the editor
1. Select `youtube`
1. Enter the YouTube Video ID
1. Thats it! The widget will building the `<iframe>` code for you!

## Learning Resource Videos

Every two weeks we create Netlify CMS Learning Resource video. In the videos we will demonstrate up to three features or tips about using Netlify CMS on the GitLab marketing site.

[See all the Netlify CMS learning resource videos by the Digital Experience team here!](https://www.youtube.com/playlist?list=PL05JrBw4t0KpF23RDebkNFjB4dNRlvoGN)

## Report a Issue

If you experience an issue or bug using the system, file an issue! GitLab's Marketing Website (about.gitlab.com) is led by the Inbound Marketing Team and anyone can contribute. Please visit [the Inbound Marketing handbook](https://about.gitlab.com/handbook/marketing/inbound-marketing/#requesting-support) to file issues and make merge requests.
