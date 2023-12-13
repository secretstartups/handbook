---

title: "Integrations Change Management"
description: "The integrations change management process is an extension of the Business Technology Change Management process which is tailored to the SDLC of the integrations team."
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />







The integrations change management process is an extension of the [Business Technology Change Management process](/handbook/business-technology/change-management/) which is tailored to the SDLC of the integrations team.

The team develops integrations with two tools; Workato and Nestjs and the change management process currently differs between them.

## Workato changes

Workato is a tool that helps you manage your integrations. It is a web application that allows you to manage integrations, environments, and deployments. All of this is done using a drag and drop interface which makes it an easy tool to quickly get started with, however it also makes change management more difficult. The current process for change management is this;

1. Follow the [BT change management process](/handbook/business-technology/change-management) but create the change issue within the [Platypus project](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/platypus/-/issues?sort=created_date&state=opened).
1. Add the appropriate [change management label](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=CMT%3A%3A) to the issue using the [approval matrix](/handbook/business-technology/change-management/#approval-matrix). If the change is comprehensive, add the `Business Owner Approval::Needs Approval` label.
1. Receive approval from the business owners of any affected systems in the change and have them comment their approval and add the `Business Owner Approval::Approved` label to the issue.
1. Once the change is made in development, link the relevant recipes and changes in a comment on the issue and request peer approval from someone else on the integrations team. Have them comment with their approval and add the label `Peer Approval::Approved` to the issue.
1. After peer approval, move the code in test and request for manager approval by adding the comment `BT Integration Manager::Needs Approval`. Once reviewed and approved add the label `BT Integration Manager::Approved`.
1. Next, create an issue in [Change Management](https://gitlab.com/gitlab-com/business-technology/change-management) project by using the [change management](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/integrations-work/-/blob/main/.gitlab/issue_templates/change%20management.md) issue template.
1. Once all the checklist items in change management issue are done, you're ready to move the code in prod.

