---
layout: handbook-page-toc
title: "Contentful CMS"
description: "Editing and creating content using Contentful"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Contentful Guide

The Digital Experience team is currently migrating the [marketing website](https://about.gitlab.com/) to our new CMS tool, Contentful. This work is ongoing throughout FY24Q4 and into the new year, but we are starting to onboard different teams onto Contentful so that they may self-serve their own content changes. 

### What is Contentful?

Contentful is a Content Management System. It replaces all of the text files in our marketing site (such as events.yml) and replaces them with different Content Entries. Contentful also has a Media Library, where we are moving our images. 

### Contentful terminology

- Content: A Catch-all term for text or images on the marketing site
- Content Type: A type of content. These include Cards, Heros, Buttons, etc and can all be viewed in Contentful under the Content Model tab. We have different classes of Content Types (Atoms, Molecules, Organisms)
  - Atoms: Base-level components that don't contain other Content Types within them. Example: Buttons, Text
  - Molecules: Typically contain a combination of Atoms. Example: Hero, Card Group
  - Organisms: Commonly contain many Molecules or Atoms and are considered more complex. Example: Page
- Entry: An Entry is considered one piece of content in a content type. For example, there are many Cards across the marketing site, but the Free card on the pricing page is one example of a Card Entry.
- Field: Even the most basic Content Type typically has multiple fields. For example, a Button may seem small, but some fields it contains include the url it points to, the text on the button, perhaps an icon, maybe some tracking data. Each of these are considered Fields of the Button Content Type. 

### Editing existing content in Contentful

When opening Contentful for the first time, you'll find all of our marketing site content under the Content tab. 

1. If you haven't already, select the Content tab at the top of the page.
2. From here, you can either search for a string of text, or filter down by different Content Types. 
   1. To search for a string of text, enter your search term into the search bar at the top of the page, and make sure that you set `Content Type: Any` . This will globally search all Entries across our marketing site.
   2. If you know that your content lives inside of a Hero, you can select the `Content Type: Hero` and enter your search term from there. 
   3. If you know that your content is on a particular page, such as the /resources/ page, you can filter by Content Type: Page, and sort the results alphabetically until you find the Resources page.
3. Once you have found the content in question, click on the Entry so that a sidebar appears with all of the fields in that Entry. From here, you'll see all of the fields on that particular piece of content, and can edit the field in question. 
4. To publish the changes live to production, click the green Publish button. This will kick off a pipeline and your changes will be available on the website within about 10 minutes. 
5. *Coming Soon*: We are making improvements to the live preview process, as well as hooking up review apps to our workflow. At this time, although there is no way to preview content before publishing, we are working on many improvements

### Creating new content in Contentful

The process for creating new content in Contentful is varied. 

1. For creating a new entry of an _existing_ type of content, such as a new Case Study page or Blog Post, you can simply duplicate an existing content type and fill in your new content. This also holds true for something like adding a new card to a group of cards. Example for adding a new Case Study
   1. Select the Content tab 
   2. Filter by Content Type: Case Study. You should see a list of existing customer case studies.
   3. At the top right corner, click Add Entry -> Case Study
   4. Fill in the fields following the same schema as an existing Case Study (you can keep two separate tabs open and refer back to an existing entry as needed).
2. For creating a _brand new_ section of content that doesn't exist on the marketing site, you may need Digital Experience assistance, but you can start by creating the Entry. 
   1. Find the Page you'd like to add content to by using the Content Type: Page filter, then click on the page in question.
   2. At the bottom of the page editor, Add Content -> Select the content type you're looking for, and fill in the fields accordingly
   3. Create an [issue](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/new#) with the Digital Experience team to make sure that the code on that page can handle your new Entry.
3. For creating a new section of content when the content _already exists elsewhere_ (such as the wall of Gartner badges on our homepage), you can do the following steps to insert that existing entry into the page of your choosing:
   1. Navigate to the page you'd like to add content to
   2. At the bottom of the Editor, click Add Content -> Add Existing Content
   3. Use the search bar to search for a string of text, or the content type you'd like to add. 
   4. Reach out to the Digital Experience team with a link to the page you've added content to - some pages were built to only handle certain types of content, and we may need to update the code of that page to look for your new addition. 
   5. With thumbs up from the Digital Experience team, click the Publish button.
   6. Note that if you grabbed an existing piece of content and added it to another page, anytime that content is updated the updates will be reflected on both pages. 
4. To create a _net new page_, please fill out an [issue with the Digital Experience team](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/new#). We will likely need resources from the content team, design team, and engineering team to set up a new page. 

### Video Walkthrough of Contentful
<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/6pdXijDzYkg?si=8JbdUBmzPHcWgzTk" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

## Getting access to Contentful

Please fill out an access request [here.](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/)



