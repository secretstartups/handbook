---
layout: handbook-page-toc
title: How to do a WIR Podcast
category: References
description: General guide for creating a Support Week-in-Review Podcast
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

Use this workflow when you want to do a Support Week-in-Review Podcast as a general guide.

---

### Workflow

1. Check the Support Team Google calendar for the recording session (near the end of the week).
1. Determine who will be responsible for each of the following roles. One person can be responsible for them all.
   - Editor:
      - add theme music
      - coalesce all of the audio files into the final mix using [Anchor.fm](https://anchor.fm/) (credentials are in the Support Vault in 1Password)
      - publish the final mix onto Slack and link into the WIR document

   - Narrator(s):
      - analyze the content of the section you'll be narrating: click on each link and understand what is being expressed by the point
      - read and record the content of the point

   - Metrics analyst:
      - take screenshots of the key metrics from the [Support Metrics Dashboard - SWIR](https://gitlab.zendesk.com/explore/dashboard/36925DBD1F5E3C7BA541DB38D11AC51E0EAAFDD30DCB63FDE83CF1389E555D96/tab/10602202) and paste them into the SWIR document
      - in text, enter key metrics into the appropriate sections of the SWIR document
      - read and record this section
1. Join the Zoom room
1. Determine speaking order for Narrators. A useful set of conventions is:
  - Read in alphabetical order by your first initials.
  - If you have an item and it comes up, you will read it which will reset the order.
1. When everyone is ready, begin recording. It's easiest for the Editor to "Record locally", as they'll have the audio on their computer for upload to Anchor.
1. When finished, the Editor should [assemble and publish on Anchor.fm](#publishing-the-podcast)

#### Publishing the Podcast

We use Anchor.fm to publish the Support Week in Review for any episodes that don't contain information that violates the [SAFE Framework](https://about.gitlab.com/handbook/legal/safe-framework/). If you accidentally disclosed confidential information or mentioned customer names during the recording skip to [publishing internally](#publishing-internally).

Publishing on Anchor.fm:
1. Log into Anchor.fm with the credentials in the Support Vault
1. Click "New Episode"
1. From Library search "Title Music" and drag it into the "Your Episode" pane
1. Upload the audio from the recording after the Title Music
1. "Save Episode"
1. Fill in the title and description.
1. "Publish"

###### Publishing Internally

It's nice to have an archival copy on Google Drive. If you published to Anchor.fm and have `youtube-dl` installed, you can quickly grab the compiled audio with:

```
youtube-dl <rss link> --playlist-items 1
```

The RSS link is stored within Anchor.fm at https://anchor.fm/dashboard/podcast/distribution

Once you have the compiled audio:

1. Upload it to the [Support Week in Review - Audio Edition](https://drive.google.com/drive/search?q=Support%20Week%20in%20Review%20-%20Audio%20Edition) folder
1. Change the Sharing Settings to "Anyone within GitLab can View"
1. Copy/paste the URL into the SWIR document
