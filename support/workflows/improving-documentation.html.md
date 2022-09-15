---
layout: handbook-page-toc
title: Improving Documentation
description: "Workflow for submitting GitLab documentation improvements from the Support team"
category: Handling tickets
---

Whenever possible, include a link to the applicable documentation as part of your response to a ticket. If the documentation does not exist yet, then _make_ the documentation and send the link to the Draft MR in the response. For those situations in which making documentation is a more time-consuming exercise, we have set up a process to automatically create an issue in [the GitLab issue tracker](https://gitlab.com/gitlab-org/gitlab/-/issues) to track documentation tasks that needs to be completed:

- Apply [a macro `General::Document This`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/General/Document%20This.yaml) to the ticket. This macro will apply the `create_doc_issue` tag and prefill the template for you to fill out.
- Fill out the template changing the title and the description. Example of the filled out template:

```
CREATE DOCUMENTATION ISSUE
Title: Document how to use Y with an X
Description
There is a new cool feature Y that we released last month. It can be used with X to improve Z. We need to document how Y can be used with X.

## Test h2 header

We should remember to document:

1. requirements
1. how to enable
1. how to configure
1. how to troubleshoot
```

- Submit as internal note. When issue is created `doc_issue_created` tag will be added to the ticket.

If you need to create multiple issues using this workflow, just apply the macro once again.
The automation creates issues with [label_name\[\]=documentation&label_name\[\]=customer](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&state=opened&label_name[]=documentation&label_name[]=customer) and assigns them to the agent who submitted the internal note.

**Note:** Make sure to use the template so that your internal note is correctly parsed by the trigger.

This workflow is implemented using a [zendesk trigger](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/triggers/-/blob/master/triggers/active/Lifespan%20Stage/Create%20documentation%20issue.yaml) that parses the internal note and sends it to [Zendesk's HTTP target](https://support.zendesk.com/hc/en-us/articles/204890268) that creates a documentation issue.

When working on creating new docs, please follow the [documentation styleguide](https://docs.gitlab.com/ee/development/documentation/styleguide/#location-and-naming-of-documents). When submitting a Documentation MR, please remember to use the `documentation` and `Support Team Contributions` labels. This ensures that both the Support and Documentation teams can track Support's contributions to the documentation.
