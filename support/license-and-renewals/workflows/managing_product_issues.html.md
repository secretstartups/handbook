---
layout: handbook-page-toc
title: Managing Product Issues
description: "The collaborative process between Support and Fulfillment for managing product issues"
category: General
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The Fulfillment Product Team and the L&R Support Team work closely together to
identify, understand and prioritize issues in the Fulfillment-related parts of
our product. 

### Reporting a product problem

When you encounter a product problem while working on a Zendesk ticket, use
this workflow.

1. Search [Fulfillment Meta](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues)
   and [GitLab.org Fulfillment Section](https://gitlab.com/gitlab-org/gitlab/-/issues/?state=opened&label_name%5B%5D=section%3A%3Afulfillment)
   for an issue that matches the problem. Search also the parent groups of
   those projects for a matching epic.
1. If there is an existing issue or epic, then add a link to it in the ticket
   and include in the issue or epic any relevant information which will help
   with prioritization 
1. Otherwise:
   1. For a new bug, open an issue in the relevant project using the
      appropriate one of the following templates: 
      1. [customers.gitlab.com (including /Admin) issues](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/new?issue&issuable_template=Bug)
      1. [GitLab product issues](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issue&issuable_template=Bug)
   1. For a new feature or tooling request, open an issue using the
      [Fulfillment meta intake request](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/new?issue&issuable_template=intake)
      template. A Fulfillment PM will review the request and move it to the
      relevant team and trackers if they accept it.
1. Add the appropriate labels to the issue or epic:
   - Add `Support Priority::Categorize` to indicate that GitLab Support wants to see this
     addressed
   - If it is impacting a customer's ability to use the GitLab licensing
     functionality successfully, then add `Customer::Impact` and `UX`

- For general guidance on adding comments and required labels for issues, please
  see the [Working with issues workflow](../../workflows/working-with-issues.html#adding-comments-on-existing-issues)
- Fulfillment Product Management will decide the appropriate section and PM to
  which to assign each new issue
- If you believe a high priority issue is not being addressed quickly enough,
  then please contact any of the L&R Support [Regional DRIs](../index.html#regional-dris)

### Support's issue list for Fulfillment

The Support and Fulfillment teams use a Google spreadsheet to manage the issues
and epics list, and to communicate asynchronously about it. This spreadsheet is
the single source of truth for information about the product issues of concern
to L&R Support.

#### Accessing the list

The issue list spreadsheet is available to all GitLab Team Members. To access it, open [Support's Issue List for Fulfillment](https://drive.google.com/drive/search?q=title:%22Support%27s%20Issue%20List%20for%20Fulfillment%22%20Support%27s%20Issue%20List%20for%20Fulfillment) on Google Drive.

#### List contents

The spreadsheet should always contain on its main sheet the full list of all
open epics and issues that have any `Support Priority::xxx` label, and no other
epics or issues.

We encourage everyone who applies the `Support Priority::Categorize` label to
take an extra moment to add the labeled issue or epic to the end of the list in
the spreadsheet. The [Regional DRIs](../index.html#regional-dris) will also look
for newly-labeled items each month and will add them to the list before
beginning the prioritization exercises.

#### List structure - sections

##### Top 10 - Prioritized

The first 10 items on the list are ordered according to priority. These are the
items that L&R Support has decided are the most important product issues for
the Fulfillment Team to address. **The only people who should move items in or
out of the Top 10 section, or change the order within the section, are the
[Regional DRIs](../index.html#regional-dris).** This section of the list is
colored with a red theme, indicating the hottest issues. All items in this
section, except those being
[reviewed for possible reprioritization](#review-for-possible-reprioritization),
have the label `Support Priority::1`.

##### Next 10 - NOT Ordered

The next section contains items that fell just short of getting selected for the
top 10. They are listed in no particular order. As a group, they represent the
product issues that L&R Support would like Fulfillment to address once the top
10 are resolved. **The only people who should move items in or out of this
section are the [Regional DRIs](../index.html#regional-dris).** This section
of the list is colored with a yellow theme - almost hot. All items in this
section, except those being
[reviewed for possible reprioritization](#review-for-possible-reprioritization),
have the label `Support Priority::2`.

##### All the Rest - Not Ordered

The third and final section contains all the remaining items in no particular
order. All issues and epics should be added to this section when they are
first labeled with `Support Priority::Categorize`. At the next prioritization
exercise, those items will be moved to one of the other two sections of the
list (and appropriately labeled) or relabeled `Support Priority::3`
or `Support Priority::4`. This
section of the list is colored with a green theme.

#### Review for possible reprioritization

Anyone who wants to request that any issue or epic in the list be reviewed for
possible reprioritization should:

1. Apply the `Support Priority::Review` label
1. Add a comment to the issue or epic outlining how they think it should be
   prioritized and their reasoning

#### List structure - columns

| Epic or Issue | Title | Description | Support Priority Label |Product Group | Product DRI | Update |
| ------------ | ----------- | ------------- | ------------- | ------------- | ----------- | ------ |
| The issue or epic number, with link | Exact title from the epic or issue | A longer description of the issue or epic, still no more than a few sentences.  | The part of the label after `Support Priority::` | The product group that owns the item. **This is set by the Product Managers** | The Product Manager. **This is set by the Product Managers** | Status information. Questions from Product or Development to each other or Support. This is the only really dynamic column. |

#### Primary contributors

- Product Managers:
  - indicate product group ownership and product DRI assignment
  - ask questions and provide status updates
  - select items to be worked
  - move items to the `Completed/Done` sheet and provide final status and
    comments on those
- Engineering Managers
  - ask questions and provide status updates
- L&R Support [Regional DRIs](../index.html#regional-dris)
  - move items between the list sections
  - add items labeled `Support Priority::Categorize` to the list and remove
    no-longer-needed items from the list
  - Populate and sort the Top 10 list
  - Populate the Next 10 list
  - ask and answer questions
- L&R SEs
  - add items labeled `Support Priority::Categorize` to the list
  - ask and answer questions

#### Prioritizing the Top 10

On a monthly basis, aligned with the product release cycle, L&R Support will
determine what changes, if any, are needed in the list. By agreement with the
Fulfillment Product Management Team, Support will keep the Top 10 list as
stable as possible, making changes only when:

- an issue was fixed or otherwise closed within the last month and has been
  moved to the `Completed/Done` sheet
- an issue of exceptionally high importance arises and must be added to the
  Top 10, in which case another issue will be displaced
- Fulfillment and Support agree that priorities within the Top 10 should be
  changed to represent customer or Support needs more accurately

### Support's unofficial issue list

The [Regional DRIs](../index.html#regional-dris) are experimenting with
maintaining an [epic](https://gitlab.com/groups/gitlab-com/support/licensing-subscription/-/epics/1)
for use within L&R Support only. The thought is that the epic may present an
easier-to-consume version of the epics and issues list that will help SEs to
stay informed.

### How to get help from the Fulfillment Section development team 

If you require technical assistance from any Fulfillment Development Section Sub Group for issues that are not bugs or feature requests, then you can use GitLab.com to create an issue and request help. The workflow for this process is documented in the following handbook section [How to Use GitLab.com to Formally Request Help from the GitLab Development Team](https://about.gitlab.com/handbook/support/workflows/how-to-get-help.html#how-to-use-gitlabcom-to-formally-request-help-from-the-gitlab-development-team).

