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

For GitLab employees, there is a [central license management](https://www.jetbrains.com/help/license-vault-cloud) for JetBrains' products.

1. Depending on the Product you want to use, you might want or need to file an [Access Request](https://gitlab.com/gitlab-com/team-member-epics/access-requests)
    1. If you want to onboard a larger set of users (5 or more), please _do file_ an Access Request.
    1. If you want to use GoLand, RubyMine, PyCharm or DataGrip, you _do not_ need to file an Access Request.
    1. If you want to use any other JetBrains product:
        - on a _regular basis_, please _do file_ an Access Request.
        - _occasional use_ is possible without an Access Request. Please note that we have a limited set of "All Products" licenses. People who filed an Access Request will receive priority treatment over occassional users.
1. You can [activate a license for yourself](https://www.jetbrains.com/help/license-vault-cloud/Activating_a_license.html) even while an Access Request is pending.
    - Use the license server URL `https://gitlab.fls.jetbrains.com` during activation
    - Make sure you log-in via Okta to authenticate

If you have an Individual License acquired through your own means, it is suitable for [General commercial use](https://www.jetbrains.com/store/comparison.html#LicenseComparison) and you may use it. However, GitLab will not reimburse an Individual License, as Individual License cannot be purchased or reimbursed by companies. That being said, even if you used to use an Individual License, you can always request a company issued one.
