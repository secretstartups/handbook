---
layout: handbook-page-toc
title: "LogRocket"
description: "LogRocket is a frontend monitoring and analytics tool in use by the GitLab Marketing team, only on about.gitlab.com, excluding Handbook pages."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Uses

We use LogRocket to monitor the frontend of about.gitlab.com, excluding pages under `/handbook`. We also use it to collect analytics about the marketing site. 

## Support

1. Technical assistance: Slack [#mktgops](https://gitlab.slack.com/archives/mktgops)
1. [LogRocket Docs](https://logrocket.com/)

## Implementation

[View the initial merge request to add LogRocket](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/90358)

We followed the [LogRocket Quickstart](https://docs.logrocket.com/docs/quickstart) for most of these steps. We installed LogRocket as a node module with `yarn add logrocket`, so it's managed in our `node_modules` dependencies.

In the [www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com) repository, you'll find the entrypoint for our LogRocket installation at `source/javascripts/logrocket.js`. This script imports `LogRocket`, and runs the initialization.

The review apps generated via merge requests in that repository build the site in a "production" environment, so in `source/javascripts/logrocket.js`, we explicitly make sure to only intitialize when a browser is accessing the site at `about.gitlab.com` - the actual production site. We also have protections because OneTrust will block review apps from running many third party scripts, but that may not be the case when we finish the [OneTrust](/handbook/marketing/marketing-operations/onetrust/) integration. That's why we have JavaScript perform a final check against the URL.

`source/javascripts/logrocket.js` is processed by Webpack, and made available through our asset pipeline to be called in `source/includes/layout/head.html.haml`. That file explicitly tells Middleman to skip calling LogRocket on handbook pages.

In addition to calling the script in the `head`, we had to update our [Content Security Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy) according to the [LogRocket troubleshooting around session recording](https://docs.logrocket.com/docs/troubleshooting-sessions). Safari and Mobile Safari don't yet support the `worker-src` directive provided by LogRocket, so we [modified the CSP changes according to this StackOverflow post](https://stackoverflow.com/a/67163499/12502416), session recordings work across Safari and Mobile Safari.

We have not yet integrated with the [Core Marketing Site](https://gitlab.com/gitlab-com/marketing/core-marketing-site), since that project is not yet in production, but the integration will be slightly different there. 

## Integrations

We have the ability to [integrate with many of our existing tools](https://docs.logrocket.com/docs/integrations). Currently, our LogRocket has no additional integrations. Some DRI for marketing operations or another relevant area should determine what tools we want to integrate. We have a variety of options built in to the tooling.

## Privacy

To protect users privacy, we sanitize all user input fields by default, as per the [LogRocket configuration for `dom`](https://docs.logrocket.com/reference#dom).

## Identifying users

Marketing Operations or some other DRI should determine how they want to identify users across LogRocket sessions. We can use any data available to us on the client-side through our other integrations, but as a static site, we don't have any backend to integrate with, so there may be gaps in coverage or reliability with identification. 
