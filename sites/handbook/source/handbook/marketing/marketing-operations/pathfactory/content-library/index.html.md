---
layout: handbook-page-toc
title: "Content Library"
description: "The content library is where all your uploaded assets are stored and tagged in PathFactory."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Content Library

The content library is where all your uploaded assets are stored and tagged in PathFactory.

### Before uploading content

1. Use the search to determine if it’s already been added. Be thorough, as the asset could also have a different URL. If you try to add a file or URL that's already in the library, the system will tell you it already exists. 
1. Ensure you have the most valuable version of the asset (blog post vs. case study or PDF).
1. Ensure you have the most recent version of the asset.
1. Follow the [blog style guide](/handbook/marketing/growth-marketing/content/editorial-team/#blog-style-guide).

### How to upload content

1. Click `Add Content` in the top right of the content library.
1. Choose how you will upload the asset (Website URL, file upload, or CSV).
    - For a Website URL, copy/paste the URL. For multiple URLs, paste one per line.
    - For a file upload, select this option and either drag and drop the file onto the file upload window or select it from your computer. Files can be up to 100MB.
    - [Follow the bulk upload instructions](#bulk-upload) to upload multiple assets to the content library via CSV.
1. Enter the title of the asset under `Public Configurations`. Ensure that the title is free of SEO meta information such as `| GitLab`.
1. Provide a clear and concise description of the content if one does not exist.
1. Select the content type from the dropdown.
1. Leave the engagement score at a default of 20 seconds with a score of 1.
1. Copy and paste the public title into the internal title field.
1. Funnel stage and estimated cost is set automatically based on the content type you chose earlier. Please leave these auto-generated tags as is and do not force change. 
1. Set the language of the asset.
1. Select the Business Unit of the asset based on use and sales region.
1. Set the expiry date of the asset if one exists.
1. Leave External ID blank.
1. Select the content topics on the right-hand side that categorize the asset. Follow the [content tag map below](#tracking-content) when tagging content with topics.

## After adding the asset to the library

1. Select the asset you just added to the library. A preview of the content will appear on the right-hand side of the content library. Scroll down the window pane under `source URL` and locate `Custom URL slug`.
1. Update the custom URL slug to be descriptive of the content with no stop words (and, the, etc.).
    1. **Please Note:** DO NOT change a custom URL slug that is part of a `[LIVE]` content track. You can see whether an asset is part of a live content track by clicking on it in the content library and scrolling to the bottom of the preview pane. This action can affect any links to this item that have been previously shared and break the asset consumption tracking via [listening campaign](#listening-campaigns).
    1. If a URL slug needs to be modified, please open an issue in the marketing operations project. 
1. We force `https://` to content tracks by default. As a result, all assets must use `https://` in the link to work in the content track properly. If you upload content that is _not secure_, it _will not_ show a lock icon next to the URL and it will not work in a secure content track. Please manually add `https://` if it is not already there.

### Replacing or updating the verson of an asset after initial upload

If you need to replace an asset source but keep the same link, you can do so from the content library.
* Select the asset from the content library
* On the right side, in the preview panel, scroll until you see `Source URL`
* When you hover over `Source URL` a pencil appears to the right
* Click the pencil/edit icon
* In the popup that appears, choose `File Upload` or `Website URL` as relevant
* Choose the updated version from your computer (or paste the new URL in)
* Click upload
* QA that the new version appears in "Preview" mode
* If used in a track, QA that the correct version appears in the track preview

### Bulk upload

You can [bulk upload multiple new assets](https://nook.pathfactory.com/nook/s/article/csv-upload) to the content library via a CSV file.

1. Download this [CSV template](https://d1nk153xyqlyhl.cloudfront.net/Content_CSV_Template.csv). This CSV file has the exact format as the CSV bulk upload template.
1. Provide all the information in the template for your new assets and save as a CSV. 
1. Follow the standard procedure for uploading content and select CSV upload. 
1. Upload your file and select the checkbox `Overwrite all duplicate content assets`. 
1. Select the `Upload File` button.

### Analyst reports

Expiry dates will not automatically deactive content after expiration. You must manually deactivate the content if it’s past the expiry date. To expire an analyst report from PathFactory, [open an issue](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/issues/new?issuable_template=Gated-Content-Expiration-Analysts-MPM) in the digital marketing programs project using the `Gated-Content-Expiration-Analysts-MPM` issue template.

### Asset thumbnails

For assets that don't pull in a relevant thumbnail image, you can choose to upload a thumbnail image that closely matches the topic of the asset. The design team has made [topical thumbnail images](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/tree/master/design/web-design/pathfactory/content-thumbnails) available for upload to PathFactory. The thumbnail images are available in either an orange or dark purple background for the following topics:

- Agile
- CI/CD
- Cloud Native
- DevOps
- Git
- IT Management
- Microservices
- Open Source
- Security
- Single app
- Digital transformation
- VSM
- Workflow

To use a thumbnail image, visit the [web design repository](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/tree/master/design/web-design/pathfactory/content-thumbnails) where they are stored, choose the `png` folder, choose your preferred background color, then select the `.png` that most closely matches the topic of the asset in PathFactory you're uploading the image to. Use the list of topics above to determine the best topic fit.

**Adding a thumbnail for an existing asset in the content library:**

1. Select your asset from the content library.
1. When the preview pane appears on the right, hover over the image and click the edit icon.
1. Under the thumbnail images tab, click to upload the thumbnail image you just downloaded. All images are already properly sized for PathFactory.

**Adding a thumbnail for newly uploaded content:**

1. [Follow the regular process](/handbook/marketing/marketing-operations/pathfactory/#how-to-upload-content) for uploading new content to the library.
1. Directly under `Public Configurations`, you'll find the thumbnail for the asset. Hover over the image and click the edit icon.
1. Under the thumbnail images tab, click to upload the thumbnail image you just downloaded. All images are already properly sized for PathFactory.