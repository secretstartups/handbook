---
layout: markdown_page
title: "Francis Potter's README"
---

# Francis Potter - Solutions Architect

## A little background

- I love working with GitLab! It’s the best company, with the best product and the best people, that I’ve encountered in my long career. Really, we have created something truly extraordinary here, and it’s a real gift to be able to participate in this. Sometimes I forget that, and you probably do too. But remember! Believe!
- This is my first experience being officially part of a sales team, and I love it. So much to learn!
- Previously I ran my own consulting firm, providing application development and related strategic services to small businesses and nonprofits. I’ve also worked as a product manager and engineering manager. I started writing code when I was 10 years old and had my first paying client at 16, though I’ve never held a software engineer title.
- Despite loving this job and this company, I am told that sometimes I come across as abrupt, cynical, or even insulting. And when that happens, I truly apologize. Maybe it’s my aspie nature, or my impatience, or some other darker aspect of my personality. I ask for your patience and forgiveness, and please feel free to point it out so I can learn from the experience.
- I always work from a to-do list of sorts, which I manage in my homegrown list management system called [Busy](https://pypi.org/project/busy/). What that means is, when a question comes up that might require some research, I will often put it on the list and come back to it. That way, I control what I work on rather than being interrupt-driven. Having more control allows me to be more focused.
- I plan all my time a day in advance. That means you generally won’t find any open space on my calendar today. It’s intentional - I like to prepare for calls and don’t like having last-minute calls appear on my calendar. If you need to meet with me today or tomorrow, just Slack me. I can usually fit you in.
- Some strong opinions, loosely held (most of these relate to the [Communication](https://about.gitlab.com/handbook/communication/) guide in the Handbook, though I don't always agree!)
    - Use ISO dates
    - Use numbered lists
    - Schedule meetings to be 30 minutes or 60 minutes, starting at a 30-minute boundary
- I’m an introvert and a nerd at heart. I love Tolkein, red wine, and watching motorcycle racing!

## Collaboration Projects

I’m a big fan of the [collaboration projects](https://gitlab.com/gitlab-com/account-management) (for internal GitLab use only) and try to maintain one for each of the accounts that I work on. Everyone uses these differently, and I have my own unique style. Here are some guidelines I follow:
- The projects should align with the “Ultimate Parent Account” in Salesforce and should be evergreen - that is, we don’t create new ones all the time, but rather keep them clean and keep using them. That way, they become a permanent record of our work supporting a customer.
- They live under the region (typically [Western North America](https://gitlab.com/gitlab-com/account-management/western-north-america) for me) and not under “Pre-Sales” - having the project in just one place supports the idea that they are evergreen and stick around as a permanent shared record.
- If I have to create a new one, I start with a blank project. The templates are nice, but unless you’re ready to fill in all the info, they just end up looking like templates. Instead, I give the project a subtitle (typically something reassuring like “CONFIDENTIAL tracking projects for Customername and GitLab”) and create a README (so the subtitle appears on the home page).
- I don’t really work with the repository much. It’s all about the issues. I created my own workflow for tracking collaboration project issues. It works something like this:
    - Always label with “sa” so I can find them easily
    - Label with the name of the customer (scoped if the customer has more than one business unit) so it’s easy to see the customer on group-level boards
    - Label with one of the following:
         - `sa::act-now` These are the tasks to be working on immediately
         - `sa::wait` Typically, I’ve sent some kind of response to the customer and I’m waiting to hear back - tickets in this state should always have a due date, when I pull them back into the act-now state
         - `sa::closed-satisfactory` Doesn’t necessarily mean that we have the functionality or the customer liked the answer, just that we provided an answer and feel complete
         - `sa::closed-unsatisfactory` Either the customer disappeared, or it went on too long and we didn’t respond
         - `sa::reply-now` Sometimes I hold an issue for a day or two after figuring out the answer, before replying, and this gives a place to put them.
    - Then I keep a board for each major customer, as well as a group-level board for all the “sa” issues (note this wouldn’t work the same if more than one person used this technique - then we’d have to assign the issues).
    - Check the group-level board every day!


## Customers & Prospects folders

I take a lot of notes. If I’m not talking on a customer call, I’m probably typing. All my notes go into a Google Doc in the [Customers and Prospects](https://drive.google.com/drive/u/0/folders/0B-ytP5bMib9Ta25aSi13Q25GY1U) (GitLab team members only) folder for that customer. In my opinion, that’s where all documents related to the customer should go - they are easy to find and the sharing settings are right. I also have a format that I always use:
- Title style for the title, something like “Companyname meeting notes”
Heading 1 style for each meeting, starting with the date in ISO format, i.e. “2021-02-31 Call with Homer Simpson”
- Notes in a numbered list below the heading
- I don’t add or edit evergreen content at the top of the document - evergreen content has to be maintained to be reliable. I won’t touch yours though. I just ignore it.
- I also don’t create other sections in the document, or give the meeting notes section a “Meeting Notes” heading. My preference is that the document only contains meeting notes.
- Some headings I like to use within the meeting (in plain text):
    - People - a list of people from the customer side who were on the call. I don’t bother listing our team members.
    - Background - any notes, links, etc. to remind us of the background for the call.
    - Topics - a list of things to talk about, where the order doesn’t matter
    - Agenda - a list of things to talk about, where the order does matter
    - Notes - things people said. I typically just type, not edit, so sometimes it reads like a stream of conscience
    - Action Items - Things to be done after the call
- If you’re taking notes during the call, I’ll probably stop writing. Honestly, I prefer to write during a call, but negotiating the cursor in the document is too much work.

I often give myself a task to prep for a call the day before. That means, if a call gets scheduled at the last minute, I might be on the call but less prepared. Generally it’s better if the SA is prepared! During prep, I’ll make sure there is a notes doc, there is a heading for the meeting on the notes doc, any background from Slack or email is in the section, any topics or agenda items we want to cover are listed, and sometimes I’ll even paste in LinkedIn URLs for participants. That way, we’re all ready to go.

Everyone uses these documents differently, and my intent is not to step on your way of doing things. So when I first join an account, I will use a light touch until I understand how you expect things if they are different. To date, nobody has complained.

But there’s one thing I will always correct - if the entries are out of order. They should be in reverse chronological order. If they aren’t, I can’t find anything!
