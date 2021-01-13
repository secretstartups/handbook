---
layout: handbook-page-toc
title: "Partner Collaboration"
---
# Partner Collaboration
{:.no_toc}

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Why Partners?

As the sales of GitLab increase, the demand for professional services will follow suit. To meet this demand we need to have an **elastic and on-demand bench of delivery resources**. Partner collaboration will also help to **prevent PSE Burnout** by allowing **PSEs to take lead roles** (e.g.architect, technical oversight, etc.). Finally, building relationships with partners allows the delivery team to **add Subject Matter Experts** as needed.

From a sales perspective, channel partners can help facilitate the initial licence deal and up-selling opportunities with customers whom they have an ongoing relationship.

## Partner Disambuiguation
There are different types of relationships we can have with partners and its important to outline the distinctions :point_down:. Direct vs indirect is a reference to the way the services are sold - Direct means the partner sells direct to the customer, Indirect means gitlab sells services and the partner helps with execution.

|   | Partner Indirect (Staff Augmentation)  | Partner Indirect (Project Based)  | Partner Direct |
|---|---|---|---|
| Subcontracted to GitLab?  | Yes | Yes | No |
| Access  | Slack, www-gitlab-com, GDrive  | Slack, www-gitlab-com, GDrive | Partner Portal |
| Communication w. GitLab PS | Organic (see above row)  | Organic (see above row)  | Partner Help Desk  |
| Allowed to know of other Customers of GitLab PS?  | Yes | No | No |
| Can contribute back to practice automation?  | Yes | Yes | TBD  |

### Partner Direct
GitLab PS can and should help our partners be successful in delivering services for their (and by extension, our) customers. We can **provide guidance, examples and strategic advice**, including references to public documentation or blog posts that could help "un-stick" a partner in an engagement. If the partner needs **hands-on help**, however, we will need to **engage with the partner via an SOW** to ensure we have appropriate liability protections in place.

*Note: GitLab professional services is building out a means to field and respond to help desk questions from the channel partners who are not subcontracted with us (Jan/Feb 2021). More details to come as this process gets created.*

## Partner Indirect Collaboration Guidelines
- Partners (Indirect) (both flavors) should have access to any subgroup or project under [global practice development](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development) 
- PSEs should be maintainers responsible for MR approval and Merging new code from other PSEs and Partners (Indirect)
- Code reviews should happen on all merge requests
- Access to customer and PS specific Slack channels
- **Partner Indirect can have access to AWS, Azure, GitLab Demo, etc.**
- For delivery work on a customer engagement:
    - Partner Indirect (Staff aug)
        - Access to all of the delivery journal issues in [PS Plan](https://gitlab.com/gitlab-com/customer-success/professional-services-group/ps-plan/-/issues_)
        - Access to the [global practice development](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development)  group with all automation collateral 
    - Partner Indirect (project based)
        - Specific access to the customer delivery (? need to check with Melani)
        - Access at the lowest level under [global practice development](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development) to complete the customer project (as appropriate)

## Collaboration by Type of Service

### Consulting Services
- Require discovery sessions to further define the problem space that customer is trying to solve
- Deliverable(s) for these services is
    - typically a written recommendation on how to solve the problem
    - *sometimes* proof of concept code customers can apply to their environment.
- All code developed for these services must NOT contain any customer information so we can reuse the project for future customers without reinventing the wheel.
- [Consulting services](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/consulting) should be built and maintined in the consulting directory of [global practice development](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development)

### Implementation Services
- These services almost always involve actually building the infrastructure and configuring the gitlab components so maintaining a customer-free reference for IaC of configuration Automation tends to be harder 
- [Proliferate](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/implementation/proliferate) can be used by Partners (Indirect) (project based and staff aug).
- Partners (Direct) TBD
- As Partners (Indirect) deliver implementation services projects, they can use [Implementation services discovery deck](https://docs.google.com/presentation/d/1K37wr--H2IT9Kv_c9N99UmkGUovAg6iOLmbcRKeKf10/edit)
Make sure as you (and/or the partner) is delivering the implementation services, you contribute back to the [Implementation Projects](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/implementation) (specifically [Proliferate](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/implementation/proliferate))

### Migration Services
- Any migration to gitlab.com requires PSE involvement due to needing admin tokens to create users on gitlab.com
- Partners (Indirect) (project based and staff aug) can use congregate and supporting automation utilities.
- As partners start migration projects, they can use the [Migration Kickoff Deck](https://docs.google.com/presentation/d/1AzM_qYKKOYhgvNTrEBXRmFT2m0caBuKZ6VAH6sCbiKQ/edit#slide=id.g7c1de0839e_0_0) or [Migration Early Adopter Kickoff](https://docs.google.com/presentation/d/19pNUZljJ7mOM8SQ31miYzaU4lXcmHI96Q6yJKqQ2dx4/edit) (for larger engagements) to help facilitate discovery discussions.
- When using [congregate](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/migration/congregate), you will need to deploy it somewhere. If you need to deploy it within the customer firewall, make sure any hot-fixes you make to migration services source code you port back to the migration services projects.







