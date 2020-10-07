---
layout: handbook-page-toc
title: "Smartling"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Uses

Smartling is our localization platform that is used to translate pages on our website, emails and landing pages in Marketo, and various marketing collateral. The [global content team](https://about.gitlab.com/handbook/marketing/growth-marketing/content/) is primarily responsible for our [localization](https://about.gitlab.com/handbook/marketing/localization/) initiatives and translations. 

## Help & Training

- [Smartling Status](https://status.smartling.com/)
- [Help Center](https://help.smartling.com/hc/en-us)
- [Admin Training](https://drive.google.com/file/d/1YnAKI8_BLZt7c_kGpjsjS5q0FcBmHyc5/view?usp=sharing)
- [Using Smartling](https://help.smartling.com/hc/en-us/categories/115000321934)
- [Release Notes](https://help.smartling.com/hc/en-us/articles/115004279934)
- [Localization Terminology](https://help.smartling.com/hc/en-us/articles/115004194054-Localization-Terminology-)

## Roles

1. **Account Owner:** Highest level of permissions. Manages the translation process from capture to delivery, including all account and project setting administration, as well as all users across all projects under the account.
1. **Project Manager:** Manages the translation process from capture to delivery within a particular project, including settings and users. The `Project Manager` needs to be given access to specific projects to be able to see and modify anything in that project. `Account Owners` can add `Project Managers`. `Project Managers` can add additional `Project Managers` to the projects they have access to.
1. **Requester:** Can upload files and request translations in any of the languages available in the project that they have been given access to. Monitors jobs after they have been authorized, using a limited view of the Smartling dashboard. To add `Requesters`, the `Requester` Portal feature must be enabled for your account. 

See more details on [Smartling's help article](https://help.smartling.com/hc/en-us/articles/115003066573-User-Permissions) regarding user permissions. 

## Integrations

### Marketo

**Important:** The original source asset must be available in the same location from where the translation was requested for the connector to successfully create the translated version in your Marketo instance.

## Projects

Projects are organized by the integration type:

1. Marketo (emails, landing pages)
1. Repo (GitLab repository files)
1. Documents (PDF files)

## Jobs

Each job should only be translating to one language pair. For instance, if you have a whitepaper that you would like to translate to French and German, you would create two separate jobs: one for the German version and one for the French version.

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


