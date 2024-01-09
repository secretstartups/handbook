---

title: "Developer Relations - Content Effectiveness"
description: "How the Developer Relations team measures effecstiveness of content it creates."
---


## Quicklinks

- [Marketing Campaigns Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/DraftTDCampaigns-L2RInteractions/CampaignDrillDown?%3Aiid=1) on Tableau
- [Looker Reports](https://lookerstudio.google.com/reporting/25dedcd0-7f67-4a37-8ab6-ad03cd431f92/page/p_k19k34iwad)
- [Content Asset Inventory](https://docs.google.com/spreadsheets/d/1WzdX8o9wzuswIPMAYVUURswm2AtwFcVE6XhmHy1lhr8/edit#gid=0)
- [Youtube2Sheets](https://gitlab.com/gitlab-com/marketing/developer-relations/dev-evangelism/code/youtube2sheets) Script
- [CommunityApps](https://campaign-manager.gitlab.com/) (Campaign Manager)

## Content Effectiveness

The Developer Relations team create content on varying topics and in different formats, these includes videos, blog posts, conference talks, demos, etc. This handbook pages details how we measure the effectiveness of the content, the tools we use and how they work together. First, we will review the different components.

### Content Asset Inventory

A common bottle neck to tracking the effectiveness of content is having a source where the content are listed and indexed with relevant meta data. While individual content types like Blog posts can be sourced from the medium on which they are published, it is often difficult to filter automatically for a specific team or group. The workaround is to have a spreadsheet where all the content are aggregated for further use, this is the role the Content Asset Inventory [spreadsheet](https://docs.google.com/spreadsheets/d/1WzdX8o9wzuswIPMAYVUURswm2AtwFcVE6XhmHy1lhr8/edit#gid=0) plays. Our Looker Studio and Tableau dashboards use the Asset inventory as a data source. 

### YouTube2Sheets

[YoutTube2Sheets](https://gitlab.com/gitlab-com/marketing/developer-relations/dev-evangelism/code/youtube2sheets) is a ruby script that runs twice daily at noon and midnight UTC. It takes a list of YouTube playlists provided in a [JSON Config file](https://gitlab.com/-/ide/project/gitlab-com/marketing/corporate_marketing/developer-evangelism/code/youtube2sheets/tree/master/-/data_config.json/), connects to the YouTube API, fetches all the videos in the playlists along with their meta data and stores them in the Google sheet specified for each playlist.

The idea behind this script is to create an semi-automated way to keep track of videos published on YouTube. For this to work, the videos need to be organized in playlists and the playlists should be added to the [JSON Config file](https://gitlab.com/-/ide/project/gitlab-com/marketing/corporate_marketing/developer-evangelism/code/youtube2sheets/tree/master/-/data_config.json/) file. The format of the file is as follows:

```json
[
    {
        "playlist_id":"PL05xxxxx", //The ID of the YouTube playlist to fetch videos from.
        "spreadsheet_id":"1WLuayxxxx", //The ID of the Google Spreadsheet the meta data of videos will be stored.
        "sheet_name":"Sheet1", //The name of the the Sheet in the Google Spreadsheet where the video data should be stored.
        "task":"Community Relations - DE", // An name for the list, useful in cases where the spreadsheet is used for multiple playlists.
        "description":"Developer Evangelism Team"
    }
]
```

The video meta data are stored in the spreadsheets in the following format:

|      |   A   |   B   |   C   |   D   |   E   |   F   |   G   |   H   |
|------|-------|-------|-------|-------|-------|-------|-------|-------|
| 1 | Video ID | Task/Team Name  | Channel Title  | Playlist Title |  Video URL  | Video Title  | Publication Date | GitLab Publication Quarter |
| 2 | _OSDh_L5M_E |	Community Relations - DE | GitLab Unfiltered |	Developer Evangelism Team | https://www.youtube.com/watch?v=_OSDh_L5M_E	 |  5. #everyonecancontribute cafe: HashiCorp Waypoint | 2020-05-27T22:43:09.000Z | FY21Q2 |

The spreadsheet data in the spreadsheet can be used as is for any further automation or process. In the case of the Developer Relations team, the data is fed into the `youtube_views_gitlab` sheet of the Content Asset Inventory [spreadsheet](https://docs.google.com/spreadsheets/d/1WzdX8o9wzuswIPMAYVUURswm2AtwFcVE6XhmHy1lhr8/edit#gid=0).

### CommunityApps - Campaign Manager

The [CommunityApps Campaign Manager](https://campaign-manager.gitlab.com/) enables the team manage the use of UTM campaigns inline with the [Marketing UTM strategy](https://handbook.gitlab.com/handbook/marketing/utm-strategy/). You can learn more about the [application here](https://handbook.gitlab.com/handbook/marketing/developer-relations/community-apps/campaign-manager/). The key role of CommunityApps in the Content Effectiveness workflow is to ensure the right UTM campaign codes are used, and inturn their usage will be picked up by the data automation that powers the [Marketing Campaigns Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/DraftTDCampaigns-L2RInteractions/CampaignDrillDown?%3Aiid=1) on Tableau.

### Looker Reports

![looker-report](/images/handbook/marketing/developer-relations/looker-report.png)

The [Looker Studio reports](https://lookerstudio.google.com/reporting/25dedcd0-7f67-4a37-8ab6-ad03cd431f92/page/p_k19k34iwad) was created as a quick first iteration before they are migrated to Tableau. The data sources used to build the reports are:

- Google Analytics 4 API
- YouTube API
- `youtube_views_gitlab` sheet in the Content Inventory
- `devrel_blog_posts_views` sheet

Using the 4 data sources, 3 blends were created, the `DevRel Filtered Youtube Data Source`, `DevRel Filtered Youtube (Official Channel) Data Source` and `DevRel Filtered Blog`. A [Blend in Looker Studio](https://support.google.com/looker-studio/topic/9061419?hl=en&ref_topic=10388842&sjid=10095352649474076992-EU) lets you combine multiple data sources in the same visualization. 

`DevRel Filtered Youtube Data Source` and `DevRel Filtered Youtube (Official Channel) Data Source` blends the data from the `youtube_views_gitlab` sheet and the YouTube API using the `External Video ID` from the API and the `video_id` column from then sheet, in an Inner join. The `DevRel Filtered Youtube (Official Channel)` Data Source is authenticated using Abubakar's Google account to the official channel and `DevRel Filtered Youtube Data Source` to the Unfiltered channel using the same account.  The `DevRel Filtered Blog` blends data from the `devrel_blog_posts_views` and Google Analytics (GA4) API.

Here is an example of a blend:

![looker-blend](/images/handbook/marketing/developer-relations/looker-blend.png)


There are 4 pages in the Looker Studio report: 

**Blog Post Metrics** 

![looker-blogposts-reports](/images/handbook/marketing/developer-relations/looker-blogposts-reports.png)

**YouTube Unfiltered Metrics**

![looker-report-unfiltered-youtube](/images/handbook/marketing/developer-relations/looker-report-unfiltered-youtube.png)

**Official YouTube Channel Metrics**

![looker-report-official-youtube](/images/handbook/marketing/developer-relations/looker-report-official-youtube.png)

**YouTube Unfiltered Geographic Analysis**

![looker-report-unfiltered-analytics-youtube](/images/handbook/marketing/developer-relations/looker-report-unfiltered-analytics-youtube.png)

**Official YouTube Channel Geographic Analysis**

![looker-report-official-analytics-youtube](/images/handbook/marketing/developer-relations/looker-report-official-analytics-youtube.png)


### Developer Relations Influenced Campaigns

## Setup & Maintenance guide

### Data Reporting Flow

### Setup

#### Looker Reports

#### Marketing Campaigns Dashboard

### Maintenance

#### Where to Update and When