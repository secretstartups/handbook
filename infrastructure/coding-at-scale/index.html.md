---
layout: markdown_page
title: "Coding at Scale"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## The problem _"at Scale"_

Software development often happens on a single machine, with a single
application version and almost no load.

This configuration is very different from what happens on GitLab.com
and our customers' installations.

The problem _"at scale"_ comes from a different order of magnitude
than the development and testing environments.  Things like the number
of servers, the number of incoming requests, the number of rows on a
table or the number of application versions will make the difference
between something that works on your computer and something that works
in production.

An extra challenge, almost unique to GitLab, is that we deploy from
the main branch multiple times each day, but we have a monthly release
cycle and [zero downtime
updates](https://docs.gitlab.com/ee/update/zero_downtime.html)
is a requirement for both releases.

Overlooking the [compatibility with multiple versions of the
application running at the same
time](https://docs.gitlab.com/ee/development/multi_version_compatibility.html)
can induce a production incident.

You can find more detailed information in the resources section of
this page. If this is not enough, please reach out to the
[delivery](/handbook/engineering/infrastructure/team/delivery/) or
[scalability](/handbook/engineering/infrastructure/team/scalability/)
team.

## Resources

| Description                          | Location                                                                                                     |
|--------------------------------------|--------------------------------------------------------------------------------------------------------------|
| Expand and Contract pattern          | [Link](https://docs.gitlab.com/ee/development/multi_version_compatibility.html)                              |
| Zero Downtime Updates                | [Link](https://docs.gitlab.com/ee/update/zero_downtime.html)                                        |
| Sidekiq Compatibility across Updates | [Link](https://docs.gitlab.com/ee/development/sidekiq_style_guide.html#sidekiq-compatibility-across-updates) |
| Avoiding downtime in migrations      | [Link](https://docs.gitlab.com/ee/development/database/avoiding_downtime_in_migrations.html)                          |
| Uploads development documentation    | [Link](https://docs.gitlab.com/ee/development/uploads.html)                                                  |
