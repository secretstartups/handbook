---
title: "Why are there noinspection comments"
no_list: true
---

## What are all the `noinspection` comments in the code?

(_**If you were given this referred to this page in response to asking that question, please read this section.**
But if you just want to learn how to use Code Inspection effectively in JetBrains, please see the [Code Inspection main page](..)_)

JetBrains is a powerful IDE, and is by far the industry leader in IDEs, with various surveys showing around 15% of developers using their IDEs (it is hard to get specific numbers, because most surveys split them into separate IDEs per ecosystem such as RubyMine, Webstorm, etc., but compare these to multi-ecosystem editors such as VSCode, Vim, etc.).

There are multiple RubyMine IDE users on the Remote Development team. Therefore, we invest ongoing effort in keeping the `Inspect Code` for the feature clean and without any warnings/errors, which means the "green check" at the top right of each file is useful, and if it's not there, we know immediately that we have introduced some problem.

These checks includes a powerful set of inspections built into JetBrains IDEs, including type safety and other checks which are not provided by our standard static analysis tools such as RuboCop or ESLint.

This support can be a tremendous productivity boost for JetBrains IDE users, because you can get instant feedback on linting/type/etc errors, without having to wait for LEFTHOOK or a CI pipeline to run and fail (a much longer and more tedious feedback loop).

However, sometimes they give false negatives, and must be disabled with `noinspection` comments to keep things clean, similar to disable comments in RuboCop or ESLint.

These false negatives indicate a bug or missing feature in the IDE. Therefore, will proactively report these to JetBrains, and track the corresponding issues in their issue tracker.

This tracking exists under [Tracked JetBrains Issues](../../tracked-jetbrains-issues), and the related comments shojld all include the relevant issue entry as a reference. Once the underlying issues are resolved and included in a new IDE release, [the corresponding `noinspection` comments can be removed](../../tracked-jetbrains-issues#handling-of-issues-related-to-noinspection-comments).

This approach also supports our mission of "Everyone can Contribute", because if a RubyMine external contributor wants to contribute to the Remote Development feature, they can do so without having to deal with any false negative warnings in the IDE, and rely on the fact that any warnings they see are ones which they themselves have introduced in their current coding session or MR.

We also do not require that non-JetBrains users maintain these comments - the JetBrains users on the team will take responsibility for maintaining them, and removing obsolete ones. The only ask is that there are not continual requests from non-JetBrains users to remove these comments, just because they are not useful in their editors.
