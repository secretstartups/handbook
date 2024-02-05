---

title: "Contentful CMS"
description: "Editing and creating content using Contentful"
---



# Contentful Guide

The Digital Experience team is currently migrating the [marketing site](https://about.gitlab.com/) to our new CMS tool, Contentful. This work is ongoing throughout FY24Q4 and into the new year, but we are starting to onboard different teams onto Contentful so that they may self-serve their own content changes. 

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
4. To publish the changes live to production, click the green Publish button. This will kick off a pipeline and your changes will be available on the site within about 10 minutes. 
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


### Scheduling

1. Look for the "Set Schedule" button in the dropdown next to the Publish button to schedule a release of content.
2. In the "Set Schedule" modal, confirm a date and time and click "Set Schedule".
3. On the right hand side of the entry you can view and manage all scheduled actions. This allows you to see what is scheduled to be published, and you can also cancel or modify scheduled actions if plans change.
4. When the entry is published our automation is triggered and a production build starts. We recommend leaving a 10-15 minute buffer before your desired release time for the production build to run.
   - **Example:** There is a need to release a blog post at 9:00am EST, by setting the scheduled date and time to 8:45am EST we can expect the changes to be live on production around 9:00am EST.

### Roles and Permissions

- *Administrator*: has full access to everything in the space.
- *CMS Administrator*: can create, read, update, publish, and delete all content aside from `Confidential` entries. Can modify space settings, access existing API keys, and can create and update API keys.
- *Confidential*: can create, edit, publish, archive and delete all content in a space, including `Confidential` content.
- *Creator*: can create and edit all content in a space (aside from `Confidential` content), but cannot publish it.
- *Publisher*: can create, edit, publish, archive and delete all content in a space (aside from `Confidential` content). This person should be able to administer their own team.
- *Reviewer*: can edit all content in a space (aside from `Confidential` content), but cannot publish it.


## Getting help with Contentful

### Contentful Office Hours

The Digital Experience team will be hosting weekly drop-in office hours for specific questions, walkthroughs, or feature requests. We can screenshare and work through issues together. The office hours are on the digital experience calendar, and are being added to the marketing team calendar.

Times: 
- Every Tuesday from 11:30am EST - 11:55am EST
- Every second Thursday from 4:00pm EST - 4:55pm EST

### Digital Experience Slack Channel

For urgent requests, reach out to our team in #digital-experience-team on slack. 



## Getting access to Contentful

Please fill out an access request [here.](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/)



## Specific Contentful Training Resources

#### Adding a resource to the Resources page

[Video Walkthrough](https://youtu.be/G8NZV75H7lw?si=mTvwMSLl112avu5M)

1. Go to the Resources page entry in Contentful
1. Click on the "Browse all resources" section of page content
1. Scroll waaaaay to the bottom and select + Add Content -> Card
1. From here, it might be helpful to open an existing card and make sure the same fields are filled out, but the gist is:
 - the Title goes in both `Internal Name` and `Title`
 - the Language goes in `Subtitle`
 - the Teaser goes in `Description`
 - the Topics go in `List` (hit enter after each topic)
 - the Solutions go in `Pills` (hit enter after each topic)
 - the Type of resource goes in `Icon Name`
 - the URL goes in `Card Link`
1. Publish that card, drag it to the top of the list if you want it to appear first, and publish that section too.

If you want to edit other parts of the page the process is similar, just follow the existing pattern of the other cards. The only section to watch out for is the Featured resource - the one you want to feature has to be first in that list, and has to have an image.


#### Adding a post to the Press and Press Releases page

[Video Walkthrough](https://youtu.be/zM1z0LnqVB0?si=sfEgEPK1Wu0Dii6P)

1. To create a custom page, filter by the content type Custom Page, and select Add Entry in the top right corner
   - Page name: The title of the page
   - SEO Component: Add title, description, and opengraph image (if available)
   - Slug: Add the url the page should live at (make sure to include leading and traling slash)
   - Header: The title of the page
   - Activate Side menu: optional to create a side nagigation
   - Date: Date of the release, or today's date
   - Subheader: Text that will appear above the title
   - Description: text that will appear below the title
   - Components: Add Text Block, and fill the Internal name/header, and text. Add one of these for each section of the content. 
   - Has Next Step: Select yes if you'd like the "Take GitLab For a Spin" CTA. 
2. Publish this page when it's ready *as well as all sub items*, and it will be live at the URL specifid. It will also appear on the `/press/releases/` page automatically as a card.
3. For the `/press/` page, you'll have to add that card manually. Navigate to the Press page in contentful, and click on the Press Releases content.
   - Add content -> Card
   - Fill in the Internal Name/Title fields with the title
   - Add a subtitle (the date)
   - Add the URL of the custom page you created early in the Card Link field. 
   - Feel free to add Data Ga Name (the link title) and Data Ga Location (body) for our tracking purposes. 
   - Under Primary Button, add a button. Fill in the title and Text to be Read More. 
4. Publish this item, including the button and any other sub items
5. Drag your card to the top of the stack (and maybe remove the bottom item since we're trying to keep that list around 5 items long) and publish the changes. 


#### Updating the Privacy page

[Video Walkthrough](https://youtu.be/kP0V87TEjFE?si=5V2h9NskewHZkCrH)


#### Adding a partner to the Alliance Partner/Technology Partner page

[Video Walkthrough](https://youtu.be/-6ntN8OAKx4?si=UNqU8M7Z4Mg9X3HS)

1. Navigate to the Technology Partners page entry
1. Go to the page content, and click on the category you'd like to add the partner to (e.e. Security)
1. Scroll to the bottom of the existing content on the page and select + Add Content -> Partner Application
1. From here, it might be helpful to open an existing card and make sure the same fields are filled out, but the gist is:
   - Name: Partner name
   - ID (optional): This is used to create anchor links on the page. It should default to the lowercase text of the partner name, but is editable if necessary
   - Content: The description of the card. To add embedded links, use a html anchor tag like so: `<a href="https://www.url.com">Link Text</a>`
   - Logo Image: If the logo already exists in the Media section, you can Add Existing Content, otherwise, Add new media and upload your image.
   - Featured Partner: Select yes if this should show at the top of the page under Featured Partner
   - Links: Add a Button content type, and fill out the Internal Name and Text as the text you'd like to appear, then the External Url should be the url. It's also helpful to add the Data Ga Name as the partner name, and the Data Ga Location as 'body' for our analytics purposes. 
1. Publish your buttons, publish your Partner Application Card, drag it so that it's in alphabetical order, and publish the whole section. 


#### Adding an event to the Events page

[Video Walkthrough](https://youtu.be/7aEvFjMRga8?si=itn0ph9GWeBJms_g)

New instructions coming soon!


#### Updating the Services page

[Video Walkthrough](https://youtu.be/ZTMKMKnu-iM?si=IYhmd6-AUJKpNiEv)


#### Creating an Event Landing page

Coming soon!

