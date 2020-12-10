---
layout: handbook-page-toc
title: "Content Library"
description: "The content library is where all your uploaded assets are stored and tagged in PathFactory."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Content Library

The content library is where all your uploaded assets are stored and tagged in PathFactory.

### Before uploading content

1. Use the search to determine if it’s already been added. Be thorough, as the asset could also have a different URL. If you try to add a file or URL that's already in the library, the system will tell you it already exists. 
1. Ensure you have the most valuable version of the asset (blog post vs. case study or PDF).
1. Ensure you have the most recent version of the asset.
1. Follow the [blog style guide](/handbook/marketing/inbound-marketing/content/editorial-team/#blog-style-guide).

### How to upload content

1. Click `Add Content` in the top right of the content library.
1. Choose how you will upload the asset (Website URL, file upload, or CSV).
    - For a Website URL, copy/paste the URL. For multiple URLs, paste one per line.
    - For a file upload, select this option and either drag and drop the file onto the file upload window or select it from your computer. Files can be up to 100MB.
    - [Follow the bulk upload instructions](#bulk-upload) to upload multiple assets to the content library via CSV.
1. Enter the title of the asset under `Public Configurations`. Ensure that the title is free of SEO meta information such as `| GitLab`.
1. Provide a clear and concise description of the content if one does not exist.
1. Select the content type from the dropdown.
1. Leave the engagement score at a default of 20 seconds with a score of 1.
1. Copy and paste the public title into the internal title field.
1. Funnel stage and estimated cost is set automatically based on the content type you chose earlier. Please leave these auto-generated tags as is and do not force change. 
1. Set the language of the asset.
1. Select the Business Unit of the asset based on use and sales region.
1. Set the expiry date of the asset if one exists.
1. Leave External ID blank.
1. Select the content topics on the right-hand side that categorize the asset. Follow the [content tag map below](#tracking-content) when tagging content with topics.

### After adding the asset to the library

1. Select the asset you just added to the library. A preview of the content will appear on the right-hand side of the content library. Scroll down the window pane under `source URL` and locate `Custom URL slug`.
1. Update the custom URL slug to be descriptive of the content with no stop words (and, the, etc.).
    1. **Please Note:** DO NOT change a custom URL slug that is part of a `[LIVE]` content track. You can see whether an asset is part of a live content track by clicking on it in the content library and scrolling to the bottom of the preview pane. This action can affect any links to this item that have been previously shared and break the asset consumption tracking via [listening campaign](/handbook/marketing/marketing-operations/pathfactory/#listening-campaigns).
    1. If a URL slug needs to be modified, please open an issue in the marketing operations project. 
1. We force `https://` to content tracks by default. As a result, all assets must use `https://` in the link to work in the content track properly. If you upload content that is _not secure_, it _will not_ show a lock icon next to the URL and it will not work in a secure content track. Please manually add `https://` if it is not already there.

### Replacing or updating the verson of an asset after initial upload

If you need to replace an asset source but keep the same link, you can do so from the content library.
* Select the asset from the content library
* On the right side, in the preview panel, scroll until you see `Source URL`
* When you hover over `Source URL` a pencil appears to the right
* Click the pencil/edit icon
* In the popup that appears, choose `File Upload` or `Website URL` as relevant
* Choose the updated version from your computer (or paste the new URL in)
* Click upload
* QA that the new version appears in "Preview" mode
* If used in a track, QA that the correct version appears in the track preview

### Bulk upload

You can [bulk upload multiple new assets](https://nook.pathfactory.com/nook/s/article/csv-upload) to the content library via a CSV file.

1. Download this [CSV template](https://d1nk153xyqlyhl.cloudfront.net/Content_CSV_Template.csv). This CSV file has the exact format as the CSV bulk upload template.
1. Provide all the information in the template for your new assets and save as a CSV. 
1. Follow the standard procedure for uploading content and select CSV upload. 
1. Upload your file and select the checkbox `Overwrite all duplicate content assets`. 
1. Select the `Upload File` button.

### Analyst reports

Expiry dates will not automatically deactive content after expiration. You must manually deactivate the content if it’s past the expiry date. To expire an analyst report from PathFactory, [open an issue](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/issues/new?issuable_template=Gated-Content-Expiration-Analysts-MPM) in the digital marketing programs project using the `Gated-Content-Expiration-Analysts-MPM` issue template.

### Asset thumbnails

For assets that don't pull in a relevant thumbnail image, you can choose to upload a thumbnail image that closely matches the topic of the asset. The design team has made [topical thumbnail images](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/tree/master/design/web-design/pathfactory/content-thumbnails) available for upload to PathFactory. The thumbnail images are available in either an orange or dark purple background for the following topics:

- Agile
- CI/CD
- Cloud Native
- DevOps
- Git
- IT Management
- Microservices
- Open Source
- Security
- Single app
- Digital transformation
- VSM
- Workflow

To use a thumbnail image, visit the [web design repository](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/tree/master/design/web-design/pathfactory/content-thumbnails) where they are stored, choose the `png` folder, choose your preferred background color, then select the `.png` that most closely matches the topic of the asset in PathFactory you're uploading the image to. Use the list of topics above to determine the best topic fit.

#### Adding a thumbnail for an existing asset in the content library

1. Select your asset from the content library.
1. When the preview pane appears on the right, hover over the image and click the edit icon.
1. Under the thumbnail images tab, click to upload the thumbnail image you just downloaded. All images are already properly sized for PathFactory.

#### Adding a thumbnail for newly uploaded content

1. [Follow the regular process](/handbook/marketing/marketing-operations/pathfactory/content-library/#how-to-upload-content) for uploading new content to the library.
1. Directly under `Public Configurations`, you'll find the thumbnail for the asset. Hover over the image and click the edit icon.
1. Under the thumbnail images tab, click to upload the thumbnail image you just downloaded. All images are already properly sized for PathFactory.

## Content types

Unsure what content types align with your asset? Use the table below as a guideline to tag content you upload to PathFactory accordingly.

| Type | Use | Example |
| ---- | --- | ------- |
| Analyst report | Third-party content licensed from an analyst firm | [Gartner Magic Quadrant for ARO](/resources/gartner-aro/) |
| Assessment | Content with the primary purpose of providing a self-assessment, quiz, or maturity model. |  |
| Case study | Web articles that focus on the stories and opinions of GitLab customers. | [Goldman Sachs improves from 1 build every two weeks to over a thousand per day](/customers/goldman-sachs/) |
| Data sheet | A document providing the specifications of GitLab the product or feature/feature set. | [GitLab data sheet](/images/press/gitlab-data-sheet.pdf) |
| Demo | A live-action video recording demonstrating how to do or use a technical product. | [GitLab Security & Compliance Capabilities Demo](https://www.youtube.com/watch?v=UgCHtr-6uG8) |
| eBook | An eBook presents educational information that helps the reader gain a comprehensive understanding of a subject. eBooks are casual in tone and are most often an awareness-stage asset. | [Modernize your CI/CD](/resources/ebook-fuel-growth-cicd/) |
| Infographic | A visual asset used to represent information or data. |  |
| Presentation | Video recording or slides of a live talk. | [Multicloudcon Keynote: The Multicloud Maturity Model](https://www.youtube.com/watch?v=R1LWQPAXFEE) |
| Pricing | A document that details pricing for GitLab products. | (GitLab pricing)[https://about.gitlab.com/pricing/] |
| Product article |  |  |
| Research report | An informational report which uses a specific research metholody to validate findings. | [2019 Global Developer Survey: DevSecOps](/developer-survey/) |
| Solution article |  |  |
| Technical blog post |  |  |
| Testimonials | A formal statement from a customer or user regarding GitLab's value. |  |
| Thought leadership blog post |  |  |
| Topic article |  |  |
| Video | A scripted, edited, & post-produced video. Videos can be promotional, educational, and/or animated. | [GitLab Infomercial](https://www.youtube.com/watch?v=gzYTZhJlHoI) |
| Webcast | A live broadcast & recording that includes a presenter, slides, and a live audience. | [Cloud Native Transformation with Ask Media Group](https://www.youtube.com/watch?v=3ED5NrVoVzk) |
| Whitepaper | Whitepapers are data-driven, persuasive, and opinionated reports that address a specific problem for a niche audience. A whitepaper presents new research, addresses a specific problem, and argues in favor of a specific solution. Whitepapers are academic and authoritative in tone. Whitepapers are most often introduced in the consideration or decision making stage to prove or validate a concept or solution. | [A seismic shift in application security](/resources/whitepaper-seismic-shift-application-security/) |

## Content topics

Unsure what content topics align with your asset? Use the table below as a guideline to tag content you upload to PathFactory accordingly.

| Topic | Use | Example |
| ----- | --- | ------- |
| Agile delivery | Content that relates to the agile delivery process decision framework which emphasizes incremental and iterative planning. | [What is an Agile mindset?](/blog/2019/06/13/agile-mindset/) |
| Agile management |  |  |
| Agile software development | Content that relates to the agile software development methodology which emphasizes cross-functional collaboration, continual improvement, and early delivery | [How to use GitLab for Agile software development](/blog/2018/03/05/gitlab-for-agile-software-development/) |
| Application modernization | Content that relates to the process of converting, refactoring, re-writing, or porting legacy systems to more modern programming and infrastructure. Content on this topic may cover cost/benefit of updating legacy systems, process, system, and culture changes, and toolstack comparisons. | [3 Strategies for implementing a microservices architecture](/blog/2019/06/17/strategies-microservices-architecture/) |
| Application monitoring and visibility |  |  |
| Application security | Content that covers the production and delivery of secure software, security techniques and capabilities, and trends in the application security field. | [5 Security testing principles every developer should know](https://about.gitlab.com/blog/2019/09/16/security-testing-principles-developer/) |
| Automation | Content that relates to using technology to automate tasks. Likely use cases are how automation impacts productivity and workflows, feature highlights & tutorials, and case studies. | [How IT automation impacts developer productivity](/blog/2019/05/30/it-automation-developer-productivity/) |
| AWS | Content that relates Amazon Web Services. Likely use cases are case studies where the customer uses GitLab + AWS and integration information & tutorials. | [How to set up multi-account AWS SAM deployments with GitLab CI/CD](/blog/2019/02/04/multi-account-aws-sam-deployments-with-gitlab-ci/) |
| Azure | Content that talks specifically about Microsoft Azure. Likely uses cases are tutorials on using GitLab + Azure cloud or competitive content. | [Competitive analysis page for Azure DevOps](/devops-tools/azure-devops-vs-gitlab.html) |
| CI/CD | Content that covers continuous integration, continuous delivery, and continuous deployment. This content is likely to be more technical, explaining tools, methods for implementation, tutorials, and technical use cases. | [A quick guide to CI/CD pipelines](/blog/2019/07/12/guide-to-ci-cd-pipelines/) |
| Cloud computing | Content that relates to the practice of using a network of remote servers hosted on the Internet to store, manage, and process data. Likely uses cases are content discussing various cloud models (public, private, hybrid, and multicloud), integrations, and tutorials. Some customer case studies may be tagged with this label if the case study is _primarily_ about GitLab enabling their cloud computing model. | [Top 5 cloud trends of 2018: What has happened and what’s next](/blog/2018/08/02/top-five-cloud-trends/) |
| Cloud native | Content that relates container-based environments. Specifically, technologies are used to develop applications built with services packaged in containers, deployed as microservices and managed on elastic infrastructure through agile DevOps processes and continuous delivery workflows. | [A Cloud Native Transformation](/webcast/cloud-native-transformation/) |
| Containers | Content that relates to using, running, maintaining, and building for containers. | [Running Containerized Applications on Modern Serverless Platforms](https://www.youtube.com/watch?v=S8R7sSePAXQ) |
| Continuous delivery | Content that covers methods and tools for delivering or updating software in smaller increments, resulting in a better end-user experience. Both technical and strategic content may be found. | [Securing the journey to Continuous Delivery](https://about.gitlab.com/blog/2019/10/30/secure-journey-continuous-delivery/) |
| Continuous integration |  |  |
| Data science |  |  |
| DevOps | Content that relates to DevOps methods, process, culture, and tooling. [Keys to DevOps success with Gene Kim](https://www.youtube.com/watch?v=dbkj0qXQ22A) |  |
| DevSecOps | Content that relates specifically to integrating and automating security into the software development lifecycle. Content that relates to cybersecurity should be tagged `security` and not `devsecops`. | [A seismic shift in application security](/resources/downloads/gitlab-seismic-shift-in-application-security-whitepaper.pdf) |
| Digital transformation | Content that covers the process, methods, and strategy of integrating technology into all aspects of business. This content also includes strategies, tools, and tactics for furthering innovation, building new efficiencies, and delivering higher value faster. | [The cloud adoption roadmap](https://about.gitlab.com/blog/2019/12/05/cloud-adoption-roadmap/) |
| Git | Content that relates to implementing and using the distributed version contronl system, Git. | [Moving to Git](/resources/downloads/gitlab-moving-to-git-whitepaper.pdf) |
| GitOps |  |  |
| GKE | Content that is specifically about Google Kubernetes engine and Google Cloud Platform. Likely use cases are integrations, tutorials, and case studies | [Demo: Deploy to GKE from GitLab](https://www.youtube.com/watch?v=u3jFf3tTtMk) |
| Incident management |  |  |
| Information technology management | Content that relates to the monitoring and administration of IT systems, including hardware, software, and networks. (Definition adapted from [IBM](https://www.ibm.com/topics/it-management)) Content may be either technical or strategic. | [Shifting from on-prem to cloud](https://about.gitlab.com/blog/2020/01/09/shifting-from-on-prem-to-cloud/) |
| Jenkins | Content that is specifically about Jenkins. Likely uses cases are integrations, competitive, comparisons, and case studies. | [3 Teams left Jenkins: Here's why](/blog/2019/07/23/three-teams-left-jenkins-heres-why/) |
| Kubernetes | Content that relates to implementing and using kubernetes. Likely use cases are cost/benefits, tutorials, and use cases. | [Kubernetes and the future of cloud native: We chat with Kelsey Hightower](/blog/2019/05/13/kubernetes-chat-with-kelsey-hightower/) |
| Microservices | Content that covers the practice of breaking out application components individually as services for the purpose of running applications at scale with greater flexibility. | [3 Strategies for implementing a microservices architecture](https://about.gitlab.com/blog/2019/06/17/strategies-microservices-architecture/) |
| Multicloud | Content that relates to how enterprises use multiple cloud providers to meet different technical or business requirements. | [What does Kubernetes have to do with it?](https://about.gitlab.com/blog/2020/02/05/kubernetes-and-multicloud/) |
| Open source | Content that covers open source projects, partnershipship initiatives, and community contributions. | [What to consider with an open source business model](https://about.gitlab.com/blog/2019/07/05/thoughts-on-open-source/) |
| Portfolio management |  |  |
| Remote development team management |  |  |
| Remote work | Content that covers remote work, including best practices, stories, and advice. | [The case for all-remote companies](https://about.gitlab.com/blog/2018/10/18/the-case-for-all-remote-companies/) |
| Repository management |  |  |
| SCM | Content that relates to source code management, Git, GitLab Flow, and version control. | [GitLab Workflow: An Overview](https://about.gitlab.com/blog/2016/10/25/gitlab-workflow-an-overview/) |
| Security | Content that relates to cybersecurity and application security practices. | [When technology outpaces security compliance](/blog/2019/06/10/when-technology-outpaces-security-compliance/) |
| Severless computing | Content that relates to the ability to deploy functions on any infrastructure managed through a single UI. | [Announcing GitLab Serverless](https://about.gitlab.com/blog/2018/12/11/introducing-gitlab-serverless/) |
| Simplify DevOps |  |  |
| Single application | Content that covers the methods and benefits of using a single application throughout the software development lifecycle, including increased efficiency and transparency. | [Customer story: Driving better developer and customer experiences with a single application](https://about.gitlab.com/blog/2018/09/26/customer-interview-charter-communications/) |
| Software development | Content that covers software development methodologies, cycle time, and development techniques. | [How to use GitLab for Agile software development](https://about.gitlab.com/blog/2018/03/05/gitlab-for-agile-software-development/) |
| Software development philosophies |  |  |
| Software development process |  |  |
| Software engineering |  |  |
| Toolchain | Content that relates to toolchain and stack management. | [How to manage your toolchain before it manages you](/resources/downloads/201906-gitlab-forrester-toolchain.pdf) |
| Version control and collaboration |  |  |
| VSM | Content that relates to the topic of value stream mapping and management. Topics that fall under this tag may include cycle time, cycle analytics, and software delivery strategies and metrics. | [The Forrester Value Stream Management Report](/analysts/forrester-vsm/index.html) |
| Workflow | Content that relates to understanding and implementing workflows throughout the software development lifecycle. Likely uses are content that explains a particular workflow or how to set up a workflow in GitLab. For example: how a workflow might change when a level of automation is introduced. | [Planning for success](/resources/downloads/gitlab-planning-for-success-whitepaper.pdf) |

## Industry Verticals

Industry verticals are set using a standard list in SFDC per [this issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/2500). 

1. Aerospace & Defense
1. Agriculture
1. Apparel
1. Automotive
1. Banking
1. Biotechnology
1. Chemicals
1. Communications
1. Construction
1. Consulting
1. Education
1. Electronics
1. Energy
1. Engineering
1. Entertainment
1. Environmental
1. Finance
1. Food & Beverage
1. Government
1. Healthcare
1. Hospitality
1. Insurance
1. Local
1. Machinery
1. Manufacturing
1. Media
1. Not For Profit
1. Other
1. Recreation
1. Retail
1. Shipping
1. State
1. Technology
1. Telecommunications
1. Transportation
1. Utilities

## Blocked Content from Third Party Web Pages

If you try to upload a web page from a domain that you do not own and that web page has not whitelisted your PathFactory track URLs, you will be served an error message telling you that you cannot upload this content to the Content Library.

Because you do not own this web page, your options are limited. You will be unable to add these third party web pages to the Content Library. You can use this content in an [End Promoter](/handbook/marketing/marketing-operations/pathfactory/#promoters) in a content track if the following is true:

1. You are building your [Content Track in Target](/handbook/marketing/marketing-operations/pathfactory/#content-tracks) (this is not currently supported in Recommend)
1. You are using the [Flow or Signpost Promoter](/handbook/marketing/marketing-operations/pathfactory/#promoters) (this is not currently supported for other Target promoter types)

**What you can do:**

When you enable the `End Promoter`, add the destination URL of the blocked content. When a visitor reaches the end of the Content Track, they will be prompted with your call to action `End Promoter`. If the visitor clicks on this promoter, the destination URL (of the blocked content) will open in a new tab.

More on iFrame blocking can be found [here](/handbook/marketing/marketing-operations/pathfactory/#about-iframes).