---
layout: handbook-page-toc
title: 'Zendesk Extensions and Webhooks'
category: Zendesk
description: 'Training documentation concerning Zendesk Extensions and Webhooks'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what the Zendesk extensions and webhooks are
* The types of Zendesk extensions
* How to create a Zendesk extension and webhook
* How to edit a Zendesk extension and webhook
* How to delete a Zendesk extension and webhook
* GitLab Support Ops Zendesk extension and webhook standards
* GitLab Support Ops change management process for Zendesk extensions and webhooks

## What are Zendesk extensions and webhooks

Extensions (also called external targets) are cloud-based applications,
services, URLS, or email. They are used to send external requests.

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/1260803996569-Creating-a-webhook)
(regarding webhooks):

> A webhook sends an HTTP request to a specified URL in response to an event ,
> such as a trigger or automation firing in Zendesk Support. Web developers
> typically use webhooks to invoke behavior in another system.

## Types of Zendesk extensions

While there are various types of extensions, the ones we primarily use are:

| Type | Purpose | Uses authentication? |
|------|---------|:--------------------:|
| URL | For sending requests to a URL | Y |
| HTTP | For sending requests to a HTTP(s) endpoint (being deprecated 2022-02) | Y |
| Email | For sending emails | N |

As noted, HTTP targets are being deprecated February 2022. When in doubt, it is
better to use URL targets or webhooks.

## Which should I use?

As Webhooks are the newer feature of Zendesk, they are more likely to see
updates and improvements. As such, you should aim to use webhooks when possible.
That said, it is going to depend largely on what you are aiming to do.

## How to create a Zendesk extension and webhook

**Note**: As of 2021-09-21, Zendesk has changed the location of the Extensions
management pages. They are now located in the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the Extensions management
pages under `Apps and integrations` > `Targets` > `Targets`. Once you access the
management pages, the steps to create/edit/etc. are the same.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/lbt5smXy1Z0" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

### Creating an extension

To create an extension, you will first go to the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the Extensions management
pages under `Apps and integrations` > `Targets` > `Targets`. Clicking on that
will open the extensions page. On this page, click the `add target` link in the
top-right of the page.

From here, select the type of extension you wish to create.

After doing so, you will then fill out the values required for the extension
type you selected.

Once done with that, you want to test your target. To do this, ensure the
drop-down at the bottom-right of the page reads `Test target`. If it does not,
click the dropdown and select that option. Once it does read that option, click
on the black `Submit` button. This will bring up a pop-up box that asks for the
parameters to send to your extension. If your test is successful, close out the
testing box and change the drop-down on the extension create page to read
`Create target`. After doing so, click the black `Submit` button.

### Creating a webhook

To create a webhook, you will first need to go the Admin Center. To get there,
click 4 squares at top-right of page and then click `Admin Center` at the bottom
of the menu. From there, click on the Integrations option on the left-hand side
of the Admin Center (3 squares with plus icon). Now, click on Webhooks to get to
the webhooks page.

From here, click the blue `Actions` link in the top-right of the page and select
`Create webhook`.

You will now enter details of the webhook in question. After doing so, you will
want to test your webhook. To do this, click the white `Test webhook` button on
the page and enter the parameters to send to your webhook. If the test is
successful, you will then click the blue `Create` button.

## How to edit a Zendesk extension and webhook

**Note**: As of 2021-09-21, Zendesk has changed the location of the Extensions
management pages. They are now located in the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the Extensions management
pages under `Apps and integrations` > `Targets` > `Targets`. Once you access the
management pages, the steps to create/edit/etc. are the same.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/_4ud1tHrrSs" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

### Editing an extension

To edit an extension, you will first go to the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the Extensions management
pages under `Apps and integrations` > `Targets` > `Targets`. Clicking on that
will open the extensions page. On this page, locate the extension you wish to
edit and click on the `edit` link on the right-hand side of the extension.

After doing so, you will then fill out the values required for the extension
type you selected.

Once done with that, you want to test your target. To do this, ensure the
drop-down at the bottom-right of the page reads `Test target`. If it does not,
click the dropdown and select that option. Once it does read that option, click
on the black `Submit` button. This will bring up a pop-up box that asks for the
parameters to send to your extension. If your test is successful, close out the
testing box and change the drop-down on the extension create page to read
`Update target`. After doing so, click the black `Submit` button.

### Editing a webhook

To edit a webhook, you will first need to go the Admin Center. To get there,
click 4 squares at top-right of page and then click `Admin Center` at the bottom
of the menu. From there, click on the Integrations option on the left-hand side
of the Admin Center (3 squares with plus icon). Now, click on Webhooks to get to
the webhooks page.

Next, locate the webhook in question and click on the name. One the next page,
click the blue `Actions` link in the top-right of the page and select
`Edit`.

You will now enter details of the webhook in question. After doing so, you will
want to test your webhook. To do this, click the white `Test webhook` button on
the page and enter the parameters to send to your webhook. If the test is
successful, you will then click the blue `Update` button.

## How to deactivate a Zendesk extension and webhook

**Note**: As of 2021-09-21, Zendesk has changed the location of the Extensions
management pages. They are now located in the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the Extensions management
pages under `Apps and integrations` > `Targets` > `Targets`. Once you access the
management pages, the steps to create/edit/etc. are the same.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/ZASCg_3dX8Q" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

### Deactivating an extension

To deactivate an extension, you will first go to the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the Extensions management
pages under `Apps and integrations` > `Targets` > `Targets`. Clicking on
that will open the extensions page. On this page, locate the extension you wish
to edit and click on the `deactivate` link on the right-hand side of the
extension (seen by hovering over it). Confirm your deactivation by clicking on
the red button.

### Deactivating a webhook

To deactivate a webhook, you will first need to go the Admin Center. To get
there, click 4 squares at top-right of page and then click `Admin Center` at the
bottom of the menu. From there, click on the Integrations option on the
left-hand side of the Admin Center (3 squares with plus icon). Now, click on
Webhooks to get to the webhooks page.

Next, locate the webhook in question and click on the name. One the next page,
click the blue `Actions` link in the top-right of the page and select
`Deactivate`. Then confirm the deactivation by clicking the red `Deactivate`
button on the confirmation pop-up that appears.

## Extension and webhook standards

To ensure all extensions/webhooks we utilize are both consistent in nature and
transparent in their natures, we strive to meet some standards on all groups we
work with.

### Naming standards

The name used for the extension/webhook should be simple, clear, and concise.
You want the name to convey what the group is used for.

## Change managemenet

As these are often done in tandem with automations or triggers, please see
[automation change management](automations.html#change-management), which
outlines the process.

## Useful links

* [Zendesk Webhook documentation](https://support.zendesk.com/hc/en-us/articles/1260803996569-Creating-a-webhook)
* [Automation change management](automations.html#change-management)
* [Zendesk Global Extensions page](https://gitlab.zendesk.com/agent/admin/extensions)
* [Zendesk Global Webhooks page](https://gitlab.zendesk.com/admin/platform/webhooks/)
* [Zendesk US Federal Extensions page](https://gitlab-federal-support.zendesk.com/agent/admin/extensions)
* [Zendesk US Federal Webhooks page](https://gitlab-federal-support.zendesk.com/admin/platform/webhooks/)
