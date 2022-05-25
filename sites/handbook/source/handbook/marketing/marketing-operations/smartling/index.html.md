---
layout: handbook-page-toc
title: "Smartling"
description: "Smartling is our localization platform that is used to translate pages on our website, emails and landing pages in Marketo, and various marketing collateral."
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

## Uses

Smartling is our localization platform that is used to translate pages on our website, emails and landing pages in Marketo, and various marketing collateral. The [global content team](https://about.gitlab.com/handbook/marketing/growth-marketing/content/) is primarily responsible for our [localization](https://about.gitlab.com/handbook/marketing/localization/) initiatives and translations. Follow our progress for fully rolling out Smartling in this [epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1405). 

## Support

1. Technical assistance: Slack (`#mktgops`)
1. `support@smartling.com` - This will create a ticket for the Support Team (teams in NY and Dublin, Ireland).
1. Translation assistance: `translation@smartling.com` - This will go to the Language Services Team who manages the translations
1. [Smartling Status](https://status.smartling.com/)
1. [Help Center](https://help.smartling.com/hc/en-us)
1. [Release Notes](https://help.smartling.com/hc/en-us/articles/115004279934)

## Training 

**Videos**

1. [Admin Training](https://drive.google.com/file/d/1Rl-7cfW74P8ELd3Cn9Pu0b0LDeFCPRyI/view?usp=sharing)
1. [Project Manager/Requester Training (Documents Project)](https://drive.google.com/file/d/1K78ffIGdNvN4KMerfNT1OLas2ifB3R03/view?usp=sharing)
1. [Marketo Training](https://drive.google.com/file/d/1ujF_gQcPP-nKmf5EsE4Hpya2Vn-RNg6S/view?usp=sharing)
1. [Internal Reviewer Training](https://drive.google.com/file/d/1hfSWX6BIVHP-UDfwHwSKIfQeAj_dP9nL/view?usp=sharing)

**Help Articles**

1. [Using Smartling](https://help.smartling.com/hc/en-us/categories/115000321934)
1. [The Requester User Guide](https://help.smartling.com/hc/en-us/articles/115003136973-The-Requester-User-Guide)
1. [Request Translation](https://help.smartling.com/hc/en-us/articles/115003074493)
1. [Download Translated Files](https://help.smartling.com/hc/en-us/articles/115003192274)
1. [Manage Jobs In Progress](https://help.smartling.com/hc/en-us/articles/360055897494)
1. [Jobs Dashboard](https://help.smartling.com/hc/en-us/articles/115003143774-Jobs-Dashboard-for-Account-Owners-Project-Managers)
1. [Respond to Issues](https://help.smartling.com/hc/en-us/articles/115004480513)
1. [Supported File Types](https://help.smartling.com/hc/en-us/articles/360007998893-Supported-File-Types)
1. [Localization Terminology](https://help.smartling.com/hc/en-us/articles/115004194054-Localization-Terminology-)
1. [Standard and rush delivery turnaround times for translation jobs](https://drive.google.com/file/d/1LE1tkqoS3fRanIs5D0eq11zwisGfDOV5/view?usp=sharing)

## Roles

1. **Account Owner:** Highest level of permissions. Manages the translation process from capture to delivery, including all account and project setting administration, as well as all users across all projects under the account.
1. **Project Manager:** Manages the translation process from capture to delivery within a particular project, including settings and users. The `Project Manager` needs to be given access to specific projects to be able to see and modify anything in that project. `Account Owners` can add `Project Managers`. `Project Managers` can add additional `Project Managers` to the projects they have access to.
1. **Requester:** Can upload files and request translations in any of the languages available in the project that they have been given access to. Monitors jobs after they have been authorized, using a limited view of the Smartling dashboard. To add `Requesters`, the `Requester` Portal feature must be enabled for your account. 
1. **Translation Resource** Translates, edits, or reviews content. Only has visibility into workflow steps and languages they have been given access to.

See more details on [Smartling's help article](https://help.smartling.com/hc/en-us/articles/115003066573-User-Permissions) regarding user permissions. 

## Supported Languages

1. French (Europe)
1. German
1. Japanese
1. Russian
1. Italian
1. Spanish (LATAM)
1. Portuguese (Brazilian)
1. Korean

## Translation Costs and SLAs

Any assets being translated into the supported language pairs will need to be allocated from the requester team's budget. At the end of each month, Marketing Ops will split the invoice by team and finance will charge the relevant team by that amount.

Finance requires us to tally the cost and professional services hours at the end of each month for the month so they can approriately allocate each cost to the respective budget. 

Please use the follow naming convention: `Language Abbreviation - Campaign Name or Name of Asset - FYFQ - DRI or Team`. This is only applicable to the `Documents` and `Marketo` projects as the `GDN` and repo connector job submissions are handled differently. Where possible, please include as much detail as you can. The assets submitted through the `Marketo` project will have an auto-generated name due to the connector. Once your Marketo job shows up in the Smartling UI, click into the job and rename it according to the naming conventions above. It is important to follow these standard naming conventions so finance can accurately allocate translation costs across teams. 

### Per-Word Rates

You can access the per-word rates by language in [this Google sheet](https://docs.google.com/spreadsheets/d/1ZRZkfvboxwc-TPUCPvdn8-M_DvGNEGRcwfbxIvSpXMM/edit#gid=0). **Do not share these rates publicly.**

### Cost Estimate

Total word count (word count of the source file/language, not the translated file/language) multiplied by the per word rate (rate differs based on language) minus discounted rates from matches on previous translations (repetitions).

### Due Date

Automatically generated based on the total word count. Anything under 5,000 words is typically ready in 2 business days.

## Using Smartling 

Smartling categorizes translation jobs by the integration type (Marketo, documents, GDN). This is because each of these integration types parse the strings differently based on the file format (example: HTML vs. PDF). Before you request a translation, you must first start at the [integration type](#projects) and know what type of document format you are translating. You also need to consider the appriopriate workflow for your translation. Below are the options for workflows:

1. **SMARTLING - TRANSLATION + EDITING**: This workflow will put your asset through translation and once the translation is ready, it will publish the asset. There is no internal review on this workflow.
1. **SMARTLING LANGUAGE SERVICES (WITH IR)**: This workflow is the default for all languages. After the asset is translated, it will go to an internal review step to be performed by one of our internal reviewrs. They will review and if happy with the translated, publish the asset. Please check [here](https://about.gitlab.com/handbook/marketing/localization/#process-for-requesting-a-review-via-smartling) for our list of internal reviewers and how to notify them of a job.
1. **DTP**: This workflow will send your asset to a designer in Smartling and they will format your assets. Before going to DTP, it will be reviewed by an internal reviewer. Please see [below](https://about.gitlab.com/handbook/marketing/marketing-operations/smartling/#design-files) for more information on this process.

**Field Marketing use of Smartling**

For information on how Field Marketing uses translations, please head to [that page](/handbook/marketing/field-marketing/#fmm-localization-process).

## Notifications

[Enable email notifications](https://help.smartling.com/hc/en-us/articles/115003487053-Change-Notification-Settings) to help stay on top of content changes during the translation workflow process. Notification settings can be customized on a per project basis.

You can [reply to issues via email](https://help.smartling.com/hc/en-us/articles/115004480513-Respond-to-Questions-from-Linguists#h_6bb30780-12a1-4a55-a78b-55c40e14361f). 

## Projects

Projects are organized by the integration type:

1. [Documents](#documents) (.docx, .csv, .idml, .srt)
1. [Marketo](#marketo) (snippets, forms, landing pages, emails, programs)
1. Repo (GitLab repository files, design assets) - [coming soon](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/11423)
1. GDN (CDN connection for webiste translation) - [coming soon](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/11630)

### Documents

**Please note:** It is recommended that if you are translating a design-heavy `.pdf` you submit the `.idml` file to Smartling instead of the PDF. After the translation, the PDF won't typically render properly and it is very challenging to fix. Smartling offers DTP services and will design the translated file for you for an additional fee and they will return translated design files and PDF. If you are using DTP, you must submit an `.idml` file.  If you are using `DTP`, follow the submission instructions under [Design Files](https://about.gitlab.com/handbook/marketing/marketing-operations/smartling/#design-files). If you would prefer our internal design team complete the design or do not require design, submit only the content in a `.docx`,`.csv`, or `.srt` file, using the instructions in this section. 

<details>
<summary markdown='span'>
Request a job in the Documents project - For non-DTP workflows only
</summary>

1. Click `Jobs`. This takes you to all translation jobs regardless of what project they reside in.
1. Click the `Request Translation` button in the top-right.
1. Enter a name for the job. Use the following naming convention: `Language Abbreviation - Title of asset or campaign name - FYFQ - Team/individual DRI` - Example: KO - Benefits of Single Application CICD eBook - FY22Q2 - Campaigns/JT
1. Ensure the job is located in the correct project according to the integration type (Marketo, GDN, Documents). Each project operates and includes a different workflow depending on the intergration.
1. Upload the file to be translated.
1. In the `Description`, paste the link of the epic or issue related to the translation job. 
1. In the `Reference number` field, enter the Allocadia ID for your team's translation budget. The Content team does not have an ID and can leave this blank.
1. Select the target language for the source file (what language want your document to be translated to).
1. Click `Save Job and Continue`.
1. Your job now appears in the Job List. Select `Authorize`.
1. Select the workflow you would like to use. Default workflow is the most common. See [Using Smartling](https://about.gitlab.com/handbook/marketing/marketing-operations/smartling/#using-smartling) for details about each workflow. If you do require DTP, select `DTP` as your workflow and follow the instructions under [Design Files](https://about.gitlab.com/handbook/marketing/marketing-operations/smartling/#design-files).
1. Click `Confirm`.


</details>

<details>
<summary markdown='span'>
Download a translated job from the Documents project
</summary>

1. Click the `Jobs` tab from the `GitLab Documents` project.
1. Navigate to your job from the list and click the title link of your job.
1. Select the `Files` tab from within the job.
1. Click the `Download Files` link.
1. Select how you would like Smartling to download the file:
 - `Subfolders for languages` - file name is not ammended, remains the same as the source file
 - `Languages in file names` - adds the locale code at the end of the file name
 - `Subfolders for languages and languages in file names` 
1. Click `Confirm`.
1. If you used DTP for design, you will download your files from the `Job Attachments` section in the sidebar of the job.

</details>

### Marketo

The Marketo project is where you will submit Marketo assets (emails, landing pages, forms) to Smartling for translation. The Marketo connector is a mirror-image of our Marketo instance and is updated in real-time.

**Important:** The original source asset must be available in the same location from where the translation was requested for the connector to successfully create the translated version in your Marketo instance. 

When you submit Marketo jobs, the jobs will be available in the general `Jobs` tab in the platform and within the Marketo connector. Marketo jobs will not have the same name as jobs submitted through the `Documents` since these jobs are automated. 

In the right side pane window shows the various Marketo assets that are either approved to be submitting for translation or in draft. Clicking the link icon opens a new tab to login into Marketo to view that particular asset.

You can submit one or multiple Marketo assets at a time to submit to Smartling for translation. Select the language you wish to translate your Marketo asset. 

**Please note:** If you only select one language to translate your Marketo asset, Smartling will queue up the other languages as well. 

Only authorize the or approve the strings for the language you want. Smartling queues up the other languages for translation to account for future use cases but you will still need to follow the regular process for submitting Marketo jobs through the connector for those other languages. If you were to authorize translation for the other languages on a particular Marketo job in Smartling, it will translate those assets, but it will **not** return them to Marketo per the connector. You must submit any Marketo assets from the connector and not via the jobs menu.

Auto-authorize - automatically approves any Marketo job submission for translation (currently turned off).

When the translation job is complete, Smartling will automatically download those translated assets back to Marketo. The chron scheduler in Smartling looks for completed Marketo jobs every hour and pushes them to Marketo. The original source language asset is not changed, a translated copy is created and the file name is appended with the abbreviated language code (e.g. French = fr).

The original source asset must be available in the same location from where the translation was requested for the connector to successfully create the translated version in your Marketo instance. Only submit approved (not draft) Marketo assets. Check out the [help article](https://help.smartling.com/hc/en-us/articles/115004019794-Marketo-Connector-Request-Translations) for more info. 

<details>
<summary markdown='span'>
Request a job in the Marketo project
</summary>

1. Click `Projects` and choose `GitLab - Marketo`.
1. Click the `Marketo` tab under `Account Settings`.
1. From the `Translate` drop down, select the type of Marketo asset you wish to translate (snippets, forms, landing pages, emails, programs). 
1. The right-side pane refreshes depending on the asset type you chose because Smartling attempts to surface all assets of that type in our Marketo instance. You can select assets for translation on the right-side pane or navigate through the mirrored Marketo folder hierarchy to locate the assets you wish to translate. You can select multiple assets. **Assets must be created in Marketo using a predefined template. If a template is not used, you will not be able to submit the content to Smartling for translation.** 
1. Once you have selected the assets you want translated, click the `Request Translation` button. 
1. Select the lanaguges for which you want your asset translated, then click `Request Translation`. By default, the Marketo connector is configured to send your translation requests to your authorization queue. You will need to authorize the content to send it to Translation Resources.

</details>

#### Translation Progress

In the Marketo connector within Smartling, `Translation Progress` will show you all the Marketo jobs submitted for translation. The `Applied` column is a date stamp showing when Smartling pushed that particular asset back to Marketo. If a Marketo translation job is completed and it's still showing up in the `Translation Progress` queue, you can select it from this menu and click the `Export to Marketo` button. Completed Marketo translation will get pushed back to Marketo every hour. The asset should will be pushed to wherever the source file is located within Marketo. It will not overwrite the original file. A translated copy is created and the locale code will be appended to translated asset.

## Jobs

Each jobs is parsed differently in Smartling depending on the file type. So if a similar string exists both in a web page (HTML) and a document (PDF), Smartling may not match those strings in the same way. As a result, we recommend opening a job per file type- you can have as many languages on one job as needed.

You can request a translation job either from the main `Jobs` tab in the top navigation or from the project level the job will be conducted in based on the file type (Marketo, GDN, Documents).

All saved jobs must be authorized before they are submitted for translation.

## [CSV](https://help.smartling.com/hc/en-us/articles/360008000593-CSV-Files)

Smartling does not support Google sheets as a file type. If you are working within Google sheets, you will need to export as an Excel file. After exporting, open the document in TextEdit or a similar application to check for any trailing commas. Any trailing commas should be removed because Smartling will not properly parse the file. 

### Directives

File directives are used to define the location of specific data in a file. **CSV requires the use of directives with any upload to Smartling.** Other supported file types listed above do not necessary require directives, depending on how you want to import the translation. If you want to simply upload a separate file for each language, including the source, directives are not required (excluding CSV). Importing one file with multiple languages will require the addition of file directives to ensure that Smartling can read where the keys are located in the file, and where the content you are importing is located in the file. See the [help article on CSVs](https://help.smartling.com/hc/en-us/articles/360008000593) for more info on what directives to use in your file. 

## Design Files

The `DTP` workflow in Smartling will format your file to support the new translation. Desktop Publishing in Smartling will take the new translations and apply them to your design files and return back a formatted file ready to use. Design files can be requested in the `#marketing-design` slack channel. Below is the process to follow if you wish for DTP to format your file:

1. Click `Jobs`. This takes you to all translation jobs regardless of what project they reside in.
1. Click the `Request Translation` button in the top-right.
1. Enter a name for the job. Use the following naming convention: `Language Abbreviation - Title of asset or campaign name - FYFQ - Team/individual DRI` - Example: KO - Benefits of Single Application CICD eBook - FY22Q2 - Campaigns/JT
1. Ensure the job is located in the Documents project. 
1. Upload the `.idml` file to be translated. Do not submit a PDF, this workflow requires the design files.
1. In the `Description`, paste the link of the epic or issue related to the translation job. Enter "Please return designed PDF" in addition to the epic or issue.
1. In the `Reference number` field, enter the Allocadia ID for your team's translation budget. The Content team does not have an ID and can leave this blank.
1. Select the target language for the source file (what language want your document to be translated to).
1. Click `Save Job and Continue`.
1. Your job now appears in the Job List. Select `Authorize`.
1. On the next screen, select the `DTP` workflow. This workflow will translate your content, allow it go to review with our internal reviewers and then go onto the graphic designer who will format it.
1. Click `Confirm`.
1. Click on the job you just authorized. On the left sidebar, select "Add Attachments" under the `Job Attachments` section.
1. Click `Upload Attachments`
1. Select the .zip file containing all of the design files. For indesign files, job submitters will need to upload an indesign package with the following files:
    * All fonts
    * All linked Images
    * Source INDD File
    * Source IDML File
    * Source PDF.
1. In the "Attachment Description" field, enter the name of the asset and indicate that it is the artwork files. Click `Upload`.
1. After the job is complete, you will download your files from the `Job Attachments` section in the sidebar of the Job.


## Attachments

You can upload additional files, screenshots, etc. to provide context to the translators about the job. The more context you provide around a job the better.

## Issues

If any strings are rejected from the translation job, those would appear as `issues`. If the translators have any difficulties or questions about the source file, these would appear as issues as well. If an issue is raised on a job, all account owners and project managers for that project will be notified. Translators will wait for a day for a response but will continue the job if no response is provided. Once the issue is resolved, please mark the issue as `Resolved`.

## History

The `History` tab on a job provides detailed information about the activity that has occured with the job. You also have the option to `Download Translation Activity Report`. The same history is available on the individual string level. 

## Translation Memory

A `translation memory` is a saved record of previously translated content. Each time a translation is saved in Smartling, it is written to a translation memory.

To provide feedback about a particular translation to store in our [translation memory](#translation-memory), send an email with the translation job and detailed feedback to `translations@smartling.com` and copy our customer success manager. 

## SmartMatch

A string that perfectly matches a string in the translation memory, including any tags, placeholders, etc. SmartMatch compares new strings against existing translations in your leverage configuration to automatically apply translations to strings you've translated before.

## Transcreation

The process of adapting content from one language to another without losing consistency in tone, intent, and style. Unlike translation, where words or phrases are converted from one language into another, transcreation is based on the conversion of the essence of a message from one language to another, rather than verbatim. [See the Transcreation Tool help article](https://help.smartling.com/hc/en-us/articles/360057363453-The-Transcreation-Tool-Beta-) for more info.

## Weighted Words

An approach to estimating the cost and effort required to translate a job that accounts for `Translation Memory Leverage` and `Repetitions`. Calculated by multiplying each word with the corresponding fuzzy match rate.

For example, let’s assume your job has ten source words, and that for words with an 85-94.9% fuzzy match, you will pay 60% of the per-word-rate. If all ten words fall into this fuzzy tier, there are six weighted words in the job. The reason is that 10 x 0.60 = 6.

## Fuzzy Match 

When Smartling uses an existing `Translation Memory (TM)` to match source content with existing translations in the TM, it will often find word matches that are less than 100% identical. These are called "fuzzy matches" and are represented by the percentage to which they match (typical fuzzy match percentages are 50-99%). Translators can see these fuzzy matches in the CAT tool and choose to edit them instead of translating from scratch.

## CAT Tool

Computer assisted translation tool. This is where all of the translating, editing, and reviewing takes place. See [CAT Tool](https://help.smartling.com/hc/en-us/articles/115003080374) for more information.

## Reports

1. [Word Count and Processed Words Reports](https://help.smartling.com/hc/en-us/articles/115003148233-Word-Count-and-Processed-Words-Reports)
1. [Issues Report](https://help.smartling.com/hc/en-us/articles/115003152794-Issues-Report)
