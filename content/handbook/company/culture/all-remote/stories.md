---
layout: default
title: Remote Working Experiences
description: "GitLab is an all-remote company. Read about how working remotely has changed our lives."
suppress_header: true
extra_css:
  - team.css
extra_js:
  - team.js
image_title: /images/team.jpg
twitter_image: "/images/opengraph/all-remote.jpg"
---
-# THE CONTENT FOR THIS PAGE IS IN https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/team.yml
.hidden-xs
  -# %iframe{frameborder: "0", height: "500", scrolling: "no", src: "https://gitlab-com.gitlab.io/teampage-map/", width: "100%"}
.wrapper
  .team-container
    .team-head
      %h1
        HEAR OUR
        %b STORIES
      %p
        GitLab is an #{link_to('all-remote', 'https://about.gitlab.com/company/culture/all-remote/')} organization, which means that
        we have the freedom to work from anywhere and manage our own schedules and way of working.

        This freedom to work in our own ways has changed many of our lives - read here to find out more.

    .row.team-row
      - Gitlab::Homepage.team.members.sort.each do |member|
        = partial "includes/team/member", locals: { member: member,
                                                    is_pet: false,
                                                    is_remotestory: true,
                                                    anchor: member.anchor }
