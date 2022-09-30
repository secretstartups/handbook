---
layout: handbook-page-toc
title: Marketing Site Handbook
description: >-
  GitLab's Marketing Website (about.gitlab.com) is led by the Inbound Marketing
  Team and anyone can contribute.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

GitLab's Marketing Site (about.gitlab.com) is led by the [Digital Experience Team](/handbook/marketing/digital-experience) and anyone can contribute.

The [DRI](/handbook/people-group/directly-responsible-individuals/) for the Marketing Site is [Michael Preuss](https://gitlab.com/mpreuss22), and internal GitLab team members can drop questions in Slack at #digital-experience-team

This documentation refers to GitLab Website pages that live in the [`www-gitlab-com` repository](https://gitlab.com/gitlab-com/www-gitlab-com). The Digital Experience team is migrating GitLab's Marketing Site to the <a href="/handbook/marketing/digital-experience/buyer-experience-repository/">Buyer Experience Repository</a></li>.

## Objectives

Serve the needs and interests of our key audiences:

1. Users: software developers and IT operations practitioners.
1. Buyers of GitLab: IT management, software architects, development leads.
1. Users of and contributors to OSS on gitlab.com.
1. General public interest: job seekers, investors, press, etc.

Generate demand for GitLab by:

1. Providing a compelling landing page experience for organic search traffic visitors
1. Showcase the benefits of the most important GitLab features and how they can save time and money.
1. Educate existing and potential GitLab customers on GitLab vs competing products.
1. Provide customer case studies which illustrate 1 and 2.

## Scope

The GitLab marketing site, or simply the "GitLab Website" refers to all of the content on `https://about.gitlab.com` and the contents of `sites/uncategorized` in the www-gitlab-com rexcept for:

- The Docs: `docs.gitlab.com`
- The GitLab.com product: `gitlab.com`
- The Handbook: `about.gitlab.com/handbook`

See [Where should content go?](/handbook/git-page-update/#where-should-content-go) to learn which web property is the most appropriate place to put different types of content. To learn what section of the website different content belongs see [definitions](#definitions).

Known Issue: There is an [ongoing issue](https://gitlab.com/gitlab-com/Product/-/issues/1869) to further clarify the DRI(s) for various parts of the www-gitlab-com repo and project, and this is a [Q2 FY22 OKR for Inbound Marketing](https://gitlab.com/groups/gitlab-com/marketing/inbound-marketing/-/epics/332#note_602431848)

## Metrics

- Increase clicks from search engine results pages (SERPs)
- Increase unique visitors
- Increase page views
- Increase time on site
- Improve form conversion rates (e.g trial signups)
- Reduce bounce rates

## Tracking Tools

As of 2021-04-27, we are [actively auditing](https://gitlab.com/gitlab-com/marketing/inbound-marketing/marketing-website/-/issues/125) the tracking, cookies, and other 3rd party personalization tools installed on the GitLab Website to ensure we are only collecting the information needed to deliver our service.

* Last audit complete date with link to issue: TBD - audit underwawy

### List of Tracking Tools

TBD - format will be a table with a list of tracking tools and brief description of purpose.

For example: Google Analytics web metrics

GitLab also publishes a [list of all the technology](https://about.gitlab.com/handbook/business-technology/tech-stack-applications/) that GitLab currently uses to support the business.

## Definitions

### Topics

A topic is an industry trend, theme, or technology related to GitLab and our customers. For example, DevOps, GDPR, Containers, etc. Topic pages on our website educate the reader about the topic and share GitLab’s point of view while providing additional links to resources related to that topic. These pages are intended to attract search traffic.

Topic pages should exist at the root level of the website without being nested inside of another directory. e.g. `/continuous-integration`

Examples of other companies who have topic pages:

- [https://www.redhat.com/en/topics/containers](https://www.redhat.com/en/topics/containers)
- [https://pivotal.io/containers](https://pivotal.io/containers)
- [https://pivotal.io/topics](https://www.redhat.com/en/topics/containers)

### Solutions

A solution is a combination of products and services that solve a business problem. For example, accelerating software delivery, enabling remote teams, ensuring compliance, etc. Solution pages on our website show the application of GitLab capabilities and services to address a business problem while providing additional links to resources related to that solution.

Solution pages should be nested inside of the solutions directory. e.g. `/solutions/continuous-integration`

Examples of other companies who have solutions pages:

- [https://www.redhat.com/en/challenges](https://www.redhat.com/en/challenges)

### Product section

The product section of our website has pages that describe what GitLab does and the value provided. The functionality of GitLab is ordered in a hierarchy with 4 levels: Stage, Categories, Capabilities, and Features. You can find details on the [Product Categories Handbook](/handbook/product/categories/)

- Stages relevant to users are listed on the [product overview page](/stages-devops-lifecycle/) with details about the stage on the [stages page](https://gitlab.com/gitlab-com/www-gitlab-com/issues/2428).
- Categories relevant to users are listed on the [product overview page](/stages-devops-lifecycle/).
- Capabilities are listed on the category page they belong to. Capabilities may also have their own landing page.
- Features are listed in many places on the website: on the features page, the capabilities page they belong to, the pricing page, comparison pages, and the ROI calculator.

Category pages should be nested inside of the product directory. e.g. `/product/continuous-integration`

Examples of companies who have product/features pages:
[https://mailchimp.com/features/](https://mailchimp.com/features/)
[https://www.groovehq.com/features](https://www.groovehq.com/features)

### Compare sections

There are two comparison sections on our website, `/compare/` and [DevOps tools](/devops-tools/).

The DevOps tools section provides an in-depth, feature by feature comparison of GitLab and our competitors. Pages in the DevOps tools section are maintained by the Competitive Intelligence team, which is part of the [Strategic Marketing](/handbook/marketing/strategic-marketing/) team.

Pages in `/compare/` are shorter and focused on a single Call to Action that offers relevant resources to visitors arriving via paid advertising. Pages in `/compare/` are maintained by Growth Marketing team and Marketing Program Managers.

Examples of companies who have comparison pages:
[https://postmarkapp.com/compare/sendgrid-alternative](https://postmarkapp.com/compare/sendgrid-alternative)
[https://www.zendesk.com/support/features/zendesk-vs-intercom/](https://www.zendesk.com/support/features/zendesk-vs-intercom/)

### Overlap

Similar content can appear as a topic, solution, and in the product section with different emphases on each page. For example continuous integration:

- A topic page: `/continuous-integration` would talk about what CI is at a functional level.
- A solutions: `/solutions/continuous-integration`. would talk about why CI is important for businesses to adopt.
- A category page `/product/continuous-integration` would talk about the capabilities and features that are part of GitLab's CI functionality and the value it has.

## Requesting Support
If you need support please review the information on the [Digital Experience Hanbook Page](https://about.gitlab.com/handbook/marketing/digital-experience/#requesting-support)

## Updating the Marketing Website

### Naming conventions

Use consistent language across the site when naming links, page names, directory names, page titles, etc. If you see inconsistent language, [log an issue](https://gitlab.com/gitlab-com/www-gitlab-com/issues) to correct. We use [american english](/handbook/communication/#writing-style-guidelines) on the site. Here are some examples below. If in doubt, ask in the `#marketing` slack channel for language help.

Do use nouns when appropriate

- `/product/`
- `/community/`
- `/events/`

Do use the imperative tense as much as possible

- Get started
- Install
- Contribute

Don't use noun forms of verbs

- Installation
- Contribution

Don't use present participle ("ing" words)

- Installing
- Getting started
- Contributing

Nouns may end in "ing"

- Pricing (link to with the imperative "Get pricing" or "See pricing")
- Training (link to with the imperative "Get training" or "Find training")

### Creating new pages

Use [MVCs](/handbook/values/#iteration) to update the website. Create new pages and add the minimal amount of viable content. You can add images and more content in iterative steps.

All pages should use lowercase URLs to help avoid unintentional errors when linking to pages on about.gitlab.com.

We have 10-20 seconds to tell visitors why they should stay on our pages. Tell visitors what value the page will give them. Start with a high-level summary opening the page. This could be as simple as a single sentence, but we shouldn’t put the burden of discovering the value of the page on visitors.

The page title and URL should include keywords visitors might use to discover the page you’re creating. If you’re not sure what terms a visitor might use, ask the Growth Marketing team for suggestions in your Merge Request. We have a list of high priority topics and recommended keywords to use.

### Website Workflow

Below, view a video that shows a typical workflow to update the website.
<figure class="video_container"><iframe src="https://www.youtube.com/embed/XKPi9JZkGs0"></iframe></figure>In the [GitLab Unfiltered](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A) video below, Sarah D., marketing operations manager at GitLab, shows Wil S., social marketing manager at GitLab, how to add a new page to your section of the handbook complete with a new main page and table of contents.
<figure class="video_container"><iframe src="https://www.youtube.com/embed/9NcJG9Bv6sQ"></iframe></figure>

### Creating a new page

#### As an Engineer
If you are an engineer, be sure to check out our [developer docs](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/development.md). 
If adding a new top level directory to the marketing site, make sure to add to `data/monorepo.yml` under `uncategorized/paths`. 
[Docs on monorepo](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/monorepo.md).

#### As a Non-engineer
To create a new page you for follow these steps:

1. Create an issue in the [website repo](https://gitlab.com/gitlab-com/www-gitlab-com/issues) **Note**: Don't branch from other repos like the marketing repo.
1. Create an MR from the issue by clicking on the "Create Merge Request" button. This will create a new branch for you and link it to your issue and label the MR as `WIP:`.
1. Click on the name of your branch after "Request to Merge" to open that branch in the repository file view.
1. Open the `sites` folder. This is where webpages are stored.
1. If this is an update to about.gitlab.com, select the `uncategorized` directory. If these is an update to the handbook, select the `handbook` directory. Once you have selected the site where you would like to make the change, choose the directory where you want your webpage to be. For example, if you put a page in the `uncategorized` folder it will show up at the "root" level, if you create the new directory inside of another directory it will appear at that path.
1. Click to add a `New directory` from the plus sign drop down.
1. Name the directory in all lowercase with dashes-between-words for what you want the path of your page to be. For example if you want to create a page at [about.gitlab.com/solutions/cloud-native](/solutions/cloud-native/) then click on the `solutions` directory and inside the `solutions` directory create a new directory called `cloud-native`.
1. Click to add a `New file` from the plus sign drop down
1. Name the file `index.html.md`
1. Add this code to the top of the file

```
---
layout: markdown_page
title: ""
---
## Subheading

Here is your first paragraph replace this text.
```

1. Inside the quote add the title of your page. For example the title of my cloud native page would be "Building Cloud Native Applications With GitLab". Save your page by clicking "Commit changes". (Using markdown you can add more content to the page. All you need is a title, subheading and a paragraph to get started.)
1. Return to the directory you created. You will see that you now have two files: `index.html.md` and `.gitkeep`. Delete the `.gitkeep` file. This is a placeholder file from when you created the directory since git cannot track empty directories. A quick way to delete the file on the correct branch is to click on "edit" in the changes tab of your MR. This will open the file editor. click "cancel" and dismiss the popup that says "all changes will be lost". This will then place you in the file view for the `.gitkeep` file on your branch. Click the "delete" button to delete the file.
1. **ProTip**: Now that you no longer have a branch with no changes you can use the Web IDE to make further edits. (The Web IDE doesn't work if you have a branch with no changes. [Fix coming in 11.3](https://gitlab.com/gitlab-org/gitlab-ce/issues/48166)
1. **ProTip**: Add a link to the bottom of your page so people can continue reading related content. Popular choices would be `/product` , `/solutions`, `/pricing` or any pages related to your page.
1. If you need help you can ask in the #mr-buddies slack channel.

### Analyst Report Pages

How to create an analyst report page in 5 not-so-easy steps.

#### AR Part 1: Edit the analyst reports YAML

1. Open `analyst_reports.yml` - https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/analyst_reports.yml
1. Click “Web IDE”
1. Add an entry for the new report. For example:

```
- url: gartner-aro19
  title: "Gartner Application Release Orchestration Report"
  subtitle: "Gartner Cites GitLab as a Challenger in MQ for ARO"
  resource_link: /resources/gartner-aro/
  include_file: /analysts/includes/gartner-aro19
```

1. Edit the url, title, subtitle, resoruce_link, and include_file
    1. The incue_file should take the format `/analysts/includes/<url>`
    - Use the url format `<analyst>-<report><year>`. Make a note of this `url` as you'll need it later a few times throughout the process.
    - Use the official title of the report for the title
    - Subtitle - use analyst approved language
    - If we get the reprint, then uncomment the “resource” line. If not, leave it commented with a `#` at the beginning of the line. You need to coordinate with MPM to create a landing page to download the report to use as the resource link.
1. Commit the change to create a new MR:
    - Click “commit”, add a commit message, and click “commit” again,
    - Add “WIP:” to the title so that it doesn't get merged prematurely ("WIP:" means "don't merge")
    - “Submit merge request”
    - NOTE: The pipeline for the MR will fail. That's OK. It won't pass until you complete the steps below.

#### AR Part 2: Create the include file

1. Open the WebIDE from your MR.
    - This is a tricky step. If you don't’ open the WebIDE from your MR then you’ll be working on a different branch. Changes you make on that branch won’t show up in your MR. Alternatively, you can keep the WebIDE open in a tab and continue to make changes after you add each commit. As long as you commit to the same branch it will update on the same MR.
1. Click on the edit tab. It's on the left under the GitLab logo and looks like `</>`
1. Next to the word “edit”, click on “new file” icon (looks like a page with a plus) then add the path
    - The path will be `/sites/uncategorized/source/analysts/includes/` plus the file name for the report you are adding using the `.html.md` file extension. `<analyst>-<report><year>.html.md`
    - For example: `/sites/uncategorized/source/analysts/includes/gartner-eapt20.html.md`
    - This should create a new empty file for you.
1. Copy an existing include (be sure to leave in the disclaimer at the bottom)
    - For example: [https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/sites/uncategorized/source/analysts/includes/gartner-eapt.html.md](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/sites/uncategorized/source/analysts/includes/gartner-eapt.html.md)
1. Update the content
1. Commit that change to the MR branch

#### AR Part 3: Create and upload a report image

1. Create an image of the report. Opening a PDF in Mac preview you can go to File > Export and select JEPG to save the 1stst page of the report. For example: https://about.gitlab.com/images/analysts/cloud-ci-thumb.png. This is a tricky step because what you name the file is very important. It is highly recommended that you use “kabob case” meaning all lowercase letters with dashes in between the words instead of spaces. It looks like shish kabob :)
1. Upload the image to the `/images/analysts/` folder.
1. Open the WebIDE from your MR. This is a tricky step. If you don't’ open the WebIDE from your MR then you’ll be working on a different branch. Changes you make on that branch won’t show up in your MR. Alternatively, you can keep the WebIDE open in a tab and continue to make changes after you add each commit. As long as you commit to the same branch it will update on the same MR.
1. On the edit tab, open the `source` folder, then the `images` folder, then the `analysts` folder. This is kinda tricky because you have to scroll past a lot of folders to find the one you want. The folders are in alphabetical order.
1. Hover over the `analysts` folder and click on the drop down and select “Upload file”. This is an important step. If you upload the file to a different folder then the image won’t show up on the page.
1. Choose the image and click “open”.
1. Commit that change to the MR branch

#### AR Part 4: Edit the haml file

1. Open the WebIDE from your MR. This is a tricky step. If you don't’ open the WebIDE from your MR then you’ll be working on a different branch. Changes you make on that branch won’t show up in your MR. Alternatively, you can keep the WebIDE open in a tab and continue to make changes after you add each commit. As long as you commit to the same branch it will update on the same MR.
2. Type “t” to open up the fuzzy finder and search for the `/sites/uncategorized/source/includes/forrester-reports.html.haml` file. Open it in the WebIDE
3. Copy a “section” and paste it at the top underneath `.forrester-waves-container` This is a tricky step because the indentation needs to be exactly the same as the other sections. When you copy you need to copy all the spaces indenting the line. When you paste, be sure to paste with your current not indented at all. This should give you the same spacing. For example:
```
  <!–– Gartner ARO 2019 ––>
  .forrester-wave-row
    .wave-row-content
      = image_tag "/images/analysts/gartner-app-release.jpg", class: "forrester-wave-graphic", alt: "GitLab Cloud CI Forrester Wave thumbnail png"
    .wave-row-content
      %img.gartner-logo{ src: "/images/home/gartner-logo.svg", alt: "Gartner logo svg" }
      .text-center.forrester-graphic-title
        %p ARO Report
      %p Gartner Cites GitLab as a Challenger in MQ for ARO
      %a.btn.cta-btn.accent.margin-top20.reports-include-button-aro{ href: '/analysts/gartner-aro19/' } Read more
```

1. Update the block with info from the new report. This is a tricky step because you only want to change some lines. Don’t edit any parts that start with a dot like ` .forrester-wave-row`, `.wave-row-content`, or `.text-center.forrester-graphic-title`. The phrases that start with a dot are CSS classes, so if you edit them the page will be formatted strangely.

- PROTIP: Compare your block to a couple other blocks to make sure you are editing the correct lines and while leaving the correct code unedited.
- SIDENOTE: The classes are named “forrester wave” because they were originally created for that report, but then they got used for all reports. This is something to ask the web team to clean up sometime in the future. (Ideally, you should never need to edit a `.haml` file. You should only ever need to edit `.md` and `.yml` files.)
- IMPORTANT NOTE: Take care when editing the `= image_tag` line. Here you need to reference the image file that you uploaded in the previous step. The image file name here needs to exactly match what you named the file when you created it. It should be “kabaob case” - all lowercase letters with dashes instead of spaces.

1. Commit your changes to your MR.

#### AR Part 5: Review

1. Wait for the pipeline to complete and review your changes in the review app.
1. You can continue to update the files in the MR. Particularly the include file will have content from the PM and the PMM. However, it is recommended to merge a skeleton page with TBD, then have the PMM open a new MR to add their changes.
1. If it all looks good, assign to someone to merge.
1. Pat yourself on the back for successfully completing a website update process designed for people who are software developers.

### Updating an existing page

1. Click on the "edit" button at the bottom of the page.
1. Edit the page. Note: page content can be in markdown, `haml`, or possibly in a separate `.yml` file that populates fields in the `haml` file. The [hello bar](#updating-the-homepage-promo-banner-hello-bar) is an example of content in a `.yml` file.

### Moving a page

Great care should be taken whenever moving pages on the website. Ideally, pages should never be moved without implementing an immediate 301 redirect.

The Inbound Marketing team can follows this process to [create 301 redirects](/handbook/marketing/inbound-marketing/search-marketing/#request-an-aboutgitlabcom-redirect).

### Renaming a page

If you need to rename a page (e.g. change `/company/culture/all-remote/part-remote` to `/company/culture/all-remote/hybrid-remote`, as was achieved in [this merge request](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/31109/)), follow the below steps if using Web IDE.

1. Within Web IDE, navigate to the directory that needs renamed, and click the option drop-down to select **Rename**.
1. Rename the folder, then click **Rename folder**.
1. Add a relevant commit message and submit a merge request.
1. Within the newly created merge request, edit [`redirects.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/redirects.yml).
    1. To put the redirect in place, add a few lines to `data/redirects.yml`. Define "sources", "target", and "comp_op" like so:

```
   - sources:
   	 - /company/culture/all-remote/part-remote/
    	 - /company/culture/all-remote/part-remote
      target: /company/culture/all-remote/hybrid-remote/
      comp_op: '='
```

### Optimize images

When adding an image to a webpage, be sure that you optimize the image first.

1. Select the image you'd like to add to a page and save a copy to your computer.
1. Add your local copy to [ImageOptim](https://imageoptim.com/howto.html) and optimize the image for the web.

### Updating the team page and org chart

1. Both the [team page](/company/team/) and [org chart](https://comp-calculator.gitlab.net/org_chart) are updated based on your individual [team member .yml file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/team_members/person).
1. Follow the directions to [add or update your team page entry](https://about.gitlab.com/handbook/git-page-update/#12-add-yourself-to-the-team-page).

### Updating the homepage promo banner (`hello-bar`)

- The homepage promo banner is edited at [`/source/includes/hello-bar.html.haml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/includes/hello-bar.html.haml).
- This banner includes an optional image (logo) to accompany the text.

### Working with Stages, Groups, and Categories

[Categories and stages](/handbook/product/categories/) are defined in the product handbook. Stages are stored in [`data/stages.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/stages.yml) and categories are stored in [`data/categories.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/categories.yml) as the single source of truth for engineering and marketing.

These two files power various parts of the website including the [homepage](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/sites/uncategorized/source/includes/home/sdlc.html.haml), [product pages](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/product/index.html.haml), and [product categories handbook](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/includes/product/_categories.erb).

They are also used by the automated triage operation ["Stage and group labels inference from category labels"](/handbook/engineering/quality/triage-operations/).

#### Stage attributes

Below are attributes that can be added to a stage in `data/stages.yml`. Each of these properties is accessed via `stages.<stage_key>.foo`

- `display_name`: the name of the Stage in sentence case
- `pm`: the PM leader for this stage
- `marketing`: boolean, whether or not the stage is a "marketed" stage and should be displayed
- `tw`: boolean, if supported by technical writing
- `image`: the logo for the stage
- `description`: a short description of what the stage covers
- `body`: a longer-form description of what the stage covers
- `direction`: where the direction page can be located (ex: `/direction/foo`)
- `roadmap`: a URL to where the roadmap for the stage can be found
- `established`: the year the stage was established (ex: `2020`)
- `lifecycle`: integer (1-7), where the stage falls in the devops lifecycle
- `usage_driver_score`:the Product Usage Driver score, used on [/handbook/product/investment](https://internal-handbook.gitlab.io/handbook/product/investment/)
- `revenue_driver_score`:the Revenue Driver score, used on [/handbook/product/investment](https://internal-handbook.gitlab.io/handbook/product/investment/)
- `sam_driver_score`:the Service Addressable Market score, used on [/handbook/product/investment](https://internal-handbook.gitlab.io/handbook/product/investment/)
- `stage_development_spend_percent`:
- `analyst_reports`: a list of links to relevant analyst reports
    - `analyst_reports.title`: the title of the report
    - `analyst_reports.url`: the URL of the report
- `related`: the stages related to this stage
- `section`: the section this stage belongs to
- `groups`: a list of groups that belong to this stage. [definitions for their properties below](#group-attributes)

##### Group Attributes

Below are attributes that can be added to a group in `data/stages.yml`. Groups are defined in the `groups` property of a stage. Each of these properties is accessed via `stages.<stage_key>.groups.<group_key>.foo`

- `name`: the name of the Group in sentence case
- `label`: The group [label in the `gitlab-org` group](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=group%3A%3A).
By default, the group label is inferred from its name.
For instance, the `import` group is represented by the
[`group::import` label in the `gitlab-org` group](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=group%3A%3Aimport).
This attribute allows to override that.
For instance, the `gitlab-org` label for the `Distribution Deploy`
group is [`group::distribution`](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=group%3A%3Adistribution).
- `focus`:
- `pm`: the Product Manager
- `pmm`: the Product Marketing Manager
- `cm`: the Content Marketer
- `backend_engineering_manager`: the Backend Engineering Manager
- `frontend_engineering_manager`: the Frontend Engineering Manager
- `support`: the Support Engineer
- `pdm`: the Product Design Manager
- `ux`: a list of Product Designers
- `uxr`: the User Experience Researcher
- `sets`: a list of Software Engineers in Test
- `tech_writer`: the Technical Writer
- `appsec_engineer`: the Application Security Engineer
- `be_team_tag`: the "tag" being used in the `department` field in `team.yml` for Backend Engineers on this team
- `fe_team_tag`: the "tag" being used in the `department` field in `team.yml` for Frontend Engineers on this team
- `cs_team_tag`: the "tag" being used in the `department` field in `team.yml` for Customer Success on this team
- `internal_customers`: a list of internal customers/stakeholders for this group
- `internal_customers.department`: the name of the internal customer
- `internal_customers.dri`: the DRI assigned for this relationship
- `usage_driver_score`: the Product Usage Driver score, used on [/handbook/product/investment](https://internal-handbook.gitlab.io/handbook/product/investment/)
- `asp_driver_score`: the ASP score, used on [/handbook/product/investment](https://internal-handbook.gitlab.io/handbook/product/investment/)
- `sam_driver_score`: the Served Addressable Market score, used on [/handbook/product/investment](https://internal-handbook.gitlab.io/handbook/product/investment/)
- `pi_gmau`: A link to the dashboard that displays GMAU for this group
- `pi_pgmau`: A link to the dashboard that displays _Paid_ GMAU for this group
- `analyst_reports`: A link to a location where relevant analyst reports are available
- `comp_comparison`: A link to a location where comparisons with competitive products are available
- `categories`: a list of categories that are owned by this group. [definitions for their properties below](#category-attributes)

#### Category attributes

Below are attributes that can be added to a category in `data/categories.yml`. Each of these properties is accessed via `categories.<category_key>.foo`.

- `name`: the name of the category in quotes
- `stage`: what stage the category belongs to.
- `label`: The category [label in the `gitlab-org` group](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=Category%3A).
By default, the category label is inferred from its name.
For instance, the `Code Analytics` category is represented by the
[`Category:Code Analytics` label in the `gitlab-org` group](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=Category%3ACode+Analytics).
This attribute allows to override that.
For instance, the `gitlab-org` label for the `Kanban Boards`
category is [`Category:Issue Boards`](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=Category%3AIssue+Boards).
- `feature_labels`: A list of all the feature labels that are associated with this category.
This list is used in the automated triage operation ["Stage and group labels inference from category labels"](/handbook/engineering/quality/triage-operations/).
- `marketing_page` (optional): the path of marketing page for the category. If you include a `body` section, then a marketing page will be auto-generated at `/product/${lowercase-category-name}`
- `documentation` (optional): the URL of the docs page for the category, required if the category maturity is minimal or above.
- `direction` (required): the URL of the category direction page. Optionally could be the URL of an issue, epic, or issue label search query if a direction page has not yet been created.
- `description`: a short description of the category.
- `roi`: `true | false` should this category appear in the ROI calculator. (omitting the line is the same as `false`)
- `percent_of_focus`: A value of `0-1` detailing the percent of the group this category is assigned to's focus on this category in terms of developing improvements
- `available`: an ISO date for when the feature was or will be available.
- `viable`: an ISO date for when the category will/did move from minimum to viable on the [maturity handbook page](/direction/maturity/).
- `complete`: an ISO date for when the category will/did move from viable to complete on the [maturity handbook page](/direction/maturity/).
- `lovable`: an ISO date for when the category will/did move from complete to loveable on the [maturity handbook page](/direction/maturity/).
- `maturity`: the current maturity of the category on the [maturity handbook page](/direction/maturity/). Valid values are `planned`, `minimal` (available), `viable`, `complete`, and `lovable`. Provided `marketing = true`, a value of `planned` will cause the category to appear in the "coming soon" section of the homepage, while other values will cause it to appear in the "Since 20XX GitLab added" section.
- `marketing`: A value of `true` will cause this category to appear on our marketing pages, in addition to our [handbook](/handbook/product/categories/). For the home page, a `maturity` state is also required. [Internationalizaion](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/categories.yml) is a good example of a category the engineering team works on, but is not a "customer-facing category" that appears on marketing pages.
- `body`: content added in markdown will be [auto-generated](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/config.rb#L133) and turned into a page at `/product/<category>/`. Features and missing features sections are automatically added to the generated category pages based on what category a feature belongs to in `features.yml`. c.f. [Project Management](/product/project-management/) (and auto-generated page from the [`body` section in `categories.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/categories.yml#L148)) with [Continuous Integration](/stages-devops-lifecycle/continuous-integration/) (a [custom page](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/stages-devops-lifecycle/continuous-integration/index.html.haml).)
- `opportunity`: values can be `Core`, `Adjacent`, `Distant` - is this category considered part of our existing `Core` DevOps platform, a directly `Adjacent` set of capabilities or a `Distant` vision for future breadth.
- `differentiation`: values can be `Winning`,`Compelling`,`Minimal` - is this category sufficiently differentiated from competitors to be considered capable of consistently `winning`, providing an `compelling` additive component to our single platform value or adding only `minimal` differentiated value.
- `ux_scorecard_score`: value should be a letter score, following the [grading rubric](https://about.gitlab.com/handbook/product/ux/ux-scorecards/#grading-rubric)
- `ux_scorecard_link`: should link to the specific issue for the scorecard for this category. More details on [UX Scorecards here](https://about.gitlab.com/handbook/product/ux/ux-scorecards/#setup)
- `dogfooding_status`: values can be `planned`, `limited`, and `exclusive`. Described in detail and used on `/source/direction/dogfooding`
- `dogfooding_issue`: should link to the specific issue tracking dogfooding for this issue, per the [Dogfooding process](/handbook/product/product-processes/#dogfooding-process)
- `dogfooding_group`: should list the right group/team/role/individual inside GitLab that should use the capability

#### Working with category maturity

There are five fields in `categories.yml` that control a category's maturity. These work together to define what the maturity currently is, how it has evolved over time, and our plans to improve in the future.

- `maturity` which represents the current maturity of the category
- `available`, `viable`, `complete`, and `lovable` which are set to ISO dates when we achieved, or plan to achieve, the given maturity.

To change or update the current maturity, set the `maturity` field to the desired value: `planned` (or empty), `minimal` (available), `viable`, `complete`, and `lovable`. Next, ensure that the historical and future maturity values are still consistent. For example, if you incremented the maturity of the category from viable to complete, you should also set the field `complete` to the date of the GitLab release when it changed.

#### Sample template

```
authentication_and_authorization:
  name: "Authentication and Authorization"
  stage: manage
  documentation: https://docs.gitlab.com/ee/administration/auth/
  vision: https://gitlab.com/groups/gitlab-org/-/epics/628
  description: "GitLab features multiple auth mechanisms including LDAP (including Active Directory), OmniAuth, CAS, SAML, Okta, and Authentiq."
  roi: true
  available: 2017-10-01
  viable: 2019-05-22
  complete: 2019-12-22
  lovable:
  maturity: minimal
```

#### Proposing a change

Due to their importance and wide usage throughout the company, changes to Stages, Groups, and Categories need to be reviewed. Open a merge request [using the `Category-Change` template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Category-Change.md) to get started.

**Major changes**

Any change to a Stage or Group, or a significant change to a Category, is a major change. Examples of significant category changes include their names, their group membership, and presence on our marketing page.

Due to their impact, executive approval for major changes is required in addition to the PMs, PMMs, and EMs responsible. Follow the approval process defined on the [categories page](/handbook/product/categories/#changes).

**Minor changes**

Minor changes to Categories are generally routine changes, like updates to maturity and content links. For example, upon shipping an MVC the maturity would change to `minimal`, and a link to the documentation would be added.

Approvals should be gathered from the responsible PMs, PMMs, and EMs. Also mention the relevant engineering and product directors, so they are aware of the changes. If changes are included in a release post, ensure the approval team and directors are mentioned on the MR.

##### Updating responsible persons for a Group

To update the responsible person for a role, follow these steps:

1. Go to the [GitLab.com / www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com) project
1. Change the name of the responsible person in `data/stages.yml` at the relevant position e.g. `pm: John Doe`.
1. Add the markdown reference link of the responsible person in `sites/handbook/source/includes/product/_categories-names.erb`

Here's an [example Merge Request](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/22765).

If the person is not yet listed on the [team page](/company/team/), please follow [these instructions](/handbook/git-page-update/#12-add-yourself-to-the-team-page) to add them.

### Adding features to webpages

All features and capabilities are listed in a single yaml file
([`features.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/features.yml)) under the `features` section.
It is the single source of truth for multiple pages across the website including:

- [Product pages](/stages-devops-lifecycle/) e.g. [continuous integration](/stages-devops-lifecycle/continuous-integration/)
- [Pricing](/pricing/)
- [Compare](/devops-tools/)
- [ROI](/calculator/)
- [Features](/features/)

To add a new feature, add a feature block to under the `features:` section of the page. Add the following attributes:

- **title**: the name of the feature in quotes
- **description**: a plaintext summary of the value the feature provides in quotes
- **link_description**: OPTIONAL, anchor text of a link that will appear below the descriptions e.g. `link: https://docs.gitlab.com/ee/user/project/milestones/`
- **link**: OPTIONAL, the URL of the link (no quotes)
- **category**: a list of one or more categories that this features belongs to. Adding a category to a feature causes it to show up in the features section on the product page for that category (e.g. see the [Continuous Integration page](/stages-devops-lifecycle/continuous-integration/))
- **solution**: REQUIRED legacy field. A [stage of the DevOps lifecycle](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/stages.yml). Will be [removed soon](https://gitlab.com/gitlab-com/www-gitlab-com/issues/2435).
- **tier**: `true` or `false` is this feature or capability available in this tier? `gitlab_core`, `gitlab_starter`, `gitlab_premium`, `gitlab_ultimate`. Note - it's assumed that any feature in a lower tier is also available in the higher tiers. For example a feature listed as in Core is also considered present in Starter, Premium and Ultimate. 
- **gitlab_com**: `true`, `false` or `not_applicable`. Is this feature or capability available on GitLab.com? Because GitLab.com tiers map 1:1 to self-managed tiers setting this will automatically assign the GitLab.com tier. E.g. `gitlab_core: true` + `gitlab_com: true` == `GitLab.com Free`. Adding a tiers fields is what powers the tier badges on product pages and comparison pages, as well as powers the tier [feature comparison of the pricing page](/pricing/self-managed/feature-comparison/). Use `not_applicable` for features that do not apply to GitLab.com, such as the operational details of the service iteslf, like `Fault-tolerant PostgreSQL`.
- **gitlab_com_parity**: For features which are currently not available on GitLab.com, but still applicable, this field should used to provide a rationale or path towards parity. Supports markdown, links to issues are encouraged. Content shows up on the [GitLab.com missing features list](https://about.gitlab.com/handbook/marketing/strategic-marketing/dot-com-vs-self-managed/#all-differences-between-gitlab-saas-and-self-managed).
- **toolname**<a name="feature_status_defs"></a>: any tool from the `devops_tools:` section such as `jira:`, `circle_ci:`, `blackduck:`, etc. that does or does not have this feature. Holds a value of either `true` or `false` or `partially` or is blank (indicating subfields with details should exist).
    - `true` or `false` or `partially`: Examples of `partially` are if a DevOps tool has some but not all of the feature described, or if they have the feature, but only through a plugin. If using `partially` it is highly recommended to instead add `details` as to what partially actually means (see next)
    - <blank>:<a name="feature_status_details"></a> Means that the feature for this particular toolname have a sub-section with details:
        - `valid`: Same as `true` or `false` or `paritally` above
        - `details`: A short statement about the details that need to be shared. For example: "supports 11 languages", or "only supported through 3rd party plug-ins"
- **pricing_page**: `true` or `false`: This currently has no impact on the primary [pricing page](/pricing/), which is driven off themes. This does still apply to the ([self-managed comparison](/pricing/self-managed/feature-comparison/) and [GitLab.com comparison](/pricing/gitlab-com/feature-comparison/)) pages.
- **pricing_theme**: Use this option to mark this feature as part of a [pricing theme](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/pricing_themes.yml). The value is a string, which should match the desired string. Features that align to Themes are shown on our [pricing page](/pricing/).

For example:

```
- title: "Group Milestones"
  description: "Create and manage milestones across projects, to work towards a target date from the group level. View all the issues for the milestone you’re currently working on across multiple projects."
  link_description: "Learn more about Group Milestones"
  link: https://docs.gitlab.com/ee/user/project/milestones/
  solution: plan
  category:
      - portfolio_management
  gitlab_core: true
  gitlab_starter: true
  gitlab_premium: true
  gitlab_ultimate: true
  gitlab_com: true
  github_com: false
  github_enterprise: false
  bitbucket_org: false
  bitbucket_data_center: false
  gogs: false
  jira:
    valid: true
    details: 'only through 3rd party extension'
  ca_agile_central: false
```

Copy and paste this template:

```
- title: ""
  description: ""
  link_description: ""
  link:
  solution:
  category:
    -
  gitlab_core:
  gitlab_starter:
  gitlab_premium:
  gitlab_ultimate:
  gitlab_com:
  github_com:
```

### Updating content on GitLab Learn

The underlying data shown on the [GitLab Learn](/learn/) page is available in [https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/learn/index.yml](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/learn/index.yml)

To update the course content data:
1. Open an MR to the [learn.yml](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/learn/index.yml) file. Follow the existing syntax in the file. For ease of adding a new course, we recommend copying an existing entry and updating the values based on the new course being added, populating every field.
1. Add content to the list as soon as it is planned. 
1. To indicate that a course is planned for the future, include a live_date in the future. You can see an example in [this MR #94773](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/94773). 

Important guidelines to keep in mind: 
1. [learn.yml](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/learn/index.yml) is our SSOT for GitLab-produced content, including all existing and future planned content. 
1. When planning new learning content, add it to [learn.yml]https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/learn/index.yml) as soon as possible, at a minimum monthly, and aim to include what you plan to produce over the upcoming 6 months or more. This gives visibility to all other GitLab team members producing learning content as to what has been planned. 
1. Before producing new content, check [learn.yml](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/learn/index.yml) for redundancy, as other teams may have developed or plan to develop similar content. 
1. Communicate updates with other DRIs working on learning content by posting on the #gitlab-learn-updates Slack channel (available to team members only)


### Creating a DevOps tools comparison page

The [`/devops-tools`](/devops-tools/) section of the website shows info about DevOps tools and a feature comparison of those tools to GitLab. Comparison pages are auto-generated from `features.yml` and `devops_tools_list.yml`. All you need to do is add a tool to the `devops_tools` section in `devops_tools_list.yml` and add that tool id to some features and the page will be created.

To add a new comparison page:

1. Edit [`devops_tools_list.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/devops_tools_list.yml)
1. Under the `devops_tools` section add a tool.

Although the `summary` and `include_file` fields are not strictly required by the parser in order to build the page, every tool **should have at least one paragraph** summarizing the comparison using **EITHER** the `summary` field or the `include_file` field (see below for details). `summary` only is deprecated. Use `include_file` method whenever possible.

- id: a lowercase, snake_case unique identifier (e.g. `travis_ci`)
- name: the display name of the tool in single quotes
- logo: the path to the logo, if there's no logo, add it in the `/images/logos/` directory
- category: a list of [GitLab product categories](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/categories.yml) that this tool is for. Setting a category caused the tool to show up under the category's stage when viewing the table on a comparison page.
- pick only one field
    - include_file: path to a markdown (`.md`) file that will be embedded on the page. Here is where you can add more robust content about the tool. Please use the template under `/source/devops-tools/misc/tool-template.html.md` and store your new file under `/source/devops-tools/TOOLNAME/index.html.md`.
    - summary: (deprecated) A summary paragraph describing the to tool compared to GitLab. Add a pipe ( `|` ) then add content in markdown indented on the next line. Be sure to add on additional empty line after your content.

For example:

With `include_file` (preferred method):

```
  jenkins:
     name: 'Jenkins'
     logo: '/images/devops-tools/jenkins-logo.svg'
     category:
       - ci
       - cd
     include_file: devops-tools/jenkins/index.html.md.erb
```

With `summary` (deprecated method):

```
  chef:
     name: 'Chef'
     logo: '/images/devops-tools/chef.png'
     category:
       - infrastructure_configuration
     summary: |
       Chef is a configuration management tool that enables deployment and maintenance of state for large scale infrastructure. Chef excels as managing legacy infrastructure like physical servers and VMs. Chef was designed before widespread container adoption and does not implement Kubernetes natively.

       GitLab is a complete DevOps platform, delivered as a single application that includes not only configuration management, but also capabilities for project management, source code management, CI/CD, and monitoring. GitLab is designed for Kubernetes and cloud native applications.

       GitLab can be used together with Chef to enable VM and bare metal configuration management. For Cloud Native applications run on Kubernetes, Chef is not required and GitLab can provide all the functionality natively.
```

Copy and past this template:

```
unique_tool_id:
    name:
    logo: '/images/logos/TOOLNAME.png'
    category:
      -
    include_file: 'devops-tools/TOOLNAME/index.html.md'
```

1. Add features to the comparison section.

Be sure to add features that GitLab has that the other tool doesn't and also features the other tool has that GitLab doesn't so that our comparison are transparent and honest (ie. this shouldn't be one sided).

- On a feature block, add the `tool id` and then `true`, `false`, or `partially` to indicate support for the feature ([what does partially mean?](#feature_status_defs)) Add the same details for gitlab tiers. Adding a tool id to a feature is what causes it to show up on the comparison page for that tool. (e.g. if you don't want a feature to show up on a comparison page remove the tool id line from that feature.)
- What if you want to [**add qualifying details**](#feature_status_details) to the true/false/partially info you are providing for a tool?

For example:

```
  - title: "Free CI/CD with shared or personal Runners"
    capability: true
    description: "GitLab.com has shared Runners that allow you to use GitLab CI/CD completely free up to 2000 build minutes for private projects and unlimited for public projects. Alternatively, you can set up your own Runner for faster build processing, unlimited build minutes, or special requirements."
    link_description: "Explore GitLab.com offerings"
    link: /gitlab-com
    solution: gitlab_com
    gitlab_core: true
    gitlab_starter: true
    gitlab_premium: true
    gitlab_ultimate: true
    gitlab_com: true
    github_com: false
    bitbucket_org: 'partially'
    gitlab_ci: true
    codestar: false
  - title: "Domain Specific Language"
    description: "A Domain Specific Language (DSL) for defining infrastructure configuration allows thinking in resources, not files or commands to write declarative rather than procedural code."
    # link_description: ""
    # link: ''
    solution: missing
    gitlab_core: false
    gitlab_starter: false
    gitlab_premium: false
    gitlab_ultimate: false
    puppet: true
    chef: false
```

1. If you followed the above step, the new comparison page should be reachable
under `/devops-tools/tool-vs-gitlab.html` and you should see it on the
devops-tools table on the main page.
1. The last thing you need to do is create the PDF. Follow the
info in [creating comparison PDFs](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/pdf.md).

### Adding content to resources

The [`/resources`](/resources/) section of the website contains downloadable files and links to helpful content.

1. To add a resource, edit the [`resources.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/resources.yml) file.
1. To create a new entry for your resource, use this template and add it to the top of `resources.yml`:

```
- title:
  url:
  image: /images/resources/gitlab.png
  type: Pick one --> 'Blog post' 'One-pager' 'Report' 'Webcast' 'White paper'
  topics:
    - Cloud native
    - Code review
    - Continuous delivery
    - Continuous integration
    - DevOps
    - Git
    - GitLab
    - On-demand training
    - Public Sector
    - Security
    - Software development
  solutions:
    - Distributed teams
    - Accelerated delivery
    - Executive visibility
    - Project compliance
    - Security and quality
```

1. **Uploading a PDF**: If the resource you'd like to add is a PDF, it can be uploaded to [`/pdfs/resources/`](https://gitlab.com/gitlab-com/www-gitlab-com/tree/master/source/pdfs/resources/).
1. **Selecting an image**: Each resources has a thumbnail image based on their topic; select the most relevant image for the content. The current thumbnail images are shown below and can be found [here](https://gitlab.com/gitlab-com/www-gitlab-com/tree/master/source/images/resources).
![ALT](/images/resources/resource-page-thumbnails.png)
1. **Selecting a type**: All resource types are listed in the code snippet above; select one that best fits your content. If the resource does not fit the current types, please submit a proposal for new resource type(s).
1. **Selecting topics & solutions**: The code snippet above provides all of the current topics and solutions; chose the topics and solutions that best apply to the content. Please note they are case sensitive and incorrect casing or spelling will result in the generation of new, unwanted, topics and/or solutions.

### Netlify CMS

The Digital Experience team is [incrementally adopting Netlify CMS](https://gitlab.com/groups/gitlab-com/marketing/inbound-marketing/-/epics/220) for the marketing website. It offers a more user-friendly way of editing the marketing site, but comes with some limitations:

- It is only available to GitLab team members with direct access to this repository (community members who are working off forked repositories cannot yet access it).
- It is not yet available for all content in the marketing site.
- It does not have fields for all types of content yet.
- There are remaining implementation bugs and errors.

Read the [Netlify CMS handbook page](/handbook/marketing/netlifycms/) for up to date directions and status of the system.

### Understanding how up to date the marketing site is

If you're interested in getting a pulse on how recently the marketing website has been updated you can use a quick script to create a CSV in your local tmp/ folder with file names and their last commit date. Run it from the root directory of www-gitlab-com on your local machine:

```
ruby scripts/get-most-recent-commits.rb
```

It doesn't exactly map to URLs on about.GitLab.com, but this should be able to give you a pulse of what gets updated and how frequently. It only checks files in `data/` and `sites/uncategorized/` for now. For each file tracked in git in both of those folders, it grabs the file name and its most recent commit date (as known to git on your machine - so it will be incorrect if you haven't recently fetched or pulled from master).

Most of the `data/` files map closely to a URL on the website. For instance, `data/topic/ci-cd.yml` is the data for https://about.gitlab.com/topics/ci-cd/. So you should be able to scan through the CSV and get a good sense of how recently we've updated data files.

The files in `sites/uncategorized` are a little more complex. Some of them are straightforward, like `sites/uncategorized/source/get-started/index.html.md` is `https://about.gitlab.com/get-started/`. Others are a little more meta, but still give you good information, like `sites/uncategorized/source/includes/cms/topic/body.html.haml` will tell you how recently we have updated the layout for the body partials of the aforementioned topic pages.

Getting a direct mapping of each URL and its corresponding files is possible, but not practical. The only way we can find that out is by hooking into the [Middleman sitemap](https://www.rubydoc.info/gems/middleman-core/Middleman/Sitemap), which is [only available to us in templates](https://middlemanapp.com/advanced/sitemap/#accessing-the-sitemap-from-code). That means we have to have a Middleman instance running (or run the build process). But getting the most recent commit date requires having Ruby run a [system call](https://www.rubyguides.com/2018/12/ruby-system/) to run `git log -1 --format=%cd --date=short /path/to/file` for each and every file. It takes a long time, and including that in Middleman somewhere would impact the overall pipeline negatively.

In the future, we could explore a [custom Middleman extension](https://middlemanapp.com/advanced/custom-extensions/) that provides your data through the interface like `http://localhost:7654/__middleman` has for most of the other config. But it would still be as slow as the system calls take (which is about 20ish minutes for the actual entire sitemap including handbook. Closer to 5-10 minutes for just marketing).

# Merge requests

For best practices regarding testing and reviewing merge requests, please see our related handbook page for [reviewing merge requests](/handbook/marketing/digital-experience/website/merge-requests/).

# Working in Modules

##### What is a module?

1. A module is a section where the presentation, goal, and required functionality remains the same, but content can be updated (wording, imagery, links, etc).
1. A module is a block, box, or section of the page, generally kept as small as possible. It's usually a horizontal slice of layer cake across the page but can also be a chunk of a sidebar.
1. Modules often have configurable options to facilitate reuse with different configurations. It might not always be desirable to have a title block or buttons might need to expire after a date.

##### Why is it important for a module to be reusable?

1. In order to facilitate updates, the code needs to be reusable. It's not an easy update if you have to build it again.
1. Implementing the same thing over and over again is not an efficient use of resources.
1. In order to keep the codebase clean, navigable, and easy to understand it's important to maintain SSOT.
1. If the same code is implemented several times in several spots then the chance for bugs increases. One of those spots might have a bug where the others don't.
1. Much of what goes into building code is unseen on the page. This includes things like optimizing performance, setting up tracking, preparing assets such as formatting images & videos, building responsive views and layouts, human physiology (fingers on a touchscreen, eyes and perception, etc). Testing and building all of these things takes time, so it's important to reuse and reduce code as much as possible.

##### Why is it important for a module to have a single-purpose?

1. In order to facilitate updates, the code needs to be easy to operate.
1. Having a clearly defined purpose for each module enhances the goals of the page and assists with navigation and conversion goals. If a module tries to do 5 things or there are 3 different modules on the page doing the same thing it's easy to spot.
1. An end user might be confused if duplicate modules are on the page.
1. If a module gets too large then it becomes harder to understand the code. Keeping a module single-purpose keeps the module small.
1. Tracking the performance of a module becomes more difficult the more a module changes.
1. When examining from a distance, it's hard to know what module to use if the modules all have several different purposes, sometimes overlapping purposes. "Do I use this module or that one?"

# Video bands

This is a link to our [documentation on how to implement a video band](/handbook/marketing/digital-experience/video-bands/).

# Digital FAQ

<details markdown="1">

<summary>Why isn't this form working?</summary>

### Why isn't this form working?

Many of our forms are served through a third party tool, Marketo. Sometimes Marketo is blocked by an ad blocker or a strict web browser such as [Brave](https://brave.com/). GDPR and CCPA (among other laws) require us to obtain consent before setting cookies and those cookies are required for many third party functions.

If you are having trouble using a form, please try <a href="javascript:Cookiebot.renew();">updating your cookie settings</a> to allow **personalization (personal information) cookies**. If that does not work, please try a different browser with a less strict adblocker and ensure our domain and subdomains (gitlab.com, about.gitlab.com, and page.gitlab.com) are not blocked.

If you have tried the above solutions but are still having trouble using a form, please [file a bug report](https://gitlab.com/gitlab-com/www-gitlab-com/issues/new?issuable_template=-website-bug-report). Please note that if you do not provide all of the requested information we might be unable to reproduce the bug and therefore unable to fix it.
</details>
<details markdown="1">

<summary>Why can't I see something in the review apps?</summary>

### Why can't I see something in the review apps?

Because of how our infrastructure is setup, certain third party content (such as youtube embeds) or advanced javascript may not appear on review apps. If you are unsure of the cause, please contact us so we can help review what might be impacting your project.

If you need to **temporarily** preview an item in the review app before release, you can try to add the following attribute to the frontmatter of the file: `manual_cookiebot: true`. **Do not commit that change without removing it before your final merge.** Alternately, you can follow this tutorial for steps on [how to use developer tools to view a review-app video blocked by cookiebot](https://drive.google.com/file/d/17pveEE_M7TXzar7b69ZhuwFKhKLgRZ8n/view?usp=sharing).
</details>
<details markdown="1">

<summary>What logos do we have permission to use?</summary>

### What logos do we have permission to use?

On the about.gitlab.com website we have approval to use the customer logos lisited at the following link, [Approved customer logos for promotion](https://about.gitlab.com/handbook/marketing/strategic-marketing/customer-reference-program/#approved-customer-logos-for-promotion)
</details>
<details markdown="1">

<summary>Can I request a specific project release time?</summary>

### Can I request a release time?

- Due to how CI/CD deployment pipelines work, release times will NOT be exact. Please plan accordingly. We try to have releases live within 1 hour of the requested timeframe.
- When requesting a release time, please specify a timezone.
- Reasons we can't guarantee a release time include:
    - We don't have a dynamic server, all items are pre-compiled and static.
    - Pipelines might have hundreds of people already in the queue before you.
    - Pipelines might be broken.
    - It takes an unknown amount of time for pipelines to allocate resources, build, run tests, and deploy.
    - It takes time for our CDN to propagate any changes across their network.
    - We don't have dedicated QA resources to ensure that things will happen as expected.
- If planning to release AT a specific time...
    - Request a time an hour before the expected release.
    - Plan for your item to appear before the expected release time. This might mean supplying alternate visuals or copy.
- If planning to release AFTER a specific time...
    - Plan for the preexisting content to cover that time range.
- Please ensure requested times are during normal business hours for the person making the changes.
    - If any changes are requested outside of their normal business hours, please ask before hand if that is possible or if someone else who is available can work on it to ensure that it releases in a timely fashion.

</details>
<details markdown="1">

<summary>How do I fix a stuck merge train?</summary>

### How do I fix a stuck merge train?

Sometimes a merge train will get stuck in our [www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com) repo pipelines. Please see this related issue for [instructions on how to recover a stuck merge train](https://gitlab.com/gitlab-org/gitlab/-/issues/217908#when-the-merge-train-in-the-www-gitlab-com-project-might-be-stuck).
</details>
