---
title: "Code Inspection"
no_list: true
---

## Code Inspections

One of the nice features of JetBrains IDEs is "Inspect Code" (`Code -> Inspect Code`).

See a description of this feature here: https://www.jetbrains.com/help/ruby/running-inspections.html

The sections below give more details on how to take full
advantage of this feature.

## Keeping a clean "Inspect Code" and "green check"

This allows you to run all code inspections, including project-configured supported linters
such as RuboCop/ESLint, as well as custom IDE inspections such as type safety, potential bugs,
etc, which will show up in the "Problems" pane after you run "Inspect Code".

In addition to the "Problems" pane, you get instant feedback in the editor with the problems
being underlined, as well as a summary of all problems with icons in the upper-right of each file.
All of these can be hovered over with the mouse to give you more options to deal with the errors,
including automatically fixing them in some cases.

And if you have no problems in the file, you get a "Green Check" at the top right of the file, as
a constant and instant feedback.

These can be powerful time-saving tools to catch problems immediately, without having to wait for
a pre-push hook like "LEFTHOOK" to catch them, or ever worse, having to wait for CI to catch them.

## "Next Error" shortcut

**PRO TIP:** If you set
`Settings -> Editor -> Code Editing -> Error Highlighting -> The 'Next Error' action goes through`
to the `"All Problems"` selection, you can use `F2` to cycle through all errors in the file,
then use `Alt-Enter` and arrow keys to show the options you have for resolving the error.

## Suppressing false positives with `noinspection` comments

Sometimes, though, there are "false positive" problems reported by "Inspect Code". These are
usually due to some IDE bug or limitation, or sometimes due to incorrect type annotations
in a library.

Whatever the cause, it's good to suppress these false positives, because:

1. They cause noise in the "Problems" pane, and have to be ignored. Or in the case of a file with
   no other real problems, cause the "Problems" pane to pop up when it otherwise would not.
1. They prevent the nice "Green Check" from showing up in a file with no other real problems.
1. For JetBrains users who new to that area of the code, they don't have a way to know if they are
   a legit problem they should consider fixing or not.

The way you suppress these false positives is with `noinspection ...` comments: https://www.jetbrains.com/help/ruby/disabling-and-enabling-inspections.html

If you use
`F2` "Next Error" then right arrow, you can automatically add the correct `noinspection ...` comment to ignore the problem. However,
you will have to manually add a space after the `#` to avoid a RuboCop
warning in the `gitlab` project.

These comments might confuse some non-JetBrains users.

Therefore, each of these comments should be accompanied by a comment explaining why it
was needed, with a reference to any supporting information.

If it was needed due to a JetBrains bug or limitation, you can reference the specific entry on the
[Tracked JetBrains Issues](../tracked-jetbrains-issues) page.

If one doesn't exist yet, you should open an issue against JetBrains and add it to that page.
