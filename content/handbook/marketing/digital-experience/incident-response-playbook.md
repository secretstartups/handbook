---

title: "Digital Experience CMS Troubleshooting Playbook"
description: "A guide for troubleshooting incidents that may occur on the marketing website"
---



# CMS Troubleshooting Playbook

To be used as a guide for troubleshooting incidents with content hosted on the marketing site ([about.gitlab.com](https://about.gitlab.com/)), which pulls its data from [Contentful](https://app.contentful.com/). 


### Overview

1. The marketing site is composed of multiple repositories: the [blog](https://gitlab.com/gitlab-com/marketing/digital-experience/gitlab-blog), [www](https://gitlab.com/gitlab-com/www-gitlab-com), [navigation](https://gitlab.com/gitlab-com/marketing/digital-experience/navigation), and [buyer experience](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience). 

2. The files for each of the pages in each of these repositories are generated at build time and uploaded as artifacts to GitLab pages. When a repository’s pipeline is run, all artifacts are fetched and merged together in the /public folder on our GCP bucket.

3. See [here](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab-ci.yml?ref_type=heads) for the www deployment script.

If Blog pages are returning a 404:

1. View the [GitLab Blog artifacts](https://gitlab.com/gitlab-com/marketing/digital-experience/gitlab-blog/-/artifacts). The artifact upload to GitLab Pages happens during the “Pages” job, and should be fairly large (over 80MiB)

2. If the artifact is smaller than that, it’s likely that most routes were not properly generated. Click into the job to view the build logs, and check for errors.

3. Check to see if that job itself has failed, and see if the logs give any indication of the failure. 

4. Occasionally, our requests will hit the Contentful rate limit, and need to be regenerated. The interval for requests has been set to 300ms to help mitigate this, but if the rate limit has been exceeded, re-run the pipeline.

5. If a corrupt artifact is introduced, we plan on implementing a test that checks for artifact size, which will alert the team that files are missing from the build.

   1. We’re planning to prioritize this feature in our 2024-01-03 to 2024-01-11 sprint.

### Buyer Experience pages returning a 404:

1. Current fix: hardcode the routes in [route.contentful.js](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/route.contentful.js?ref_type=heads) (currently, some templated pages are built dynamically in their own functions at the top of that file). \[[Example MR](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/merge_requests/3339)]

### Testing:

1. When working locally, run “yarn generate” with CTF\_CONTENT\_PREVIEW not active to ensure that the files are being generated properly.

   1. You will know the files are being generated properly as the log will begin outputting messages like “✔ Generated route "/page-name”

2. We currently check for crucial routes in [scripts/routeChecker](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/scripts/routeChecker.js?ref_type=heads), which runs during build time and should output if expected routes have not been properly generated. 

3. We are [investigating](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/3270) a Cypress test that will check generated routes against a sitemap.

### Disabling the Contentful Webhook

1. In order to prevent changes from being picked up by a pipeline, or to prevent users from hitting the rate limit when publishing many items in quick succession, you can disable the webhook in your contentful space: 

   1. Settings -> Webhooks -> CI Pipeline runner -> Webhook settings -> toggle the “Active” state to off. 


# Digital Experience CMS Support Plan


### During Digital Experience Team Working Hours

**Point person:** [Nathan Dubord](mailto:ndubord@gitlab.com)

Eastern Timezone (UTC−5)

Working hours: 9am - 6pm Eastern

1. The DEX team is spread across North American time zones. Regular working hours span from 6am - 5:30pm Pacific (Convert to local timezone [here](https://www.timeanddate.com/worldclock/converter.html)).

2. If you experience any issues related to our CMS that require immediate attention, please post in [#digital-experience-team](https://gitlab.enterprise.slack.com/archives/CN8AVSFEY)

   1. Please tag the following people:

      1. [Michael Preuss](mailto:mpreuss@gitlab.com)

      2. [Nathan Dubord](mailto:ndubord@gitlab.com)

      3. [Megan Filo](mailto:mfilo@gitlab.com)

      4. [Laura Duggan](mailto:lduggan@gitlab.com)

3. You can expect a response within minutes.

4. All CMS related issues will be an immediate priority.


### Outside Of Digital Experience Team Working Hours

**Point person:** [Nathan Dubord](mailto:ndubord@gitlab.com)

Eastern Timezone (UTC−5)

Working hours: 9am - 6pm Eastern

1. The DEX team is spread across North American time zones. Regular working hours span from 6am - 5:30pm Pacific (Convert to local timezone [here](https://www.timeanddate.com/worldclock/converter.html)).

2. If your issue occurs +/- 2hrs of our working hours, please text (phone numbers are available in Slack profiles) the following people based on timezone

   1. Eastern Timezone (UTC−5):

      1. [Nathan Dubord](mailto:ndubord@gitlab.com)

      2. [Laura Duggan](mailto:lduggan@gitlab.com)

   2. Central Timezone (UTC−6):

      1. [Megan Filo](mailto:mfilo@gitlab.com)

   3. Pacific Timezone (UTC−8):

      1. [Michael Preuss](mailto:mpreuss@gitlab.com)

      2. [Lauren Barker](mailto:lbarker@gitlab.com)

3. If the issue occurs outside of our working hours, please refer to our CMS Troubleshooting Playbook.

   1. GitLab team members who may be able to assist via Slack include:

      1. [Hanif Smith-Watson](mailto:hsmith-watson@gitlab.com) (UK, UTC +0)

      2. [Gonzalo Servat](mailto:gservat@gitlab.com) (Australia, UTC+10)

      3. [Nick Veenhof](mailto:nveenhof@gitlab.com) (Belgium, UTC +1)

4. If you have to wait for a Digital Experience team member to come online, you could create an issue using this template that details the problem which will get a headstart: <https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/new>



