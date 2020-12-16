---
layout: handbook-page-toc
title: Unbabel Translation in Zendesk
category: Zendesk
description: Implementation and use of Unbabel in Support's ZenDesk.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

Whenever a user submits a ticket in a language other than English, our integrated translation tool (Unbabel) in Zendesk automatically translates the content as an internal note.

To use Unbabel effectively, please refer to the following when responding to tickets.

### Languages we support

The languages we support in tickets at this time are listed [on the GitLab support page](/support/#language-support).

Within Unbabel

- Chinese in our list of languages is Chinese (Simplified)
- Portuguese includes Portuguese(BR) from the list.
- Spanish includes Spanish Latin America from the list.

### Configuring Unbabel in Zendesk

Every Agent profile in Zendesk needs to be individually configured so that only tickets submitted in the supported languages are translated.

To do this, open a ticket in Zendesk and navigate to and open the Apps sidebar.

Scroll to the Unbabel app and click on Settings.

![App](/images/support/Unbabel_App.png)
![Settings](/images/support/Unbabel_Settings.png)

Click on Languages and check the box on all languages in the list _except_ for those languages supported by GitLab in tickets.

![Languages](/images/support/Unbabel_Languages.png)

You can also use [a javascript snippet](https://gitlab.com/gitlab-com/support/toolbox/snippets/snippets/1971515) created internally to automatically uncheck the languages we support, and check the others.


### Replying with a Translation

To request a translation automatically, simply reply as you normally would as an internal note with the #unbabel hashtag included at the top of your content. As per our [working with tickets](/handbook/support/workflows/working-on-tickets.html#what-is-the-working-on-tickets-workflow) workflow, please remember to assign yourself to the ticket if the ticket doesn't currently have an assignee when you respond.

Please also ensure that the `always_unbabel` , `unbabel_en`, `unbabel_reply`, `unbabeled` tags are included, otherwise your response might not be translated automatically.
Should this happen, you will need to add the missing tags, and create a new internal note with the #unbabel hashtag included at the top of your content.

Once you submit your response, it may take several seconds for Unbabel to automatically translate your internal comment, but it can take several minutes if a human is required
to manually translate your internal comment. To view the status of the translation, you can open the Apps sidebar in the ticket, and scroll down to the **Unbabel for Zendesk Support** box.

![Translation required](/images/support/Unbabel_Translation_Required.png)

After a translated response has been sent to the customer via Unbabel it is necessary to manually set the ticket status as **Pending** since Unbabel will incorrectly set the ticket status as **Open**. You must do this with an _empty comment_ (remove any `#unbabel` added by the plugin, before you Submit as Pending).

### Excluding Text from Translation

The highlighted code can be skipped for translation by adding 3 brackets around the text:

```<<< text/code >>>```

The above can also be used to protect sensitive information from a human translator when sending a translation request.

### Disabling Unbabel in a Specific Ticket

Sometimes Unbabel is triggered if a customer's signature was written in a language
that requires translation but the customer replies in English, and the translation is not needed.
In this case, there is a way to disable Unbabel in this specific ticket:

- Open the ticket in question.
- Click Apps > Unbabel for Zendesk Support.
- `Change` the `Customer language` to `English`.

From now on, Unbabel will not be triggered in this ticket.

### Help with Translation

If for some reason you have difficulty in understanding the automated translation, an actual human intervention can actually be requested . Simply click the link `Can’t understand the translation?` in the Unbabel app box and this will send your response for translation to Unbabel editors.

### Best Practices
As indicated in the training session, please keep in mind of the following best practices when writing a response for translation.

- Respond in one language
    * It is likely that you can speak another language and understand what the customer is trying to say. Please ensure that you only use the english language when responding tickets as the system may not detect the language correctly.
- Copy only the body of the content that needs translation.
    * When referring to a quoted texts from our customers, please only use the content that requires translation. Including snippets/code/elements may take more time to translate and could result in a mistranslation.
- Mind the punctuation.
    * Punctuation can be sometimes tricky for Unbabel so please be sure there are no unnecessary periods/punctuations in between.
- Single Words Use
    * It is likely that the response you are sending may be lost in translation, for example the word `pass` would differ to a `boarding pass`.
