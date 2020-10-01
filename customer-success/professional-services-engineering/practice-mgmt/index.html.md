---
layout: handbook-page-toc
title: "Professional Services Practice Management"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Practice Management Overview

The professional services practice management team is responsible for maturing [current service offerings](https://about.gitlab.com/services/) and building new offerings including their go to market strategy. This page will help describe the areas of responsibility of the practice management team, how we operate and stay organized.

## Backlog, Workflows, and Kanban Board

The practice management team is using the top level label `Practice Management` to organize all of our work together. *Note: we are using labels at the [customer success group level](https://gitlab.com/gitlab-com/customer-success) because some projects have been put there for wider collaboration*  

Then, we use [these scoped labels](https://gitlab.com/groups/gitlab-com/customer-success/-/labels?utf8=%E2%9C%93&subscribed=&search=PS-Practice) to organize our work into service categories.

We are moving toward using standard global workflow labels to track issues from inception to completion, but currently use [custom workflow labels](https://gitlab.com/groups/gitlab-com/customer-success/-/labels?utf8=%E2%9C%93&subscribed=&search=ps%3A%3A) for a simple "TODO, Doing, Done" workflow. They are considering standarizing on workflow labels, but still TBD. They are using this base [kanban board](https://gitlab.com/groups/gitlab-com/customer-success/-/boards/1736936?&label_name[]=Practice%20Management) to help visualize work flowing to completion. You can further filter based on service category scoped labels.

We are starting to use and refine our [roadmap](https://gitlab.com/groups/gitlab-com/customer-success/-/roadmap?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Practice%20Management) but it is still very much a work in progress. 

### Education Services practice management Labels

Here are the main labels specific to the Education Practice Management projects.

* `ProServ-practice::Education` (TO BE DEPRECATED in favor of [these scoped labels](https://gitlab.com/groups/gitlab-com/customer-success/-/labels?utf8=%E2%9C%93&subscribed=&search=PS-Practice) at the customer success group level)
* `Workflow::validation backlog` - Team member identifies audience needs and potential education services offering
* `Workflow::problem validation` - Practice manager validates needs addressed by proposed Education Services
* `Workflow::design` - Practice manager defines solution component requirements and confirms with ID that the proposed solution is feasible 
* `Workflow::solution validation` - Practice manager validates proposed Education Services solution will meet business objectives
* `Workflow::planning breakdown` - Practice manager works with ID to plan project work with issues and epics

## Go to market workflow for new offerings

### Education Services

#### Sales-team-assisted go to market motion

1. When new Education Services are launched they include internal communications and collateral to sales reps
    * Announcement of availability in public sector and sales slack channels
    * Include in Sale Enablement training
    * Offering description pages on /services
    * Success Stories collateral
    * Slides for sales decks
    * Inclusion of offering in [Services Calculator](https://services-calculator.gitlab.io/)
    * If applicable, Standard variant with:
        * Standard SOW
        * Finalized SKU for use by Sales
1. Rep advises customer on which Education Services are needed
1. Sales rep adds SKUs to customer contract
1. PS delivers Private Onsite or Remote ILTs
1. Education Services provisions account-level subscription access to LXP for all LXP subscription SKUs

#### Web-direct go to market motion 

1. When new Education Services are launched they include external communications to GitLab ecosystem as per the Marketing Strategy, including:
    * Nurture campaign emails
    * In-product banner
    * Recommended by SA or TAM
    * Included on Training Tracks page
    * Included on Education Services pages
    * Mentioned in product release updates
    * Highlighted in blog post
1. Individual users click Order button and pay using credit card from customers.gitlab.com and from within LXP
1. Users attend Public Remote ILTs via Zoom Webinar
1. Users access certification learning paths from LXP

### Marketing Strategy

* **Add to customers.gitlab.com ordering page**: Gives visibility and leads user down path of discovering more offerings
* **Event Presence**: Education Services presence at Commit
* **Community and Evangelism**: 
    * **GitLab Heros**: Pilot with GitLab Heros to test out certifications. Have Heros participate in training in advance of commit and then iterate based on that. Offer trainings for free and offer free exam to get gitlab certified ahead of time (John Coghlan is contact)
    * **GitLab Evangelism team**: Collaboration initiatives TBD
* **Add to Customer Success Plan**: Make certifications part of success plan from TAM. Set metrics against percentage of users who complete certifications
* Offerings integrated into customer adoption nurture campaign
* In-product awareness 
* Direct marketing on 3rd party platforms/communities where target audience lives
    * edEx, EdCast Leapest Marketplace, LinkedIn, Dice.com
    * Blog posts -- GitLab and 3rd party sites (eg StackOverflow, FB)

## How tos

### How to create a new service SKU

SKUs for new PS offerings are requested by the PS Practice Manager. To request a new SKU, the Practice Manager must determine and complete the following items and steps to gain approval.

#### Required items

* A specimen SOW that can be referenced by the Item
* Established cost-basis and assumptions
* Hours and hourly cost
* Delivery cost (hours x hourly cost)
* Included T&E assumption (if any)

#### Steps for creating a SKU

The Practice Manager follows these steps to request creation of a new SKU.

1. Create an [issue in the Finance issue tracker](https://gitlab.com/gitlab-com/finance/issues/new?issuable_template=New_PS_SKU) referencing the above requirements
1. Review with the Finance Business Partner for Sales
1. Make any require changes
  1. Include an executive summary with the business rationale
1. Submit to VP of Customer Success for approval
1. Submit to CFO, CRO and CEO for approval
1. Once approved, submit to Accounting to create SKU in Zuora (note: Accounting does not create a SKU number but does add the offering to the product catalog)
1. Once it is added to the product catalog, make up a new SKU number for the offering and add it to the Current SKUs listing by editing the services.yaml file and creating a merge request.

#### Validating SKU shows in Salesforce
1. Login to salesforce.
1. Click on the opportunities tab.
1. Search for the `Test Account-NEW` opportunity.
1. Scroll down and click on the `New Quote` button.
1. In `Sold To Contact` and `Bill to Contact`, select PS Test account. 
1. Add `start date` as today. 
1. Scroll down and click `Next`.
1. Click the drop down the box next to `New Quote Flow` and select `Add Add On Products`.
1. In the `Professional Services and Training` Row, click the drop down that says `Select Plan` to see the current SKU offerings that the Sales Reps see.  

### How to retire a service SKU

Retirement of SKUs for PS offerings is requested by the PS Practice Manager. To request retirement of a SKU, the Practice Manager follows the same basic steps used for creating a SKU to gain the appropriate approvals, including using the same issue template.

### How to edit a Professional Services product page

PS uses a file called services.yml as the single source of truth (SSoT) for offering descriptions and specifications. This file is used together with a documentation macro to populate various parts of the GitLab documentation and is also used by the [Services Calculator](https://services-calculator.gitlab.io/). The [Services SSOT Wiki Page](https://gitlab.com/gitlab-com/customer-success/professional-services-group/ps-process/-/wikis/Services-Single-Source-of-Truth) describes its various applications, attributes and maintenance processes. Team members who wish to update or add offerings can follow the instructions located on the wiki page. 
