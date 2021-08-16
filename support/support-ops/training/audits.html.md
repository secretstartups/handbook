---
layout: handbook-page-toc
title: 'Audit Training'
category: Audits
description: 'Training documentation concerning Audits'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what audits are
* Why we perform audits
* How to perform an audit

## What are audits

Audits are what we call the process (and core responsibility of Support Ops)
that involves reviewing who has what access to various platforms.

## Why do we perform audits

There are a good number of reasons that could be made for doing audits, but the
biggest ones for us are:

* Ensure no security issues are occurring in the agent/user space.
* Ensure we have accurate information for procurements and renewals.
* Ensure we follow best practices for reviewing who is using the various systems
  we manage.

## How to perform an audit

Performing an audit starts with creating an issue within the
[Audits repo](https://gitlab.com/gitlab-com/support/support-ops/audits). There
are templates for each of the systems we normally audit.

After creating the issue, you need to populate the details of the audit. To
make this process easier, we have scripts available in the repo you can use to
generate the data. If you decide to do this manually, you should review past
audit issues to determine the exact formatting to use for the system you are
performing an audit on.

Once you have generated the data and put it into the issue, you will then begin
going through the data and looking for issues. This will vary from system to
system, so see below for more specific information. Any issues you find should
be communicated to the person in question and resolved.

On average, audits take 1-2 weeks to complete, namely due to the nature of async
communication.

### Zendesk

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/1vcB6VpyzB8" frameborder="0" allowfullscreen="true"></iframe>
</figure>

The best resources for learning this are the above video and the following
links:

* [Zendesk Global audit workflow](../workflows/zendesk_global_audit.html)
* [Zendesk US Federal audit workflow](../workflows/zendesk_us_federal_audit.html)

While the above video covers doing it for Zendesk Global, the process works the exact same for both. The sole difference is the script used.

### Calendly

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/R1rHE-j3QCQ" frameborder="0" allowfullscreen="true"></iframe>
</figure>

The best resources for learning this are the above video and the following
links:

* [Calendly audit workflow](../workflows/calendly_audit.html)

### Pagerduty

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/wTcWZJ6qGrE" frameborder="0" allowfullscreen="true"></iframe>
</figure>

The best resources for learning this are the above video and the following
links:

* [Pagerduty audit workflow](../workflows/pagerduty_audit.html)

## Useful links

* [Audits repo](https://gitlab.com/gitlab-com/support/support-ops/audits)
* [Zendesk Global audit workflow](../workflows/zendesk_global_audit.html)
* [Zendesk US Federal audit workflow](../workflows/zendesk_us_federal_audit.html)
* [Calendly audit workflow](../workflows/calendly_audit.html)
* [Pagerduty audit workflow](../workflows/pagerduty_audit.html)
