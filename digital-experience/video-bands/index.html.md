---
layout: handbook-page-toc
title: "Video bands"
description: "Documentation for Video bands seen on the GitLab homepage. A video band is a slider with videos on a subject. "
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Video bands
{:.no_toc}

---

This will serve as documentation for [Video bands](https://gitlab.com/groups/gitlab-com/marketing/growth-marketing/brand-and-digital/-/epics/6).

## What is a video band?

A video band is a slider with videos on a subject. An example of this can currently be seen on the homepage of about.gitlab.com.

![Screenshot of a video band](/images/handbook/growth-marketing/screenshot-video-band.png)

## Editing an existing video band

You don't have to create a new carousel identifier, it's alright to edit a preexisting carousel. You can add more items to a group or replace/remove existing items in the list.

## Code implementation

### Defining video groups

Each set of videos that you want to display is a group defined in the [data video_carousel yml file](https://bit.ly/36iNPbe).

#### URL format

When someone provides you with a URL for a youtube video, it needs to be in the following format.

* `https://www.youtube.com/embed/numbersandletters`

URL formats that **will not work**:

* `https://www.youtube.com/watch?v=numbersandletters`
* `https://youtu.be/numbersandletters`
* `Playlists`

Note that you can usually change the prefix while keeping the suffix numbersandletters value.

#### Carousel identifier

The carousel identifier is what you want the name of the carousel to be. Please pick something specific but easy to understand with context such as `Events Carousel 1`.

#### Image previews

Each video needs a related preview image. There are a couple of options to use depending on the situation. Usually we use the thumbnail that already exists in YouTube's system. If that thumbnail isn't very good or representative then we might create one manually.

To grab the existing image from youtube videos you can use the browser developer tools inspector. You should see something like this from youtube with an image URL:

```html
<div class="ytp-cued-thumbnail-overlay-image" style="background-image: url(&quot;https://i.ytimg.com/vi/1GPsepFmNes/maxresdefault.jpg&quot;);"></div>

```

### Include file

An example implementation of the video bands can currently be seen in the [homepage code](https://bit.ly/3jeRP0n). Note that you'll want to switch out the `include?("Homepage Carousel 1")` with the carousel identifier that you defined above. You might also want to update the H2 tag `Featured videos` title, depending on the situation.

```haml
.container.u-margin-top-40
  %h2.u-margin-bottom-sm.text-center
    Featured videos
  .video-slider
    - data.video_carousel.each do |video|
      -if video.carousel_identifier.include?("Homepage Carousel 1")
        = partial "includes/components/video-carousel/video-item", locals: {name: video.name, title: video.title, company: video.company, photourl: video.photourl, videolink: video.video_link}

- data.video_carousel.each do |video|
  -if video.carousel_identifier.include?("Homepage Carousel 1")
    = partial "includes/components/video-carousel/video-carousel-modal", locals: {videolink: video.video_link, title: video.title}
```

### Frontmatter code

In the frontmatter, add the following items:

```
extra_css:
  - bl-modal.css
  - video-carousel.css
extra_js:
  - libs/slick.min.js
  - video-carousel.js
```

## Previewing your work

Because of a combination of factors, in order to preview the video bands you'll need to **TEMPORARILY** add the following to the page frontmatter. **Do not merge the page into master until you remove manual_cookiebot from your project** after it has been verified and reviewed.

```
---
(normal frontmatter stuff)
manual_cookiebot: true
---
```
