---
layout: handbook-page-toc
title: Past Promises and Product Usage Data
---

## Summary

Over the past few years GitLab has made commitments to our community around the collection, processing, and use of analytics data. This page summarizes those promises and provides guidance to team members working on projects that involve the collection of analytics data from our customers. 

## Definition of Analytics Data

Analytics Data can be too generic of a term. The list below are the specific types of Product data that is in scope in this document. 

* Service Ping - aggregate counts of product usage from a GitLab instance
* [Snowplow](https://snowplowanalytics.com/) Events - dynamic events collected from either a client or server.
* Database events - using Database records from gitlab.com to measure and understand usage

## Collection of events, blog posts and customer/community communication

* [Update on Free Software and Telemetry](https://about.gitlab.com/blog/2019/10/10/update-free-software-and-telemetry/)
* 

## Promises


* GitLab will commit to not implementing telemetry in our products that sends usage data to a third-party product analytics service ([source](https://about.gitlab.com/blog/2019/10/10/update-free-software-and-telemetry/))
* GitLab will proactively involve the community on any changes to collection and configuration of Product Analytics data ([source](https://about.gitlab.com/blog/2019/10/10/update-free-software-and-telemetry/))
* GitLab will only add free javascript (as in [freedom](https://www.gnu.org/philosophy/free-sw.html)) to it's core product. ([source](https://mikegerwitz.com/2016/01/google-analytics-removed-from-gitlabcom-instance)] 