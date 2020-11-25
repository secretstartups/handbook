---
layout: handbook-page-toc
title: Improving Documentation
description: "Workflow for submitting GitLab documentation improvements from the Support team"
category: Handling tickets
---

Whenever possible, include a link to the applicable documentation as part of your response to a ticket. If the documentation does not exist yet, then _make_ the documentation and send the link to the Draft MR in the response. For those situations where making documentation is a more time consuming exercise, we have set up a process to automatically create an issue in [the GitLab issue tracker](https://gitlab.com/gitlab-org/gitlab/-/issues) to track documentation tasks that need to be completed:

- Click the "Document this" checkbox (found on the left-hand side of the ticket)
- Enter an ["internal note"](https://support.zendesk.com/hc/en-us/articles/213519318-Adding-comments-to-tickets#topic_bpn_sbd_bv) describing the documentation requirements. Always start your private note with the word `Docs:`, include the title of your issue after the colon (:) and the description of your issue in a new line after four slashes (that are used to delimit the title from the description). Example:

>`Docs: This is the title`
>
>`////`
>
>`This is the description of your issue`

- Submit the private note

Alternatively, apply the macro `General::Document This` to the ticket then submit the private note.

When working on creating the new docs, please follow the [documentation styleguide](https://docs.gitlab.com/ee/development/doc_styleguide.html#location-and-naming-of-documents).

This workflow is implemented using GCP functions as an intermediary between Zendesk and GitLab.

**Note:** Issues are created with [label="Support Team Contributions" and label=documentation](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Support%20Team%20Contributions&label_name[]=documentation).

#### The GCP Documentation Function

In case you need to troubleshoot the function that creates new issues, you can find its logs in the GCP project `gitlab-internal`
under `zendesk-support-doc-main-tracker`.

The function uses the NodeJS runtime, and creates issues from the latest comment (sent from Zendesk). It assigns the issue to you based on your GitLab ID (also
from Zendesk), and links back to the ticket using metadata provided, again, by Zendesk.

The title and body are separated by using the native `String.split()` method, with the four slashes acting as a delimiter. The array that is returned sends its
first element (index `0`) as the issue title, and its second element (index `1`) as the issue description.

Due to constraints imposed by the GitLab application, if you do not include these slashes and your text is more than 255 characters,
your issue may not be created properly because the entire text will be sent as a title. If this happens, check the logs in GCP and look
for the following message:

`"{"message":{"title":["is too long (maximum is 255 characters)"]}}"`

This indicates that the delimiter was not applied properly - if this happens, check the formatting in your Zendesk comment and resubmit it.

If you have suggestions or ideas for improvements, you can create a new issue on the [Doc-Bot repo](https://gitlab.com/gitlab-com/support/doc-bot).
