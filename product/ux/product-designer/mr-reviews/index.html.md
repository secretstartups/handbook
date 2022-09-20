---
layout: handbook-page-toc
title: Merge Request Reviews
description: "Guidelines for Product Designers when reviewing merge requests."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This page outlines the guidelines for Product Designers when reviewing merge requests (MRs), also called “UX reviews” or “Product Design MR reviews”.

## Requirement

**Almost all merge requests (MRs) change the UX in one way or another, but Product Designers are only required to review and approve MRs that include _user-facing changes_**. Per the [approval guidelines](https://docs.gitlab.com/ee/development/code_review.html#approval-guidelines), “user-facing changes include both visual changes (regardless of how minor) and changes to the rendered DOM that impact how a screen reader may announce the content.”

MRs with only backend changes sometimes affect the UX (for example, performance changes, sorting of lists, etc.), but you _are not required_ to review them unless they fall under the definition of “user-facing changes”.

To help triage, be aware of all MRs in your stage group and ask engineers about which MRs could affect the UX and how. Product Designers often give constructive feedback on any kind of MR, including MRs that _seem_ to not affect the UX, so use your best judgment when deciding which MRs you should review.

### How to assign MR reviews 

#### Stage group MRs
The [GitLab Roulette](https://gitlab-org.gitlab.io/gitlab-roulette/) will randomly suggest a designer to review. These MRs should have a well-documented design solution. Your role as a reviewer is to ensure the solution is developed as intended. After you've completed your review, cc the [design DRI of the group](/handbook/product/categories/#devops-stages) for awareness. Additionally, if you have further feedback on a particular UX solution, open a follow up issue and mention the design DRI.
  - There may be scenarios where an MR is based on a previous conversation or it proposes a solution that did not have a design associated with it. If this happens, `@ mention` the design DRI to ensure requirements are met. The design DRI should then notify the suggested UX reviewer to complete the MR review when ready.
      - An example is an MR with the label, `~"Internal hackathon"`. The design solution is likely being solved at the time of development.

#### Community contributions
Community submitted MRs require more context to review and are assigned to the design DRI of the group it impacts. All UX-related community contributions will generate a Slack message in the #ux-community-contributions channel and will be manually assigned until we automate the process. 

#### Benefits
- Evenly distribute MR reviews across the Product Designers in the UX Department in support of our [Product Design MR review volume KPI](/handbook/product/ux/performance-indicators/#product-design-mr-review-volume). This will have a more significant impact on higher usage areas of our product by opening up capacity for those designers to increase time spent on creating design solutions.
- Create awareness of the end-to-end GitLab product by having designers involved in reviewing work outside of their normal areas. This can lead to holistic solutions and seeing connections between stage groups (and Pajamas) that would otherwise get missed.
- Improve communication and documentation of design solutions, as we're now relying on another designer to confirm that a solution is developed as intended.
- Give designers visibility and experience in other areas of the product to potentially discover a new passion or area of interest. 

## Workload and response times

MR review requests are the [number one priority for Product Designers](/handbook/product/ux/product-designer/#priorities). Respond to them per our [review-response Service-Level Objective](/handbook/engineering/workflow/code-review/#review-response-slo). 

Balancing MR reviews with other priorities is a challenge, as they can be unpredictable. To avoid disruptions and context-switching, we suggest you block some time every day to review MRs (for example, 30 minutes or 1 hour per day).

If you're struggling with MR reviews, remember to [manage expectations with MR authors](/handbook/engineering/workflow/code-review/#managing-expectation) and let your manager know right away so they can help you. Before taking up a review, make an estimation of your capacity keeping in mind any upcoming time off. If you are unsure of completing the review before leaving for a time off, spin the roulette again to assign the review to a different designer.



## Reviewing

In general, follow the [Code Review guidelines](https://docs.gitlab.com/ee/development/code_review.html) (it's a long document, but please read all of it). Exceptions to those guidelines are noted below.

### Understand the MR

- Check the MR description for the following information. If any are missing, ask the author to complete the description before investing time in the review.
    - A thorough explanation of the changes.
    - How you can test the changes.
    - Link(s) to the related issue(s).
    - _Before_ and _After_ screenshots/videos (if appropriate).
- To reduce waiting time for [previewing the MR in a live environment](#preview-the-mr) (like Gitpod, your local GDK, or even a Review App), start the environment and let it load in the background while you familiarize yourself with the MR and related issue(s).

### Preview the MR

Always review the MR in a live environment, so that you can experience the changes as our users will and review them thoroughly. To choose the most appropriate method to preview the MR and get started, see [Preview, test, and contribute](/handbook/product/ux/how-we-work/#preview-test-and-contribute). If you get stuck, don't struggle on your own, check our [help section](/handbook/product/ux/how-we-work/#help).

#### Specific review requirements
Some MRs have additional set up requirements. 
- SaaS-only features: For testing SaaS-only features you'll need to run the GDK as a SaaS version. [Instructions for simulating SaaS version in the GDK](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/gitpod.md#how-to-test-features-only-available-on-saas-gitlabcom)
- Pipeline-related features: You'll need to enable a runner to run a pipeline. Review apps have runners available by default. Instructions for enabling a runner in [Gitpod](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/gitpod.md#enable-runners) or [GDK](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/runner.md).
- Compliance: To test [audit event streaming](https://docs.gitlab.com/ee/administration/audit_event_streaming.html) MRs you might need to set a stream destination URL. You can use [Pipedream](https://pipedream.com/) to generate a temporary destination.
- Fulfillment: Because of the complicated setup required for CustomersDot, only Fulfillment Product Designers should review CustomersDot MRs and GitLab MRs that require connection to CustomersDot (e.g., the GitLab.com purchase flow).
  - [Instructions for setting up CustomersDot locally](https://gitlab.com/gitlab-org/customers-gitlab-com/-/tree/main#setup).
  - There are times when it isn't possible or practical for a Product Designer to complete their review via their local environment. At these times, the Product Designer can review screenshots and videos in the MR description or coordinate a demo with the Engineer. Another option for more complicated changes is keeping the change behind a feature flag and reviewing the change on staging after the MR has been merged. This is up to each Product Designer's discretion.
- Geo: Using the simple installation script, you need to install and configure two **GDKs**. The script does not work on GitPod. The configured GDKs served as a Geo primary and secondary site.
  - [Instructions for the simple installation](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/geo.md).
  - [Video instruction](https://youtu.be/R58mgwDwjM8) and [slide deck](https://docs.google.com/presentation/d/1azikV27LO68xobgJ7v399H1ppnLCmtB_kEKl_IMNI0Q/edit#slide=id.g123a13deda8_0_405) for setting up Geo-GDKs
- Pipeline Execution: For CI/CD minutes and shared runner usage related features, you need to populate projects with historical CI/CD minutes usage data to test the features or changes. [Instructions for setting up test data for CI/CD minutes usage](/handbook/product/ux/stage-group-ux-strategy/ci-cd/pipeline-execution/#setting-up-test-data-for-cicd-minutes-features).
- Secure: 
  - To generate project vulnerabilities, execute `GITLAB_QA_ACCESS_TOKEN=XXXXXXXXXX GITLAB_URL="https://gitlab.com" bundle exec rake vulnerabilities:setup\[<Project_Id>,<Vulnerability_Count>\] --trace` from the `gitlab/qa` directory. Make sure to replace the placeholders in the script with your local access token, project ID, and desired number of vulnerabilities. An example of this might be `GITLAB_QA_ACCESS_TOKEN=asdfASDF1234- GITLAB_URL="http://localhost:3000/" bundle exec rake vulnerabilities:setup\[25,10] --trace`
  - To populate a merge request with vulnerabilities, [follow these steps](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/89526#note_992018561).
- Monitor: For some MRs, you may need to add test alerts. Instructions for adding an alert, along with a sample alert, are available [here](https://about.gitlab.com/handbook/engineering/development/ops/monitor/respond/#assigning-mrs-for-code-review) (see the inline code snippet of instructions).
- Value Stream Analytics: Value Stream [set up and seed data instructions](https://gitlab.com/-/snippets/2169951/raw/main/blocks.md). Many VSA features require an EE licence, [request a developer licence](https://about.gitlab.com/handbook/developer-onboarding/#working-on-gitlab-ee-developer-licenses).

If you find yourself struggling to get your environment set up, try reaching out to the [design DRI](/handbook/product/categories/#devops-stages) for help with the specific testing requirements. If you're still having difficulties after an hour or so, it's perfectly acceptable to hand the MR over to the design DRI for review completion. If you have time it might be worthwhile to shadow the design DRI to watch and learn how they complete the MR review.

### Review the MR

- Review using the [design and UI changes checklist](https://docs.gitlab.com/ee/development/contributing/design.html#checklist) to make sure all main aspects are covered.
   - The team can decide to merge before a full review if the changes remain behind a feature flag and there's a plan for you to do a full review in staging. Beware that this approach can result in unplanned issues and MRs if things need to be fixed.
- Stick to the UX requirements in the issue. See the [follow-ups checklist](https://docs.gitlab.com/ee/development/contributing/design.html#follow-ups) on creating issues for further updates or missing pieces.
- Follow our review best practices for [everyone](https://docs.gitlab.com/ee/development/code_review.html#everyone) and [reviewers](https://docs.gitlab.com/ee/development/code_review.html#reviewing-a-merge-request).
   - Remember that reviewing someone else's work is a dialogue and is an opportunity to build trust and rapport within your team.
- Separate each topic into its comment thread so that they can be discussed and resolved separately. If possible, create threads on the line(s) of code related to the topic.
   - If you are using a Review App, optionally use the [Visual Reviews feedback form](https://docs.gitlab.com/ee/ci/review_apps/#visual-reviews) to create comment threads. By default, it will capture the URL and your browser type, operating system, and screen size. Share your thoughts about this feature in the [feedback issue](https://gitlab.com/gitlab-org/gitlab/-/issues/363056).
- Ensure the author is clear on what is required from them to address/resolve the suggestion.
    - Consider using the [Conventional Comment format](https://conventionalcomments.org/#format) to convey your intent.
    - For non-mandatory suggestions, decorate with (non-blocking) so the author knows they can optionally resolve within the merge request or follow-up at a later stage.
    - There’s a [Chrome/Firefox add-on](https://gitlab.com/conventionalcomments/conventional-comments-button) which you can use to apply [Conventional Comment](https://conventionalcomments.org/) prefixes.
- Share annotated screenshots or screen recordings in your comments whenever possible. Visual materials make issues clearer and communication more efficient.
   - To capture your screen, use free apps like [CloudApp](https://www.getcloudapp.com/), [Monosnap](https://monosnap.com/), or Mac's Screenshot (see how to [capture](https://support.apple.com/guide/mac-help/take-a-screenshot-or-screen-recording-mh26782/mac) and [annotate](https://support.apple.com/guide/mac-help/mark-up-files-mchl1fd88863/mac)).
   - Annotate screenshots to highlight specific aspects that need to be addressed.
   - Highlight differences between what's _implemented in the MR_ and what's _expected_ with a [Markdown table](https://docs.gitlab.com/ee/user/markdown.html#tables) that has images/videos. Consider using the template below.
      <details markdown="1">
      <summary markdown="span">Differences table template</summary>

         | This MR     | Expected    |
         |-------------|-------------|
         | Image/video | Image/video |

      </details>
- Try to find something worth praising the author for, like a thorough MR description or their attention to detail on a certain aspect. But don't make empty praises, only praise them if you recognize the value of what they've done.
- When there are concerns with an MR consider the following actions to help progress the review:
   - Iterate instead of revert. Consider coaching and guiding the author of the MR towards an ideal solution.
   - Educate to collaborate. You may have more context of the problem than the author. Express your concerns and thoughts, and ask them how might they adapt their solution to accomodate the concerns.
   - Consider creating a follow up issue. The UX reviewer could create a follow up issue to address the concerns of the MR and inform the design DRI of it.

### Handoff the MR

- After each review round, you should remove yourself as a reviewer and post a summary comment, letting the author know if changes are required following your review.
- To address any outstanding UX concerns that deviate from the MVC, you should create follow-up issues and label them as `UX debt` (learn more about this label in [how we use labels](/handbook/product/ux/ux-department-workflow/#how-we-use-labels)).
- When you're confident that the MR meets all requirements, to handoff the MR, see the [responsibility of the reviewer](https://docs.gitlab.com/ee/development/code_review.html#the-responsibility-of-the-reviewer).
- If you complete an MR for work that isn't within your specific group, you should consider following up with the original author to discuss their documentation (ex. "This was unclear... In the future, you may want to..."). This can be thought of as a casual retrospective and can be synchronous or asynchronous. 

## Performance indicator

The [Product Design merge request (MR) review volume](/handbook/product/ux/performance-indicators/#product-design-mr-review-volume) is tracked as a Key Performance Indicator (KPI) of the UX department. 
