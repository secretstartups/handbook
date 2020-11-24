---
layout: handbook-page-toc
title: Support Uploader - Handling large files from Customers
description: "Support team workflow for using the Support Uploader, for recieving large file archives from customers"
category: Handling tickets
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Support Uploader

The [project](https://gitlab.com/gitlab-com/support/support-uploader) is accessible to all Support team members at [https://uploader.gitlab.support](https://uploader.gitlab.support) (note, this currently requires both GitLab Pages and Okta authentication, both should happen automatically if you are signed in).

## General notes and limitations

* The expiration time for the upload request bundle is 48 hours (after 48 hours from the time the bundle was generated, file uploads won't work using them)
* The limit per file is 3 GB

These are the current defaults but may change in the future.

## Generating upload request bundle

Input the ticket ID at [https://uploader.gitlab.support](https://uploader.gitlab.support) and click "Generate files"

![suploader_generate](/images/support/suploader_generate.png)

This will download an archive with the format "gs_uploader_<ticket_id>.zip" containing a bundle of upload "request" files, a bash file and an HTML file. Customers can use either one to upload their files to the Support Uploader storage area.

## Sending the bundle to the customer

You can attach the archive generated to the ticket in a public reply, and use the `General::Support uploader` macro, which will include instructions for the customer on how to use the bundled files.

## After customer uploads the file

There will be an automated private note by the "Support Uploader Bot" in the ticket for every file that the customer uploads with a link to the file in the AWS Support Uploader account.

![supload_internalcomment](/images/support/suploader_internalcomment.png)

## Accessing the uploaded files

The files are currently stores in an S3 bucket which all Support team members should have access to, you can use the link generated above to access it, which will be listed in the internal comment on the ticket.

![suploader_awsS3](/images/support/suploader_awsS3.png)

## FAQ

### Q: Why can't I see the Support Uploader bucket in the AWS S3 console? (I get an "Error: Access Denied")

A: This is expected behaviour. The normal way to access customer uploads will be via Zendesk ticket internal comments which will list the file upload link. (The IAM group for Support Engineers does not include the list buckets IAM permission which means you won't see the bucket from the root level of the S3 console). 

