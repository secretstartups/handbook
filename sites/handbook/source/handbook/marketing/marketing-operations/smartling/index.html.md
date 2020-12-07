---
layout: handbook-page-toc
title: "Smartling"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Uses

Smartling is our localization platform that is used to translate pages on our website, emails and landing pages in Marketo, and various marketing collateral. The [global content team](https://about.gitlab.com/handbook/marketing/growth-marketing/content/) is primarily responsible for our [localization](https://about.gitlab.com/handbook/marketing/localization/) initiatives and translations. Follow our progress for fully rolling out Smartling in this [epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1405). 

## Training & Support

## Support

1. Technical assistance: Slack (`#mktgops`), `support@smartling.com` - This will create a ticket for the Support Team (teams in NY and Dublin, Ireland).
1. Translation assistance: `translation@smartling.com` - This will go to the Language Services Team who manages the translations

### Quick Links

1. [Smartling Status](https://status.smartling.com/)
1. [Help Center](https://help.smartling.com/hc/en-us)
1. [Release Notes](https://help.smartling.com/hc/en-us/articles/115004279934)

### Training 

**Videos**

1. [Admin Training](https://drive.google.com/file/d/1Rl-7cfW74P8ELd3Cn9Pu0b0LDeFCPRyI/view?usp=sharing)
1. [Project Manager/Requester Training (Documents Project)](https://drive.google.com/file/d/1K78ffIGdNvN4KMerfNT1OLas2ifB3R03/view?usp=sharing)
1. [Marketo Training](https://drive.google.com/file/d/1ujF_gQcPP-nKmf5EsE4Hpya2Vn-RNg6S/view?usp=sharing)

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

See more details on [Smartling's help article](https://help.smartling.com/hc/en-us/articles/115003066573-User-Permissions) regarding user permissions. 

## Using Smartling 

We currently support French, German, and Japanese languages in Smartling. We are working on adding support for Russian, Italian, and Spanish at an additional cost per language pair. 

Any assets being translated into the supported language pairs will be supported by the [localization budget](https://about.gitlab.com/handbook/marketing/localization/). Any assets outside of this support will need to be allocated from the requester team's budget and include a campaign finance tag in the `Reference Number` as well as links to any associated epics or issues in the `Description`. Finance requires us to tally the cost and professional services hours at the end of each month for the month so they can approriately allocate each cost to the respective budget. If there is no campaign finance tag associated with your job submission, please use the follow naming convention: `Language Abbreviation - Campaign Name - Date`

### Field Marketing use of Smartling

For information on how Field Marketing uses translations, please head to [that page](/handbook/marketing/revenue-marketing/field-marketing/#fmm-localization-process).

## Notifications

[Enable email notifications](https://help.smartling.com/hc/en-us/articles/115003487053-Change-Notification-Settings) to help stay on top of content changes during the translation workflow process. Notification settings can be customized on a per project basis.

You can [reply to issues via email](https://help.smartling.com/hc/en-us/articles/115004480513-Respond-to-Questions-from-Linguists#h_6bb30780-12a1-4a55-a78b-55c40e14361f). 

## Integrations

### Marketo

**Important:** The original source asset must be available in the same location from where the translation was requested for the connector to successfully create the translated version in your Marketo instance.

### PathFactory 

There is no native integration between [Smartling](/handbook/marketing/marketing-operations/smartling) and PathFactory. To create a new language configuration in PathFactory and submit the default English source text available in PathFactory's language configuration menu, you must create a CSV. You can only include/exclude columns for translation in CSV. [See the help center article](https://help.smartling.com/hc/en-us/articles/360008000593-CSV-Files) for more info on formatting CSV files to submit for translation.

## Projects

Projects are organized by the integration type:

1. Marketo (emails, landing pages)
1. Repo (GitLab repository files, design assets) - [coming soon](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/11423)
1. GDN (CDN connection for webiste translation) - [coming soon](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/11630)
1. Documents (PDF files)

## How Smartling Works

Smartling categorizes translation jobs by the integration type (Marketo, documents, GDN). This is because each of these integration types parse the strings differently based on the file format (example: HTML vs. PDF). Before you request a translation, you must first start at the integration type and know what type of document format you are translating.

## Jobs

Each job should only be translating to one language pair. For instance, if you have a whitepaper that you would like to translate to French and German, you would create two separate jobs: one for the German version and one for the French version.

Each jobs is parsed differently in Smartling depending on the file type. So if a similar string exists both in a web page (HTML) and a document (PDF), Smartling may not match those strings in the same way.

### Request a job

You can request a translation job either from the main `Jobs` tab in the top navigation or from the project level the job will be conducted in based on the file type (Marketo, GDN, Documents).

**From top-level navigation**

1. Click `Jobs`. This takes you to all translation jobs regardless of what project they reside in.
1. Click the `Request Translation` button in the top-right.
1. Enter a name for the job. Use the following naming convention: `[Title of asset] - [Campaign tag name] - [Team/individual DRI]`
1. Ensure the job is located in the correct project according to the integration type (Marketo, GDN, Documents). Each project operates and includes a different workflow depending on the intergration.
1. Upload the file to be translated.
1. In the `Description`, paste the link of the epic or issue related to the translation job.
1. Select the target language for the source file (what language want your document to be translated to).
1. Click `Save Job and Continue`.

All saved jobs must be authorized before they are submitted for translation.

### Attachments

You can upload additional files, screenshots, etc. to provide context to the translators about the job. The more context you provide around a job the better.

### Additional Details 

In the description of your job, ensure that you are including a link to the respective issue or epic related to your job. For the `Reference Number` please include the finance tag for your job so the finance team can allocate the spend accordingly. 

### Cost Estimate

Total word count (word count of the source file/language, not the translated file/language) multiplied by the per word rate (rate differs based on language) minus discounted rates from matches on previous translations (repetitions).

### Due Date

Automatically generated based on the word count. Anything under 5,000 words is typically ready in 2 business days.

### Document Project Jobs

To download a translated job from the `GitLab Documents` project:

1. Click the `Jobs` tab from the `GitLab Documents` project.
1. Navigate to your job from the list and click the title link of your job.
1. Select the `Files` tab from within the job.
1. Click the `Download Files` link.
1. Select how you would like Smartling to download the file:
 - `Subfolders for languages` - file name is not ammended, remains the same as the source file
 - `Languages in file names` - adds the locale code at the end of the file name
 - `Subfolders for languages and languages in file names` 
1. Click `Confirm`.

### Issues

If any strings are rejected from the translation job, those would appear as issues. If the translators have any difficulties or questions about the source file, these would appear as issues as well. If an issue is raised on a job, all account owners and project managers for that project will be notified. Translators will wait for a day for a response but will continue the job if no response is provided. Once the issue is resolved, please mark the issue as `Resolved`.

### History

The `History` tab on a job provides detailed information about the activity that has occured with the job. You also have the option to `Download Translation Activity Report`. The same history is available on the individual string level.

## Terminology 

### Translation Memory

A translation memory is a saved record of previously translated content. Each time a translation is saved in Smartling, it is written to a translation memory.

### SmartMatch

A string that perfectly matches a string in the translation memory, including any tags, placeholders, etc. SmartMatch compares new strings against existing translations in your leverage configuration to automatically apply translations to strings you've translated before.

### Transcreation

The process of adapting content from one language to another without losing consistency in tone, intent, and style. Unlike translation, where words or phrases are converted from one language into another, transcreation is based on the conversion of the essence of a message from one language to another, rather than verbatim.

### Weighted Words

An approach to estimating the cost and effort required to translate a job that accounts for `Translation Memory Leverage` and `Repetitions`. Calculated by multiplying each word with the corresponding fuzzy match rate.

For example, let’s assume your job has ten source words, and that for words with an 85-94.9% fuzzy match, you will pay 60% of the per-word-rate. If all ten words fall into this fuzzy tier, there are six weighted words in the job. The reason is that 10 x 0.60 = 6.

### Fuzzy Match 

When Smartling uses an existing `Translation Memory (TM)` to match source content with existing translations in the TM, it will often find word matches that are less than 100% identical. These are called "fuzzy matches" and are represented by the percentage to which they match (typical fuzzy match percentages are 50-99%). Translators can see these fuzzy matches in the CAT tool and choose to edit them instead of translating from scratch.

### CAT Tool

Computer assisted translation tool. This is where all of the translating, editing, and reviewing takes place. See [CAT Tool](https://help.smartling.com/hc/en-us/articles/115003080374) for more information.

## Reports

1. [Word Count and Processed Words Reports](https://help.smartling.com/hc/en-us/articles/115003148233-Word-Count-and-Processed-Words-Reports)
1. [Issues Report](https://help.smartling.com/hc/en-us/articles/115003152794-Issues-Report)


