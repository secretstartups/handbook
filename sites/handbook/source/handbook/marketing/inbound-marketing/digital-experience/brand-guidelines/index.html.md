---
layout: handbook-page-toc
title: "Brand Guidelines"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Brand Guidelines
{:.no_toc}

### Guidelines how we work
[ TODO : Document ]

#### Partnership with third parties

In certain cases, the help of a third party agency or design partner may be brought in for a project. The following serves as criteria for when to outsource design:

- Smaller-scale projects, such as stickers or requests that do not meet our current business prioritization, where the brand guidelines provide sufficient creative direction and parameters for the third party to work with.
- Larger-scale projects where the Brand and Digital team need additional support given the timeline and/or scale of the request.

Whenever a third party is brought in to support design, the work must be shared with the Brand and Digital team to ensure brand integrity and that we are [working transparently](/handbook/values/#transparency) with one another.

For guidance on which third-party agency or designer(s) to work with, please reach out to [brand-and-digital@gitlab.com](mailto:brand-and-digital@gitlab.com).

#### Requesting design help

1. Create an [issue](/handbook/marketing/growth-marketing/#brand-and-design-issue-templates) in the corresponding project repository.
    1. For tasks pertaining to [about.gitlab.com](/) create an issue in the [www-gitlab-com project](https://gitlab.com/gitlab-com/www-gitlab-com/issues).
    1. For all other marketing related tasks create an issue in the [corporate marketing project](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/issues).
1. Add all relevant details, goal(s), purpose, resources, and links in the issue description. Also `@` mention team members who will be involved.
1. Set due date (if possible) — please leave at least 2 week lead time in order to generate custom design assets. If you need them sooner, ping @luke in the #marketing-design Slack channel and we will make our best effort to accommodate, but can't promise delivery.
1. Add the `Design` and `Website Redesign` (if applicable) label(s) to your issue.

#### Team logo request guidelines

As the company continues to grow, incoming requests for internal team logos are increasing at a rate that is not scalable for the Brand Design team. We understand the desire for teams within GitLab to have their own identity, so we've created these guidelines to help direct your request:

* Teams can create their own logos that are for internal (non-public) use only.
* If you believe a public-facing team logo would be valuable to our business, please submit a [design request issue](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/issues) outlining how it will be used, who will see it, and it's perceived value. Logos will be created and approved on a case-by-case basis to capitalize on brand opportunities and ensure brand integrity.

### Privacy

[ TODO : Document ]

### License

[ TODO : Document ]

### What's new

[ TODO : Document ]

## Design principles

### Generate value

[ TODO : Document ]

### Omni-channel experiences

[ TODO : Document ]

### Everyone can contribute

[ TODO : Document ]

### Grow a community

[ TODO : Document ]

## Foundations

### Personality

GitLab's brand has a personality that is reflected in everything we do. It doesn't matter if we are hosting a fancy dinner with fortune 500 CIOs, at a hackathon, or telling our story on about.gitlab.com…across all our communication methods, and all our audiences, GitLab has a personality that shows up in how we communicate.

Our personality is built around four main characteristics.

- Human: We write like we talk. We avoid buzzwords and jargon, and instead communicate simply, clearly, and sincerely. We treat people with kindness.
- Competent: We are highly accomplished, and we communicate with conviction. We are efficient at everything we do.
- Quirky: We embrace diversity of opinion. We embrace new ideas based on their merit, even if they defy commonly held norms.
- Humble: We care about helping those around us achieve great things more than we care about our personal accomplishments.

These four characteristics work together to form a personality that is authentic to GitLab team-members, community, and relatable to our audience. If we were quirky without being human we could come across as eccentric. If we were competent without being humble we could come across as arrogant.

GitLab has a [higher purpose](https://about.gitlab.com/company/strategy/#mission). We want to inspire a sense of adventure in those around us so that they join us in contributing to making that mission a reality.

### Writing style

The following guide outlines the set of standards used for all written company communications to ensure consistency in voice, style, and personality, across all of GitLab's public communications.

See the [Blog Editorial Style Guide](/handbook/marketing/growth-marketing/content/editorial-team/#blog-style-guide) for more.

The [tone of voice](/handbook/marketing/corporate-marketing/#tone-of-voice-1) we use when speaking as GitLab should always be informed by our [Content Strategy](https://gitlab.com/gitlab-com/marketing/blob/master/content/content-strategy.md#strategy).

### Guidelines website

#### Using other logos

Logos used on the about.gitlab.com site should always be in full color and be used to the specifications provided by the owner of that logo, which can usually be found on the owners website. The trust marks component found throughout the site is the only exception and should use a neutral tone:

<img src="/images/handbook/marketing/corporate-marketing/design/trust-marks.png" class="full-width">

#### Text

Our website uses the [Source Sans Pro](https://fonts.google.com/specimen/Source+Sans+Pro?selection.family=Source+Sans+Pro) font family. Headers (h1, h2, etc.) always have a weight of 600 (unless used in special situations like large, custom quotes) and the body text always has a weight of 400. Headers should not be given custom classes, they should be used as tags and tags alone (h1, h2, etc.) and their sizes or weights should not be changed, unless rare circumstances occur. Here are typography tags.

`H1: Header Level 1`

`H2: Header Level 2`

`H3: Header Level 3`

`H4: Header Level 4`

`p: Body text`

#### Buttons

Buttons are an important facet to any design system. Buttons define a call to action that lead people somewhere else, related to adjacent content. Here are buttons and their classes that should be used throughout the marketing website:

**Note**: Text within buttons should be concise, containing no more than 4 words, and should not contain bold text. This is to keep things simple, straightforward, and limits confusion as to where the button takes you.

**Primary buttons**

Primary buttons are solid and should be the default buttons used. Depending on the color scheme of the content, purple or orange solid buttons can be used depending on the background color of the content. These primary buttons should be used on white or lighter gray backgrounds or any background that has a high contrast with the button color. They should also be a `%a` tag so it can be linked elsewhere and for accessibility. Buttons should also be given the class `margin-top20` if the button lacks space between itself and the content above.

<div class="flex-container flex-column flex-start margin-bottom20">
  <a href="/handbook/marketing/corporate-marketing/#primary-buttons" class="btn cta-btn orange margin-top20">Primary Button 1</a>
  <pre class="highlight shell">.btn.cta-btn.orange</pre>
  <p>OR</p>
  <a href="/handbook/marketing/corporate-marketing/#primary-buttons" class="btn cta-btn purple">Primary Button 2</a>
  <pre class="highlight shell">.btn.cta-btn.purple</pre>
</div>

**Secondary buttons**

There will be times when two buttons are needed. This will be in places such as [our jobs page](/jobs/), where we have a button to view opportunities and one to view our culture video. In this example, both buttons are solid, but one is considered the primary button (orange), and the other is the secondary button (white). The CSS class for the solid white button is <br> `.btn.cta-btn.btn-white`.

<img src="/images/handbook/marketing/corporate-marketing/design/jobs-buttons-example.png" class="full-width">

This is the proper use of two buttons, both being solid, but different colors based on hierarchy. If the background is white or a lighter color that doesn't contrast well with a white-backgound button, a ghost button should be used as a secondary button, and should match in color to the primary button beside it as shown below:

<div class="buttons-container flex-start">
  <a href="/handbook/marketing/corporate-marketing/#primary-buttons" class="btn cta-btn orange margin-top20">Primary Button</a>
  <a href="/handbook/marketing/corporate-marketing/#primary-buttons" class="btn cta-btn ghost-orange margin-top20">Secondary Button</a>
</div>

<div class="buttons-container flex-start margin-bottom20">
  <a href="/handbook/marketing/corporate-marketing/#primary-buttons" class="btn cta-btn purple margin-top20">Primary Button</a>
  <a href="/handbook/marketing/corporate-marketing/#primary-buttons" class="btn cta-btn ghost-purple margin-top20">Secondary Button</a>
</div>

DO NOT: Do not use these ghost buttons styles as standalone buttons. They have been proven to be less effective than solid buttons [in a number of studies](https://conversionxl.com/blog/ghost-buttons/). They should only be used as a secondary button, next to a solid primary button that already exists. Here are the classes for the secondary buttons:

<div class="flex-container flex-column flex-start margin-bottom20">
  <a href="/handbook/marketing/corporate-marketing/#primary-buttons" class="btn cta-btn ghost-orange margin-top20">Secondary Button 1</a>
  <pre class="highlight shell">.btn.cta-btn.ghost-orange</pre>
  <a href="/handbook/marketing/corporate-marketing/#primary-buttons" class="btn cta-btn ghost-purple">Secondary Button 2</a>
  <pre class="highlight shell">.btn.cta-btn.ghost-purple</pre>
</div>


### Logos

To download the GitLab logo (in various formats and file types) check out our [Press page](/press/).

The GitLab logo consists of two components, the icon (the tanuki) and the wordmark:

![GitLab logo](/images/handbook/marketing/corporate-marketing/design/gitlab-lockup.png){: .small.left}

GitLab is most commonly represented by the logo, and in some cases, the icon alone. GitLab is rarely represented by the wordmark alone as we'd like to build brand recognition of the icon alone (e.g. the Nike swoosh), and doing so by pairing it with the GitLab wordmark.

#### Logo safe space

Safe space acts as a buffer between the logo or icon and other visual components, including text. this space is the minimum distance needed and is equal to the x-height of the GitLab wordmark:

![Logo x-height](/images/handbook/marketing/corporate-marketing/design/x-height.png){: .medium.left}

![Logo safe space](/images/handbook/marketing/corporate-marketing/design/logo-safe-space.png){: .small.left}

![Icon safe space](/images/handbook/marketing/corporate-marketing/design/icon-safe-space.png){: .small.left}

The x-height also determines the proper spacing between icon and wordmark, as well as, the correct scale of the icon relative to the wordmark:

![Stacked logo safe space](/images/handbook/marketing/corporate-marketing/design/stacked-logo-safe-space.png){: .small.left}

#### Minimum logo size

Here are the recommended minimum sizes at which the logo may be reproduced. For legibility reasons, we ask that you stick to these dimensions:

**Logo**

![Horizontal logo minimum size](/images/handbook/marketing/corporate-marketing/design/logo-min-size.png){: .small.left}

- Digital: 100px wide
- Print: 1.25in (31.75mm) wide

**Stacked logo**

![Stacked logo minimum size](/images/handbook/marketing/corporate-marketing/design/logo-stacked-min-size.png){: .small.left}

- Digital: 60px wide
- Print: 0.75in (19mm) wide

**Icon**

![Icon minimum size](/images/handbook/marketing/corporate-marketing/design/icon-min-size.png){: .small.left}

- Digital: 30px wide
- Print: 0.50in (13mm) wide


#### The Tanuki

The [tanuki](https://en.wikipedia.org/wiki/Japanese_raccoon_dog) is a very smart animal that works together in a group to achieve a common goal. We feel this symbolism embodies GitLab's [mission](/company/strategy/#mission) that everyone can contribute, our [values](/handbook/values/), and our [open source stewardship](/company/stewardship/).

The tanuki logo should also not have facial features (eyes, ears, nose...); it is meant to be kept neutral, but it can be accessorized.

#### Brand oversight

Occasionally the [old GitLab logo](https://gitlab.com/gitlab-com/gitlab-artwork/blob/master/_archive/logo/fox.png) is still in use on partner websites, diagrams or images, and within our own documentation. If you come across our old logo in use, please bring it to our attention by creating an issue in the [Marketing](https://gitlab.com/gitlab-com/marketing/general/issues) issue tracker. Please include a link and screenshot (if possible) in the description of the issue and we will follow-up to get it updated. Thanks for contributing to our brand integrity!

### Trademark

GitLab is a registered trademark of GitLab, Inc. You are welcome to use the GitLab trademark and logo, subject to the terms of the [Creative Commons Attribution Non-Commercial ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/). The most current version of the GitLab logo can be found on our [Press page](/press/).

Under the Creative Commons license, you may use the GitLab trademark and logo so long as you give attribution to GitLab and provide a link to the license. If you make any changes to the logo, you must state so, along with the attribution, and distribute under the same license.

Your use of the GitLab trademark and logo:

- May not be for commercial purposes;
- May not suggest or imply that you or your use of the GitLab trademark or logo is endorsed by GitLab, or create confusion as to whether or not you or your use of the GitLab trademark or logo is endorsed by GitLab; and
- May not suggest or imply or that you are affiliated with GitLab in any way, or create confusion as to whether or not you are affiliated with GitLab in any way.

Examples of improper use of the GitLab trademark and logo:

- The GitLab name may not be used in any root URL, including subdomains such as `gitlab.company.com` or `gitlab.citool.io`.
- The GitLab trademark and/or logo may not be used as the primary or prominent feature on any non-GitLab materials.

### Typography

The GitLab brand uses the [Source Sans Pro](https://fonts.google.com/specimen/Source+Sans+Pro?selection.family=Source+Sans+Pro) font family.

### Color

While the brand is ever-evolving, the GitLab brand currently consists of six primary colors that are used in a wide array of marketing materials. RGB and CMYK swatch libraries can be found [here](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/tree/master/design/gitlab-brand-files/color-palettes).

##### Hex/RGB

![GitLab Hex/RGB Colors](/images/handbook/marketing/corporate-marketing/design/gitlab-hex-rgb-colors.png)


### Illustration

Illustration within the GitLab is represented and directed by [our values](/handbook/values/), from concept to execution. We use illustration as both a communication tool and to visually support our ideas. 

#### What is GitLab illustration?
- Led by the passion of the GitLab community.
- Direct and simple with personality that elevates the GitLab voice.
- Reflective of GitLab values.
- Collaborative, iterative and ever-growing.
- Focused and simplified, just like the product.

#### Why we use illustration:
- To bring context and clarity to complex ideas.
- To capture and elevate values and brand voice.

#### Approach:
- A combination of geometric shapes that represent rules of code and organic shapes that represent personality and talent of the community.
- The use of broken and dashed lines to represent the iterative GitLab culture.

#### Illustration library

- [General illustrations](https://drive.google.com/drive/u/1/folders/1fZlETtBGCm2kxeGF0q1AQgN4o8PbMBdH)
- [Diagrams](https://drive.google.com/drive/u/1/folders/135pqvEKnOSVXEJ-DoTyZmf1bhBAFCSls)
- [Patterns](https://drive.google.com/drive/u/1/folders/1HRoZcWIrJZLr3T5kKU8JFluze5aFqV3W)


### Iconography

Icons are a valuable visual component to the GitLab brand; contributing to the overall visual language and user experience of a webpage, advertisement, or slide deck.

**Label icons**

Label icons are intended to support usability and interaction. These are found in interactive elements of the website such as navigation and [toggles](/pricing/).

![Label icons example](/images/handbook/marketing/corporate-marketing/design/label-icons-example.png){: .medium.center}

**Content icons**

Content icons are intended to provide visual context and support to content on a webpage; these icons also have a direct correlation to our illustration style with the use of bold outlines and fill colors.

A few examples include our [event landing pages](/events/aws-reinvent/) and [Resources page](/resources/).

<img src="/images/handbook/marketing/corporate-marketing/design/content-icons-example.png" class="full-width">

**Badges**
[TODO: Document]

**Patterns**
[TODO: Document]

#### Icon library

- [Small line icons](https://drive.google.com/drive/u/1/folders/1lcFh97K07ptYQQ4AWU26mAjvmJBNpvkp) 
- [Large line icons](https://drive.google.com/drive/u/1/folders/1p-s4lUU7o-74KsUEd5sw0oi2neRQwxp4)
- [Large color icons](https://drive.google.com/drive/u/1/folders/1RVumxRGWtfi91iH56aaYu-bjMrr6u9_z)
- [Icon illustrations](https://gitlab.com/gitlab-com/marketing/general/tree/master/design/presentation-decks/_general-assets/icons/illustrated-icons) (.png)
- [Software Development Lifecycle](https://gitlab.com/gitlab-com/marketing/general/tree/master/design/gitlab-brand-files/software-development-lifecycle/complete-lifecycle-icons/png)

#### Software Development Lifecycle Icons

**What Are The SDLC Icons**

Each stage of our software development lifecycle is represented visually by an icon, these icons can be used together to represent the full lifecycle or individually to represent the specific stage.

**Using the SDLC Icons**

The software development lifecycle icons were designed to with a huge amount of information in mind. To make sure everyone is using the icons correctly we have outlined some direction below.  

**Color**

- On any white background, the original or color sets of icons should be used.
- When using the icons on a dark background the purple icons should be utilised and preferably used on the background color #380D75

**Size**

- 46px is the smallest the icons should be used. If a smaller size is required please contact @vicbell via slack or in an issue.
- 74px is the regular-sized icons, the line weight has been adjusted for the larger size so this set should not be scaled down as it may compromise the overall aesthetic of the icons.
- We do have larger 600px png and jpegs of the icons although we do recommend sticking to the initial 2 sizes. If the 600px pngs or jpegs are needed, please reach out in teh  #marketing-design Slack channel.

**Full Set vs Individual Icons**

- The full set of icons together is always preferred as it shows the overall journey of the lifecycle.
- Individual icons should never be used as [general iconography](https://drive.google.com/drive/u/1/folders/1d4LvuoUMKwmlNOHl9LaeukgMkFgojI_N), for example, the plan icon looks like it could pass for a calendar, please never use this set as a substitute for another icon, each icon in this set should only ever represent it’s stage, this is so users can become familiar with our software development lifecycle and instantly recognise the icon for what stage it is.

**Print vs Web**

- There are [EPS](https://drive.google.com/drive/u/1/folders/1keinIumhjLTGqcgJa_AV1e9Dsl9ZtL2i) files of both 46px and 76px sizes which should be used for print, they are saved as CMYK file so no color adjustment is needed.
- Use [SVG](https://drive.google.com/drive/u/1/folders/1HsLZPtffTF6KoG4IrvBvBi4bTVQUmYwO) files whenever the icons are being displayed on the web.

#### Software Development Lifecycle Icon Library

- [SDLC PNG icons](https://drive.google.com/drive/u/1/folders/1sA22m6M-RBdCZn_AdZUaTMPqCxj2-AYt)
- [SDLC SVG icons](https://drive.google.com/drive/u/1/folders/1HsLZPtffTF6KoG4IrvBvBi4bTVQUmYwO)
- [SDLC EPS icons](https://drive.google.com/drive/u/1/folders/1keinIumhjLTGqcgJa_AV1e9Dsl9ZtL2i)
- [SDLC JPEG icons](https://drive.google.com/drive/u/1/folders/1iUsN9sMkcxDPre_HL1k2c6vJ6v9L71YS)



#### Social media

- [Profile assets](https://gitlab.com/gitlab-com/marketing/general/tree/master/design/social-media/profile-assets/png/assets)

### Photography

#### Photo library
[ TODO : Document ]

### Brand resources

- [GitLab logos](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/tree/master/design/gitlab-brand-files/gitlab-logo-files)

### Templates

#### Issue templates

[ TODO : Merge with the "how to request work" section ]

To work more efficiently as an [asynchronous](/company/culture/all-remote/asynchronous/) team, everything should [begin](/handbook/communication/#everything-starts-with-a-merge-request) in an issue or merge request as opposed to Slack or email.

Creating an issue may seem like an added burden, but the long-term benefit of having [context](/company/culture/all-remote/effective-communication/#understanding-low-context-communication) around a given piece of work prevents [knowledge gaps](https://about.gitlab.com/company/culture/all-remote/asynchronous/#plugging-the-knowledge-leak) from occurring. Issue templates exist to make the process of creating issues easier. If you find yourself starting similar issues over and over, look through existing issue templates. If a suitable one does not exist, consider creating one in the appropriate repository.

For more on how to make beautiful templates, check out GitLab's [Markdown Guide](/handbook/markdown-guide/). To add an emoji in an issue, begin by typing `:` and the title of the emoji. A list of emoji markup is [here](https://gist.github.com/rxaviers/7360908).

Remember to always add `Related Issues` and `Epics` after you've created your issue so others have context on what issues connect to this work.

- Visit the [Corporate Marketing Issue Template Repository](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/tree/master/.gitlab/issue_templates) to view all available issue templates. You'll find templates covering [Corporate Events](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/blob/master/.gitlab/issue_templates/Corporate-Event-Request.md), [Bulk Swag Requests](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/blob/master/.gitlab/issue_templates/BulkSwagRequest.md), Social Requests for [Events](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/blob/master/.gitlab/issue_templates/social-event-request.md) and [General](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/blob/master/.gitlab/issue_templates/social-general-request.md), Video Requests, [Webpage Updates](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/blob/master/.gitlab/issue_templates/webpage-update.md), and more.
- If you're for a [general or universal issue template](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/blob/master/.gitlab/issue_templates/general-project-template.md) to begin tracking discussion and progress on any given piece of work, big or small, search for `general-project-template` in a newly-created [Corporate Marketing Issue](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/issues). This template is pre-populated and beautified with emojis and descriptors for common sub-sections such as `Background`, `Details and reach`, `Goals and key messages`, and `Due dates, DRI(s) and next steps/to-dos`.


#### Presentation kits

- [General GitLab deck template](https://docs.google.com/a/gitlab.com/presentation/d/16FZd01-zCj_1jApDQI7TzQMFnW2EGwtQoRuX82dkOVs/edit?usp=sharing)
- [GitLab pitch deck template](https://docs.google.com/a/gitlab.com/presentation/d/1LC1lT-gxpl1oUZ2InX4Oni9T4MfR0DFF0RLi4uNxBBQ/edit?usp=sharing)

#### Event kits
[ TODO : Document ]

#### Swag kit
[ TODO : Document ]

#### Print templates
[ TODO : Document ]
