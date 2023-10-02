---
layout: default
title: 'Work-From-Home Field Guide from GitLab + Herman Miller'
description: This field guide serves as a blueprint to help your team work healthier from home.
suppress_header: true
disable_default_styles: true
disable_handbook_styles: true
twitter_image: '/images/work-from-home-field-guide/PDF-Cover-Image.jpeg'
extra_css:
  - report-pages.css
---
.container.container2020.header
  .col-md-7
    = image_tag "images/work-from-home-field-guide/HMGL_Logotype_Lockup_ver1_1.svg"
    %h1.slp-text-5xl Work-from-Home<br> Field Guide
    %h2.slp-text-xxl.slp-font-normal.slp-py-8 How to help your team work healthier from home
    %p Leaders and employers who want to create equitable and inclusive experiences for their diverse team need to support work wherever it happens. Today, that could be a home office, a coworking space, or even on the go. This shift toward remote work has been germinating for years, but the Covid-19 pandemic rapidly accelerated its widespread adoption. Now that remote work is here to stay, how can business leaders help their organizations navigate it?  
    %p This field guide is your blueprint. 
    = link_to "Get the guide", "/resources/downloads/Work-from-Home Field Guide.pdf", class: "btn cta-btn orange u-margin-top-xs"
    = link_to "Learn more about remote work →", "/company/culture/all-remote/", class: "cta-btn slp-text-sm", style: "color: #7D2BD9; font-weight: 600;"
  .col-md-5 
    = image_tag "/images/work-from-home-field-guide/PDF-Cover-Image.jpeg", class: "cover-image", style: "border: 1px solid rgba(0, 0, 0, 0.08); box-sizing: border-box; border-radius: 4px; padding-left: 0px; box-shadow: 0px 2px 50px rgba(0, 0, 0, 0.08);"

%main.key-takeaways
  %section.container.container2020
    .col-md-6
      %h3.slp-text-xxl Project background 
      %p.slp-text-lg
        GitLab is pleased to co-create this field guide with Herman Miller, combining GitLab’s 
        %a{:href => "/company/culture/all-remote/guide/", :style => "color: #9B51E0; text-decoration: underline;"} expertise on remote teams
        and best practices with Herman Miller’s deep understanding of workspaces and design.
    .col-md-6
      = image_tag "/images/work-from-home-field-guide/herman-miller-image.jpeg"

.container.container2020.header
  .col-md-12
    %h3{:style => "margin-bottom: 0; font-size: 32px;"} Key Takeaways
  .col-md-6.slp-pr-16
    %h4{:style => "margin-top: 32px; font-weight: 400; font-size: 23px;"} It starts with leadership 
    %p Whether your organization is hybrid or fully remote, it's up to company leaders to support all aspects of the employee experience. Just as you'd invest in your team's workspace in a co-located office, enabling them to create healthy, productive spaces outside the office is a core part of building your remote work infrastructure. 
  .col-md-6.column-right
    %h4{:style => "margin-top: 32px; font-weight: 400; font-size: 23px;"} Work is where the worker is
    %p We have many choices for where to work on a given day: your home office or kitchen counter, a coffee shop, a coworking space, even a car or plane. No matter where work gets done, it’s important to be intentional about how you use these spaces.
  .col-md-6.slp-pr-16
    %h4{:style => "font-weight: 400; font-size: 23px;"} Inclusive spaces help bolster belonging 
    %p Leaders who want to attract and retain a talented, diverse team will need to cultivate a work environment that is inclusive of needs and preferences. When done intentionally, a workplace strategy that embraces remote or hybrid work can be a differentiator for your team.
  .col-md-6.column-right
    %h4{:style => "font-weight: 400; font-size: 23px;"} One size does not fit all
    %p Each of your team members will have different equipment needs, space limitations, and location preferences for getting work done. The key is providing them the autonomy and agency to make these decisions for themselves, being open to feedback, and creating a culture of iteration. 

%main.end-ctas{style: "text-align: center;"}
  %section.container.container2020
    .col-md-12
      = image_tag "/images/pricing/particles-contact.svg"
      %h2{style: "font-weight: 400; font-size: 32px; margin-bottom: 36px;"} Improve remote work for you and your team
      %p
        = link_to "Get the Work-from-Home Field Guide ", "/resources/downloads/Work-from-Home Field Guide.pdf", class: "btn cta-btn orange u-margin-top-xs"
        = link_to "Learn more about remote work", "/company/culture/all-remote/", class: "btn cta-btn btn-light u-margin-top-xs"

%script{src: "/javascripts/image-lazy-load.js", type: "text/javascript"}
%script{type: "text/javascript"}
  :plain
    imageLazyLoad();
:css
  .cover-image{
    @media(min-width: 959px){
      margin-left: 30px;
    }
  }

  .column-right{
    @media(min-width: 959px){
      padding-left: 16px; 
    }

  }
