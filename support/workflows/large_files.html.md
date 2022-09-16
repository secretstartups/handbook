---
layout: handbook-page-toc
title: Support Uploader - Handling large files from Customers
description: "Support team workflow for using the Support Uploader to receive large file archives from customers"
category: Handling tickets
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Global Support Uploader

The [project](https://gitlab.com/gitlab-com/support/support-uploader) is accessible to all Support team members at [https://uploader.gitlab.support](https://uploader.gitlab.support) (NOTE: currently, this requires both GitLab Pages and Okta authentication, both should happen automatically if you are signed in).

**NOTE:** Support Uploader exists as a [Zendesk App](https://about.gitlab.com/handbook/support/support-ops/documentation/zendesk_global_apps.html#support-uploader) for use while working on tickets. For details, check the [zendesk-app](https://gitlab.com/gitlab-com/support/support-uploader/-/tree/master/zendesk-app) folder in the `support-uploader` project.

## General notes and limitations

* The expiration time for the upload request bundle is 48 hours (after 48 hours from the time the bundle was generated, file uploads won't work using them)
* The limit per file is 3 GB
* The Support Uploader is not compatible with the US Federal Support Portal

These are the current defaults but may change in the future.

## Generating upload request bundle

Input the ticket ID at [https://uploader.gitlab.support](https://uploader.gitlab.support) and click "Generate files"

![suploader_generate](/images/support/suploader_generate.png)

This will download an archive with the format "gs_uploader_<ticket_id>.zip" containing a bundle of upload "request" files, a bash file and an HTML file. Customers can use either one to upload their files to the Support Uploader storage area.

## Sending the bundle to the customer

You can attach the archive generated to the ticket in a public reply, and use the [`General::Support uploader`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360047729239) macro, which will include instructions for the customer on how to use the bundled files.

## After customer uploads the file

There will be an automated private note by the "Support Uploader Bot" in the ticket for every file that the customer uploads with a link to the file in the AWS Support Uploader account.

![supload_internalcomment](/images/support/suploader_internalcomment.png)

## Accessing the uploaded files

You can use the Zendesk app for the Support Uploader to list and then download the files.

Here's how it looks when you open the ticket:

![support_engineer_view_list_files](/images/support/support-uploader-list-files.png)

After clicking the link, it will populate the list with the existing files in S3 for this ticket:

![support_engineer_view](/images/support/support-uploader-download-artifact.png)

You can click on any of the files and it will download it.
