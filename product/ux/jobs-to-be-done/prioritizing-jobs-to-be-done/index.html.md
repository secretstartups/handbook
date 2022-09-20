---
layout: handbook-page-toc
title: "Prioritizing Jobs To Be Done"
description: "How to determine which JTBD to focus on"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Prioritizing JTBD

Often, the high number of JTBD for one category can make it difficult to know where to focus our design and engineering efforts. The best way to determine which JTBD are the most crucial to our customers is to employ user research. Identifying the most crucial JTBD helps to plan for future research, design, and product needs. One of the most popular ways to determine this focus is by leveraging surveys as they add confidence that you have the right list of JTBD for a specific category.

### Overview

The JTBD prioritization survey is built in Qualtrics [open an access request](/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/). [More information on how to use Qualtrics.](/handbook/product/ux/qualtrics/).

Keep in mind:
- The JTBD stack ranking and JTBD details sections can be replicated for each JTBD category you have. 
- While creating the survey, avoid specific language around JTBD or other GitLab specific verbiage. Instead, focus on an approachable and generic question style.
- Target your survey on the [primary and secondary Persona(s)](/handbook/product/personas/#user-personas) for your category. 
- Work with your [UX Researcher](/handbook/product/ux/ux-research/) if you have any questions about executing the survey (number of responses needed, how best to target participants, timeline, etc.)

Here is an [example survey](https://gitlab.eu.qualtrics.com/jfe/preview/SV_bjxethMCmXbavop?Q_CHL=preview&Q_SurveyVersionID=current) used by the Package stage. Feel free to copy it and change it for your needs.

#### Persona identification

These questions qualify the participants, ensuring they match the persona(s) you are targeting for the JTBD feedback. Participants who don't match your requirements are removed upfront, reducing participants' frustration as they don't need to answer questions which they are not qualified to answer.

Questions to include: 

- Job title or job responsibilities
- Team, department, and organisation size
- GitLab usage (current user, passive user, etc) and what tier they use (free to ultimate)
- Other questions to help identify participants of your specific category (Does this person actively use Docker Images for Package testing)

#### JTBD Stack Ranking 

This section of the survey contains **one** question asking the participant to read a series of Jobs To Be Done. 

Best practices so you don't overwhelm your participants:
- Create a single ranking question for each category of JTBD you have and list the JTBD for each ranking question.
   - Same wording:  Placing the most impactful option at the top, rank the following list of common goals/initiatives related to packages and images in order of how much they would impact your team or organisation.
- Use random ordering to help keep the results unbiased.

#### JTBD Details

This section of the survey is **specific to a single Job To Be Done**. 
For Categories with many JTBD, use survey logic to ensure participants are only presented questions that relate to their top 1-3 ranked JTBD.

Questions to include:
- "How well does GitLab satisfy your needs related to (this JTBD)?"
- "Rate the impact (or importance) of (a specific task)."
- Include an open-text question "What are other tasks related to (the JTBD) that you didn't see mentioned in the list?"
  - This question will inform you about any important tasks you may have missed, increasing the confidence in the JTBD and related tasks for your category.


### Results

After getting the number of survey responses needed for your goal (if you are unsure about this, contact your [UX Researcher](/handbook/product/ux/ux-research/), the next steps are to synthesise your data and [document your insights in Dovetail](/handbook/product/ux/dovetail/#the-ux-research-teams-guide-to-documenting-insights-in-dovetail). 

These insights should include specific information related to: 
- The importance ranking of the JTBD
- The importance ranking of specific tasks in a JTBD
- Any important JTBD or tasks for a category that were missing

After creating insights in Dovetail, you should share this data with the broader stage group as well as with other stage groups to encourage cross-stage collaboration.
