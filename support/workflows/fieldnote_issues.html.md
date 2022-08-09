---
layout: handbook-page-toc
title: Fieldnote Issues
description: "Investigating and collaborating on tickets using GitLab Issues"
category: Handling tickets
subcategory: Collaboration
last-reviewed: 2022-05-23
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Fieldnotes

A Fieldnote is a running commentary on all the investigative paths followed to bring a ticket to resolution. The aim is to provide as much context as possible, enabling efficient handover and asynchronous collaboration.

### Fieldnotes Concepts

A _Fieldnote_ includes supporting data such as log snippets and screenshots, codes (or links to code in other projects), commands used and their outputs, false leads and missteps, as well as the ultimate solution found.

The aim is to provide **as much context as possible**, curated but unfiltered, so that Support Engineers may pick up where the investigation is at.

Because it is _unfiltered_, it will be taxing to read it all for some investigations. During the investigation, we discover _useful_ and _relevant_ comments, which can be simply copy/pasted back into the Ticket, which **remains the most relevant source of context**, for most people.

It can be confusing having two places for an investigation. Keep each place focussed on _one_ purpose each:

- The _**Ticket**_ is where the current context and communication are expected to be, and should always be updated when you are confident of something to add
- The _Fieldnote_ is for your notes from the field. Don't filter, just brain-dump and ponder through your fingers
- Sometimes a ticket is a continuation of one or more older tickets. You can group all of these together into a single Fieldnote and have a single source of truth that way

Be mindful of GitLab Support's [Guidelines on how to respond to a ticket](/handbook/support/workflows/how-to-respond-to-tickets.html): these all apply within the Fieldnote too. The Fieldnote is kept so that this decision of "what is useful and relevant" can be deferred, or the chosen comments supplanted with more context from the Fieldnote. It should be "internally Transparent" - shared with as much of the Support team as practical, but Confidential to protect customers' privacy.

At GitLab, [Support are encouraged to raise Issues](/handbook/support/workflows/working-with-issues.html) and Merge Requests for Customer Tickets. This _Fieldnotes_ Project in no way should replace that. If it's appropriate to raise an Issue in some other relevant Project, then continue to do that following the normal Workflow, and close this project's Fieldnote Issue with a link to the correct one.

Creating a Fieldnote issue does not necessarily signal to other engineers that you are looking for help. If you would like help, follow the guidance in our [How to Get Help Workflow](/handbook/support/workflows/how-to-get-help.html), [OOO Handover Workflow](/handbook/support/workflows/ooo-handover.html), or follow your [Support Global Group](/handbook/support/support-global-groups/)'s convention. Fieldnotes can greatly facilitate asynchronous (or synchronous!) collaboration, which is an aim, but they are also valuable to keep notes for later review and learning.

## Fieldnote Workflow

- Once an Assigned ZD Ticket becomes non-trivial, create a new Fieldnote for it, and link it to the Ticket (we have [a script to do this for you](https://gitlab.com/gitlab-com/support/toolbox/dotfiles/-/blob/main/scripts/create_fieldnote.rb)):
  1. Create an issue in [the Fieldnotes Project](https://gitlab.com/gitlab-com/support/fieldnotes/), labeled `~fieldnote` (use a Description Template to get you started)
  1. Hyperlink the ticket within the new issue (there is a place for this in the template)
  1. Link to the issue within the assigned ticket, in the **GitLab Issues** custom field on Zendesk
- Investigate the customer request/incident on the issue, making notes in the comments as you go
- There will be false starts, and wild goose chases for some investigations. This is fine, _**always be commenting**_: don't try to filter anything within the issue
- Remember to update the Fieldnote Description
    - Add next steps when you think of them, and mark them as completed when you try them
    - **The Description is a good place to keep an up-to-date summary for other Support Engineers to refer to**
    - You don't have to use the `fieldnote.md` template, there are others which might suit the ticket better, and you are encouraged to add your own
- Remember to keep the Ticket updated regularly
  - Developments from comments in the Fieldnote Issue, as they come up
  - Ticket summaries/closing summaries (copy/paste the Fieldnote's Description)
  - Requests for more info, for following up by customer, and also other Engineers.
  - Any helpful notes from the Customer, or new information, should be copy/pasted back to the Fieldnote
- Update the Labels as new topics (knowledge areas) become apparent
- There may be other, older Fieldnotes which are relevant to your current investigation, so try searching through your older notes and labels for ideas and code

## Tips and tricks

- We have a Zendesk trigger which periodically reminds Support Engineers to add a ticket summary, and a macro for outlining the summary as a Public Comment.  The _default_ Fieldnote issue description template is based on this, with the intention that the issue description can be simply copied to the ticket whenever such summaries make sense

- Keep the Description up-to-date

- We have more than one issue template for Fieldnotes: chose one to suit your need, and add more of your own

- There is a Ruby script in the [Support dotfiles project](https://gitlab.com/gitlab-com/support/toolbox/dotfiles/-/tree/main/scripts) which will create a new Fieldnote issue for you and automatically populate it with a links back to the ticket. You can use it like this:

    ```
    bundle exec create_fieldnote.rb -i <ticket_id> -s '<subject of ticket>' [-t <template>] [-p <PAT_with_api_scope>]
    ```

- Use browser bookmarks with keywords. Here are some suggestions to make searching for Fieldnote and GitLab issues easier:

    | keyword | URL |
    |--|--|
    | `fn` | `https://gitlab.com/gitlab-com/support/fieldnotes/` |
    | `fni` | `https://gitlab.com/gitlab-com/support/fieldnotes/-/issues/%s` |
    | `fnm` | `https://gitlab.com/gitlab-com/support/fieldnotes/-/issues/?sort=created_date&state=opened&assignee_username[]=auser` |
    | `gl` | `https://gitlab.com/gitlab-org/gitlab` |
    | `gli` | `https://gitlab.com/gitlab-org/gitlab/-/issues/%s` |

- Remember GitLab keyboard shortcuts:

  | Key sequence | What it does |
  | -- | -- |
  | `/` | searches within GitLab for a string |
  | `?` | show keyboard shortcuts 
  | `i` | creates a new ***I***ssue |
  | `e `| ***E***dit issue Description
  | `r ` | ***R***eply (add a comment) |
  | `r ꜛ` (up arrow)| ***R***eply to thread |
  | `l` | change ***L***abels |
  | `g i` | ***G***oes to the ***I***ssues |
  | `g f` | ***G***oes to the ***F***iles |
  | `g s` | ***G***oes to the ***S***nippets |


- Use the Fieldnotes issue board. In it you can see all Open, `~hpar`, and `~emergency` fieldnotes

- Remember that Tickets have one Assignee, who is the DRI, but Issues can have multiple Assignees who collaborate

### Handy browser plugins

- [Copy-as-Markdown](https://github.com/notlmn/copy-as-markdown#-copy-as-markdown) [Chrome extension](https://chrome.google.com/webstore/detail/copy-as-markdown/nlaionblcaejecbkcillglodmmfhjhfi/) [Firefox add-on](https://addons.mozilla.org/en-US/firefox/addon/cpy-as-md/)

### More note taking and skill sharing ideas

We are keeping notes about notetaking in the [Fieldnotes project's README](https://gitlab.com/gitlab-com/support/fieldnotes/-/blob/main/README.md) and branches off from there. These will expand iteratively, some ideas are:

 - Flash cards to learn new skills from others
 - Labelling issus by topic to discover others' approaches in problem-solving
 - Complex ticket follow-through after seniour help sessions

These are more fully explored within the [Fieldnotes project](https://gitlab.com/gitlab-com/support/fieldnotes/) itself. As with the Descripton templates, the spirit of this workflow is non-prescriptive: take this idea and make it your own.

