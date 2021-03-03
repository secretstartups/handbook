---
layout: handbook-page-toc
title: 'Domain Matching'
category: 'Zendesk'
subcategory: 'Organizations and Users'
description: 'Details on domain matching'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Domain matching is the concept of identifying a person's organization based on
the domain name in their email address.

## GitLab's Stance

While Zendesk does have the functionality to do domain matching, we have
determined that the security risks inherent in this feature outweigh the
benefits that would be received from its use.

Because of this decsion, as of August 2020, Support Ops will not longer apply
a domain on a Zendesk organization. Any organization that had this applied
prior to this date will have it as a legacy feature.

Because this decision was based on security risks, exceptions will not be made.

## Dealing with Legacy Accounts

You will come across these from time to time. We do not edit the domains in
question. As this is a legacy feature, we leave the domains as they are.

## Domain removal

From time to time, we will check the organizations with legacy domain matching
on them. If they are not _active_ (ie a ticket has been updated within 90
days), the domain is subject for removal.

To remove a domain, you simply click the field on the organization page and
delete it.
