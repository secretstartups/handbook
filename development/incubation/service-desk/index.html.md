---
layout: handbook-page-toc
title: Service Desk Single-Engineer Group
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Service Desk Single-Engineer Group

The Service Desk SEG is a [Single-Engineer Group](/company/team/structure/#single-engineer-groups) within our [Incubation Engineering Department](/handbook/engineering/development/incubation/).

### Vision

Our goal is to provide a complete, yet lightweight and customizable customer support solution that seamlessly integrates with the GitLab ecosystem and brings customers, support staff and developers closer together.

### Mission

- Make Service Desk useful for professional support teams so they efficiently and effectively work through their support issues.
- Helping organizations build a professional and on-brand customer support workflow that grows with the business.
- Making Service Desk an integral part of the GitLab support workflow by providing the tools our teams need.
- Helping managers and support ops automate repetitive tasks for their support staff.
- Increase awareness of the capabilities of GitLab Service Desk and how it can help our customers handle customer support.

### Recent updates and showcases

Please feel free to [subscribe to this GitLab issue to receive notifications](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/3) when new updates are available.

**Watch the latest video**

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/sGaw5QHvKBU" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

We publish [short mid month update videos](https://about.gitlab.com/handbook/engineering/development/incubation/#mid-month-update-video) and
longer [end of month showcase videos](https://about.gitlab.com/handbook/engineering/development/incubation/#end-of-month-showcase) to
[demonstrate our progress](https://about.gitlab.com/handbook/engineering/development/incubation/#demonstrating-progress).

| Date | Summary / written version | Video |
| ---- | ------------------------- | ----- |
| September Showcase (2023-10-20) | [September 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/17) | [Showcase Video](https://www.youtube.com/watch?v=sGaw5QHvKBU){:target="_blank"} |
| August Showcase (2023-09-19) | [August 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/15) | [Showcase Video](https://www.youtube.com/watch?v=OIFDH5L6VwA){:target="_blank"} |
| July Showcase | - | - |
| June Showcase (2023-07-07) | [June 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/14) | [Showcase Video](https://www.youtube.com/watch?v=PkgfXulZ6ZQ){:target="_blank"} |
| May Showcase (2023-06-13) | [May 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/13) | [Showcase Video](https://www.youtube.com/watch?v=51SQQaVT8u4){:target="_blank"} |
| April Showcase | - | - |
| March Showcase (2023-04-06) | [March 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/12) | [Showcase Video](https://www.youtube.com/watch?v=9LYkvard3ew){:target="_blank"} |
| March Mid Month Update (2023-03-22) | [15.10 release, customer feedback, verification](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/11) | [Update Video](https://www.youtube.com/watch?v=bOg9laFjqPk){:target="_blank"} |
| February Showcase (2023-03-02) | [February 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/10) | [Showcase Video](https://www.youtube.com/watch?v=mR_ejrr8880){:target="_blank"} |
| Update 4 (2023-02-21) | [15.9 release, GDK docs, verification](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/9) | [Update Video](https://www.youtube.com/watch?v=uMAjoe9Ehng){:target="_blank"} |
| January Showcase (2023-01-30) | [January 2023 Showcase](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/7) | [Showcase Video](https://www.youtube.com/watch?v=rw-2fqtUodQ){:target="_blank"} |
| Update 3 (2023-01-20) | [Foundation &amp; verification](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/7) | [Update Video](https://www.youtube.com/watch?v=CiP7LRqm8vo){:target="_blank"} |
| Update 2 (2023-01-06) | [First MR &amp; upcoming tasks breakdown](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/6) | [Update Video](https://www.youtube.com/watch?v=jbUX611DR-g){:target="_blank"} |
| Update 1 (2022-12-09) | [Product Vision &amp; customizable E-Mail Addresses](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/4) | [Update Video](https://www.youtube.com/watch?v=AmKy4IGmevc){:target="_blank"} |

We are also [exploring ideas, existing issues and user feedback](https://gitlab.com/gitlab-org/incubation-engineering/service-desk/meta/-/issues/2). Please feel free to contribute.

### Current focus

#### Customizable e-mail address on a per-project basis

**Custom email address for Service Desk is planned to be released in Beta in GitLab 16.4 and is already available on GitLab SaaS.**

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/_moD5U3xcQs" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

Right now GitLab does not support a fully customized and professional e-mail experience throughout the
communication with the customer. You can add e-mail forwarding from your own e-mail address to the Service Desk
intake e-mail address, but the sender of the inquiry will always receive answers from the default GitLab
instance address. That is especially a show-stopper for gitlab.com customers as they do not want to have
GitLab e-mail addresses in their customer communication.

We are actively working on [bringing configurable e-mail addresses on a per-project basis to GitLab Service Desk](https://gitlab.com/gitlab-org/gitlab/-/issues/329990).
The [proposed solution](https://gitlab.com/gitlab-org/gitlab/-/issues/329990#note_1192437371) will involve little changes to existing
functionality and we will iterate on that to make it even easier to use in the future.

Customers will need to configure e-mail forwarding from their desired Service Desk e-mail address to the
provided Service Desk intake e-mail address by the GitLab instance. They will then add SMTP credentials for that address so
the GitLab instance will be able to send e-mails on behalf of that configured e-mail address.
We will also allow `Reply-To` e-mail headers to use the configured e-mail address to deliver a complete package.

If you have questions or would like to share feedback, see [this issue](https://gitlab.com/gitlab-org/gitlab/-/issues/329990).

### Released features

#### Native attachments for Service Desk emails

Native attachments for Service Desk emails allow external participants like the issue author to receive uploads to a
comment as a native email attachment (up to 10MBs). This is great because previously based on your project settings
or instance configuration external participants could not access media assets via the provided links in certain scenarios.

**Shipped in gitLab 15.10**. See the [release post item](https://about.gitlab.com/releases/2023/03/22/gitlab-15-10-released/#native-attachments-for-service-desk-emails) and the [feature issue](https://gitlab.com/gitlab-org/gitlab/-/issues/11733).
This SEG did not implement the feature, but mentored the team, designed the solution and published the feature.

#### Obfuscate email addresses of Service Desk issues based on user role

Making sure private data is protected no matter where a Service Desk issue ends up. If you do not have at least the reporter role in a GitLab project or group, you won’t be able to view the email address of the author of a Service Desk issue and issue email participants in general. No matter whether it’s a public or private project or the issue is confidential or not.

**Shipped in GitLab 15.9**. See the [release post item](https://about.gitlab.com/releases/2023/02/22/gitlab-15-9-released/#redact-service-desk-email-addresses-in-issues)

If you want to get more into the details, [check out the merge request which also links to all related issues](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/108901).

### Background

We have a [Service Desk offering](https://about.gitlab.com/direction/service_management/service_desk) in GitLab that we'd like
to make an integral part of the GitLab support workflow. We have early usage, a community of prolific contributors and
a new team ([Respond group in Monitor stage](https://about.gitlab.com/handbook/product/categories/#respond-group)) onboarding to
the new domain.

### Product Development Group affinity

- [Respond group in Monitor stage](https://about.gitlab.com/handbook/product/categories/#respond-group) owns Service Desk and currently
  onboards to the new domain
- [Project management group in Plan stage](https://about.gitlab.com/handbook/product/categories/#project-management-group) as Service Desk issues use all of GitLabs planning functionality

### Other resources

- [Replace `mail_room` email ingestion with scheduled Sidekiq jobs](https://docs.gitlab.com/ee/architecture/blueprints/email_ingestion/)
- [Custom email address for Service Desk (Overview)](https://youtu.be/_moD5U3xcQs)
- [Video walkthrough on how to set up `mail_room` and Service Desk locally in GDK](https://youtu.be/SdqBOK43MlI)
