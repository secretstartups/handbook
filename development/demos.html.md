---
layout: markdown_page
title: "Developer Demos"
---

## Engineering Demos at GitLab

The idea that [working software is the primary measure of progress][agile-principle]
is one of the principles of agile software development. Demoing gets more eyes
on the project to uncover bugs and reveal ambiguities in the product
requirements. It's also a transparent and lightweight way to provide status to
the rest of the organization. Developers should demo at a regular cadence, like
every week or bi-weekly with the product managers present. Demo meetings should
be kept to 30 minutes or less. The emphasis should be on the product
requirements or acceptance criteria and less on the implementation details.

Demos work best for features that span multiple releases, or are actively being
iterated on.

The audience is for any stakeholder of this feature that's interested in the
progress of the feature. Though usually mainly comprises of the team, and their
product manager.

### How to set up a demo

##### Script

A demo starts with a script, which contains actions which the demo'er will take
to show the feature. List each step, however small it might look to expose
implicit dependencies. For example:

> Create a new project by clicking the `+` icon -> New project and fill out the form

Exposes that a new project created by pushing to a remote in the users namespace
might, or might not work.

A script has two parts, the preparation section is to be executed by the demo'er
before the demo. This section should be as small as reasonable, to uncover the
setup cost of the feature by the end user, but also to analyze how easy it would
be to develop productively on this feature. The second section is the demo
itself, executed during the call.

The script should be ambitious, to the extend that each demo should fail. If all
steps of the demo were successful, the script wasn't ambitious enough.

##### Zoom call

The engineering manager should set up a recurring Zoom call, which starts
recording automatically. Recordings allow team members unable to join to get up
to speed asynchronously.

### The Demo

When the demo starts, make sure there's a document where each participant can
take notes in. Notes should reflect observed issues, potential script
improvements, areas to explore in future demos (what-if scenarios), and
successes.

### End of the demo

Reserve the last 5 minutes of the demo to reflect on it. Start of my listing the
unexpected failures, assign a DRI to create the issue and determine the priority.
After the failures, suggest additions and removal of steps to the script. What
other areas could be added? After several runs of the demo, the time it used to
take will probably be less than it was in the beginning, which in turn allows
for extension of the script. When steps are removed is another good time to
acknowledge progress. Guard against removal of steps _before_ they were demo'ed
successfully, in anticipation of a fix being delivered.

Last up; announce the person to demo next. Cycling demo'er reduces risk, and
reduces the risk that some bugs aren't uncovered based on the environment the
code runs in.

It's recommended to live stream on the GitLab Unfiltered channel.

[agile-principle]: http://agilemanifesto.org/principles.html
