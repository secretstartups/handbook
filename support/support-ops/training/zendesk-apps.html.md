---
layout: handbook-page-toc
title: 'Zendesk Apps'
category: Zendesk
description: 'Training documentation concerning Zendesk Apps'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what a Zendesk Apps is
* How to create a Zendesk App
* How to update a Zendesk App
* How to deactivate a Zendesk app
* Zendesk App positioning
* GitLab Support Ops change management process for Zendesk Apps

## What is a Zendesk App

A Zendesk App is an application (written in HTML/CSS/JS) that runs in a location
of Zendesk. What it does and how it does it varies greatly from application to
application. Applications can be run in a great many places, but the traditional
locations are:

Applications can be run in a great many places, but the traditional locations
are:

* [Ticket sidebar](https://developer.zendesk.com/apps/docs/support-api/ticket_sidebar)
* [User sidebar](https://developer.zendesk.com/apps/docs/support-api/user_sidebar)
* [Organization sidebar](https://developer.zendesk.com/apps/docs/support-api/organization_sidebar)
* [Navbar](https://developer.zendesk.com/apps/docs/support-api/nav_bar)
* [Background](https://developer.zendesk.com/apps/docs/support-api/background)

You can see more resources on application locations via the
[Zendesk Developer Manifest Reference](https://developer.zendesk.com/apps/docs/developer-guide/manifest#location)
documentation.

Zendesk applications tend to come from one of two areas:

* [Zendesk Marketplace](https://www.zendesk.com/apps/)
* Developed in-house

## Understanding Zendesk Apps

Before you can start creating and editing apps in Zendesk, it is important to
understand the ins and outs of both Zendesk Apps and
[Zendesk Apps framework](https://developer.zendesk.com/documentation/apps/app-developer-guide/using-the-apps-framework/).

There is a lot to this, so the Zendesk documentation is the best resource you
have to learn the various ins and outs. This training documentation will cover
what is viewed at "the most important" parts, but it is highly recommended you
read and reference the
[Zendesk developer documentation](https://developer.zendesk.com/documentation/apps/app-developer-guide/getting_started/)
as often as possible.

### ZAT

ZAT, or Zendesk App Tools, is a ruby gem that makes working with Zendesk Apps
locally considerably easier. It is highly recommended you install it on your
computer:

```bash
gem install rake
gem install zendesk_app_tools
```

To update it:

```bash
gem update zendesk_app_tools
```

Much of this tutorial will assume you have this installed and utilize it in any
steps/procedures.

### manifest.json

This file is used to configure you application. As such, it is very important
and vital it is accurate.

The common configuration settings are:

| Setting          | What it does | Required? |
|------------------|--------------|:---------:|
| name             | Specifies the name of the app | Y |
| author           | Specifies the author of the app | Y |
| version          | Specifies the app version | Y |
| frameworkVersion | Specifies the framework version to use | Y |
| location         | Specifies where the app appears | Y |
| defaultLocale    | Specifies the locale of the app | Y |
| parameters       | The parameters to pass to the app during installation | N |
| domainWhitelist  | The domains to allow use of secure parameters | N |
| private          | Specifies whether the app can be only be installed in the app developer's account or not | N |

#### Location

This setting determines where the app will appear and run. This is a very
important setting. The first setting determines the product type location, and
within that setting you can specify many other configurations, including the
physical location the app will appear in. For the product type location, we
always use `support`.

The physical locations are as follows:

| String                 | Location/Purpose |
|------------------------|------------------|
| `ticket_sidebar`       | The right side of all ticket view pages |
| `new_ticket_sidebar`   | The right side of all new ticket pages |
| `ticket_editor`        | A button on the ticket editor box |
| `nav_bar`              | An icon on the left-side navigation bar |
| `top_bar`              | An icon on the right side of the top menu |
| `user_sidebar`         | The right side of all user view pages |
| `organization_sidebar` | The right side of all organization view pages |
| `background`           | The app runs in the background and does not display anywhere |
| `modal`                | Used when the app creates modals |

Within the physical location settings, you can include more configuration
settings, with the most common being:

| String     | What it does | Variable type |
|------------|--------------|---------------|
| `autoHide` | Tells the app to auto-collapse on first load | Boolean |
| `autoLoad` | Tells the app to automaticall local (defaults to true) | Boolean |
| `signed`   | Specifies whether or not to use signed URLs | Boolean |
| `url`      | The URL of the page to display in the iframe of the app | String |
| `size`     | The initial app size (configure this in the app instead) | JSON |

As an example, to have an app load "https://google.com" automatically in the
ticket sidebar with a starting height of 200px, your configuration block would
look like this:

```json
"location": {
  "support": {
    "ticket_sidebar": {
      "autoLoad": true,
      "url": "https://google.com/",
      "size": {
        "height": "200px"
      }
    }
  }
}
```

As another example, to have your app load in both the user and organization
pages, rendering the locale `assets/iframe.html` file, you would do this:

```json
"location": {
  "support": {
    "user_sidebar": "assets/iframe.html",
    "organization_sidebar": "assets/iframe.html",
  }
}
```

#### Parameters

This is where you would define variables you want the app to use during
installation.

#### Domain whitelists

If your app is using secure parameters and you plan to make requests outside of
Zendesk, you must whitelist the domains in question. Each parameter is a hash
that contains the following:

* `name`: the name of the parameter
* `type`: the type of parameter
* `secure`: ensures users cannot see the variable value when making HTTP
   requests (you should _always_ use this)
* `require`: specifies if the parameter is required for installation

As an example, to use two required parameters (`param1` and `param2`), both of which are text parameters in a secure way, you would do the following:

```json
"parameters": [
  {
    "name": "param1",
    "type": "text",
    "secure": true,
    "required": true
  },
  {
    "name": "param2",
    "type": "text",
    "secure": true,
    "required": true
  }
]
```

During the installation of the app, Zendesk will ask you to give the values for
these parameters. To utilize this in the code of your app, you will use this:

```
{{setting.NAME_OF_PARAMETER}}
```

Where `NAME_OF_PARAMETER` is the name you gave the parameter in the
manifest.json file.

### init

To create a client instance of the ZAF (Zendesk App Framework) client, you need
to ensure the following is present in the javascript of your app:

```javascript
var client = ZAFClient.init();
```

### App resizing

To resize the app during runtime, you would use the `invoke` class, specifying
you wish to invoke the `resize` function. This is done like so:

```javascript
// First line shown to clarify you use the ZAF client object to do this
var zafclient = ZAFClient.init();
zafclient.invoke('resize', { width: '100%', height: '100px' });
```

### Requires javascript

To utilize the ZAT, you must include the following javascript in your app's
HTML file(s):

```
<script src="https://static.zdassets.com/zendesk_app_framework_sdk/2.0/zaf_sdk.min.js"></script>
```

### Get ticket metadata

To get ticket metadata and use it in your app, you need to use the ZAF client's
`get` function. This takes an array of values to get from the ticket metadata,
which you use in a function.

As an example, to get the ticket requester's name and the ticket's organization,
and then log them to the console, you would do the following:

```javascript
// First line shown to clarify you use the ZAF client object to do this
var zafclient = ZAFClient.init();
zafclient.get(['ticket.requester.name', 'ticket.organization']).then(function(data) {
  console.log("Ticket requester name: " + data['ticket.requester.name']);
  console.log("Ticket organization: " + data['ticket.organization']);
});
```

As another example, to get the ticket's due date and the due date notes (a
custom ticket field) and then log them to the console, you would do the
following:

```javascript
// First line shown to clarify you use the ZAF client object to do this
var zafclient = ZAFClient.init();
zafclient.get(['ticket.customField:due_date', 'ticket.customField:custom_field_360017383799']).then(function(data) {
  console.log("Due date": + data['ticket.customField:due_date']);
  console.log("Due date notes:" + data['ticket.customField:custom_field_360017383799']);
});
```

### Making requests

Your app might need to make requests, whether they be "internal" (i.e. within
Zendesk itself) or external. To do this, we use the `request` function of the
client object.

The format of this is _very_ close to that of making
[AJAX requests](https://api.jquery.com/jquery.ajax/) in jQuery. The format you
will normally use is:

```javascript
// First line shown to clarify you use the ZAF client object to do this
var zafclient = ZAFClient.init();
zafclient.request({
  method: 'REQUEST_TYPE',
  url: 'URL_TO_USE',
  contentType: 'CONTENT_MEDIA_TO_SEND',
  data: DATA_OBJECT,
  secure: BOOLEAN,
  headers: HEADERS_OBJECT
}).then(function(data) {
  // do stuff
});
```

The exact parameters in the request will vary from request to request.

As an example, if you wanted to update the due date of a ticket, you might do:

```javascript
// First line shown to clarify you use the ZAF client object to do this
var zafclient = ZAFClient.init();
zafclient.request({
  method: 'PUT',
  url: '/api/v2/tickets/123456.json',
  contentType: 'application/json',
  data: JSON.stringify({
    due_at: new Date('2021-01-01').toISOString()
  }),
  secure: BOOLEAN,
  headers: HEADERS_OBJECT
}).then(function(data) {
  console.log('Due date updated to 2021-01-01');
});
```

As another example, if you wanted to make a GET request to gitlab.com to find
information about user ID 987654, using a secure parameter from app
installation, you might do:

```javascript
// First line shown to clarify you use the ZAF client object to do this
var zafclient = ZAFClient.init();
zafclient.request({
  method: "GET",
  url: 'https://gitlab.com/api/v4/users/987654?private_token={{setting.GitLab_token}}',
  secure: true
}).then(function(data) {
  console.log('User email: ' + data.email);
});
```

## How to create a Zendesk App

**Note**: As of 2021-09-21, Zendesk has changed the location of the Apps
management pages. They are now located in the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the Apps management pages
under `Apps and integrations` > `Apps` > `Zendesk Support apps`. Once you
access the management pages, the steps to create/edit/etc. are the same.

To create a Zendesk app, you will first make a new folder on your local computer
(where you will build the app) and cd into the new directory:

```bash
jcolyer@jcolyer-Desktop:~$ mkdir my_new_app
jcolyer@jcolyer-Desktop:~$ cd my_new_app
```

From there, run the command `zat new` and fill out the requested details (author
name, author email, app URL, app name, iFrame URI, directory). After doing so,
you will have the baseline files you need to create your application.

```
jcolyer@jcolyer-Desktop:~/my_new_app$ zat new
Enter this app author's name:
 test
Enter this app author's email:
 test@test.com
Enter this app author's url:
 https://gitlab.com/test/my_new_app
Enter a name for this new app:
 Test App
Enter your iFrame URI or leave it blank to use a default local template page:
 (assets/iframe.html)
Enter a directory name to save the new app (will create the dir if it does not exist):
 (./)
       exist  
      create  README.md
      create  assets/iframe.html
      create  assets/logo-small.png
      create  assets/logo.png
      create  assets/logo.svg
      create  manifest.json
      create  translations/en.json
```

From here, you will edit the files for your app. By default,
`assets/iframe.html` will be the main file you will work out of (although you
can have the javascript load from a separate file and work from there if you so
desire).

Once you are done creating your application, you will need to package it. To do
this, run the command `zat package`:

```
jcolyer@jcolyer-Desktop:~/my_new_app$ zat package
        info  Checking for new version of zendesk_apps_tools
     warning  Your version of Zendesk Apps Tools is outdated. Update by running: gem update zendesk_apps_tools
    validate  OK
     warning  Please note that the name key of manifest.json is currently only used in development.
     package  adding translations/en.json
     package  adding manifest.json
     package  adding README.md
     package  adding assets/logo.png
     package  adding assets/iframe.html
     package  adding assets/logo-small.png
     package  adding assets/logo.svg
     package  created at ./tmp/app-20210920131122.zip
```

The created zip file it what contains your Zendesk App. Go to the Admin Center,
which you can locate by clicking the four squares in the top-right of the page
and clicking the Admin Center link. After doing so, you can locate the Apps
management pages under `Apps and integrations` > `Apps` >
`Zendesk Support apps`. On this page, click the white `Upload private app`
button in the top-right of the page.

On this page, enter the App's name and select the zip file from your local
computer. After doing so, click the black `Upload` button. A pop-up will appear
asking you to confirm the upload. Click the black `Upload` button once more to
confirm.

After it installs the app, you will be brought to the app management page for
your new app. If you used any parameters, you would add them here. You also have
the option to set role or group restrictions if needed. Once you are done, click
the blue `Install` button.

## How to update a Zendesk App

**Note**: As of 2021-09-21, Zendesk has changed the location of the Apps
management pages. They are now located in the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the Apps management pages
under `Apps and integrations` > `Apps` > `Zendesk Support apps`. Once you
access the management pages, the steps to create/edit/etc. are the same.

To update an app, you edit the code and the version (found in the manifest.json
file) and package it up using `zat package`.

After doing so, go to the Admin Center, which you can locate by clicking the
four squares in the top-right of the page and clicking the Admin Center link.
After doing so, you can locate the Apps management pages under
`Apps and integrations` > `Apps` > `Zendesk Support apps`. On this page, locate
the app you are updating, hover over it, and click the down arrow that appears
(next to a gear icon). Click the `Update` option to proceed.

From here, it is basically the same as creating a new app. You select the file
from your local computer, click the black `Upload` link, and the app updates.

## How to deactivate a Zendesk App

**Note**: As of 2021-09-21, Zendesk has changed the location of the Apps
management pages. They are now located in the Admin Center, which you can
locate by clicking the four squares in the top-right of the page and clicking
the Admin Center link. After doing so, you can locate the Apps management pages
under `Apps and integrations` > `Apps` > `Zendesk Support apps`. Once you
access the management pages, the steps to create/edit/etc. are the same.

To deactivate an app, go to the Admin Center, which you can locate by clicking
the four squares in the top-right of the page and clicking the Admin Center
link. After doing so, you can locate the Apps management pages under
`Apps and integrations` > `Apps` > `Zendesk Support apps`. On this page, locate
the app you are updating, hover over it, and click the down arrow that appears
(next to a gear icon). Click the `Uninstall` option to proceed. A pop-up will
ask you to confirm the uninstall process. Click the blue `Uninstall` button to
confirm.

## Testing

### Testing locally

**Note**: This cannot be done if your app is using secure parameters. Instead,
you would need to install the app into the Sandbox and test from there.

To test your app locally, cd into the app directory on your local computer and
then run the `zat server` command. This will start up a ZAT server on your
computer. Once it has booted up, go to a Zendesk URL and put `?zat=true` at the
end. This will now load the apps from your local computer, allowing you to test
out the app locally.

### Testing via Zendesk

If your app is using secure parameters, you will need to test via the Sandbox
instead. Follow the process for [creating an app](#how-to-create-a-zendesk-app)
or for [updating an app](#how-to-update-a-zendesk-app) (whichever fits best) to
get the app into the Sandbox and then you can test from there.

## Change management

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/MSkyalDswso" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Note**: While the above video is for Zendesk Automations, the exact same
process applies for Zendesk Triggers. The sole difference in the tags used on
the requests and merge requests.

When it comes to making changes to Zendeks triggers, we utilize the
zendesk-triggers repos instead of doing this via the Zendesk UI. This allows us
to easily revert a change and ensure what is running in our production
instances is what we have approved. To ensure each runs smoothly, we do our
changes in set stages.

### Request stage

All Zendesk trigger changes should start with a request issue. This issue
should stem from a
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue where the proposal was discussed.

The request should not be "make this change in Zendesk," unless the request is
coming directly from a Support Ops team member. If the request does not detail
_what_ the desired effect is, we as Support Ops should instead push back on the
request and ask the requester detail _what they want to see as a result_ and not
_what they want done in Zendesk_.

All request issues should contain the following labels at creation:

* "Support-Ops-Category::Apps"
* A priority label, which is one of:
  * "Support-Ops-Priority::Urgent"
  * "Support-Ops-Priority::High"
  * "Support-Ops-Priority::Normal"
  * "Support-Ops-Priority::Low"
* "Zendesk::Global" if this is about the Zendesk Global instance
* "Zendesk::US-Federal" if this is about the Zendesk US Federal instance
* "SupportOps::To Do"

While we have scripting and templating in place to find when these are missing,
you should strive to ensure those are present. If you find any of them missing,
please add them.

Once the request is in good standing, you may assign it to yourself (if it is
not already) and add the tag "SupportOps::Doing" to indicate you have started
working on this.

### Testing stage

When making a change to Zendesk triggers (whether it be creation, editing, or
deactivation), we start the process in the Zendesk sandbox. In the Zendesk
sandbox for the corresponding Zendesk instance this impacts, you will make the
desired changes. Once this is done, update the original request issue with the
following:

* A link to the trigger(s) in the Zendesk sandbox
* However much time it took you to implement the changes in the sandbox
  * This can be down using the `/spend X minutes`, where `X` is the number of
    minutes you spent.
* What testing needs to be done.

You will then test these changes. This process should take no less than 3 days
after making the changes. This is to ensure that not only is the change tested
thoroughly, but others have time to review your tests and the results.

As automations often involve time-based events, you might want to lessen the
time event so you can test in a quicker fashion.

Often, you will need assistance testing out changes. Should this be required,
consider reaching out to the following for assistance in testing the changes:

* The original requester
* A fellow Support Ops team member
* A Support Ops Manager

If testing provides failed results, this means we need to update the original
request issue with what happened and why. If this is because of a flaw in the
request, we should state as much and recommend the requester go back to the
original
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue to re-discuss. If it failed due to our implementation, we should detail
what was wrong with the implementation and propose a new method to try.

Once the changes have been thoroughly tested (and are successful), make sure to
add the time you spent doing the testing to the original request.

At that juncture, update the issue with a comment to state testing has completed
and was successful. You should give the requester an opportunity to review the
test(s) and result(s). Ask if they would like to review them. If they decline,
you may move on. If they wish to do so, await their update after they have
reviewed the results.

### Repo stage

To prepare for the implementation, you will need to create a merge request to
the corresponding zendesk-triggers repo (see [Useful links](#useful-links)
down below).

For an existing trigger, this is a simpler approach, since the automation
already has an ID in Zendesk. Make the edits to the file in the repo and submit
the merge request in _draft mode_.

For _new_ triggers, this gets a bit trickier, as there is not an ID in
Zendesk as of yet. To help with this, clone an existing trigger and then
deactivate the cloned copy. You can then use this new triggers's ID value in
the merge request.

After creating the merge request, make sure it is linked in the original
request and you have added any additional time spent to the requester issue.

From here, have one of your fellow Support Ops team members or a Support Ops
Manager review the merge request and add their approval (or comments). Once
approval has been added, an implementation date can be determined.

**Note**: All merge requests in the zendesk-triggers repo should contain the
following labels (the same as with issues):

* "Support-Ops-Category::Apps"
* A priority label, which is one of:
  * "Support-Ops-Priority::Urgent"
  * "Support-Ops-Priority::High"
  * "Support-Ops-Priority::Normal"
  * "Support-Ops-Priority::Low"
* "Zendesk::Global" if this is about the Zendesk Global instance
* "Zendesk::US-Federal" if this is about the Zendesk US Federal instance
* "SupportOps::To Do"

### Pre-implementation announcement stage

Once an implementation date has been determined, you need to announce this
upcoming change. To do this, go to the Slack channel
`#support_ops-accouncements` and click the lightning bolt on the text box (this
is the shortcuts icon). From there, select `Support Ops Announcement`. This
will cause a form to pop-up. Fill out the form to generate a message in the
`#support_ops-accouncements` channel.

The form asks for the following:

* **Who** is this impacting
* **What** is changing
* **When** is it changing
* **Why** is it changing
* Other info (optional)
* **Request link**

Once it posts, you will need to screenshot the post message and add that to the
`Support Operations Corner` of the
[Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
document

After adding it in the Support Week in Review, you then want to cross-link
(copy the link to the post) the announcement to the following channels:

| Channel | When to cross-link |
|---------|--------------------|
| `#support_operations` | Every time |
| `#support_team-chat` | If this impacts Support only or Everyone |
| `#spt_managers` | If this impacts Support only or Everyone |
| `#whats-happening-at-gitlab` | If the change is concerning SLA OR provisioning/deprovisioning |

### Implementation stage

This stage should be the simplest one to implement, as you already have a merge
request ready to go! Simply mark the merge request as ready and merge it. Once
merged, follow the details within
[How to update a Zendesk App](#how-to-update-a-zendesk-app) to get the changes
into production.

If you encounter any issues here, reach out to your fellow Support Ops team
members for assistance.

### Post-implementation announcement stage

Once an implementation has been completed, you need to announce the change. To
do this, go to the Slack channel `#support_ops-accouncements` and click the
lightning bolt on the text box (this is the shortcuts icon). From there, select
`Support Ops Announcement`. This will cause a form to pop-up. Fill out the form
to generate a message in the `#support_ops-accouncements` channel.

The form asks for the following:

* **Who** is this impacting
* **What** is changing
* **When** is it changing
* **Why** is it changing
* Other info (optional)
* **Request link**

Once it posts, you will need to screenshot the post message and add that to the
`Support Operations Corner` of the
[Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
document

After adding it in the Support Week in Review, you then want to cross-link
(copy the link to the post) the announcement to the following channels:

| Channel | When to cross-link |
|---------|--------------------|
| `#support_operations` | Every time |
| `#support_team-chat` | If this impacts Support only or Everyone |
| `#spt_managers` | If this impacts Support only or Everyone |
| `#whats-happening-at-gitlab` | If the change is concerning SLA OR provisioning/deprovisioning |

## Useful links

* [Zendesk Marketplace](https://www.zendesk.com/apps/)
* [Zendesk Apps framework](https://developer.zendesk.com/documentation/apps/app-developer-guide/using-the-apps-framework/)
* [Zendesk App manifest file](https://developer.zendesk.com/documentation/apps/app-developer-guide/manifest/)
