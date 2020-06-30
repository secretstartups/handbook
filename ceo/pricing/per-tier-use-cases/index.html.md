---
layout: handbook-page-toc
title: Tier Pricing Use-Cases
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This page provides per-tier use cases that illustrate our [buyer-based pricing model](/handbook/ceo/pricing/#buyer-based-tiering-clarification).

### Tier: Core

#### Git Repository
The purpose of Git is to manage a project or a set of files as they change over time,
and the Git repository will contain (among other things) a set of commit
objects and a set of references to commit objects called heads.  Utilizing these objects,
you will be able to track the project state at any given point in time across developers,
and will allow for easy traversal and commitment for changes.  Ultimately the repository
will operate as the primary stores for your code version control allowing for reverting
to older states in time, seeing the not yet committed change history, or committing new versions.

#### Basic CI Pipeline
Everybody has to build software somehow, and some folks want to deploy it too.  Organizations
have used various methods over the years to do this including scripts, makefiles and Jenkins.
People start using the GitLab pipelines because they allow them to treat their build just like
their code by putting the .gitlab-ci.yml file in the same git repo with their code and versioning
it the same way.  Pipelines go farther than just build steps and include not just what has previously
been done by makefiles, ant scripts or POM files but the whole pipeline all the way through to
deployment if desired. GitLab makes it easy!

#### Basic Issue Tracker
Company ABC is developing a new product. They will utilize multiple development teams
for the various stages of the project. The team will need to track issues, prioritize
issues, move issues to other teams and create new issues as the project progresses.
By utilizing GitLab issue boards and tracker the Company ABC's project team can communicate
and visualize the entire workflow from idea to production. 

### Tier: Starter

Usually, some of the major drivers for a user considering GitLab Starter over Core are:
* Increased governance via features such as: LDAP sync, Merge request approvals, log forwarding
* GitLab technical support via Unlimited next business day support tickets

#### SCM, CI/CD, IT security compliance, log audit trails
A financial institution is undergoing a digital transformation across the
organization and looking to consolidate tools across the development teams. Given they are
just starting to build out their technology practice, it’s important that they have support
to ensure speedy resolution of blocking issues. Additionally, as a regulated industry they
need to ensure they are meeting internal compliance. With GitLab Starter they can configure
the branching and workflow strategy to add Merge Request approvers, protect branches,
and manage permissions at the group level.

#### SCM, CI/CD, Restricted push access
A technology services company builds and manages many customer web applications. As part of
this, they hire 3rd party developers to assist in the development - taking advantage of SCM
and CI/CD. GitLab Starter will provide them with key capabilities to safely manage the code
in production by restricting Merge Requests to protected branches with internal approvals.
Additionally, with LDAP group sync, they can safely manage the onboarding/offboarding process
of developers.

### Tier: Premium

#### Enhanced Deployment Capabilities
Premium offers features that unlock easy and reliable ways to manage your deployment environments.
Access to Deploy Boards allows for 1 view where you can see all of your CI/CD environments running
on Kubernetes, including the status of each pod from the latest deployment per environment. 

In Premium, you can use incremental rollout to replace a few of your Kubernetes pods with the latest
code. This lets you observe the behavior of the application, and then manually increase the deployment
in increments if requirements and behavior in production are met. This can also be automated with the
use of timed incremental rollout to production.  Similar to incremental rollouts, Premium offers canary
deployments, which allows you to spin up canary instances in kubernetes before committing it to production.

If you do find that a rollback is needed, time is of the essence. Premium offers the ability to roll back
to any previous environment by clicking into an environment and selecting which commit to roll back to.
This action immediately kicks off a pipeline that deploys that prior commit to the environment. This
allows for a very fast way to get a stable  and older deployment out to the live environment if there are
any issues with what is currently deployed. 

These features allow you to have a consolidated view of your deployed environments, and allow 
you to follow best practices when deploying changes to an environment, while also giving the ability to 
swiftly revert a change if necessary. 

#### Jira Integration
Issue tracking is a key component in a successful DevOps process, and if an organization is not ready
to move off of Jira, or plans to do so incrementally with a few projects at a time, then our Jira
Development Panel is a critical tool to utilize. Within GitLab, you can have a Jira tab, seamlessly
connecting the two tools. By referencing the Jira ticket # in any comment, title, or text in GitLab,
you will create a hyperlink and log communication regarding your work. The Jira issue will show comments,
commits, branches, and can even be closed automatically with a GitLab Merge Request. This allows
teams to seamlessly use both tools and have an accurate and automated workflow when addressing actionable
work and items that are specified in Jira, yet being coded and implemented with GitLab. 

A seamless workflow with issue tracking and SCM whether you are using GitLab Issues or Jira.
This also allows teams to transition at a planned pace from Jira to GitLab issues, which results
in a smoother experience and a more positive adoption. 

#### GitLab Geo
Another driver for companies to move to Premium is GitLab Geo. As software teams continue to
become more distributed, time is wasted when secondary locations are waiting to pull repositories
from the primary node. GitLab Geo mirrors the whole instance so not just source code is replicated
and quickly accessible, but everything else in GitLab that brings value to teams. Issues, comments,
pipelines, code review and all of the pertinent data points in a workflow are updated so that
secondary locations have the most up to date information. It also acts as a Disaster Recovery
solution. If your primary instance goes down, it is much faster to point to your secondary location
that you have from GitLab Geo, than it is to restore a backup or snapshot. It is an important factor
when planning for your recovery efforts and plans as an organization. 

Provide remote teams with the most up to date repositories and their relevant information.
Cut down the time that it takes for other development teams to pull the most recent repository,
which results in large savings of time and money. At the same time, this meets the requirements
for an effective Disaster Recovery implemented if the primary instance were to ever become unavailable. 

### Tier: Ultimate

Ultimate is for organizations that have a need to build secure, compliant software and that want to 
gain visibility of - and be able to influence - their entire organisation from a high level. 
This edition enables businesses to transform IT by optimizing and accelerating delivery while 
managing priorities, security, risk, and compliance.

#### Enterprise Visibility - Big picture Planning & Tracking with Project/Portfolio Management
* Organize new business initiatives and efforts into epics, where you can plan specific 
requirements, tasks and work in GitLab Issues and Merge Requests
* Prioritize and visualize the sequence of delivery
* Share, collaborate and iterate on the details of portfolio plans.
* Visualize roadmaps to communicate timing and sequencing of delivering business value.

#### Enterprise Security - Scan code & applications for known vulnerabilities with Static, Dynamic, and Container scanning
* Analyze your running web application(s) for known vulnerabilities using Dynamic Application Security Testing (DAST)
* Analyze your Docker images for known vulnerabilities using Clair, a Vulnerability Static Analysis tool for containers
* Analyze any open source dependencies you’re using via Dependency Scanning
* Search your project dependencies for their licenses using License Management

#### Security 
Organizations looking to add security to their development process
“Shift Left” - instant feedback on vulnerabilities during development. Without GitLab, security
scans often run infrequent or much later in the development workflow, as.  (note: feedback
usually arrives to the original team well after they’ve moved on to another project)
Or consolidate/replace existing & expensive security tools with a better integrated, more
cost effective tool.

#### Portfolio Management
Business leaders need short/mid/long term roadmap visibility into the delivery of Initiatives
& Features across any number of teams.
Lean organizations are keen on making work visible & reducing work in progress (via roadmaps)
and repeatedly shipping minimal viable features on schedule.
While still young, our goal with our Portfolio Management is meant to replace tools like Jira,
VersionOne and Rally.  Note: Epics & Roadmaps are getting there.
