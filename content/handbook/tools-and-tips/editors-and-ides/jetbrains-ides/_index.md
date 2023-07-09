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
for all major software development ecosystems.

While they have a somewhat steep learning curve, JetBrains IDEs have many benefits which can make the investment worth it:

1. **Common UI**: Although they are separate applications, each IDE shares a common UI and controls, which allows you to
   easily switch between them without re-learning UX or keybindings.
1. **Powerful proprietary features**: The proprietary support for refactoring, indexing, searching, type checking, code navigation, etc., especially
   for languages without official language server support, is often much more powerful and faster than what is available
   from other editor ecosystems.
1. **Works out of the box**: Since they are language/ecosystem specific, many features work "out of the box", without the
   need to find, install, or configure any custom plugins or extensions. For example, ESLint and RuboCop have native
   support, with no plugins required. However, "power users" or complex projects
   will often want to customize their configurations.
1. **Curated plugin ecosystem** The Jetbrains plugin ecosystem is (subjectively) more "curated" than other editor ecosystems.
   Most important tools which are not built into the IDE have officially supported plugins provided by JetBrains
   (e.g. VueJS, Prettier, NodeJS, etc.), and most popular non-Jetbrains plugins only have one or a small number to choose from.
   This is in contrast to plugin ecosystems such as VS Codes, where there can be dozens of different plugins for each key tool
   or library, without a clear way to choose between them, and sometimes they will conflict with each other in keybindings or
   behavior.

JetBrains IDEs are widely used by many developers. The actual usage numbers are often hard to interpret,
because most surveys and polls compare each individual IDE (e.g. RubyMine vs. PyCharm vs. IDE) against
other non-specialized editors (e.g. vim, emacs, VS Code). But, based on recent surveys,
a rough estimate is that about 15% of professional software developers today use one or more JetBrains IDEs.

## Setup and Configuration

See the the [Common Jetbrains Setup and Configuration](setup-and-config) page for instructions on installing and
configuring JetBrains IDEs.

## Keymaps

There's a lot of keybindings in JetBrains IDEs. Here's a list for RubyMine: https://www.jetbrains.com/help/ruby/mastering-keyboard-shortcuts.html. You can find the ones for their other IDEs too.

But if you only memorize one keyboard shortcut in JetBrains, make it this one:

- "Find Action": `Cmd-Shift-A" (`Ctrl-Shift-A` on Windows/Linux)

This will let you find a command and execute it, open a tool window, or search for a setting
just by typing its name, and you can also see the menu location and shortcut (if defined) next to it.
It is similar to "Command Palette" (`Cmd-Shift-P`) in VS Code.

## Code Inspections

One of the powerful and productivity-enhancing features of JetBrains IDEs is
[Code Inspections](https://www.jetbrains.com/help/ruby/running-inspections.html

See more details at [Code Inspection](code-inspection)

## Tracked Jetbrains Issues

We keep a list of all JetBrains issues which are relevant to GitLab, and we want to follow/upvote
in hopes that they eventually get fixed.

See the list here: [Tracked JetBrains Issues](tracked-jetbrains-issues)

## Getting Help

If you need help, ask in one of the [Chat Groups](#chat-groups)!

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
