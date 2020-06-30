---
layout: handbook-page-toc
title: "Job Families"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview Job Families

These are created to give an external parties a quick overview of the job family without overwhelming them with information. On the overview page we
mention the different roles and provide direct links to the job family itself. You can find an example of this [here](https://about.gitlab.com/job-families/people-ops/recruiting-operations/overview/).

Keep in mind that this in no way replaces the job family pages itself. They should stay the single source of truth. So you will link
from these overview pages to the job family pages.

## Format
For every overview page we created, the page has the URL `/job-families/department/title/overview/` and should be
created starting from the template. There's only a few additions you should do with the template.

## New Job Family Overview creation
1. Create the page in `/job-families/[department]/[name-of-job-family]/overview, being sure to use only lower case in naming your directory if it doesn't already exist, and add it to the correct department subdirectory.
1. The file type should be `index.html.haml`.
1. Copy the template and add it to your new file
1. Update all the places that need updates:
 - replace {Job Title} with the job titile
 - replace {Job Family introduction} with a paragraph giving more information about the job itself.
 - if there's a video for this job family, switch out the youtube `ID_FOR_VIDEO` with the relevant ID
 - if there's no video, remove the entire snippet that adds the video
 - for every role within the job family, you need a `card`.

## Template for New Job Family Overview
```html
---
layout: default
title: GitLab's Guide to the {Job Title} Job Family
extra_css:
  - job-family.css
---

.content-container.job-family
  .wrapper.container{ role: "main" }
    .row
      .col-md-12
        %h2.job-family-title.text-center {Job Title} at GitLab
        .job-family-blurb GitLab is building an open source, single application for the entire software development lifecycle—from project planning and source code management to CI/CD, monitoring, and security.

    .row
      .col-md-12
        .job-family-blurb
          :markdown
            {Job Family introduction}

    %hr.solid

    .row // this part is optional, you can add a video or remove if it isn't needed for this role
      .col-md-12
        %figure.video_container
          %iframe{:src => "https://www.youtube.com/embed/ID_FOR_VIDEO"}

    .row.job-family-card-group
      .card.job-family-card
        .card-body.job-family-card-body
          %h4.card-title.job-family-title {First role in this job - For example Junior Engineer}
          %p.card-text
            %ul.job-family-list
              %li
                %a{ href: LINK TO GET TO KNOW THE ROLE } Get to know the role
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE/#requirements" } Requirements
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE#performance-indicators" } Performance Indicators
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE#hiring-process" } Hiring Process
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE?comparatio=Compa+Ratio+range&level=name+of+level+for+this+role" } Compensation

      .card.job-family-card
        .card-body.job-family-card-body
          %h4.card-title.job-family-title {First role in this job - For example Senior Engineer}
          %p.card-text
            %ul.job-family-list
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE#senior-support-engineer" } Get to know the role
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE#requirements" } Requirements
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE#performance-indicators" } Performance Indicators
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE#hiring-process" } Hiring Process
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE?comparatio=Compa+Ratio+range&level=name+of+level+for+this+role" } Compensation

      .card.job-family-card
        .card-body.job-family-card-body
          %h4.card-title.job-family-title {First role in this job - For example Staff Engineer}
          %p.card-text
            %ul.job-family-list
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE#staff-support-engineer" } Get to know the role
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE#requirements" } Requirements
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE#performance-indicators" } Performance Indicators
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE#hiring-process" } Hiring Process
              %li
                %a{ href: "/job-families/DEPARTMENT/JOB-TITLE?comparatio=Compa+Ratio+range&level=name+of+level+for+this+role" } Compensation

```

