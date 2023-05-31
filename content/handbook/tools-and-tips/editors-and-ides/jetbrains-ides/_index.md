---
title: "Jetbrains IDEs"
no_list: true
---

## Sub-pages

See the following sub-pages for information on configuration and usage of
Jetbrains IDEs in general, and for specific usage of IDEs.

{{< subpages >}}

## Overview

Jetbrains offers a [suite of powerful integrated development environments(IDEs)](https://www.jetbrains.com/products/)
for all major software development ecosystems. Although they are separate applications, each IDE shares a common UI and controls, which allows you to easily switch between them without re-learning UX or keybindings.

## Quick Start

1. Decide what IDE you need to use for the project you are working on:
    - [RubyMine](rubymine) for Ruby/Rails/JS
    - [GoLand](goland) for golang
    - [Webstorm](webstorm) for pure-Javascript/Typescript.
    - Idea for JVM/Java/Kotlin
    - CLion for Rust
1. If you are an GitLab employee, you can request and obtain a [License](#licenses) for the IDE(s) you need to use.
1. Install [Jetbrains Toolbox](https://www.jetbrains.com/toolbox-app/).
1. Use Jetbrains Toolbox to install the IDE you need.
1. At this point, you should be able to open the project you need to work on. For basic tasks, most things "just work" by default out of the box - that's one of the nice things about using Jetbrains IDEs! **_However, note that very large and complex projects such as the GitLab Rails monolith under RubyMine may an exception to this. See the [RubyMine](rubymine) page for details_**.
1. For more information, see the [Common Jetbrains Setup and Configuration](setup-and-config) page for details and more advanced info.
😃.
1. If you need help, ask in one of the [Chat Groups](#chat-groups)!

## Chat Groups

- [`#jetbrains-ide` internal Slack channel](https://gitlab.slack.com/archives/CR08PTQ6T).
- Public discord channel (TODO: create this!)

## Licenses

For GitLab employees, there is a central account for managing licenses of JetBrains' products like RubyMine or GoLand.
If you want to use one of their products, please log an [Access Request](https://gitlab.com/gitlab-com/team-member-epics/access-requests) and select the best option for your situation (single user, bulk user, etc.) and, once approved by your manager, [activate a license for yourself](https://www.jetbrains.com/help/license-vault-cloud/Activating_a_license.html). Use the license server URL `https://gitlab.fls.jetbrains.com` when activating your IDE, and be sure to log in via Okta when prompted to authenticate. Make sure to use your company email address when creating your Jetbrains account.

If you have an Individual License acquired through your own means, it is suitable for [General commercial use](https://www.jetbrains.com/store/comparison.html#LicenseComparison) and you may use it. However, GitLab will not reimburse an Individual License, as Individual License cannot be purchased or reimbursed by companies. That being said, even if you used to use an Individual License, you can always request a company issued one.
