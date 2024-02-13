---
title: Data Science
description: "The Data Science stage is focused on leveraging ML in the GitLab product and preventing abuse in the application."
---

## Vision

Build a diverse and global development team to support and drive results across the section,
while maintaining [our values](/handbook/values/) and [unique way of working](/handbook/company/culture/all-remote/guide/).

## Mission

Drive results through iterative development as we add ModelOps and Anti-abuse features into the product.
Our teams are data-driven, support [dogfooding](https://about.gitlab.com/direction/dogfooding/), and [collaboration](/handbook/values/#collaboration) within GitLab and the wider community.

## Groups

* [Model Validation](./model-validation/)
* [AI Framework](./ai-framework/)
* [Custom Models](./custom-models/)
* [Duo Chat](./duo-chat/)

## Features

| Feature | Team Ownership | Project Location | Standalone or consideration for Chat Framework |
|---|---|---|---|
| [Code Suggestions](https://docs.gitlab.com/ee/user/project/repository/code_suggestions) | [Create:Code Creation Group](https://handbook.gitlab.com/handbook/engineering/development/dev/create/code-creation/) | [GitLab](https://gitlab.com/gitlab-org/gitlab), [GitLab VSCode Extension](https://gitlab.com/gitlab-org/gitlab-vscode-extension), [GitLab Web IDE](https://gitlab.com/gitlab-org/gitlab-web-ide), [GitLab JetBrains Plugin](https://gitlab.com/gitlab-org/editor-extensions/gitlab-jetbrains-plugin), [GitLab Vim](https://gitlab.com/gitlab-org/editor-extensions/gitlab.vim), [GitLab Visual Studio Extension](https://gitlab.com/gitlab-org/editor-extensions/gitlab-visual-studio-extension) | Standalone |
| [Chat](https://docs.gitlab.com/ee/user/gitlab_duo_chat) | [GitLab Duo Chat Group](https://handbook.gitlab.com/handbook/engineering/development/data-science/duo-chat/) | [GitLab](https://gitlab.com/gitlab-org/gitlab), [GitLab VSCode Extension](https://gitlab.com/gitlab-org/gitlab-vscode-extension), [GitLab Web IDE](https://gitlab.com/gitlab-org/gitlab-web-ide), [GitLab JetBrains Plugin](https://gitlab.com/gitlab-org/editor-extensions/gitlab-jetbrains-plugin), [GitLab Vim](https://gitlab.com/gitlab-org/editor-extensions/gitlab.vim), [GitLab Visual Studio Extension](https://gitlab.com/gitlab-org/editor-extensions/gitlab-visual-studio-extension) | Chat Framework |
| [Git suggestions](https://docs.gitlab.com/ee/editor_extensions/gitlab_cli#gitlab-duo-commands) | [Create:Source Code](https://handbook.gitlab.com/handbook/engineering/development/dev/create/source-code-be/) | [CLI](https://gitlab.com/gitlab-org/cli#usage) | Standalone |
| [Discussion summary](https://docs.gitlab.com/ee/user/ai_features.html#summarize-issue-discussions-with-discussion-summary) | [Plan:Project Management Team](https://handbook.gitlab.com/handbook/engineering/development/dev/plan-project-management/) | [GitLab](https://gitlab.com/gitlab-org/gitlab) | Chat Framework |
| [Issue description generation](https://docs.gitlab.com/ee/user/ai_features.html#summarize-an-issue-with-issue-description-generation) | [Plan:Project Management Team](https://handbook.gitlab.com/handbook/engineering/development/dev/plan-project-management/) | [GitLab](https://gitlab.com/gitlab-org/gitlab) | Standalone |
| [Test generation](https://docs.gitlab.com/ee/user/gitlab_duo_chat#write-tests-in-the-ide) | [Create:Editor Extensions Group](https://handbook.gitlab.com/handbook/engineering/development/dev/create/editor-extensions/) | [GitLab Web IDE](https://gitlab.com/gitlab-org/gitlab-web-ide) | Chat Framework |
| [Merge request template population](https://docs.gitlab.com/ee/user/project/merge_requests/ai_in_merge_requests#fill-in-merge-request-templates) | [Create:Code Review Group](https://handbook.gitlab.com/handbook/engineering/development/dev/create/code-review/) | [GitLab](https://gitlab.com/gitlab-org/gitlab) | Standalone |
| [Suggested Reviewers](https://docs.gitlab.com/ee/user/project/merge_requests/reviews#gitlab-duo-suggested-reviewers) | [AI Model Validation Group](https://handbook.gitlab.com/handbook/engineering/development/data-science/ai-assisted/) | [GitLab](https://gitlab.com/gitlab-org/gitlab) | Standalone |
| [Merge request summary](https://docs.gitlab.com/ee/user/project/merge_requests/ai_in_merge_requests#summarize-merge-request-changes) | [Create:Code Review Group](https://handbook.gitlab.com/handbook/engineering/development/dev/create/code-review/) | [GitLab](https://gitlab.com/gitlab-org/gitlab) | Chat Framework |
| [Code review summary](https://docs.gitlab.com/ee/user/project/merge_requests/ai_in_merge_requests#summarize-my-merge-request-review) | [Create:Code Review Group](https://handbook.gitlab.com/handbook/engineering/development/dev/create/code-review/) | [GitLab](https://gitlab.com/gitlab-org/gitlab) | Standalone |
| [Vulnerability summary](https://docs.gitlab.com/ee/user/application_security/vulnerabilities#explaining-a-vulnerability) | [Govern, Threat Insights](https://handbook.gitlab.com/handbook/engineering/development/sec/govern/threat-insights/) | [GitLab](https://gitlab.com/gitlab-org/gitlab) | Standalone |
| [Vulnerability resolution](https://docs.gitlab.com/ee/user/application_security/vulnerabilities#vulnerability-resolution) | [Govern, Threat Insights](https://handbook.gitlab.com/handbook/engineering/development/sec/govern/threat-insights/) | [GitLab](https://gitlab.com/gitlab-org/gitlab) | Standalone |
| [Code explanation](https://docs.gitlab.com/ee/user/ai_features.html#explain-code-in-the-web-ui-with-code-explanation) | [Create:Source Code](https://handbook.gitlab.com/handbook/engineering/development/dev/create/source-code-be/) | [GitLab](https://gitlab.com/gitlab-org/gitlab) | Chat Framework |
| [Root cause analysis](https://docs.gitlab.com/ee/user/ai_features.html#root-cause-analysis) | [Environments Group](https://handbook.gitlab.com/handbook/engineering/development/ops/deploy/environments/) | [GitLab](https://gitlab.com/gitlab-org/gitlab) | Standalone |
| [Value stream forecasting](https://docs.gitlab.com/ee/user/ai_features.html#forecast-deployment-frequency-with-value-stream-forecasting) | [Optimize Group](https://handbook.gitlab.com/handbook/engineering/development/dev/plan/optimize/) | [GitLab](https://gitlab.com/gitlab-org/gitlab) | Standalone |
| [Product Analytics](https://docs.gitlab.com/ee/user/product_analytics/index.html) | [Product Analytics Group](https://handbook.gitlab.com/handbook/engineering/development/analytics/product-analytics/) | [GitLab](https://gitlab.com/gitlab-org/gitlab) | Standalone |

### Business Continuity - Coverage and Escalation

The following table shows who will provide cover if one or more of the Data-Science Engineering management team are unable to work for any reason.

| Team Member        | Covered by            | Escalation     |
| -----              |-----------------------| -----          |
| Wayne Haber        | Bartek Marnane           | Jörg Heilig   |
| Phil Calder        | Jay Swain             | Wayne Haber    |
| Jay Swain          | Phil Calder           | Wayne Haber    |
| Monmayuri          | Bartek Marnane        | Jörg Heilig   |

If an issue arises  - such as a production incident or feature change lock - that a team member needs management support with when their direct manager is not online, the team member should reach out to any Data-Science Engineering Manager by mentioning in `#data-science-section`. The manager can help the team member follow the process and co-ordinate to ensure the team member has the necessary support.

If an Engineer is unavailable the Engineering Manager will reassign open issues and merge requests to another engineer, preferably in the same [group](#all-team-members).

Some people management functions may require escalation or delegation, such as [Workday](/handbook/people-group/workday/workday-guide/) and [Navan Expense](/handbook/business-technology/enterprise-applications/guides/navan-expense-guide/).

This can be used as the basis for a business continuity plan (BCP),
as well as a general guide to Data Science Engineering continuity in the event of one or more team members being unavailable for any reason.

## Dashboards

{{% cross-functional-dashboards filters="ModelOps" %}}
