---
layout: handbook-page-toc
title: 'Zendesk API tokens'
category: Zendesk
description: 'Training documentation concerning Zendesk API tokens'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what a Zendesk API token is
* How to create a Zendesk API token
* How to edit a Zendesk API token
* How to delete a Zendesk API token
* GitLab Support Ops standards for API tokens
* GitLab Support Ops change management process for Zendesk API tokens

## What are Zendesk API tokens

Zendesk API tokens are used in authentication for Zendesk API requests. These
tokens are always at the administrator level and cannot be issued at lower
permission/role levels. As such, you should always use caution in using and
issuing these tokens.

## How to create a Zendesk API token

**Note**: As of 2021-09-21, Zendesk has changed the location of the API tokens
management pages. They are now located in the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the API tokens management
pages under `Apps and integrations` > `APIs` > `Zendesk API`. Once you access
the management pages, the steps to create/edit/etc. are the same.

**Note**: As all API tokens are issues at the admin level, you need to ensure
you follow proper [token issuing process](#token-issuing-process) and
[API token standards](#api-token-standards).

To create an API token, you will first go to the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the API tokens management
pages under `Apps and integrations` > `APIs` > `Zendesk API`. This will bring
you to the API page.

From here, click the white `Add API token` button. You will then enter a
description, copy the token it generated, and click the blue `Save` button.

## How to edit a Zendesk API token

**Note**: As of 2021-09-21, Zendesk has changed the location of the API tokens
management pages. They are now located in the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the API tokens management
pages under `Apps and integrations` > `APIs` > `Zendesk API`. Once you access
the management pages, the steps to create/edit/etc. are the same.

**Note**: You can only edit a token's description. If you need the token itself,
you will have to delete the token and re-create it.

To edit an API token, you will first go to the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the API tokens management
pages under `Apps and integrations` > `APIs` > `Zendesk API`. This will bring
you to the API page.

From here, locate the token you wish to edit and click on it. From there, edit
the description. Once done, click the blue `Save` button.

## How to delete a Zendesk API token

**Note**: As of 2021-09-21, Zendesk has changed the location of the API tokens
management pages. They are now located in the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the API tokens management
pages under `Apps and integrations` > `APIs` > `Zendesk API`. Once you access
the management pages, the steps to create/edit/etc. are the same.

To delete an API token, you will first go to the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the API tokens management
pages under `Apps and integrations` > `APIs` > `Zendesk API`. This will bring
you to the API page.

From here, locate the token you wish to edit and click on it. From here, click
the red `Delete` link in the top-right of the token box. A pop-up will appear
asking you to confirm the deletion. Click the blue `OK` button to do so.

## API token standards

To ensure all API tokens we utilize are both consistent in nature and
transparent in their actions, we strive to meet some standards on all API
tokens we work with.

### Naming standards

For all API tokens not tied to Zendesk targets or Support Operations team
members, you need to use the format of:

```
name_of_person - request_link - expiration_date
```

Where `name_of_person` is the person the token is for, `request_link` is the link to the issue requesting the token, and `expiration_date` is the date the
token should be removed.

For all API tokens for Zendesk targets, the format should be:

```
Target - name_of_target
```

Where `name_of_target` is the target's name in Zendesk.

For all API tokens issues to Support Operations team members, the format should
just be your name and use case. An example would be `Jason Colyer - personal` or
`Jason Colyer - 1-1 generator`.

## Seeing token usage

### Via tokens page

To see when a token was last used, you can go to the tokens page and locate the
token in question. To the right of the description is a string detailing the
last use of the token.

### Via activity page

To see API usage in respect to the whole Zendesk instance, you'll want to go to
the API page in Zendesk and click the `Activity` tab on the top part of the
page. Here you can see our global API usage and the number of uses for the top
sources.

## Token issuing process

**Note**: API tokens are **solely** issued in cases where `admin` level
privileges are required. If they are not required, the requester should be
directed to use
[basic authentication](https://developer.zendesk.com/api-reference/ticketing/introduction/#basic-authentication)
instead.

All requests for an API token should be done via a
[access request issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=API_Token_Request).
There are two exceptions to this:

* API tokens for Support Ops team members
* API tokens for Zendesk targets

Once the requester's manager has approved the request, a Support Operations
Manager is required for this process, as they will need to approve the token
generation. Within the request, there should be details on the purpose of the
token and when the token can be removed. Without these details, the request
should be denied and closed out.

If the token is needed (meaning this requires `admin` level privileges), the
Support Operations Manager will then create the token in the Zendesk instance.
The token itself will be sent to the requester via Slack (in a DM).

The Support Operations Manager should then create a calendar event on the
expiration date to remind them to delete the token. Should an extension be
needed, a new access request issue will be required. The original token will
still be deleted and a new one re-issued.

## Useful links

* [Basic Zendesk API authentication](https://developer.zendesk.com/api-reference/ticketing/introduction/#basic-authentication)
* [Access request issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=API_Token_Request)
* [Zendesk Global API page](https://gitlab.zendesk.com/agent/admin/api/settings)
* [Zendesk US Federal API page](https://gitlab-federal-support.zendesk.com/agent/admin/api/settings)
