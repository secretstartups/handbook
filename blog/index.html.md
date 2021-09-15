---
layout: handbook-page-toc
title: "Blog Handbook"
description: "A comprehensive guide to pitching and publishing to the GitLab blog."
---

The [GitLab blog](/blog/) is managed by [the Editorial team](/handbook/marketing/inbound-marketing/content/editorial-team/). The managing editor of the blog is Valerie Silverthorne (@vsilverthorne).

## Communication
- Chat channels; use `#content` for questions, see `#content-updates` for updates on most recently published articles.

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Other related pages
- [Process for making an announcement](/handbook/marketing/corporate-marketing/#requests-for-announcements)
- [Blog dashboard](/handbook/marketing/blog/blog-metrics/)
- [Git guide for the blog](/handbook/marketing/blog/git-guide/)
- [Editorial team page (including blog style guide)](/handbook/marketing/inbound-marketing/content/editorial-team/)
- [Brand personality](/handbook/marketing/corporate-marketing/#brand-personality)
 and [tone of voice guidelines](/handbook/marketing/corporate-marketing/#tone-of-voice)
- [Monthly release post](/handbook/marketing/blog/release-posts/)

## Who can publish content to the GitLab blog?

[Everyone can contribute at GitLab](/company/mission/#mission). For the blog, this means we welcome your blog pitches, ideas, and drafts. However, the [main blog](/blog) is one of the many official voices of GitLab – meaning content that is published to the main blog must be carefully vetted to ensure we are accurately representing GitLab – both the company and the product. The editorial team, which manages the blog, is tasked with this responsibility.

The editorial team members are the [directly responsible individuals (DRI) for the official GitLab blog](/handbook/people-group/directly-responsible-individuals/) – anyone can give input, but the editorial team will decide.

All content that is published to the [main GitLab blog](/blog) must be carefully vetted to ensure the information shared is accurate, credible, [consistent with our values](/handbook/values/), and accurately represents the GitLab brand. The [editorial team](/handbook/marketing/inbound-marketing/content/editorial-team/), which manages the GitLab blog, is tasked with this responsibility. Oftentimes, this responsibility involves [connecting with internal stakeholders on the partner marketing, corporate marketing, and legal teams to ensure the content has been vetted](/handbook/marketing/inbound-marketing/content/editorial-team/#process-for-blog-posts-that-require-approval).

Before publishing, a blog post **must be reviewed by a member of the editorial team**. If the editorial team member is out of the office, a member of the content team can review the blog post. Once the appropriate reviewer has edited and approved the content, the editorial team member can add the blog post to the merge train, which means it is in the queue to publish.

**Announcements may be reviewed and published by members of the corporate marketing team**.

Otherwise, no blog may be published to the main blog without being reviewed by an editorial or content team member. The authority to publish rests with this team.

### But what if my blog post is time sensitive?

If you have a priority blog post that is time sensitive, indicate this by [applying the `priority` label to your blog post issue](/handbook/marketing/inbound-marketing/content/editorial-team/#labels) and explain why it is a priority blog post.

Tag the reviewer from the editorial team in a comment on the issue that explains the time sensitive nature of the blog post. If an editorial team member is not available to review and/or merge the blog post, reach out to the #content team on Slack and ask for a team member to review and merge.

_A time sensitive blog post may be held until it can be reviewed by the proper team members if the content contained in it is possibly [unSAFE](/handbook/legal/safe-framework/)._

## How to pitch a blog post

The first step to publishing a blog is to pitch an idea.

Start by opening an issue in the [gitlab.com/gitlab-com/www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com/issues/new?issuable_template=blog-post) using the `Blog post` template. Include a short summary of your proposed blog post where indicated, and add the `Blog::Pitch` label to ensure your pitch is triaged. Unless your post is urgent, there is no need to ping the Editorial team as pitches with that label are reviewed weekly.

If you hope to publish on a specific date or within a specific timeframe, please allow at least three weeks' lead time from the date you open your issue and ping `@vsilverthorne` immediately, as the [Editorial calendar](/handbook/marketing/inbound-marketing/content/editorial-team/#blog-calendar) fills up quickly and we cannot guarantee there will be a slot for your post without adequate notice. Please give a rationale for your proposed publish date in the issue description so the team can prioritize accordingly.

If you prefer, you can start drafting your blog post right away, before getting approval. All this means is that you may need to edit your post based on feedback from the Editorial team.

If you do not intend to write the post yourself but are just suggesting an idea you think would be worth pursuing, please make this clear in your issue description.

### Examples of strong blog post pitches

Below are links to blog post proposals that demonstrate the value the post will offer to the reader:

- [Speed up your Sketch design specs using GitLab pages](https://gitlab.com/gitlab-com/content-hack-day/issues/103)
- [How we turned a 40 person synchronous meeting into a podcast](https://gitlab.com/gitlab-com/content-hack-day/issues/181)
- [Fixing Git mistakes](https://gitlab.com/gitlab-com/content-hack-day/issues/146)
- [How to avoid broken master with Pipelines for merged results and Merge Train](https://gitlab.com/gitlab-com/www-gitlab-com/issues/4786)
- [Git performance on NFS](https://gitlab.com/gitlab-com/www-gitlab-com/issues/4653)

### If your pitch is accepted

1. If you haven't already, feel free to start your draft using this [blog post template](https://docs.google.com/document/d/1TavHlYbHQ8U1C82TEzcYaLS9l0sm89jEcBNQ0gBgkcw/edit) which has all the relevant information already embedded. Then see the [formatting guidelines](#formatting-guidelines) for help with creating and formatting your blog post MR.
1. Use the `Blog post` merge request template for your MR and ensure it is set to close the associated issue automatically.
1. Assign the issue and associated merge request to yourself and apply the appropriate labels based on what stage of creation you are on. Once it's ready for editorial review, assign both to Editorial team member who reviewed your pitch.

Note for the Content team: If your blog post is already scheduled and appears on the [blog calendar](/handbook/marketing/inbound-marketing/content/editorial-team/#blog-calendar) please submit your MR and associated issue directly to @vsilverthorne for review.
{: .alert .alert-info .note}

### Process for time-sensitive posts

First, please see [If you want to share news/an update or are seeking feedback](#-if-you-want-to-share-newsan-update-or-are-seeking-feedback) to check if you need to open an announcement request issue.

If you have already followed those directions in the [PR handbook](/handbook/marketing/corporate-marketing/#requests-for-announcements) and the Corporate Communications and Editorial teams have decided that a blog post is the best way to communicate your announcement, please follow the process below.

#### Time-sensitive posts – instructions

1. Start by opening an issue in the [gitlab.com/gitlab-com/www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com/issues) project, using the `Blog post` template and applying the `priority` label. **Even if you do not have a draft or a confirmed publish date, it's important to open the issue as far in advance as possible and ping @vsilverthorne so she knows it is coming and can prioritize accordingly.**
1. The issue title should reflect the date on which you expect to publish.
1. The issue due date should be a _minimum_ of two working days before the publish date.
1. If other due dates apply (for example, design assets are required) make sure the entire timeline and all the people responsible are captured in the issue description.
1. In most cases, we expect that you or one of your team will write the post and create the merge request for it, with all images and other formatting included. Feel free to start your draft using this [blog post template](https://docs.google.com/document/d/1TavHlYbHQ8U1C82TEzcYaLS9l0sm89jEcBNQ0gBgkcw/edit) which has all the relevant information already embedded. Then see the [formatting guidelines](#formatting-guidelines) for help with creating and formatting your blog post MR.
1. **If you need assistance with drafting the post or creating the MR, please make this clear in your issue and we will confirm if this is possible within your timeframe.**
1. Use the `Blog post` merge request template for your MR and ensure it is set to close the associated issue automatically.
1. Be sure to check the review app for your blog post or preview it locally to ensure images, headlines, etc. are formatted correctly before handing over.
1. When your MR is ready for review, please assign it and the corresponding issue to @vsilverthorne a _minimum_ of two working days ahead of when you expect to publish. **Please submit your MR earlier if you can**.
1. When you've assigned your MR and issue to a reviewer, please change the due date on the issue to reflect the publishing date.
1. Your reviewer may leave comments for you to address, in which case they will assign the MR back to you. When you have resolved all outstanding discussions, assign the MR back to the reviewer for final review and merging.

#### Who to assign your MR to – urgent posts

Please assign first to @vsilverthorne. If she is OOO, assign to @mackanic. If no one is available and you cannot wait until they return, please assign to a member of the Technical Writing team. Where possible, select the technical writer who is [listed for the most relevant stage group](/handbook/product/categories/#devops-stages). If you need immediate assistance/review, find a technical writer who is online on Slack to request this directly. Regardless, be sure to specify any time constraints around getting the content reviewed and posted.

Continuous delivery mindset: With time-sensitive posts, don't wait to publish a post if you have enough information to go live. It's OK to publish a headline and paragraph to get the news out in a timely matter and add more details later (e.g. add more graphics, charts, etc.). We don't want to miss out on a news cycle because we're waiting for an image or supplementary information.
{: .alert .alert-info}

## Third-party posts

We will promote anyone integrating with GitLab, even if we compete with them. It is very important to demonstrate to our customers that we do not lock them in. Partner or industry-adjacent third parties who want to contribute to our blog should contact the [Partner Marketing](/handbook/marketing/strategic-marketing/partner-marketing/) team before proceeding. GitLab team members asking on behalf of a third party should do the same. Third-party posts should follow the standard [pitching process for blog posts](/handbook/marketing/blog/#how-to-pitch-a-blog-post).

**Note**: We do not publish material that is exclusively promotional in nature. All blog posts should offer some informational, educational, or entertainment value to the reader.

### Guest author bio

Please be sure to include a short bio of the guest author at the end of the post, using the format below:

```
### About the guest author

_Short bio describing who the author is and giving any relevant background information._
```

You can see a [live example of a guest author bio here](/blog/2020/01/27/kubecon-na-2019-are-you-about-to-break-prod/#about-the-guest-author).

### Disclosure process for posts concerning third parties

When proposing or requesting a blog post on a topic that concerns one of GitLab's business partners, it may be appropriate to seek feedback from the partner before publishing. If you are planning a blog post that discusses a partner in depth and you're not sure if it's appropriate to seek partner feedback, please ping a member of the [Partner Marketing](/handbook/marketing/strategic-marketing/#partner-marketing) team on your issue for their input. If they think the feedback process is necessary, please follow the steps below.

**1. Connect with Alliances**

When brainstorming what topic to discuss and write about, loop in a partner manager from Alliances for feedback and buy-in during the 'ideation phase'.  To check who the relevant partner manager is, share your blog post issue and ask in the #Alliances Slack channel or check out our [partner dashboard](https://docs.google.com/spreadsheets/d/1-EE7vChGkDeyJxoM-LjVmUdwYwboxBmq8_42hjHGw_w/edit?usp=drive_web&ouid=100210745148351533200).

At this stage you and Alliances can decide whether or not the blog post topic justifies seeking feedback from the partner in question. If so, please submit your draft blog post MR to the Editorial team for review a **_minimum_ of 5 working days before you plan to publish** to ensure enough time for all parties to review.

**2. Submit draft to partner for feedback**

When the merge request has been reviewed by the Editorial team, please assign the blog post MR and associated issue to the partner manager to submit the draft to our partners for review while CC'ing the appropriate stakeholders from marketing for visibility. This should be done with 48 hours' courtesy notice, for the sole purpose of providing feedback on the following areas:

- Accuracy and appropriate representation of the partner in the context of the blog
- Accuracy of the technical components of the blog. (i.e., If we're using the wrong CLI command or stating something inaccurate about their service/product offering)
- The headline, only in cases where the partner or their product or services are named in the headline

We should not proceed to publish the blog post until the partner manager has received the feedback and/or has received acknowledgment from the partner that they have read the draft within the 48-hour window. If we need to escalate within the Alliance team, @bjung is the highest escalation point within that team.

**It should be noted that this is a courtesy review of the content, not a formal approval from our partner to publish the post. It should ultimately be GitLab's decision if to go live with the post or not.**

### Joint announcements

Joint announcements with partners or other third parties should first be [proposed to the Corporate Communications team](/handbook/marketing/corporate-marketing/#requests-for-announcements) ahead of writing to maximize impact and ensure alignment across teams. They will decide whether we issue a press release, blog post, or communicate via other channels. If they decide to move forward with a blog post, please follow the instructions [for time-sensitive blog posts](#process-for-time-sensitive-posts).

If we are doing a joint announcement with another company, the announcement post should appear on one party's site, to maximize impact. If both parties wish to publish a blog post about an announcement, the posts should be original and each take a unique angle, offering something new and valuable to the reader. In some cases this may mean a post takes more time to be researched, written, and reviewed, which may necessitate publishing shortly after the official announcement, if planning further ahead is not possible. Posts tend to get more traffic with this approach, rather than publishing and promoting duplicate posts on two blogs, or rushing to get a straightforward announcement out.

### Guest posts by GitLab partners

Official [GitLab partners](/partners/) may use our [CTA button](#call-to-action) and include promotional copy, however the blog post must still serve a function (informational or educational) other than simply promoting something.

For either type of guest post, the process and guidelines for publishing are as follows:

1. Create an issue in the [www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com/issues) project and label it `blog-post` and `guest/partner post`.
2. If technical input is required, we will ask for instructions from the third party; otherwise it is at the discretion of the blog editorial and technical writing teams whether or not to go forward.

### Guest posts by non-partners

If the author of a guest post is not an official GitLab partner, they may link back to their website or own content with inline links, but may not include a [CTA button](#cta) or promotional copy.


#### If you're publishing a GitLab story on another site

Please try to include 2-3 relevant links back to about.gitlab.com, where appropriate. This is advantageous for SEO and may send some new visitors back to our site.

If there is another layer/angle to the story, we could explore this in a new post on our own blog, which could then link back to the original post on the other site. Please [open an issue to propose this](#publishing-process) if that's the case.

#### If you see a story we should feature on our blog

If you spot a tweet, post, or feedback anywhere detailing an interesting use case for GitLab which you think could make a good story, open an issue and ping @nwoods to help determine whether we should pursue an interview for a blog post or case study (we will not ask the original author to create something for us).

### Is your blog post SAFE?

GitLab is a maturing company, and while transparency remains a core value, we are considering what information falls under "Internal Transparency" and what falls under "External Transparency". The Editorial team has the responsibility of making sure that all blog content is consistent with our **SAFE** guidelines. Below is a summary of the [SAFE guidelines created by our legal team](/handbook/legal/safe-framework/):

**1. Sensitive:** "The S in SAFE serves as a reminder to make sure that Team Members are not sharing information which could be considered Sensitive information without express approval from GitLab Legal."

Example: Does this blog post contain confidential company information, customer or partner information, or information about the security or stability of GitLab's platform?

**2. Accurate:** "The A in SAFE serves as a reminder to double-check that the information Team Members are sharing is Accurate."

Example: Can you site the information shared in this blog post? Is this information verifiable if challenged by an external party?

Remember: "Not only should Team Members make sure that the information is Accurate, but they should be able to provide the underlying data, if applicable, to support the accuracy or confirm the methodology used to achieve the data."

Fix this by attributing data or information to a source.

**3. Financial**: "The F in SAFE serves as a reminder that the company’s Financial information is so important to protect that it requires CFO’s approval prior to sharing externally."

Example: Does your blog post contain any financial information, such as dollars, performance metrics, or margins? Does the information you are about to share include any **forward-looking statements**? This includes quantitative (something that CAN be expressed as a number) and qualitative (something that CANNOT be expressed as a number) statements.

**4. Effect:** "The E in SAFE serves as a reminder to be mindful about the Effect - intentional and unintentional - that the information Team Members are sharing may have on the company."

Example: Does your blog post contain information that could be helpful or harmful to the company or team members? What effect could the information contained in your blog post have on the "information mix" available to the public?

Remember: "When considering what information to disclose, Team Members should consider the pros and cons of the Effect the information will have on all parties inside and outside the company. Furthermore, Team Members should also consider that in some instances information intended to have one Effect may have a completely different, unintended Effect. When in doubt, talking it over with a colleague or reaching out via #safe is always a good option."

#### What does this mean for my blog post?

GitLab has a bias for action, and the Editorial team is no different. However, the GitLab Blog is a public-facing asset and represents the company. If the Editorial team has concerns or questions about the information contained in the blog post, the **Editorial team members have the authority to hold a blog post** until Legal, Corporate Commmunications, Partner Marketing, the CMO, etc., can review the blog post to mitigate any potential risk for the company.

Learn more about the [SAFE Guidelines by reading the handbook page](/handbook/legal/safe-framework/).

### Diversity, Inclusion, and Belonging (DIB) checklist for blog writers

It is important that our blog content represents our company values of diversity, inclusion, and belonging. Not all of these points will be relevant to your blog post, but they are important values and practices to be mindful of throughout the writing process. The blog editorial team tries to check for these things, but it is better if all content is created with these values and practices in mind. Tag us if you have questions!

#### Inclusive formatting

- Did you select an [inclusive](/handbook/marketing/blog/#inclusive-photos) cover image and/or screengrab?
- Write descriptive alternative text for all [inline images and screengrabs](/handbook/marketing/blog/#inline-images). Alternative text is important for SEO and accessibility. Read this [article from Moz to learn more about writing alternative text](https://moz.com/learn/seo/alt-text).
- Ensure that all links are meaningful and descriptive (e.g. avoid link text such as "read here" or "this article"). Descriptive links are more useful and accessible for people using screen readers.

#### Inclusive writing

- Write short and concise sentences. Clear writing with short sentences makes it easier for the reader to follow along.
- Limit your use of jargon, and if you must use a jargon-y term, define it on the first instance.
- GitLab is a global team with a global community, so you want to write for a global audience. This means limiting your use of regional metaphors and not writing in a manner that is United States-centric.
- Does the post use [inclusive language](/company/culture/inclusion/#inclusive-language)? An example of inclusive language: "Hi folks/Hi everyone/ Hi y'all" versus "Hi guys".
- If you're still not sure about your use of inclusive language (or just want to check to be sure) test it out against the [inclusiveness check tool](https://inclusiveness-check.herokuapp.com/) developed by GitLab team member, [Lien Van Den Steen](/company/team/#lienvdsteen). Here's [how the tool works](https://gitlab.com/gitlab-com/people-group/peopleops-eng/people-operations-engineering/-/issues/72) and the [words it checks against are listed in the linked project](https://gitlab.com/lienvdsteen/linter/-/tree/master/data).
- Is every individual in the blog post quoted using their [preferred pronoun](/handbook/people-group/gender-pronouns/#how-do-i-know-which-pronouns-to-use)? Tip: If you don't know someone's preferred pronoun, just ask them. It should also be included on the [team page profile](/company/team/#close-modal) and Slack profile.

### More DIB writing tips

- Is your blog post biased? We all have unconscious biases. Take our [recognizing bias training](/company/culture/inclusion/unconscious-bias/#recognizing-bias-training), check the [list of unconscious biases in our DIB handbook page](/company/culture/inclusion/unconscious-bias/#unconscious-biases-to-look-out-for-in-ourselves-and-in-others) and practice strategies for [recognizing and managing yours](/company/culture/inclusion/unconscious-bias/#tips-on-recognizing-and-avoiding-bias).
- If you still have questions, don't hesitate to tag the editorial team lead @vsilverthorne, leads of the appropriate [team member resource group (TMRG)](/company/culture/inclusion/erg-guide/) in your blog issue or email diversityinclusionandbelonging@gitlab.com with your questions.

### Best practices for specific types of posts

#### Technical posts

Our audience loves a technical post, particularly when they are "how to" focused and include screenshots, code snippets, and more.

Although normally longer blog posts don't tend to perform as well, traffic-wise, a well-thought-out technical how-to post can be long and still attract enthusiastic readers.
  - A good rule of thumb is to keep it no longer than something you'd want to read yourself.
  - It's always a nice idea to break things up with subheads, screengrabs, code snippets, or the like.
  - It can help to make sure the reader knows this will be a long post, as in "This is a _deep dive_ into xxx."  
  - Finally, it's important to make sure the headline and description set the expectation of a lengthy technical how-to.

#### GitLab or industry events

We conducted [an audit of all event-supporting content for 2018-19 and shared the results](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/issues/1588). Below is a summary of the takeaways:

- It's still important to keep the reader in mind when considering writing about industry events.
- Live coverage of an event does not tend to draw much traffic either at the time of the event or in the months that follow.
- For example, KubeCon may have been an amazing event, but it will have been covered by media everywhere.
- Straightforward event recaps (whether an industry or GitLab-specific event) do not perform well.
- We've seen the strongest performance from event-supporting content in the form of engineering stories based on a talk or workshop from an event.
  - These get traffic even if they are published weeks or months after the event because they are standalone stories.

**Recommendations**:

What matters to _our_ readers is what matters to GitLab. A better way to cover events that offers something new with a specific angle is to take one trend or session and do a deep dive on it, rather than trying to cover the conference as a whole.

If you want to share photos from the event such as the GitLab booth or social events, consider sharing these on personal social channels.

#### Analyst report news

If GitLab has been included in an analyst report and you wish to share this news, please follow the [announcement request process](/handbook/marketing/corporate-marketing/#requests-for-announcements) before starting work on a blog post, as we may choose to share the news in a press release or on our social channels (for rare, big news items), for example. If it is decided that a blog post is the best way to share the news, please consider the following when drafting your blog post:

**As always, please keep our (largely technical) audience in mind:**
1. Why would someone reading our blog be interested in this news? What's in it for them?
1. If GitLab has been recognized for specific features or capabilities, can you demonstrate how they work/help? What pain points do they address?
1. A tutorial-style piece that shows how to get started with the relevant features is a great way to share the news while offering additional value to the reader.
1. How do the features for which GitLab has been recognized fit into the overall product? What context for the features might be useful for someone unfamiliar with GitLab?
1. If we are building on the features, can you share details around what our vision and roadmap are? Are there issues or epics where work is being done that you can link to? Bonus points for video demos or mockups of future iterations!

**The blog post should have value for our audience beyond an announcement:**
1. [Straightforward announcements do not draw much traffic](https://gitlab.com/gitlab-com/marketing/product-marketing/-/issues/733).
1. The content of the blog post should not repeat information from the handbook or a landing page without offering more insight or detail.
1. If the need for a blog post is only to direct people to a landing page, it's better to skip the blog post altogether and request promotion of the landing page directly.
1. Think about it this way: would your blog post stand on its own without the news? If it would still make a great blog post if the award/designation was just a footnote or a CTA at the end, then you're on the right track.
1. A more substantive blog post may take longer to draft but should result in greater visibility for your news.
1. If the blog post consists of more than just an announcement it is less critical to publish straight away.

#### Newsjacking

These are generally popular if GitLab genuinely has something meaningful or useful to contribute to the conversation. The point of a newsjacking post should not be self serving.

This post about [an experimental Git feature](/blog/2020/03/13/partial-clone-for-massive-repositories/) is a great example, because it takes something newsy, contextualizes it, and then goes into a tutorial.

Examples of successful newsjacking posts:

- [Resources for companies embracing remote work](/blog/2020/03/06/resources-for-companies-embracing-remote-work/)
- [How can we help solve the COBOL programmer shortage?](/blog/2020/04/23/cobol-programmer-shortage/)
- [How Git Partial Clone lets you fetch only the large file you need](/blog/2020/03/13/partial-clone-for-massive-repositories/)

#### GitLab feature posts

Posts focusing on GitLab features or capabilities are most successful when we do the following:

- Be selective. Choose only the most popular/highly requested features or capabilities to highlight in a post.
- Tell the back story. Often, sharing how we built something is more interesting to our audience than just showing them a new feature.
- Give a tutorial. Technical posts showing how to really use something get more traffic than simply announcing that it exists. If there is a link to a demo on our branded or Unfiltered YouTube channel, link to that, or consider recording a video to accompany your blog post.
- Broaden the scope. Example: "How GitLab CI helps solve common DevSecOps challenges" could be "How CI helps solve common DevSecOps challenges." You might give examples using GitLab CI but the title doesn't limit the post to be about GitLab CI specifically, straight away. Someone who doesn't know about GitLab might be more inclined to click on the post then.
- Consider a different format. Blog posts should have an opinion, a unique use case, or commentary on something newsy/timely, otherwise it may be perceived as marketing material. It may be more appropriate to share what you want to post on the relevant feature page.

### Trends

_Updated November 2020. Will update with complete FY21 review in February 2021._

1. Average unique views per month on the blog: ~184,000 (November 2019 -
   October 2020)
1. Average unique views per post in two months after publish date: 2,219
1. 39% of posts get >1,000 sessions in two months
1. 41% of posts garner <499 sessions in two months
1. 5% of posts are "hits" (10K+ sessions in two months after publishing); "Hits" don't consistently perform well over time

See [Blog traffic analyses](/handbook/marketing/inbound-marketing/content/editorial-team/#blog-traffic-analyses) for more in-depth analysis on traffic to the blog.

#### Observations

1. There is not a strong correlation between # of sessions and topic
1. Strong performing content marketing posts focus on show and tell engineering stories (see [Attributes of a successful blog post](#attributes-of-a-successful-blog-post))

### Identifying and qualifying a high-performing blog post

**Qualifying story ideas:**

Look for the following patterns:

1. Team implementing a new technology, process, or coding language
1. Deep dive into how a popular feature is made
1. Chronicling a performance improvement
1. Covering a controversial decision that was made

**Who and how to interview:**

1. Contact the technical subject matter expert. This can be someone who created the issue, or managed the project.
1. Set up a 30 minute interview and dig into:
  - What was the challenge?
  - What was the solution?
  - How did you go from point a to point b? Walk me through your thought process.
  - How was the solution implemented and what is a realistic use case of the solution?
  - What lessons were learned?
  - How did this make the GitLab product / development community better?
1. Optional: Contact the business subject matter expert. This could be a product manager or a product marketing manager.
1. Set up a 30 minute interview and dig into:
  - How does this solution help a user?
  - What business value does this solution bring?
  - How does this solution relate to our product?

### Attributes of a successful blog post:

1. Deep dive into a hard technical challenge.
1. A behind-the-scenes look at how we tackled something: "How we built x," "How we solved y," "How we scaled z."
1. Puts the reader in the shoes of the person who faced the challenge; reader learns via compelling example.
1. Intellectually satisfying; learning component.
1. Allows the reader to learn from someone else's mistake, and follows a problem/trials and triumphs/solution story arc.
1. Taking a controversial or unpopular stance on a topic, backed by hard evidence.

### Examples of high-performing posts (20K+ sessions in published month):

1. [Meet the GitLab Web IDE](/blog/2018/06/15/introducing-gitlab-s-integrated-development-environment/)
1. [How a fix in Go 1.9 sped up our Gitaly service by 30x](/blog/2018/01/23/how-a-fix-in-go-19-sped-up-our-gitaly-service-by-30x/)
1. [Hey, data teams - We're working on a tool just for you](/blog/2018/08/01/hey-data-teams-we-are-working-on-a-tool-just-for-you/)
1. [Why we chose Vue.js](/blog/2016/10/20/why-we-chose-vue/)
1. [How we do Vue: one year later](/blog/2017/11/09/gitlab-vue-one-year-later/)

Team members can also browse the [Content Marketing Dashboard](https://datastudio.google.com/open/1NIxCW309H19eLqc4rz0S8WqcmqPMK4Qb) to see more examples of current blog posts drawing high traffic.

## Formatting guidelines

To publish to the blog, you will need to create a merge request for the www-gitlab-com project with a file of your blog post content formatted in Markdown. There are a few ways to go about this outlined [below](#when-youre-ready-to-create-your-blog-post). **If you choose to use Netlify CMS you likely won't need to know all the formatting in this section so feel free to [skip ahead](#when-youre-ready-to-create-your-blog-post).**

Please read through the [Markdown guide](/handbook/markdown-guide/) for reference.

If you like, you can start by drafting your post in a Google Doc (feel free to make a copy of this [blog post template](https://docs.google.com/document/d/1TavHlYbHQ8U1C82TEzcYaLS9l0sm89jEcBNQ0gBgkcw/edit)). Below are instructions for formatting the content of your file correctly. If you already have your content ready to go, you can jump ahead to see [how to add your blog post file with a merge request](#when-youre-ready-to-create-your-blog-post).

### Frontmatter

The post **frontmatter** is the first part of any post. It is standard and cannot be changed, so please make
sure to provide the correct information, and do not add nor remove anything from the default template. If you think one of the fields is unnecessary for your post, leave it blank and the editor who reviews your post may remove it.

```yaml
---
title: "This is the post title"
author: Firstname Lastname # if name includes special characters use double quotes "First Last"
author_gitlab: GitLab.com username # ex: johndoe
author_twitter: Twitter username or gitlab # ex: johndoe
categories: news # please choose one category from list below
image_title: '/images/blogimages/post-cover-image.jpg' # optional – just remove this line if you don't want to use a cover image. See below for more info
description: "Short description for the blog post"
tags: tag1, tag2, tag3
cta_button_text: 'Watch the XXX release webcast live!' # optional
cta_button_link: 'https://page.gitlab.com/xxx.html' # optional
guest: true # required when the author is not a GitLab Team Member or there is more than one author
ee_cta: false # required only if you do not want to display the EE-trial banner
install_cta: false # required only if you do not want to display the 'Install GitLab' banner
twitter_text: "Text to tweet" # optional;  If no text is provided it will use post's title.
featured: yes # reviewer should set.
postType: content definition # i.e.: content marketing, product, corporate
related_posts:
  - "/blog/2020/xx/xx/related-post-1/"
  - "/blog/2020/xx/xx/related-post-2/"
  - "/blog/2020/xx/xx/related-post-3/" # please see related posts section below for details
merch_banner: merch_one
merch_sidebar: merch_one
---
```

More information about each field can be found below.

#### Title

The title is the headline for your post. Headlines matter, both to the reader and when it comes to search engine optimization (SEO). Below are some best practices for writing headlines:

- Try to craft a headline that tells the reader what your post is about using as few words as possible. The more specific a headline is, the better.
- The more "prescriptive" the headline is – using words like "how," "why," or "what" for example – the more clear it is to the reader and to Google what the post is about.
- When all else fails, please put yourself in the position of the reader who is searching for something on Google (because that's the major way people find our blog). What do they care about? What would they be interested in? This is more important to communicate up front than whatever we as GitLab want to tell readers.
- Try to avoid beginning with continuous verbs ("-ing"). Make them active and descriptive so that readers know what they can expect to gain from reading the post.
- If there's something clever, funny, or punny that you are tempted to include in your headline, it is probably better to use it in your [description](#description) or in the first paragraph of your post. Jokes generally aren't effective at communicating to readers or Google what to expect from your post (sadly!).
- It helps to think about your headline as part of a package: the headline, description, and first paragraph (or introduction) are where your reader learns about what your post is about. You can tinker with all of these to optimize the whole package, so if something doesn't fit in your headline it could go into the description, or vice versa.
- Consider coming back to write or tweak your headline and description when you've finished writing your post. You're more likely to capture what the post is about when you know this yourself!
- Your headline and any subheadings don't need to be full sentences. Do not include a period at the end.

##### Example headlines

- A headline like "**How GitLab switched from Azure to GCP in 10 days**" clearly reflects what someone might be searching for: how to switch platforms, how to move from Azure, how to move to GCP, etc.
  - "**Switching from Azure to GCP**" on the other hand is vague, because it's not clear who is doing the switching, or if the post is going to cover how to switch or why to switch.
- "**What's in your backpack?**" (an actual [post about tools for remote work](/blog/2019/10/10/whats-in-your-backpack/) isn't "findable" on SEO because it's not nearly specific enough.
  - If the headline had been "**GitLab's top tools for remote work**" or "**GitLab's round up of top remote work tools**" it would have been much more likely to be discovered by someone searching on Google for remote work tools. Some more examples:
-  ~~Reducing DevOps costs~~ -> How to reduce DevOps costs
-  ~~Beautifying our UI~~ -> What we're doing to beautify our UI

If all this seems too much, we get it! And that's why the Editorial team will always review (and maybe tweak) your headline for SEO, style, and content. But, because you're writing a blog post as an SME (and we're not SMEs) we hope you'll put that expertise to work in the headline as much as possible.

#### Author

Write out the author's name here. If you want to credit multiple authors please use the following format:

`Anthony Davanzo and Kelly Hair` (see a [live example of multiple authors](/blog/2019/09/17/gitlab-hashicorp-terraform-vault-pt-1/))

Please include the `guest: true` field in the frontmatter as well.

#### Cover image

There are a few options you can choose from: pick an image from a [library of original images](#library-images), [choose a stock image](#stock-photography) to upload yourself, [request a custom cover image](#original-images) from Design, or [publish without a cover image](#no-image).

##### Library images

We have some original illustrations for our blog categories and most popular topics which you are welcome to choose from. You can view these in [https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/source/images/blogimages/library](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/source/images/blogimages/library). In the `image_title:` field in the frontmatter, please enter your chosen image's file path using the format `/images/blogimages/library/engineering.png`.

##### Stock photography

Choose one from any public domain resource. [Unsplash](https://unsplash.com/) is our preferred
resource for public domain images.

Please [add a reference](#image-attribution) to the cover image source, owner, and license at the end of the blog post, even if it doesn't require attribution.

Please [see the instructions on sizing, formatting, and storing images](#images-and-illustration).

###### Inclusive photos

We try to keep images on the blog neutral in terms of gender, ethnicity, etc. This generally means avoiding using stock images of people. It is also better to avoid using images of people (for example, GitLab team members at an event) for the cover photo because the blog post title and description overlay the image, which can look too busy.

##### Original images

If you would like an original design for your blog post image, please [open a design request](/handbook/marketing/inbound-marketing/#brand-and-design-issue-templates). If you prefer, you can [create an image](#preparing-images) yourself.

##### Images for integration posts

If the blog post is about an integration, the DRI from Partner Marketing should [open a design request](/handbook/marketing/inbound-marketing/#brand-and-design-issue-templates) for a custom cover image as far in advance as possible.

##### No image

If you don't have an image in mind or can't think of anything to use, just remove the `image_title` field from the [frontmatter](#frontmatter). No image will appear on the blog post itself, and the default image (see below) will appear on the post's tile on the blog homepage. The thumbnail image for the blog post (when sharing on social media, for example) will automatically be determined by the category of the blog post.

If preferred, you can use the default image as a cover image, but this is not advised as the image does not add anything to the post and takes up a lot of room beneath the blog title:

  ![default blog cover image](/images/handbook/marketing/default-blog-image-example.png){: .shadow.medium.center}

  If you still want to use the default image, use the path `'/images/default-blog-image.png'` in the [frontmatter](#frontmatter).

  Please see the [Social Marketing handbook](/handbook/marketing/corporate-marketing/social-marketing/admin/#adding-frontmatter-to-gitlab-owned-pages-for-proper-social-sharing) if you would like to use a specific image for the social media thumbnail.

#### Featured

Add `featured: yes` to the frontmatter of a post to create a featured post. The most recent featured post will be shown at the top of the blog in the featured section (even if more are tagged). To remove a post from being featured, remove the `featured: yes` line from the frontmatter.

#### Categories

Use only **one** of the following categories per post.
**Do not** change the capitalization, spelling, or anything else,
otherwise you'll create another category, which is something we don't want to do accidentally.

If you're not sure which category your post belongs in, just put a placeholder in your MR and leave a comment for your reviewer noting that.
- `devops platform` - All posts mentioning GitLab's DevOps Platform, or DevOps platforms more generically.
- `engineering` – technical, actionable content. Anything covering how to do something, use something, or solve a problem should fall under this category
- `open source` – stories from or about our community, users, or the wider open source community
- `culture` – posts about remote work, working together, or GitLab culture
- `insights` – industry, data, newsjacking, developer survey, etc.
- `news` – company or product announcements (including policy changes, operational announcements, and breaking changes), news, or events
- `security` – security-related posts
- `releases` - release posts, security and patch releases. Posts in the `releases` category need to be in the `sites/uncategorized/source/releases/posts` directory, not `sites/uncategorized/source/blog/blog-posts`. Please see the [Release Post handbook](/handbook/marketing/blog/release-posts/) for more.

We're working on improving category pages and tagging, but for now you can find posts under the same category by navigating to
`https://about.gitlab.com/blog/categories/category-name/`. Dashes will be automatically added
to multi-word categories and all of them will be lowercased in the URL. For example, the
category "company" will be available under `https://about.gitlab.com/blog/categories/company/`.

Note that there's a CI test that checks for wrong or missing categories. If one of
the above should change or a new category is added, don't forget to edit the
following files:

1. [`Rakefile`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/Rakefile) (search for `CATEGORIES`) - responsible for the CI test
1. [`source/includes/blog/category-nav.html.haml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/includes/blog/category-nav.html.haml) - responsible for the categories navbar
1. [`source/handbook/marketing/blog/index.html.md`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/handbook/marketing/blog/index.html.md) - the handbook which you're currently reading
1. If a category changes, you need to replace it in all posts. Here's a one-liner command you can run:

    ```sh
    find . sites/uncategorized/source/blog/blog-posts -type f -exec sed -i 's/categories: old/categories: new/' {} \;
    ```

    where `old` is the old category and `new` is the new one.
1. In case of a category change, a redirect should be added in <https://gitlab.com/gitlab-cookbooks/cookbook-about-gitlab-com> (internal).
   This is the last step after all the above are merged into `master` and deployed. Ask a production engineer to help you.

#### Description
This field should provide a short summary of your blog post. It's best to think about your description in relation to the [title](#title) of your post. Don't repeat the title in the description; use it as an opportunity to provide more context or information about your post for the reader, and to work in the primary keywords.

The [`description`](https://moz.com/learn/seo/meta-description) meta tag is important
for SEO, and it appears underneath the title of your post on the post itself and on the [blog index page](/blog/). It is also part of Facebook Sharing and Twitter Cards. Descriptions should be limited to 150 characters, otherwise the text will be cut off on the index page.

The description is mandatory for all the new posts, and it has been included in the default post
frontmatter generated by [the command `rake new_post`](#create-a-new-post).

#### Tags
These are included to help readers find similar posts if they are interested in a particular subject. Tags appear at the bottom of each blog post, and clicking on a tag takes you to [/blog/tags](/blog/tags.html) where you can view all tagged posts and browse by tag.

You can include as many tags as you like, separated by commas. Please only include tags from the following list, and note that they are case sensitive. If you think a tag should exist that isn't on this list, please leave a comment for the reviewer on your MR saying which tag you'd like to use and why it should be included.

- agile
- bug bounty
- careers
- CI
- CD
- cloud native
- code review
- collaboration
- community
- contributors
- customers
- demo
- design
- developer survey
- DevOps
- events
- features
- frontend
- Group Conversations
- git
- GitOps
- GKE
- google
- growth
- inside GitLab
- integrations
- kubernetes
- news
- open source
- patch releases
- performance
- production
- releases
- remote work
- research
- security
- security releases
- security research
- startups
- testing
- tutorial
- UI
- user stories
- UX
- webcast
- workflow
- zero trust

#### Call to action

The CTA entry is optional; if you don't need to add any CTA to the hero, just omit both entries, leaving the frontmatter without them. Do not include any UTM parameters in the link. Always wrap their values with quotes.

The final result is a red button over the cover image of the post.

In the below example, the following was included in the blog post's [frontmatter](/handbook/marketing/blog/#frontmatter) in order to generate the CTA button.

`cta_button_text: 'Watch the 8.16 release webcast live!'`<br>
`cta_button_link: 'https://www.youtube.com/watch?v=iYPhXm8RlxI'`

![Hero CTA preview](/images/handbook/marketing/hero-cta.png){:.shadow}

#### Comments

Comments are present on all posts by default. In the rare case that you want to disable comments on a particular blog post, you can do so by adding a line to the frontmatter: `comments: false`

Please do this only with good reason, as comments are an important source of feedback and engagement on blog posts.

#### EE trial banner
To not display the EE trial banner on the blog post, set `ee_cta` to `false` in the frontmatter. It is set to true by default, so there's no need to add `ee_cta: true` to the frontmatter. Only set to false on the rare occasion you have a strong reason to not display the banner (usually in the case of posts that are for developers and our open source community).

#### Post type

We use these to make it faster to track the effectiveness of different types of blog posts. There are several post type categories we use to differentiate blog content:

1. **Content marketing:** Examples, education, reporting, storytelling, thought leadership, and use cases.
1. **Corporate:** Company news, announcements, and community updates (ex: issue bash, contributor profiles).
1. **Product:** Release posts, critical updates, and partnership announcements.
1. **dev-evangelism:** Blog posts authored or contributed to by members of the [Developer Evangelism](/handbook/marketing/community-relations/developer-evangelism/) team.
1. **Product Marketing:** Blog posts authored or contributed to by members of the [Product Marketing](/handbook/marketing/strategic-marketing/pmmteam/) team.
1. **Technical Marketing:** Blog posts authored or contributed to by members of the [Technical Marketing](/handbook/marketing/strategic-marketing/technical-marketing/) team.
1. **edu-program:** Blog posts authored or contributed by [Education Program Team](/handbook/marketing/community-relations/education-program/)
1. **oss-program:** Blog posts authored or contributed by [Open Source Program Team](/handbook/marketing/community-relations/opensource-program/)

Use the `postType` frontmatter option to set the content definition.

### Media embeds
We limit media embeds to the following providers:
- **YouTube** for video
- **CodePen** for code samples
- **Google Docs** for collaborative text
- **Google Sheets** for sharing spreadsheets
- **Google Slides** for sharing slides

### Newsletter sign-up form

We can now embed a CTA for readers to sign up for our newsletter directly from the blog post page. There are two different designs. Use the following:

```
<%= partial "includes/blog/content-newsletter-cta", locals: { variant: "a" } %>
```

  Result:

  ![Newsletter sign-up CTA variant A](/images/handbook/marketing/newsletter-cta-a.png){: .shadow}

  OR

  ```
<%= partial "includes/blog/content-newsletter-cta", locals: { variant: "b" } %>
  ```

  Result:

  ![Newsletter sign-up CTA variant B](/images/handbook/marketing/newsletter-cta-b.png){: .shadow}

  Note: this only works for blog post files with the extension `.html.md.erb`.

### Click to tweet

Consider adding pull quotes as click-to-tweet boxes, to encourage and make it easier for readers to share key points from your blog post. This only works for blog post files with the extension `.html.md.erb`.

To add a click-to-tweet box, copy the below partial and enter the `text` and `author` fields. If the author doesn't have a Twitter account you can use `gitlab` instead.

  `<%= partial "includes/blog/tweet", locals: { text: '', author: '' } %>`

Example:

  ```
  <%= partial "includes/blog/tweet", locals: { text: 'The Operations experience then should really just be that I go to work in the morning and see an email summary of what has happened, without me having to do anything', author: 'MarkPundsack' } %>
  ```

Renders:

![Click to tweet](/images/handbook/marketing/click-to-tweet.png){: .shadow}

### Related posts

Ideally you should choose three blog posts related to your post, using the URL format shown. Your choices will be automatically displayed at the bottom of your blog post. Please choose posts no more than two years old and that are directly relevant to your main theme. If you do not specify related posts here, they will default to showing the three most recent posts from the same category.

### Merch banner and sidebar

These should be included by default on all blog posts. Use your discretion; if it doesn't seem appropriate to include merchandizing on a post you can leave out either the sidebar or both the sidebar and banner. Examples: If we're announcing a partnership or integration, if the blog post contains lots of images and a sidebar could distract from the content, or if the blog post is very technical in nature (a tutorial or post describing a security advisory, offensive security practices, etc) and merchandizing undermines the authenticity or intent of the content or author.

There are two steps to include these: Designate what merch sidebar and banner to add in the front matter [example frontmatter above](/handbook/marketing/blog/#frontmatter), and add the merch sidebar inside your content:

#### Merch sidebar

To add a merch sidebar to your blog post, you need to designate it in the front matter. We are in the process of implementing Netlify CMS to publish blog posts. Currently merch sidebars will not display on your blog posts. [Read more here](https://gitlab.com/gitlab-com/marketing/inbound-marketing/growth/-/issues/1069).

#### Merch banner

Merch banners are automatically added to the end of blog posts if they are designated in the frontmatter. Adding the following will add the 2nd Merch Banner:

```
merch_banner: merch_two
merch_sidebar: merch_two
```


You can see a live example of the merchandizing in this blog post: [Introducing Resource Groups](/blog/2020/01/21/introducing-resource-groups).

You can also [view the raw file of our example post](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source%2Fblog%2Fposts%2F2020-01-21-introducing-resource-groups.html.md.erb) to see how all the necessary elements have been added to the frontmatter and body of the post.

#### Current merch items

Merch items are defined in one data file and implemented across all blog posts during the build process. You can see all current merch items in [blog_merch.yml](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/blog_merch.yml)

``` blog-merch.yml
merch_one:
  destination_url: "/resources/guide-to-the-cloud/"
  cta_text: "Learn more"
  banner_image_source: "/images/merchandising-content/mc-guide-to-app-security-ebook-vertical.png"
  banner_body_title: "Guide to the Cloud"
  banner_body_content: "Harness the power of the cloud with microservices, cloud-agnostic DevOps, and workflow portability."
  sidebar_image_source: "/images/merchandising-content/mc-guide-to-app-security-ebook-horizontal.png"
  sidebar_body_title: "Guide to the Cloud"
  sidebar_body_content: "Harness the power of the cloud with microservices, cloud-agnostic DevOps, and workflow portability."

merch_two:
  destination_url: "/compare/github-actions-alternative/"
  cta_text: "View now"
  banner_image_source: "/images/merchandising-content/mc-mastering-cicd-vertical.png"
  banner_body_title: "Master your CI/CD"
  banner_body_content: "Watch this webcast and learn to deliver faster with CI/CD."
  sidebar_image_source: "/images/merchandising-content/mc-mastering-cicd-horizontal.png"
  sidebar_body_title: "Master your CI/CD"
  sidebar_body_content: "Watch the webcast"

merch_three:
  destination_url: "/resources/ebook-single-app-cicd/"
  cta_text: "Learn more"
  banner_image_source: "/images/merchandising-content/benefits-of-single-app-cicd.jpg"
  banner_body_title: "Free eBook: The benefits of single application CI/CD"
  banner_body_content: "Download the ebook to learn how you can utilize CI/CD without the costly integrations or plug-in maintenance."
  sidebar_image_source: "/images/merchandising-content/benefits-of-single-app-cicd.jpg"
  sidebar_body_title: "Single application CI/CD"
  sidebar_body_content: "How to reduce costly integrations and plug-in maintenance."

merch_four:
  destination_url: "/resources/ebook-ciso-secure-software/"
  cta_text: "Get the eBook"
  banner_image_source: "/images/merchandising-content/mc-10-steps-every-ciso-ebook-vertical.png"
  banner_body_title: "10 Steps Every CISO Should Take to Secure Next-Gen Software"
  banner_body_content: "Understand three software shifts impacting security, and the steps CISOs can take to protect their business."
  sidebar_image_source: "/images/merchandising-content/mc-10-steps-every-ciso-ebook-horizontal.png"
  sidebar_body_title: "10 Steps to secure next-gen software"
  sidebar_body_content: "Learn how DevOps will impact your security program."

- name: merch_five
  destination_url: "/webcast/cloud-native-transformation/"
  cta_text: "Learn more"
  banner_image_source: "/images/merchandising-content/cloud-native-transformation.png"
  banner_body_title: "A Cloud Native Transformation"
  banner_body_content: "Learn how Ask Media Group modernized their architecture and development with microservices, containers, and Kubernetes."

-name: merch_six
  destination_url: "/resources/ebook-remote-playbook/"
  cta_text: "Download now"
  banner_image_source: "/images/merchandising-content/remote-playbook-vertical.png"
  banner_body_title: "Free eBook: The GitLab Remote Playbook"
  banner_body_content: "Covering fundamentals to long-term strategy, our Remote Playbook shares how to stabilize your work-from-home team and dive deep on topics including asynchronous workflows, meetings, informal communication, and management."
  sidebar_image_source: "/images/merchandising-content/remote-playbook-horizontal.png"
  sidebar_body_title: "Get the Remote Playbook"
  sidebar_body_content: "Empower your team to thrive remotely."

- name: merch_seven
  destination_url: "/resources/ebook-version-control-best-practices/"
  cta_text: "Download now"
  banner_image_source: "/images/merchandising-content/version-control-collaboration-blog-merch-vertical.png"
  banner_body_title: "Free eBook: Version control best practices"
  banner_body_content: "Collaboration made easy: Learn how teams ship and solve problems with a single application for source code and other assets."
  sidebar_image_source: "/images/merchandising-content/version-control-collaboration-blog-merch-horizontal.png"
  sidebar_body_title: "Version control best practices"
  sidebar_body_content: "Enhance team collaboration to accelerate delivery"

- name: merch_eight
  destination_url: "https://page.gitlab.com/resources-ebook-beginner-guide-gitops.html"
  cta_text: "Download now"
  banner_image_source: "/images/merchandising-content/gitops-vertical-220x338.png"
  banner_body_title: "Free eBook: A beginner's guide to GitOps"
  banner_body_content: "GitOps takes DevOps processes and applies them to infrastructure automation. See a sample GitOps workflow and learn how to get started with GitOps."
  sidebar_image_source: "/images/merchandising-content/gitops-horizontal-300x150.png"
  sidebar_body_title: "A beginner's guide to GitOps"
  sidebar_body_content: "Learn more about infrastructure automation."
```

#### Requesting new merchandise

If you have a new asset you'd like to promote with merchandise on the blog, please open an issue in the Corporate Marketing project using the [`blog-merch-request` issue template](https://gitlab.com/gitlab-com/marketing/growth-marketing/brand-and-digital/brand-and-digital/-/issues/new?issuable_template=blog-merch-request). When you have filled in the required copy, please ping @luke to assign someone from the Design team to create the required images. When you have these, create a merge request to add the new merch to the www-gitlab-com repository and update the [current merch items](#current-merch-items) in this handbook. If you're not sure how, please ping @laurenbarker on your issue.

### Adding code blocks

Below are the two types of code blocks we commonly use on the blog. Find a number of other options in the [Markdown guide](/handbook/markdown-guide/#code-blocks).

#### In-line code

We use this for short words or phrases included in a paragraph. For inline code, surround the word or code with single backticks (`).

**Example:**

This is an ``` `in-line` ``` code block.

**Results in:**

This is an `in-line` code block.

#### Fenced code blocks

"Fenced" code blocks look like the block below. We use these for longer code snippets. To create a fenced code block, put triple backticks on one line directly above and one line directly below the code.

**Example:**

![how to create fenced code block](/images/handbook/marketing/fenced-code-example.png){: .shadow.small.left}

**Results in:**

```
this is my code block
   here's another line
end
```

#### Highlighted code

Syntax highlighting helps make code easier to read. In order to enable syntax highlighting please append the language type at the end of the code block. The name matters because every language is highlighted differently.

**Example (not highlighted):**

```
```code goes here```
```

```
document.querySelectorAll('a[href^="#"]').forEach(elem => {
    elem.addEventListener('click', e => {
        e.preventDefault();
        let block = document.querySelector(elem.getAttribute('href')),
            offset = elem.dataset.offset ? parseInt(elem.dataset.offset) : 0,
            bodyOffset = document.body.getBoundingClientRect().top;
        window.scrollTo({
            top: block.getBoundingClientRect().top - bodyOffset + offset,
            behavior: "smooth"
        });
    });
});
```

**Versus (highlighted javascript):**

```
```code goes here```javascript
```
(or other languages/syntaxes such as yaml, ruby, sql, etc)

```javascript
document.querySelectorAll('a[href^="#"]').forEach(elem => {
    elem.addEventListener('click', e => {
        e.preventDefault();
        let block = document.querySelector(elem.getAttribute('href')),
            offset = elem.dataset.offset ? parseInt(elem.dataset.offset) : 0,
            bodyOffset = document.body.getBoundingClientRect().top;
        window.scrollTo({
            top: block.getBoundingClientRect().top - bodyOffset + offset,
            behavior: "smooth"
        });
    });
});
```

### Images and illustration

Blog images are stored in the `source/images/blogimages/` directory. If your post contains many images, create a sub-directory for your post: `source/images/blogimages/name-of-post/`.

#### Preparing images

- If creating an original cover image, the dimensions should be 900px x 400px at least, but ideally 1800px x 800px for optimal quality on all displays.
- If using an existing image for the cover (e.g. stock photography), if it is in landscape format you may not need to crop it. Please check the blog post preview locally or in the review app to ensure the image appears as expected.
- All images should be less than 1MB. JPEGs tend to be smaller than PNGs so use JPEGs when possible. You can compress images using [TinyPNG.com](https://tinypng.com/) or any other image editor.
- To resize in Preview go to `Tools`, `Adjust size` and adjust the entry in the `Resolution` field. Preview will estimate what the resulting image size will be before you click `OK` to confirm.
- Keep all the images the same width.

#### Image attribution

The only images accepted for about.GitLab.com are public domain images and screenshots. Whenever you choose an image which is not a screenshot, add a link to the original image to the merge request description and as an HTML comment:

```html
<!-- image: image-url -->
```

Do the same for [cover images](#cover-image), adding a link to the original image to the end of the post:

```md
Cover image by [owner name and surname](link) on [Unsplash](link)
{: .note}
```

You can paste this from the box that appears on Unsplash when you have downloaded an image. For images not from Unsplash:

```md
[Cover image](link-to-original-image) by [owner name and surname](link), licensed under [CC X](link-to-licence)
{: .note}
```

#### Inline images

To add an image inline, insert the following into your markdown file, where you want the image to appear:

```md
![Alt text for your image](/images/blogimages/your-image-filename.jpg){: .shadow}
```

The alt text for your images should describe the content and function of your image for visitors using a screen reader.

#### Sizing and aligning images

There are new classes for sizing and positioning blog post images. They should be added to blog post images similar to how the `shadow` class is added already:

``` md
![Your image alt text](/images/blogimages/your-image-filename.jpg){: .shadow.small.left.wrap-text}
```

The new classes are grouped into:

**Size**

- `.medium`: Display image 75 percent of page width
- `.small`: Display image 50 percent of page width

**Position**

- `.left`: aligned left (default)
- `.center`: centered
- `.right`: aligned right

**Effect**

`.wrap-text`: Only applies to images that are positioned left or right. Makes text wrap around the image.

These classes are only applied for screens 992px wide and wider.

If a Position class is used without an Effect class then there will simply be empty space where the image isn't. Similarly, using a Position class without a Size class will have little-to-no effect.

#### Image captions

Insert the following beneath an inline image to include a caption:

```
This is my image caption
{: .note.text-center}
```

This will look as below:

This is my image caption
{: .note.text-center}

#### Screenshots

For technical/tutorial posts, please illustrate your examples with [code blocks](#adding-code-blocks) or screenshots. Be consistent with your examples. E.g., if you are using a generic URL
to exemplify your steps `domain.com`, be consistent and keep it `domain.com`, throughout the post.

- Static images should be used to illustrate concepts, provide diagrams, elements of the UI or orient the reader.
- Images should not be used to render commands or configuration which would prevent someone being able to copy and paste.
- Animated GIFs can be used sparingly where you need to show a process or some event happening over the course of time or several actions, though they should not replace text descriptions or instructions.
- Use screenshots to identify and localize specific parts of the screen. There are great tools for doing so. For example, Nimbus Screenshot (browser extension), Mac screenshot, Snipping Tool for Windows, and Screenshot Tool for Ubuntu.

**Important security point:** Do not expose your personal details by using your real tokens or security credentials. Use placeholders such as `[project's CI token]` stub instead. Or blur them if displayed on screenshots.

#### Embedding videos

Please see the [Markdown Guide](/handbook/markdown-guide/#display-videos-from-youtube) for instructions for embedding videos from YouTube and other sources.

If appropriate, please add a video credit, for example:

```
Video directed and produced by [Aricka Flowers](/company/team/#arickaflowers)
{: .note}
```

#### Embedding tweets or Instagram posts

Please see the [Markdown guide for instructions for embedding posts from social media](/handbook/markdown-guide/#embed-tweets).

#### Creating GIFs

Animated GIFs are very useful to illustrate short dynamic processes, which might be easier to understand with this kind of resource.
There are a few ways to create animated GIFs, one of them is using [Giphy Capture], a light-weight app for Mac.

Avoid GIFs with a huge file size, they will be difficult to load for users with bad internet connection. In those cases, you can either cut the GIFs in smaller pieces, or record a video, or use a sequential image.

Read more on [Making Gifs in the Product Handbook](/handbook/product/making-gifs/).

#### Resizing Images

Image sizes can exceed megabytes and slow down the site rendering. Follow the proportions above and learn more about [resizing images](/handbook/tools-and-tips/#resizing-images).

## When you're ready to create your blog post

There are three ways to create a blog post MR:

1. Use [Netlify CMS](/handbook/marketing/netlifycms/)*
1. Add a new file to `sites/uncategorized/source/blog/blog-posts/` [in the UI](#creating-a-blog-post-mr-from-the-ui)
1. [Use the terminal](#creating-a-post-from-the-command-line) on your own computer

*We have recently implemented Netlify CMS for drafting and publishing blog posts. This is fairly new, and there are several videos to help you learn how to use this tool.
<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/A5_RIEYyIjo" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

### Preparing blog posts privately

Currently, it is not possible to prepare a confidential blog post without forking the www-gitlab-com project. We avoid this because forking is not straightforward for all contributors and it doesn't allow us to use review apps to preview the post before publishing.

We have an [issue open to explore implementing functionality in Netlify CMS that would allow us to stage and preview posts](https://gitlab.com/gitlab-com/marketing/inbound-marketing/growth/-/issues/1149) before triggering a commit to GitLab.com. In the meantime, please leave a comment in your issue to let us know if the information in your proposed blog post is under embargo (e.g., a company announcement) and whether you need assistance staging the post in private. Please see below for details about how we prepare blog posts privately.

#### Creating MRs for confidential issues

If your blog post issue is confidential, please don't create an MR using the button on your issue – instead follow the instructions below. This also applies if there isn't an issue for the post (only in rare cases of extremely sensitive information).

 1. [Create a new merge request from a new branch through the UI](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html#new-merge-request-from-a-new-branch-created-through-the-ui) **OR** [create your blog post MR starting from the command line](#creating-a-post-from-the-command-line).
 1. When you have created your MR, apply the blog post MR template and make sure the description includes `Closes [link to your confidential issue]` to create the connection between the issue and the MR, so that when the MR is merged the issue will close automatically.

**Note that your MR will not be confidential**. If information is under embargo it is best to prepare the blog post in a Google Doc or locally and create the MR ~1 hour ahead of publish time to keep the blog post private. This is to allow time for pipelines to pass before the post is live. Just give the branch and MR generic names to avoid drawing attention to them.

**For time-sensitive announcements** we recommend finding out from #production on Slack who the [Engineer On Call](/handbook/engineering/infrastructure/incident-management/#roles-and-responsibilities) will be at the time you are hoping to publish, so you can give them a heads up about the plans and you know who to contact on the day if there are any production issues with GitLab.com.

Feel free to give a thumbs up to [this feature request for confidential MRs](https://gitlab.com/gitlab-org/gitlab/-/issues/222404) and [this issue exploring implementing private staging in Netlify CMS](https://gitlab.com/gitlab-com/marketing/inbound-marketing/growth/-/issues/1149).

### Creating a blog post MR from the UI

You should have an issue for the blog post you are writing. Go to the issue and click `Create merge request`.

![Create merge request button](/images/handbook/marketing/create-mr-screengrab.png){: .shadow.medium.center}

Now you have a merge request! Please edit the title to be "Draft: Blog Post - Title of blog post".

Make sure you select the blog post template for your MR, as this contains some important tasks for you to complete.

![MR template for blog post](/images/handbook/marketing/blog-mr-template.png){: .shadow.medium.center}

You can assign the MR to yourself while you are working on it.

#### Adding your blog post file to the MR

Click on the link to the right of `Request to merge` (this is the name of your branch).

![branch name](/images/handbook/marketing/branch-name-screengrab.png){: .shadow.medium.center}

Now navigate to `sites/uncategorized/source/blog/blog-posts/` in the tree view, then click on the `+` dropdown menu and select `New file`.

![New file](/images/handbook/marketing/new-file.png){: .shadow.medium.center}

Enter your filename using the format `yyyy-mm-dd-name-of-your-post.html.md.erb`. This will become the URL for the blog post so please keep that in mind and don't use something like `my-blog-post-draft`! 😄

![New file](/images/handbook/marketing/enter-filename.png){: .shadow.medium.center}

Please do not include special characters, capital letters, or numbers (other than the date) in your filename as this can lead to issues with publishing and can break the link to your review app.
{: .alert .alert-gitlab-orange}

If you aren't sure when the post will be published, just choose an arbitrary date in the future – we will update it before publishing.

Now you can paste your post content into the window. If pasting from a Google Doc or another word processor, please make sure you convert it to plain text first. A quick way to do this is to paste everything into the URL bar of a browser, and paste it into your blog post file from there.

![Example blog post file](/images/handbook/marketing/example-blog-post-file.png){: .shadow.medium.center}
Note that there is no blank line at the top or lines in between your front matter items.
{: .note.text-center}

When ready, scroll down and enter a description of what you've just done in the `Commit message` box. Make sure the `Target branch` is correct (i.e. has the number and title of the issue for your blog post) then click `Commit changes`.

![commit message](/images/handbook/marketing/commit-message.png){: .shadow.medium.center}

You will then see your added file. To go back to your MR, it's easiest to go to your MRs in your dashboard (this is why it's important to assign the MR to yourself when you create it). You'll find all MRs assigned to you in the top right corner of your screen.

![MR dashboard](/images/handbook/marketing/mr-dashboard.png){: .shadow.medium.center}

In your MR, if you scroll down and go to the `Changes` tab, you should see the blog post file you added there.

![Changes tab](/images/handbook/marketing/changes-tab.png){: .shadow.medium.center}

#### Previewing your blog post

To see a preview of your post as it will look when it's live, you will need to wait for the pipeline to pass. You can check its progress from the `Pipelines` tab. When it passes, you can click on `View app` near the top of your MR and it will open a new tab with your preview. **Please check your review app before asking anyone else to review.**

![Link to review app](/images/handbook/marketing/review-app-link.png){: .shadow.medium.center}

If the link to the review app results in the error shown below, please check that the filename does not have any upper case letters in it, as that can cause the link to break.

![review app error](/images/handbook/marketing/review-app-error.png){: .shadow.medium.center}

#### If the review app is missing

If you don't see `View app` button, you may need to restart the review app.*

Click on the last pipeline icon and retry the `review` job. This will re-deploy the environment and enable the review app in the MR again.

![Restart Review App](/images/handbook/marketing/review-app-restart.png){: .shadow.medium.center}

*The website and blog posts are deployed as web application into CI/CD environments. For cost savings, idle deployments can be stopped automatically, causing halted review apps.
{: .note}

#### If your pipeline fails

The most common reasons for a failed build or pipeline when working on blog posts is a production issue with GitLab.com, or something entered incorrectly in the [frontmatter](#frontmatter).

Common errors are:

- Incomplete quotation marks: on lines such as the title, description, and image, you usually wrap the text in quotation marks. If you leave a quotation mark off, the build will fail. If your text includes single quotation marks or an apostrophe, make sure you enclose the text in double quotation marks to avoid confusion:
  - e.g. "There's something you need to know." or "Have you ever asked yourself, 'What am I doing here?'"
- A special character in the front matter keys (for example, `#`). Fix this by wrapping the text value into single quotes: `title: 'Everyone can contribute: Insights from #GitChallenge'`
- A dangling new line in the first line. The front matter header needs to begin and end with **3 dashes**: `---`.
- The GitLab/Twitter authors have the `@` character added. This is not needed, remove the `@` character.

You might find the following video helpful:
<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/tFp4dQJ8NRM" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

If the blog post pipeline fails due to a timeout error (something beyond your control), you can trigger a new pipeline without pushing a new commit: go to the `Pipelines` tab and click on `Run Pipeline`.

![Trigger new pipeline](/images/handbook/marketing/run-pipeline.png){: .shadow.medium.center}

#### Making changes to your blog post

If you need to make changes to your file, including editing the filename to update the date when you are ready to publish, you can edit it by going to the `Changes` tab, clicking on the three dots menu on the right of your blog post file, and selecting `Edit in single-file editor`, which will take you to the same interface as when you added your new file. Just make your changes, edit the commit message to say what you did and hit `Commit changes`.

![Edit button](/images/handbook/marketing/edit-file.png){: .shadow.medium.center}

#### When your blog post is ready for review

When you're ready, assign the MR to a fellow team member to review your post. When they have reviewed and you've addressed any comments they had and resolved any outstanding discussions, please assign your MR **and the corresponding issue** to the Editorial team member who reviewed your pitch to review.

You may find this video walkthrough helpful for creating your blog post MR from the UI:

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/Cxs5EMHNf6g" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

### Creating a post from the command line

You will need to be set up to edit the website locally in order to create your post this way. Please see [GitLab 102](/handbook/marketing/strategic-marketing/getting-started/102/) for instructions. If you're already set up:

- Run `git checkout master`
- Run `git pull` to ensure your version of master is up to date with GitLab.com
- Run `git checkout -b new-branch-name` (substitute `new-branch-name` with whatever you want to call your branch)
- Now run

```sh
rake new_post
```

Hit **enter** or **return**, then you'll be prompted to enter the post title. Type in the title exactly as you want it, for example "Hello World – I'm a new post" and rake will take care of the filename for you. Then you just open the file, fill out the front matter and start writing, or paste your (plain text) draft in from your Google Doc.

### Adding a cover image to your blog post MR

Most blog posts require a new [cover image](#cover-image). You should upload your chosen image to the same branch as your blog post file, so that it is all included in the same MR. This means it will be published to the website simultaneously, and also allows you to preview your cover image in the review app. **If you're using [Netlify CMS](/handbook/marketing/netlifycms/) you can add your cover image there.**

#### Step 1: Upload image file

When you have selected an image to use, save it on your computer, ensuring you don't include any capital letters, spaces, or special characters in the filename.

Now go to your MR and click on the branch name after`Request to merge`.

![branch name](/images/handbook/marketing/branch-name-screengrab.png){: .shadow.medium.center}

Navigate to `source/images/blogimages/` in the tree view, then click on the `+` dropdown menu and select `Upload file`

![Upload file](/images/handbook/marketing/upload-image-file.png){: .shadow.medium.center}

Drag and drop or click to upload your image file, then enter a description of what you've just done in the `Commit message` box. Make sure the `Target branch` is correct (i.e. has the number and title of the issue for your blog post) then click `Upload file`.

To go back to your MR, it's easiest to go to your MRs in your dashboard (this is why it's important to assign the MR to yourself when you create it). You'll find all MRs assigned to you in the top right corner of your screen.

![MR dashboard](/images/handbook/marketing/mr-dashboard.png){: .shadow.medium.center}

In your MR, if you scroll down and go to the `Changes` tab, you should see the blog post file you added there.

![Changes tab](/images/handbook/marketing/changes-tab.png){: .shadow.medium.center}

#### Step 2: Add file path to blog post file

Make a note of the name of your image.

![Image file name](/images/handbook/marketing/image-file-path.png){: .shadow.medium.center}

Scroll down to your blog post file and click on the pencil icon (Edit file button).

![Edit button](/images/handbook/marketing/edit-file.png){: .shadow.medium.center}

This will take you to the same interface as when you added your new file.
In the frontmatter, look for this field:

```
image_title: '/images/blogimages/post-cover-image.jpg'
```

Change the image filename to the name of the image you just uploaded. Ensure that you keep the whole path the same (so, starting with `/images/blogimages/`). Now edit the commit message to say what you did and hit `Commit changes`.

Go back to your MR. If everything has been done correctly, when the pipeline passes your review app should show the cover image as expected.

![Link to review app](/images/handbook/marketing/review-app-link.png){: .shadow.medium.center}

#### What if my cover image isn't showing?

This is usually because the image filename and what you entered in the frontmatter do not correspond. Look out for typos in either the filename or in the frontmatter.

Make sure that the image path is correct (i.e. it begins with `/images/blogimages/` – no missing slash at the front, no `source` before the first slash).

It often helps to look at the file of [another recent blog post that is already live](https://gitlab.com/gitlab-com/www-gitlab-com/tree/master/sites/uncategorized/source/blog/blog-posts) and compare it to your file to see if there are any discrepancies.  

## When your blog post has been published

Once your blog post is live, the Editorial team member who merged it will share it in #content-updates on Slack. From there, a team member from Social Marketing will schedule it for our social channels.

You should promote your content too! Please see the Social Marketing handbook for [Team Member Social Media Advocacy](https://about.gitlab.com/handbook/marketing/corporate-marketing/social-marketing/team-member-social-advocacy/).

You can also view the below [How to Make Your Content Work Harder for You](https://docs.google.com/presentation/d/1RPSkAWtXtWfbuoHD9D1iSdt5o1d7a4MA5QPGjGeFFXM/edit?usp=sharing) training from Corporate Communications:
<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/VrKd89vJizM" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->
