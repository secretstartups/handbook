---
title: "Why are there noinspection comments"
no_list: true
---

## What are all the `noinspection` comments in the code?

(_**If you were given this referred to this page in response to asking that question, please read this section.**
But if you just want to learn how to use Code Inspection effectively in JetBrains, please see the [Code Inspection main page](..)_)

### JetBrains is widely used

JetBrains is a powerful IDE, and is by far the industry leader in traditional "IDEs" (as opposed to all-purpose editors), with various surveys showing around 15% of developers using JetBrains IDEs (it is hard to get specific numbers, because most surveys split them into separate IDEs per ecosystem such as RubyMine, Webstorm, etc., but compare these to multi-ecosystem editors such as VSCode, Vim, etc.).

### JetBrains supports powerful Code Inspection above and beyond what is provided by git hooks or CI

JetBrains IDEs include a powerful [Code Inspection feature](..) with inspections built into JetBrains IDEs, including type safety and other checks which are not provided by our standard static analysis tools such as RuboCop or ESLint.

This support can be a tremendous productivity boost for JetBrains IDE users, because you can get instant feedback on linting/type/etc. errors, without having to wait for LEFTHOOK pre-push hooks, or a CI pipeline to run and fail (a much longer and more tedious feedback loop).

### This feature makes GitLab team members and contributors who use it more efficient

There are multiple JetBrains IDE users who are GitLab team members, and there is an
active [internal `#jetbrains-ide` Slack channel](https://gitlab.slack.com/archives/CR08PTQ6T).

Therefore, on some teams with several JetBrains users, such as the Remote Development team, we invest
ongoing effort in keeping the [`Code Inspection`](..) for the feature clean and without any warnings/errors,
which means the "green check" at the top right of each file is useful, and if it's not there, we know
immediately that we have introduced some problem.

This approach also supports our mission of "Everyone can Contribute", because if a JetBrains external
contributor wants to contribute to an area of the code with curated `noinspection` comments, they can
do so without having to deal with any false positive warnings in the IDE, and trust that warnings they
see are likely due to problems which they themselves have introduced in their current coding session or MR.

### We must suppress false positives to make full use of this feature

However, sometimes they give false positives, and must be disabled with `noinspection` comments to
keep things clean, similar to `disable` comments in RuboCop, ESLint, or similar static analysis tools.

These false positives often indicate a bug or missing functionality in the IDE. Therefore, in these
cases, we will proactively report these to JetBrains, and track the corresponding issues in their issue tracker.

This tracking exists under [Tracked JetBrains Issues](../../tracked-jetbrains-issues), and the related
comments should all include the relevant issue entry as a reference. Once the underlying issues are
resolved and included in a new IDE release,
[the corresponding `noinspection` comments can be removed](../../tracked-jetbrains-issues#handling-of-issues-related-to-noinspection-comments).

### Not everyone has to use them, but please don't try to prevent others from using them

We also do not require that non-JetBrains users maintain these comments - the JetBrains users on the
team will take responsibility for maintaining them, adding explanatory comments/TODOs, tracking any
associated JetBrains issues, and removing fixed or obsolete ones.

**_The only request is that there are not
[requests from non-JetBrains users to remove these comments](https://gitlab.com/gitlab-org/gitlab/-/issues/409823),
just because they are not useful in their editors. It goes against our values of Efficiency, Results,
and Diversity/Inclusion/Belonging if one team member attempts to prevent other team members and contributors
from leveraging this powerful feature, just to eliminate some innocuous comments which have clear
explanations/TODOs, and are easily ignored by non-JetBrains users._**

Some have made the argument that _"If we allow these comments, we will have to allow these type of
comments from all sorts of other editors"_. However, given that JetBrains is by far the industry leader
in IDEs as [described above](#jetbrains-is-widely-used), and no other mainstream "non-IDE" editors have
this sort of standardized and proprietary feature, we are unlikely to have this problem. And even if
this did happen, the same case could be made that those comments should be allowed as well, for the
same value-based reasons.

In reality, these comments are currently restricted in scope in the `gitlab` codebase. Currently, as of
[this MR in July 2023](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/125831), all `noinspection`
comments have been removed from the code except for within the `Remote Development` domain, which is
the only group actively using it.

But now that we have standardized this process and added
[handbook support for configuring and using JetBrains IDEs](../../setup-and-config)
, other team members and teams who are JetBrains users may also want to adopt this approach.
