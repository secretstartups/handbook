---
layout: handbook-page-toc
title: "Searching GitLab like a pro"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

There are a few tricks you can do to make searching GitLab and the web faster than usual.
This page lists a few of these tricks.

## Searching using "site:"

Many search engines allow you to search only a specific website.
To do this, add `site:` followed by the specific website you want to search, then your search query afterwards.
`site:` is supported by many search engines such as [Google](https://www.google.com/), [Bing](https://www.bing.com/), and [DuckDuckGo](https://duckduckgo.com/).

For example, to search the GitLab handbook for `iteration` you can type:

> `site:about.gitlab.com/handbook iteration`

Or to search the GitLab docs for `permissions`:

> `site:docs.gitlab.com permissions`

## Searching using keyword searches

The `site:` technique is powerful, however, if you use it often you end up typing a URL all the time which is not very efficient.

Keyword searches allow you to search specific websites using keywords and is an incredibly fast way to search the web in general.

For example, to search the GitLab handbook for `iteration` you could type in your browser (where `hb` stands for `handbook`):

> `hb iteration`

Or to search the GitLab docs for `permissions` you could type in your browser (where `gd` stands for `GitLab docs`):

> `gd permissions`

You can find instructions on how to set up keyword searches in Chrome and Firefox below. 

### Setting up keyword searches on Chrome

**Note:** In Chrome 88 and later, you need to press <kbd>Tab</kbd> to trigger keyword search.
To change this so you only need to press space after a keyword, you can disable either of these flags in Chrome:
[omnibox-keyword-search-button](chrome://flags/#omnibox-keyword-search-button) or [omnibox-suggestion-button-row](chrome://flags/#omnibox-suggestion-button-row).
{: .note}

Keyword searches are created as new search engines in Chrome.
The steps below show you how to set up a keyword search for searching the GitLab handbook.

| Step | Image |
|---|---|
| 1. Right-click on the address bar in Chrome and select `Manage Search Engines...` | ![Manage search engine](/images/handbook/tools-and-tips/searching/1_manage_search_engine.png) |
| 2. In the new search engines page, click the `Add` button | ![Add search engine](/images/handbook/tools-and-tips/searching/2_add_search_engine.png) |
| 3. In the new `Add search engine` dialog, enter the following then click `Add`: <br> a. `GitLab handbook` in *Search Engine* <br> b. `hb` in *Keyword* <br> c. `/handbook/#stq=%s` in *URL* | ![Enter search engine details](/images/handbook/tools-and-tips/searching/3_enter_search_engine_details.png) |

To test this, open a new tab and in the address bar type: `hb` <kbd>Tab</kbd> `iteration` and press enter.
The GitLab handbook page should load with the search results for `iteration` showing.

### Setting up keyword searches in Firefox

Keyword searches are created as new bookmarks in Firefox.
The steps below show you how to set up a keyword search for searching the GitLab handbook.

| Step | Image |
|---|---|
| 1. Click on `Bookmarks` on the menu bar, then click `Show All Bookmarks` | ![Firefox Searching](/images/handbook/tools-and-tips/searching/FF_1_Library_Menu.png) |
| 2. Select `Bookmarks Menu` on the left | ![Firefox Searching](/images/handbook/tools-and-tips/searching/FF_2_Select_Bookmarks_Menu.png) |
| 3. Click on the gear icon and select `New Bookmark...` | ![Firefox Searching](/images/handbook/tools-and-tips/searching/FF_3_New_Bookmark.png) |
| 4. In the new popup dialog, enter the following then click `Add`: <br> a. `GitLab handbook` in *Name* <br> b. `/handbook/#stq=%s` in *Location* <br> c. `hb` in *Keyword* | ![Firefox Searching](/images/handbook/tools-and-tips/searching/FF_4_Bookmark_Details.png) |

To test this, open a new tab and in the address bar type `hb iteration` and press enter.
The GitLab handbook page should load with the search results for `iteration` showing.

#### Import keyword searches in Firefox

Since keyword searches in Firefox are stored as bookmarks, it's possible to import them.
The steps below show you how to import the keyword searches described below in [§ Examples of keyword search URLs](#examples-of-keyword-search-urls).

| Step | Image |
|---|---|
| 1. Download the [keyword search Firefox bookmarks file](/handbook/tools-and-tips/searching/gitlab-keyword-search-firefox-bookmarks/) | |
| 2. Go to the Bookmarks window, click on the import-export icon, then click on `Import Bookmarks from HTML...` | ![Firefox Import Bookmark](/images/handbook/tools-and-tips/searching/FF_Import_bookmarks.png) |
| 3. In the new popup dialog, select the file you downloaded in step 1 to import the keyword searches into your Firefox bookmarks | |

To test this, open a new tab and in the address bar type `hb iteration` and press enter.
The GitLab handbook page should load with the search results for `iteration` showing.

### Examples of keyword search URLs

The following table lists some keyword search URLs you can set up in your browser.
Instructions for adding keyword searches in Chrome and Firefox can be found above.

| Action | Keyword example | Keyword search URL |
| --- | --- | --- |
| Search GitLab handbook | hb | /handbook/#stq=%s |
| Search GitLab docs | gd | https://docs.gitlab.com/search/?query=%s |
| Search GitLab issues | gi | https://gitlab.com/search?search=%s&group_id=9970&project_id=278964&scope=issues |
| Search gitlab-org group | go | https://gitlab.com/search?search=%s&group_id=9970 |
| Search gitlab-com group | gc | https://gitlab.com/search?search=%s&group_id=6543 |
| Go to specific epic | epic | https://gitlab.com/groups/gitlab-org/-/epics/%s |
| Go to specific issue | issue | https://gitlab.com/gitlab-org/gitlab/issues/%s |
| Go to specific MR | mr | https://gitlab.com/gitlab-org/gitlab/merge_requests/%s |
| Search open issues by author | iauthor | https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&author_username=%s |
| Search open MRs by author | mrauthor | https://gitlab.com/gitlab-org/gitlab/-/merge_requests?scope=all&utf8=%E2%9C%93&state=opened&author_username=%s |
| Search Google Docs files | dv | https://drive.google.com/drive/search?q=%s |
| Search Wikipedia | w | https://en.wikipedia.org/w/index.php?search=%s |

Keyword search URLs have a `%s` in the URL to indicate where your search query goes.

You can usually find out what URL to use for the keyword search URLs by:

1. Searching for `asdf` in a website
2. Once the search results page has loaded, inspecting the URL in the address bar for `asdf`
3. If the URL contains `asdf`, replacing this with `%s` will give you the URL you can use for the keyword search URL

## Searching using additional search engines in Firefox

If you prefer to search by selecting a search engine in the address bar instead of using keywords, you can add custom search engines to Firefox to search GitLab instead by following the steps below.

| Step | Image |
|---|---|
| 1. Install the [Add custom search engine extension](https://addons.mozilla.org/en-US/firefox/addon/add-custom-search-engine/) | |
| 2. Once installed, click the addon icon in the toolbar or click "Preferences" from the addon manager | ![Add custom search engine extension](/images/handbook/tools-and-tips/searching/1_add_search_engine_firefox.png) |
| 3. Enter the following then click `Add custom search engine`: <br> a. `GitLab handbook` in *Name* <br> b. `/handbook/#stq=%s` in *Search URL* <br> c. `https://about.gitlab.com/ico/favicon.ico` in *Icon* | ![Search engine form](/images/handbook/tools-and-tips/searching/2_add_search_engine_firefox.png) |

To test this, go to a new tab, enter some text into the address bar, and you will now see an icon for your new search engine at the bottom of the suggestions list.

## Searching using Alfred (on macOS)

You can create keyword searches in [Alfred](https://www.alfredapp.com/).
Click on each of the below URLs to add them to Alfred.

Link to add keyword search to Alfred

- [gl](alfred://customsearch/gitlab%20handbook/gl/utf8/nospace/https%3A%2F%2Fabout.gitlab.com%2Fhandbook%2F%23stq%3D%7Bquery%7D%26stp%3D1)
- [gd](alfred://customsearch/gitlab%20docs/gd/utf8/nospace/https%3A%2F%2Fdocs.gitlab.com%2Fsearch%2F%3Fq%3D%7Bquery%7D)
- [gg](alfred://customsearch/GitLab%20issues%20search/gg/utf8/nospace/https%3A%2F%2Fgitlab.com%2Fsearch%3Fsearch%3D%7Bquery%7D%26project_id%3D%26group_id%3D6543%26scope%3Dissues)
- [mr](alfred://customsearch/MR%20Author%20GitLab/mr/utf8/nospace/https%3A%2F%2Fgitlab.com%2Fdashboard%2Fmerge_requests%3Fscope%3Dall%26utf8%3D%25E2%259C%2593%26state%3Dopened%26author_username%3D%7Bquery%7D)
- [author](alfred://customsearch/GitLab%20Issues%20Author/author/utf8/nospace/https%3A%2F%2Fgitlab.com%2Fdashboard%2Fissues%3Fscope%3Dall%26utf8%3D%25E2%259C%2593%26state%3Dopened%26author_username%3D%7Bquery%7D)
- [issue](alfred://customsearch/GitLab%20issue/issue/utf8/nospace/https%3A%2F%2Fgitlab.com%2Fgitlab-org%2Fgitlab%2Fissues%2F%7Bquery%7D)

You can add a favicon by dragging and dropping the GitLab favicon ![favicon](/ico/favicon-32x32.png) to the Alfred custom search:
![Alfred favicon](/images/handbook/tools-and-tips/searching/AF_add_icon.png)

GitLab team member [Simon M.](https://gitlab.com/simon_mansfield) also recorded the following video to walk through the process of searching GitLab like a pro using Alfred and Firefox.

There is also [a repo maintained by GitLab team members](https://gitlab.com/gitlab-org/alfred) with GitLab related workflows.

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/tu7YHZAKKN8" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

## Searching recorded events using GitLab Unfiltered

To search for recorded events in [GitLab Unfiltered via our YouTube Channel](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A/featured) here are the steps you can follow: 

* Open [GitLab Unfiltered](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A/featured)
* Click on the magnifying icon on the top bar indicating “Search.”
* Type in the event you would like to locate a recording for (i.e. AMA, Group Conversation, Product Kickoff Review, Key Reviews, etc).
* Scroll through the search page to find recorded videos.
* You can also click on the “[Videos](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A/videos)” tab.
* Sort by “Date Added (newest)” or “Date Added (oldest).”
* Locate the recording you need.
* You can also search recordings grouped in "[Playlists](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A/playlists)" that are organized by Departments, teams, or topics.

## Searching for changes using Git history and Git blame

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/VsgToca4oCw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

*In the [GitLab Unfiltered](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A) video above, Darren M. walks through a brief tutorial on using Git file history and Git blame to track down a handbook change.*

You can search repositories in GitLab for changes using [Git file History](https://docs.gitlab.com/ee/user/project/repository/git_history.html) and [Git blames](https://docs.gitlab.com/ee/user/project/repository/git_blame.html). 

Git file History provides information about the commit history associated with a file, while a blame provides more information about every line in a file, including the last modified time, author, and commit hash.

This is useful when answering questions such as "When did GitLab switch from BlueJeans to Zoom?" (The answer is found in [this commit](https://gitlab.com/gitlab-com/www-gitlab-com/commit/5ecfa0794f09337d9f2509f4583c34d56904e24c) on `2016-09-22`, which shows the original handbook change referencing the terms.)

For reference on where to begin your searches, the [`www-gitlab-com` repository](https://gitlab.com/gitlab-com/www-gitlab-com) is where the GitLab website/handbook are hosted, while GitLab Docs are found [here](https://gitlab.com/gitlab-org/gitlab-docs).

## Navigating GitLab using the GitLab search bar

GitLab has several hardcoded shortcuts you can type in the search bar to get
autocomplete navigation to different pages. You can also use this search bar to
navigate between projects and groups.

GitLab team member [Dylan](https://gitlab.com/DylanGriffith) recorded the following video to show you how it works.

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/OE9b0Qc6KaI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->
