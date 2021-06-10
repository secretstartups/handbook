---
layout: handbook-page-toc
title: Experimentation
description: "Information about creating and running experiments at GitLab."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Minimum Viable Experiment (MVE)

Experimentation, like everything at GitLab, should be approached with [the GitLab CREDIT values](/handbook/values/) in mind, specifically the values of [Iteration](/handbook/values/#iteration), [Efficiency](/handbook/values/#efficiency), and [Results](/handbook/values/#results).

The larger an experiment is, the longer it takes to craft a design, implement code changes, review code changes, define and collect necessary data, organize data into meaningful tables, graphs, and dashboards, and so on.
As we build and improve our experimentation platform and increase our ability to quickly create and run experiments, we should [expect a large percentage of all experiments to fail at proving their hypotheses](https://hbr.org/2017/09/the-surprising-power-of-online-experiments#:~:text=At%20Google%20and%20Bing,%20only%20about%2010%%20to%2020%%20of%20experiments%20generate%20positive%20results.).
Given these invalidated or inconclusive experiments will be rolled back there is an advantage in ensuring experiments are as small and iterative as possible.

With this in mind, there are advantages to considering developing a Minimum Viable Experiment (MVE).
Much like the concept of [Minimum Viable Change (MVC)](/handbook/product/product-principles/#the-minimal-viable-change-mvc), the goal of an MVE is to look for the smallest hypothesis to test, the simplest design for testing that hypothesis, the quickest implementation of the design, the least amount of data to be collected in order to verify the hypothesis, and so on.

So, what might an MVE look like in practice?
Matej Latin shares an example of [a so-called "painted door" test](https://crstanier.medium.com/a-product-managers-guide-to-painted-door-tests-a1a5de33b473) in his blog post, ["Small experiments, significant results and learnings"](/blog/2021/04/07/small-experiments-significant-results-and-learnings/#do-non-admin-users-want-to-invite-their-team-members).
A simple example of a "painted door" test might be a call-to-action (CTA) button that doesn't really go anywhere – maybe it brings up a simple modal which says "Oops! That feature isn't ready yet," or maybe it takes the user to an existing page in our documentation.
Because the design of this type of MVE is intentionally simple, it is easier and faster to develop, deploy, and start gathering data.
Because the design of this type of MVE is intentionally simple, it is easier and faster to develop and deploy. With a small amount of instrumentation, we can use it as an opportunity to measure initial engagement with that button.
- Who clicks on the CTA? 
- How often is it getting clicked?

This can be a fairly low cost way to inform next steps, for example rolling back, developing a larger experiment, or implementing a feature as a follow-up.

Keep in mind that "painted door" tests are not always the best first approach.
The main idea is to strive for an iterative approach to experimentation.
Ask yourself, "Is there a simpler version of this experiment which is worth deploying and which still gives us enough data to know how to proceed?"
